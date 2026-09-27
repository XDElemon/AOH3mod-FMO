# -*- coding: utf-8 -*-
# r5c046s_fix.py —— F1：按钮空判断极性修正（r 基线树）
#   if-eqz v0, :cond_2c  →  if-nez v0, :cond_2c
import os, sys, hashlib
BTN = '/tmp/w3a_r/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
BAK = BTN + '.pre_r5c046s'

def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()

def main():
    src = open(BTN, encoding='utf-8').read()
    before = md5(BTN)
    old = 'if-eqz v0, :cond_2c'
    new = 'if-nez v0, :cond_2c'
    n = src.count(old)
    if n != 1:
        print('[FAIL] 锚点 %r 命中 %d 次（要求 1）' % (old, n)); return 1
    if not os.path.exists(BAK):
        open(BAK,'w',encoding='utf-8').write(src); print('[BAK]', BAK)
    src = src.replace(old, new, 1)
    open(BTN,'w',encoding='utf-8').write(src)
    print('[OK] 极性修正完成')
    print('BtnMission.smali md5 %s -> %s (%d B)' % (before[:12], md5(BTN)[:12], os.path.getsize(BTN)))
    return 0

if __name__ == '__main__':
    sys.exit(main())