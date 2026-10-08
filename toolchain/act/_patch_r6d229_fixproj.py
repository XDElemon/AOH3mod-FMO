#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d229_fixproj.py
r6d229 = 修正“直投影”两处 bug：
  B1: adFxScaleX/Y 用错字段（getCenterX_Real → iCenterShiftX，对齐原版 getAirDrawPosX）
  B2: 源端坐标错传 v1（=目标省）→ 改为重载 adFxSrc 到 v2 再投影
"""
import os
import re
import sys

T = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = os.path.join(T, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(T, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

def rep_once(txt, pat, repl, label):
    c = len(re.findall(pat, txt))
    assert c == 1, (label, '匹配数', c)
    return re.sub(pat, repl, txt, count=1)

def main():
    s = open(PDA, encoding='utf-8').read()
    L = s.split('\n')

    def span(name):
        for i, l in enumerate(L):
            if l.startswith('.method') and name + '(' in l:
                j = i
                while not L[j].startswith('.end method'):
                    j += 1
                return i, j
        raise SystemExit('method not found: ' + name)

    # B1a: adFxScaleX 字段修正
    a, b = span('adFxScaleX')
    sl = '\n'.join(L[a:b])
    sl = rep_once(sl,
        r'invoke-virtual \{v2\}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real\(\)I\s+move-result v2',
        'iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I',
        'adFxScaleX 字段')
    L[a:b] = sl.split('\n')

    # B1b: adFxScaleY 字段修正
    a, b = span('adFxScaleY')
    sl = '\n'.join(L[a:b])
    sl = rep_once(sl,
        r'invoke-virtual \{v2\}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real\(\)I\s+move-result v2',
        'iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I',
        'adFxScaleY 字段')
    L[a:b] = sl.split('\n')

    # B2：源端两处传参修正（v1 → 重载 adFxSrc 到 v2）
    s = '\n'.join(L)
    s = rep_once(s,
        r'invoke-static \{v1\}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxScaleX\(I\)I\s+move-result v8',
        ('iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n\n'
         ' invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxScaleX(I)I\n\n'
         ' move-result v8'),
        '源端 X')
    s = rep_once(s,
        r'invoke-static \{v1\}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxScaleY\(I\)I\s+move-result v9',
        ('iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I\n\n'
         ' invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxScaleY(I)I\n\n'
         ' move-result v9'),
        '源端 Y')

    open(PDA, 'w', encoding='utf-8').write(s)

    # 自证串
    s2 = open(DIAG, encoding='utf-8').read()
    c = len(re.findall(r'nABOOT v=r6d\d+', s2))
    assert c == 1, ('nABOOT 数', c)
    s2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d229', s2)
    open(DIAG, 'w', encoding='utf-8').write(s2)

    print('PATCH OK: r6d229 投影字段修正 + 源端正名')

if __name__ == '__main__':
    main()