#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6t002_r6t003_tno.py — TNO启动界面移植（主菜单）补丁与素材处理（参考重放脚本）
#   批次：r6t002（主菜单真替换）+ r6t003（按钮边缘三片式修正）
#   目标树：/tmp/w3a/smali/aoc/kingdoms/lukasz
#   前置：TnoBlock/TnoButton 最终源码在 r6s5/TnoBlock.final.smali、r6s5/TnoButton.final2.smali
#   之后：assemble.sh r6t003 → verify.sh → build_with_assets.sh → autotap3.sh（参数见末尾提示）
import os, re, shutil
PROJ  = '/sdcard/GLG/历史23'
SMALI = '/tmp/w3a/smali/aoc/kingdoms/lukasz'
R6S5  = PROJ + '/r6s5'
STAGE = '/tmp/r6t001_assets/assets/ui/tno'
L = chr(10)

def gen_split_assets():
    from PIL import Image
    os.makedirs(STAGE, exist_ok=True)
    src_i = PROJ + '/tno_ui_extract/定制三图/按钮/按钮_未点击状态.png'
    src_h = PROJ + '/tno_ui_extract/定制三图/按钮/按钮_点击状态.png'
    for tag, src in [('', src_i), ('_h', src_h)]:
        im = Image.open(src).convert('RGBA'); assert im.size == (9, 36)
        e = im.crop((0, 0, 6, 36))
        m = im.crop((6, 0, 9, 36))
        r = e.transpose(Image.FLIP_LEFT_RIGHT)
        e.save(STAGE + '/tno_btn_l%s.png' % tag)
        m.save(STAGE + '/tno_btn_m%s.png' % tag)
        r.save(STAGE + '/tno_btn_r%s.png' % tag)
    print('[ok] split assets ->', STAGE)

def apply_tree_patches():
    shutil.copy(R6S5 + '/TnoBlock.final.smali',   SMALI + '/menus/TnoBlock.smali')
    shutil.copy(R6S5 + '/TnoButton.final2.smali', SMALI + '/menus/TnoButton.smali')
    p = SMALI + '/menus/MainMenu.smali'; s = open(p, encoding='utf-8').read()
    if 'tno_skip_panel' not in s:
        def find(tag):
            ms = [m for m in re.finditer(r'\.line[ \t]+' + tag + r'\b', s)]
            assert len(ms) == 1, (tag, len(ms))
            return s.rfind(L, 0, ms[0].start()) + 1
        l = find('465'); assert 'initMenu' in s[l:l+1400]
        s = s[:l] + '    invoke-static {v14}, Laoc/kingdoms/lukasz/menus/TnoBlock;->populate(Ljava/util/List;)V' + L + L + s[l:]
        l = find('489'); assert 'iXPos' in s[l:l+400]
        s = s[:l] + ('    invoke-static {p1, p2, p3}, Laoc/kingdoms/lukasz/menus/TnoBlock;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V' + L + L
                     + '    goto :tno_skip_panel' + L + L) + s[l:]
        l = find('493'); assert 'WHITE' in s[l:l+300]
        s = s[:l] + '    :tno_skip_panel' + L + L + s[l:]
        open(p, 'w', encoding='utf-8').write(s); print('[ok] MainMenu patched')
    else:
        print('[skip] MainMenu already patched')
    p = SMALI + '/textures/Images.smali'; s = open(p, encoding='utf-8').read()
    if '.field public static tnoFrame:I' not in s:
        a = '.field public static radarFill:I' + L; assert s.count(a) == 1
        s = s.replace(a, a + ''.join('.field public static %s:I' % f + L + L for f in
              ['tnoFrame', 'tnoPic1', 'tnoPic2', 'tnoPic3', 'tnoButtonEdge', 'tnoButtonHEdge', 'tnoTvButtonEdge']), 1)
        print('[ok] Images +7')
    if '.field public static tnoBtnL:I' not in s:
        a = '.field public static tnoTvButtonEdge:I' + L; assert s.count(a) == 1
        s = s.replace(a, a + ''.join('.field public static %s:I' % f + L + L for f in
              ['tnoBtnL', 'tnoBtnM', 'tnoBtnR', 'tnoBtnLH', 'tnoBtnMH', 'tnoBtnRH']), 1)
        print('[ok] Images +6')
    open(p, 'w', encoding='utf-8').write(s)
    p = SMALI + '/menus/InitGame.smali'; s = open(p, encoding='utf-8').read()
    def blk(name, fld):
        parts = ['    const-string v0, "ui/tno/%s.png"' % name,
                 '    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I',
                 '    move-result v0',
                 '    sput v0, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % fld]
        return L.join(parts) + L + L
    if 'tnoTvButtonEdge:I' not in s:
        a = '    sput v0, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I' + L; assert s.count(a) == 1
        s = s.replace(a, a + ''.join(blk(n, f) for n, f in
              [('tno_frame', 'tnoFrame'), ('tno_pic1', 'tnoPic1'), ('tno_pic2', 'tnoPic2'), ('tno_pic3', 'tnoPic3'),
               ('button_edge', 'tnoButtonEdge'), ('button_h_edge', 'tnoButtonHEdge'), ('tv_button_edge', 'tnoTvButtonEdge')]), 1)
    if 'tnoBtnRH:I' not in s:
        a = '    sput v0, Laoc/kingdoms/lukasz/textures/Images;->tnoTvButtonEdge:I' + L; assert s.count(a) == 1
        s = s.replace(a, a + ''.join(blk(n, f) for n, f in
              [('tno_btn_l', 'tnoBtnL'), ('tno_btn_m', 'tnoBtnM'), ('tno_btn_r', 'tnoBtnR'),
               ('tno_btn_l_h', 'tnoBtnLH'), ('tno_btn_m_h', 'tnoBtnMH'), ('tno_btn_r_h', 'tnoBtnRH')]), 1)
    if 'nTNO1 v=r6t003' not in s:
        s = s.replace('nTNO1 v=r6t001 assets=7', 'nTNO1 v=r6t003 assets=13')
    open(p, 'w', encoding='utf-8').write(s); print('[ok] InitGame patched')

if __name__ == '__main__':
    gen_split_assets()
    apply_tree_patches()
    print('next:')
    print('  1) bash toolchain/act/assemble.sh r6t003')
    print('  2) bash toolchain/act/verify.sh /tmp/r6t003_classes.dex /sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6t002.apk')
    print('  3) bash toolchain/act/build_with_assets.sh r6t003 /tmp/r6t001_assets /sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6t002.apk /tmp/r6t003_classes.dex')
    print('  4) sh toolchain/autotap3.sh /data/local/tmp/r6t003.apk')
