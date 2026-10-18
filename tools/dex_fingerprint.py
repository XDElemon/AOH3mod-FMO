#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""DEX 结构指纹（替代 md5 作为可复现判据）

背景（实测）：
  - smali 2.5.2 汇编**非确定性**：同一份 smali 连续汇编两次，结构完全相同但 md5 每次都变。
  - baksmali 反汇编会重排字段声明顺序、移动 .catch 位置，所以"逐文件 diff"也不是稳定判据。
  ⇒ 判据改为：对 **排序后的结构集合** 做 sha256。

输出：
  classes / methods / fields / strings / types 计数
  fp_classes   : 排序后的类描述符集合 hash
  fp_methods   : 排序后的 "类->方法名(签名)" 集合 hash
  fp_fields    : 排序后的 "类->字段名:类型" 集合 hash
  FINGERPRINT  : 上述三者 + 计数的总指纹

用法: python3 tools/dex_fingerprint.py <a.dex> [b.dex ...]
"""
import struct, sys, hashlib


def parse(path):
    d = open(path, 'rb').read()
    assert d[:4] == b'dex\n', '不是 dex: %s' % path
    g = lambda o: struct.unpack_from('<I', d, o)[0]
    str_sz, str_off = g(56), g(60)
    typ_sz, typ_off = g(64), g(68)
    pro_sz, pro_off = g(72), g(76)
    fld_sz, fld_off = g(80), g(84)
    mth_sz, mth_off = g(88), g(92)
    cdf_sz, cdf_off = g(96), g(100)

    str_offs = [g(str_off + 4 * i) for i in range(str_sz)]
    cache = {}

    def s(i):
        if i in cache:
            return cache[i]
        off = str_offs[i]
        while d[off] & 0x80:
            off += 1
        off += 1
        end = d.index(b'\0', off)
        v = d[off:end].decode('utf-8', 'replace')
        cache[i] = v
        return v

    types = [s(g(typ_off + 4 * i)) for i in range(typ_sz)]

    def proto(i):
        _shorty, ret, params = struct.unpack_from('<III', d, pro_off + 12 * i)
        args = []
        if params:
            n = g(params)
            args = [types[struct.unpack_from('<H', d, params + 4 + 2 * k)[0]] for k in range(n)]
        return '(' + ''.join(args) + ')' + types[ret]

    fields = set()
    for i in range(fld_sz):
        c, t, n = struct.unpack_from('<HHI', d, fld_off + 8 * i)
        fields.add('%s->%s:%s' % (types[c], s(n), types[t]))
    methods = set()
    for i in range(mth_sz):
        c, p, n = struct.unpack_from('<HHI', d, mth_off + 8 * i)
        methods.add('%s->%s%s' % (types[c], s(n), proto(p)))
    classes = set()
    for i in range(cdf_sz):
        classes.add(types[g(cdf_off + 32 * i)])
    return dict(classes=classes, methods=methods, fields=fields,
                n_strings=str_sz, n_types=typ_sz, n_protos=pro_sz, size=len(d))


def _uleb(d, off):
    r = s = 0
    while True:
        b = d[off]; off += 1
        r |= (b & 0x7f) << s
        if not b & 0x80:
            return r, off
        s += 7


def bodies(path):
    """按方法签名给出「方法体指纹」：code_item 头部 + insns 字节的 sha256。

    只覆盖指令流（不含 try/catch handler 明细），用于判断"代码是否真的变了"；
    跨构建稳定（汇编非确定性只影响跨方法顺序，不影响单方法指令字节）。
    """
    d = open(path, 'rb').read()
    g = lambda o: struct.unpack_from('<I', d, o)[0]
    str_sz, str_off = g(56), g(60)
    typ_sz, typ_off = g(64), g(68)
    pro_sz, pro_off = g(72), g(76)
    mth_sz, mth_off = g(88), g(92)
    cdf_sz, cdf_off = g(96), g(100)
    str_offs = [g(str_off + 4 * i) for i in range(str_sz)]

    def st(i):
        off = str_offs[i]
        while d[off] & 0x80:
            off += 1
        off += 1
        end = d.index(b'\0', off)
        return d[off:end].decode('utf-8', 'replace')

    types = [st(g(typ_off + 4 * i)) for i in range(typ_sz)]

    def proto(i):
        _sh, ret, params = struct.unpack_from('<III', d, pro_off + 12 * i)
        args = []
        if params:
            n = g(params)
            args = [types[struct.unpack_from('<H', d, params + 4 + 2 * k)[0]] for k in range(n)]
        return '(' + ''.join(args) + ')' + types[ret]

    out = set()
    for ci in range(cdf_sz):
        base = cdf_off + 32 * ci
        cdata = g(base + 24)
        if not cdata:
            continue
        off = cdata
        sf, off = _uleb(d, off)
        inf, off = _uleb(d, off)
        dm, off = _uleb(d, off)
        vm, off = _uleb(d, off)
        for _ in range(sf + inf):
            _, off = _uleb(d, off)
            _, off = _uleb(d, off)
        for cnt in (dm, vm):
            idx = 0
            for _ in range(cnt):
                diff, off = _uleb(d, off)
                idx += diff
                _acc, off = _uleb(d, off)
                code_off, off = _uleb(d, off)
                c, pr, nm = struct.unpack_from('<HHI', d, mth_off + 8 * idx)
                sig = '%s->%s%s' % (types[c], st(nm), proto(pr))
                if code_off == 0:
                    out.add(sig + '|<none>')
                    continue
                regs, ins, outs, tries = struct.unpack_from('<HHHH', d, code_off)
                insns_size = g(code_off + 12)
                blob = d[code_off + 12: code_off + 16 + insns_size * 2]
                out.add('%s|%04x%04x%04x%d|%s' % (
                    sig, regs, ins, outs, tries, hashlib.sha256(blob).hexdigest()[:16]))
    return out


def h(items):
    return hashlib.sha256('\n'.join(sorted(items)).encode()).hexdigest()


def main(paths):
    print('%-22s %8s %8s %8s %8s  %-16s %s' % ('dex', 'classes', 'methods', 'fields', 'strings', 'FINGERPRINT', 'BODY-FP'))
    for p in paths:
        st = parse(p)
        fp = hashlib.sha256(('%s|%s|%s|%d|%d' % (
            h(st['classes']), h(st['methods']), h(st['fields']),
            st['n_strings'], st['n_types'])).encode()).hexdigest()
        bfp = hashlib.sha256('\n'.join(sorted(bodies(p))).encode()).hexdigest()
        print('%-22s %8d %8d %8d %8d  %-16s %s' % (
            p.split('/')[-1], len(st['classes']), len(st['methods']), len(st['fields']),
            st['n_strings'], fp[:16], bfp[:16]))

    if len(paths) > 1:
        sigs, body = [], []
        for p in paths:
            st = parse(p)
            sigs.append(hashlib.sha256(('%s|%s|%s|%d|%d' % (
                h(st['classes']), h(st['methods']), h(st['fields']),
                st['n_strings'], st['n_types'])).encode()).hexdigest())
            body.append(hashlib.sha256('\n'.join(sorted(bodies(p))).encode()).hexdigest())
        same_sig = len(set(sigs)) == 1
        same_body = len(set(body)) == 1
        print('\n结构等价(签名):', '✅ 一致' if same_sig else '❌ 有差异')
        print('方法体等价    :', '✅ 一致（代码没变）' if same_body else '⚠️ 有差异（代码确实改了）')
        return 0 if (same_sig and same_body) else 1
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
