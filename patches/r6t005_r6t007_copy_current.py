#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6t005_r6t007_copy_current.py — 把「r6t005~r6t007」完成态类源码拷入工作树
#   前置：r6t002_r6t003_tno.py + r6t004_hoibox.py 已运行（MainMenu/InitGame/Images 就位）
#   快照来源：r6s5/*.smali.r6t007（= r6t007 完成态：盒开关/暗幕/居中/返回/守卫极性全量）
import shutil
R6S5 = '/sdcard/GLG/历史23/r6s5'
MENUS = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menus'
PAIRS = [
    ('TnoBlock.smali.r6t007',  'TnoBlock.smali'),
    ('HoiBox.smali.r6t007',    'HoiBox.smali'),
    ('HoiButton.smali.r6t007', 'HoiButton.smali'),
    ('TnoButton.smali.r6t007', 'TnoButton.smali'),
]
for src, dst in PAIRS:
    shutil.copy(R6S5 + '/' + src, MENUS + '/' + dst)
    print('[ok]', dst)
s = open(MENUS + '/MainMenu.smali', encoding='utf-8').read()
assert 'HoiBox;->populate' in s and 'HoiBox;->draw' in s, 'MainMenu wiring missing'
print('[ok] MainMenu wiring present')
print('next: bash toolchain/act/assemble.sh r6t007')
