#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_addmg.py —— 防空伤害/命中率 参数化（读 addmg.expected）
addmg.expected：
  行1 = 单发伤害（默认 30.0）
  行2 = 命中率  （默认 0.7）
用法: python3 _patch_addmg.py [smali树]
"""
import os, re, sys, shutil

HERE = os.path.dirname(os.path.abspath(__file__))
TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
AD = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali")
EXP = os.path.join(HERE, "addmg.expected")

def f2h(f):
    import struct
    return "0x%08x" % struct.unpack(">I", struct.pack(">f", float(f)))[0]

def read_exp():
    dmg, hit = 30.0, 0.7
    if os.path.exists(EXP):
        for ln in open(EXP, encoding='utf-8'):
            s = ln.strip()
            if not s or s.startswith('#'):
                continue
            p = s.split()
            if len(p) >= 1 and dmg == 30.0:
                dmg = float(p[0])
                dmg = dmg
            if len(p) >= 2:
                hit = float(p[1])
    return dmg, hit

def main():
    dmg, hit = read_exp()
    s = open(AD, encoding='utf-8').read()
    # adDamagePerHit：整块方法体替换（保证幂等）
    i = s.find('.method public static adDamagePerHit(')
    j = s.find('.end method', i)
    assert i != -1, 'adDamagePerHit 未找到'
    new = ('.method public static adDamagePerHit(II)F\n'
           '    .registers 4\n\n'
           '    # r6d208：单发伤害（addmg.expected 行1）\n'
           '    const v0, %s    # %sf\n\n'
           '    return v0\n'
           '.end method' % (f2h(dmg), dmg))
    s = s[:i] + new + s[j + len('.end method'):]
    # adHitChance
    i = s.find('.method public static adHitChance(')
    j = s.find('.end method', i)
    assert i != -1, 'adHitChance 未找到'
    new = ('.method public static adHitChance(II)F\n'
           '    .registers 4\n\n'
           '    # r6d208：命中率（addmg.expected 行2）\n'
           '    const v0, %s    # %sf\n\n'
           '    return v0\n'
           '.end method' % (f2h(hit), hit))
    s = s[:i] + new + s[j + len('.end method'):]
    bak = AD + '.pre_r6d208'
    if not os.path.exists(bak):
        shutil.copy2(AD, bak)
    open(AD, 'w', encoding='utf-8').write(s)
    print('  ✅ 单发伤害=%s  命中率=%s' % (dmg, hit))

if __name__ == '__main__':
    main()