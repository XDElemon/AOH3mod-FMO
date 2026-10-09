#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6t004_hoibox.py — 主菜单「钢四式功能盒」（居中框：继续/新游戏/载入/设置）参考重放
#   前置：r6t002/r6t003 已应用（MainMenu 中已有 TnoBlock 两行锚点）
#   新类源码：r6s5/HoiBox.smali.r6t004、r6s5/HoiButton.smali.r6t004
#   之后：assemble.sh r6t004 → verify.sh → build_fast.sh（参数见末尾）
import shutil

PROJ = '/sdcard/GLG/历史23'
R6S5 = PROJ + '/r6s5'
SMALI = '/tmp/w3a/smali/aoc/kingdoms/lukasz'
L = chr(10)


def main():
    shutil.copy(R6S5 + '/HoiBox.smali.r6t004', SMALI + '/menus/HoiBox.smali')
    shutil.copy(R6S5 + '/HoiButton.smali.r6t004', SMALI + '/menus/HoiButton.smali')
    p = SMALI + '/menus/MainMenu.smali'
    s = open(p, encoding='utf-8').read()
    a1 = '    invoke-static {v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->populate(Ljava/util/List;)V'
    a2 = '    invoke-static {p1, p2, p3}, Laoc/kingdoms/lukasz/menus/TnoBlock;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V'
    if 'HoiBox;->populate' not in s:
        assert s.count(a1) == 1, ('a1', s.count(a1))
        s = s.replace(a1, a1 + L + '    invoke-static {v14}, Laoc/kingdoms/lukasz/menus/HoiBox;->populate(Ljava/util/List;)V', 1)
        print('[ok] +populate line')
    else:
        print('[skip] populate line exists')
    if 'HoiBox;->draw' not in s:
        assert s.count(a2) == 1, ('a2', s.count(a2))
        s = s.replace(a2, a2 + L + '    invoke-static {p1, p2, p3}, Laoc/kingdoms/lukasz/menus/HoiBox;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V', 1)
        print('[ok] +draw line')
    else:
        print('[skip] draw line exists')
    open(p, 'w', encoding='utf-8').write(s)
    print('next:')
    print('  1) bash toolchain/act/assemble.sh r6t004')
    print('  2) bash toolchain/act/verify.sh /tmp/r6t004_classes.dex /sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6t003.apk')
    print('  3) bash toolchain/act/build_fast.sh r6t004 /tmp/r6t004_classes.dex /sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6t003.apk')
    print('  4) sh toolchain/autotap3.sh /data/local/tmp/r6t004.apk')


if __name__ == '__main__':
    main()