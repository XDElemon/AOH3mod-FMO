#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""AXML 字符串池重定向：把某个字符串索引指向另一个字符串（不改变索引号）。

用途：把 AndroidManifest 里 android:name="com.pairip.application.Application"
      改成 "android.app.Application"，从而绕开 PairIP 的 Application 壳。
做法：在字符串池数据区尾部追加新串，把原索引的 offset 指过去；其余索引/属性完全不动。
"""
import struct, sys, zipfile


def uleb(n):
    out = bytearray()
    while True:
        b = n & 0x7f
        n >>= 7
        if n:
            out.append(b | 0x80)
        else:
            out.append(b)
            return bytes(out)


def parse_pool(buf, off):
    ctype, hsize, csize = struct.unpack_from('<HHI', buf, off)
    assert ctype == 0x0001, hex(ctype)
    cnt, stycnt, flags, sstart, stylestart = struct.unpack_from('<IIIII', buf, off + 8)
    utf8 = bool(flags & 0x100)
    offsets = [struct.unpack_from('<I', buf, off + hsize + 4 * i)[0] for i in range(cnt)]
    return dict(hsize=hsize, csize=csize, cnt=cnt, stycnt=stycnt, flags=flags,
                sstart=sstart, stylestart=stylestart, utf8=utf8, offsets=offsets)


def read_str(buf, pool_off, p, idx):
    q = pool_off + p['sstart'] + p['offsets'][idx]
    if p['utf8']:
        l1 = buf[q]; q += 1
        if l1 & 0x80: q += 1
        l2 = buf[q]; q += 1
        if l2 & 0x80:
            n = ((l2 & 0x7f) << 8) | buf[q]; q += 1
        else:
            n = l2
        return buf[q:q + n].decode('utf-8', 'replace')
    n = struct.unpack_from('<H', buf, q)[0]; q += 2
    if n & 0x8000:
        n2 = struct.unpack_from('<H', buf, q)[0]; q += 2
        n = ((n & 0x7fff) << 16) | n2
    return buf[q:q + n * 2].decode('utf-16-le', 'replace')


def encode_utf16_pool_str(s):
    return struct.pack('<H', len(s)) + s.encode('utf-16-le')


def encode_utf8_pool_str(s):
    data = s.encode('utf-8')
    chars = len(s)
    out = bytearray()
    for v in (chars, len(data)):
        out += uleb(v)
    out += data
    return bytes(out), chars, len(data)


def redirect(data, old, new):
    buf = bytearray(data)
    pool_off = 8
    p = parse_pool(buf, pool_off)
    # 支持 UTF-8 与 UTF-16 两种池
    hit = None
    for i in range(p['cnt']):
        if read_str(buf, pool_off, p, i) == old:
            hit = i
            break
    if hit is None:
        raise SystemExit('找不到目标字符串: %r' % old)

    if p['utf8']:
        enc, chars, blen = encode_utf8_pool_str(new)
    else:
        enc = struct.pack('<H', len(new)) + new.encode('utf-16-le')
        chars, blen = len(new), len(new) * 2
    # 数据区末尾（stylesStart 为 0 时就是块尾）
    data_end = pool_off + p['csize']
    if p['stycnt']:
        data_end = pool_off + p['stylestart']
    pad = (-len(enc)) % 4
    blob = enc + b'\x00' * pad
    new_off_rel = data_end - (pool_off + p['sstart'])
    out = bytes(buf[:data_end]) + blob + bytes(buf[data_end:])
    out = bytearray(out)

    # 改 offset 表
    struct.pack_into('<I', out, pool_off + p['hsize'] + 4 * hit, new_off_rel)
    # 改池块大小
    struct.pack_into('<I', out, pool_off + 4, p['csize'] + len(blob))
    # 改文件总大小
    struct.pack_into('<I', out, 4, len(out))
    return bytes(out), hit, chars, blen, len(blob)


def verify(data, expect_name):
    off = 8
    while off < len(data):
        ctype, hsize, csize = struct.unpack_from('<HHI', data, off)
        if ctype == 0x0001:
            p = parse_pool(data, off); strings = [read_str(data, off, p, i) for i in range(p['cnt'])]
        elif ctype == 0x0102:
            ni = struct.unpack_from('<I', data, off + 20)[0]
            astart, asize, acount = struct.unpack_from('<HHH', data, off + 24)
            ab = off + 16 + astart
            if strings[ni] == 'application':
                for i in range(acount):
                    ao = ab + i * asize
                    an = struct.unpack_from('<I', data, ao + 4)[0]
                    raw = struct.unpack_from('<I', data, ao + 8)[0]
                    if strings[an] == 'name':
                        val = strings[raw]
                        return val, val == expect_name
        off += csize
        if csize <= 0:
            break
    return None, False


if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('src', nargs='?')
    ap.add_argument('dst', nargs='?')
    ap.add_argument('--from-apk')
    ap.add_argument('--to')
    a = ap.parse_args()
    src = a.from_apk or a.src
    dst = a.to or a.dst
    OLD = 'com.pairip.application.Application'
    NEW = 'android.app.Application'
    raw = open(src, 'rb').read()
    if raw[:2] == b'\x03\x00':
        mf = raw
    else:
        with zipfile.ZipFile(src) as z:
            mf = z.read('AndroidManifest.xml')
    print('原长度:', len(mf))
    before, _ = verify(mf, NEW)
    print('改前 application name =', before)
    out, idx, chars, blen, added = redirect(mf, OLD, NEW)
    print(f'重定向: 索引 {idx} -> {NEW!r}（{chars} 字符/{blen} 字节，池增 {added} 字节）')
    print('新长度:', len(out))
    after, ok = verify(out, NEW)
    print('改后 application name =', after, '=>', 'OK' if ok else 'FAIL')
    if not ok:
        raise SystemExit(1)
    open(dst, 'wb').write(out)
    print('已写出:', dst)
