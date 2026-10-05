#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""dex_method_diff.py —— 逐方法比较两个 dex 里的若干类
用法: python3 dex_method_diff.py <old.dex> <new.dex> <类名子串> [类名子串...]
依赖: 同目录 DumpClass.class + toolchain/lib 下的 dexlib2/guava/antlr
"""
import subprocess, sys, os, re, tempfile

ACT = os.path.dirname(os.path.abspath(__file__))
LIB = os.path.join(os.path.dirname(ACT), 'lib')
CP = ':'.join([ACT, os.path.join(LIB, 'dexlib2-2.5.2.jar'),
               os.path.join(LIB, 'guava.jar'), os.path.join(LIB, 'antlr-runtime-3.5.2.jar')])


def dump(dex, cls):
    out = subprocess.run(['java', '-cp', CP, 'DumpClass', dex, cls],
                         capture_output=True, text=True).stdout
    methods = {}
    cur = None
    for line in out.splitlines():
        m = re.match(r'^== (.+)$', line)
        if m:
            cur = m.group(1).strip()
            methods[cur] = []
        elif cur is not None:
            methods[cur].append(line)
    return methods


def main():
    old, new = sys.argv[1], sys.argv[2]
    for cls in sys.argv[3:]:
        a = dump(old, cls)
        b = dump(new, cls)
        print('#### 类 %s : 旧 %d 个方法 / 新 %d 个方法' % (cls, len(a), len(b)))
        for k in sorted(set(a) | set(b)):
            if k not in a:
                print('   [新增方法] %s' % k)
            elif k not in b:
                print('   [删除方法] %s' % k)
            elif a[k] != b[k]:
                na = [x.strip() for x in a[k] if x.strip()]
                nb = [x.strip() for x in b[k] if x.strip()]
                print('   [差异] %s   旧 %d 行 -> 新 %d 行' % (k, len(na), len(nb)))
        print()


if __name__ == '__main__':
    main()