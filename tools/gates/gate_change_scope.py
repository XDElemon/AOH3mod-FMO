#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 · 变更范围（只允许声明的方法体发生变化）

为什么需要：签名指纹检测不到方法体改动（v1 漏洞），而方法体指纹只能告诉你"变了"，
不能告诉你"变的是不是你要改的那一个"。本门禁把两者对上。

用法:
  python3 tools/gates/gate_change_scope.py --base a.apk --new b.apk \
      --allow "Laoc/.../AirMission;->unitGenOf(Laoc/.../AirUnit;)I"

  --base/--new 可以是 .apk（自动取 classes.dex）或 .dex
  --allow 可重复；也接受文件（每行一个）
退出码: 0 全部变化都在白名单内；1 有越界变化
"""
import argparse, hashlib, importlib.util, os, struct, sys, zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(HERE))


def load_fp():
    spec = importlib.util.spec_from_file_location('fp', os.path.join(ROOT, 'tools', 'dex_fingerprint.py'))
    m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m)
    return m


def dex_of(path):
    if path.endswith('.dex'):
        return path
    tmp = '/tmp/_gate_%s.dex' % hashlib.md5(path.encode()).hexdigest()[:8]
    with zipfile.ZipFile(path) as z:
        data = z.read('classes.dex')
    with open(tmp, 'wb') as f:
        f.write(data)
    return tmp


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--base', required=True)
    ap.add_argument('--new', required=True)
    ap.add_argument('--allow', action='append', default=[])
    ap.add_argument('--allow-file')
    ap.add_argument('--quiet', action='store_true')
    a = ap.parse_args()

    allow = set(a.allow)
    if a.allow_file:
        with open(a.allow_file, encoding='utf-8') as f:
            allow |= {l.strip() for l in f if l.strip() and not l.startswith('#')}
    if not allow:
        print('❌ 必须给 --allow（白名单为空等于不允许任何变化）')
        return 1

    fp = load_fp()
    b = fp.bodies(dex_of(a.base))
    n = fp.bodies(dex_of(a.new))
    diff = b ^ n
    changed = sorted({x.split('|')[0] for x in diff})

    if not a.quiet:
        print('基线方法体:', len(b), '| 新方法体:', len(n), '| 差异条目:', len(diff))
        for c in changed:
            mark = '✅' if c in allow else '❌'
            print('  %s %s' % (mark, c))

    extra = [c for c in changed if c not in allow]
    if extra:
        print('\n❌ 出现白名单外的方法体变化: %d 个' % len(extra))
        return 1
    if not changed:
        print('\n⚠️ 没有任何方法体变化（改动没生效？）')
        return 1
    print('\n✅ 变更范围通过：%d 个方法，全部在白名单内' % len(changed))
    return 0


if __name__ == '__main__':
    sys.exit(main())
