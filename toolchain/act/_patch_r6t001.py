#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6t001 补丁：B1 素材入库+图片注册
   - InitGame.loadImages_1：在 radarFill 注册块后插入 7 张 TNO UI 图注册 + 1 条自证探针
   - Images.smali：在 radarFill 字段后插入 7 个新字段
用法: python3 _patch_r6t001.py patch   # 先验→备份→写盘→后验
      python3 _patch_r6t001.py check   # 只读校验
"""
import sys, os, shutil

IG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menus/InitGame.smali'
IM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/textures/Images.smali'
BAK_DIR = '/sdcard/GLG/历史23/r6s5/backups_r6t001'

A1 = '    sput v0, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I'
A2 = '    const-string v0, "ui/graph/ringSel.png"'
F1 = '.field public static radarFill:I'
F2 = '.field public static radarUnit:I'

OLD_IG = A1 + '\n\n' + A2
OLD_IM = F1 + '\n\n' + F2

REG = [
    ('ui/tno/tno_frame.png', 'tnoFrame'),
    ('ui/tno/tno_pic1.png', 'tnoPic1'),
    ('ui/tno/tno_pic2.png', 'tnoPic2'),
    ('ui/tno/tno_pic3.png', 'tnoPic3'),
    ('ui/tno/button_edge.png', 'tnoButtonEdge'),
    ('ui/tno/button_h_edge.png', 'tnoButtonHEdge'),
    ('ui/tno/tv_button_edge.png', 'tnoTvButtonEdge'),
]


def build_block():
    L = []
    L.append('    # r6t001: TNO UI assets (frame/pics/buttons/base) - register %d images' % len(REG))
    L.append('')
    for path, fld in REG:
        L.append('    const-string v0, "%s"' % path)
        L.append('')
        L.append('    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I')
        L.append('')
        L.append('    move-result v0')
        L.append('')
        L.append('    sput v0, Laoc/kingdoms/lukasz/textures/Images;->%s:I' % fld)
        L.append('')
    L.append('    # r6t001: self-check probe')
    L.append('')
    L.append('    const-string v0, "nTNO1 v=r6t001 assets=%d"' % len(REG))
    L.append('')
    L.append('    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V')
    return '\n'.join(L)


NEW_IG = A1 + '\n\n' + build_block() + '\n\n' + A2


def build_fields():
    L = []
    for _, fld in REG:
        L.append('.field public static %s:I' % fld)
        L.append('')
    return '\n'.join(L)


NEW_IM = F1 + '\n\n' + build_fields() + F2


def rd(p):
    with open(p, encoding='utf-8') as f:
        return f.read()


def wr(p, s):
    with open(p, 'w', encoding='utf-8') as f:
        f.write(s)


def post_checks(ig, im):
    errs = []
    for path, fld in REG:
        if ig.count('"%s"' % path) != 1:
            errs.append('路径缺/重: ' + path)
        if ig.count('Images;->%s:I' % fld) != 1:
            errs.append('sput缺/重: ' + fld)
    if ig.count('ui/tno/') != len(REG):
        errs.append('ui/tno/ 总数 != %d' % len(REG))
    if ig.count('nTNO1 v=r6t001 assets=%d' % len(REG)) != 1:
        errs.append('探针串缺/重')
    if ig.count('AirDbgLog;->dWrite(Ljava/lang/String;)V') != 1:
        errs.append('dWrite调用缺/重')
    if im.count('.field public static tno') != len(REG):
        errs.append('tno字段总数 != %d' % len(REG))
    for _, fld in REG:
        if im.count('.field public static %s:I' % fld) != 1:
            errs.append('字段缺/重: ' + fld)
    return errs


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else 'check'
    ig = rd(IG)
    im = rd(IM)
    if mode == 'patch':
        errs = []
        c1 = ig.count(OLD_IG)
        c2 = im.count(OLD_IM)
        if c1 != 1:
            errs.append('InitGame锚点(radarFill块) 命中 %d != 1' % c1)
        if c2 != 1:
            errs.append('Images锚点(radarFill字段) 命中 %d != 1' % c2)
        if '# r6t001' in ig or '# r6t001' in im:
            errs.append('已打过补丁（幂等保护）')
        if 'tnoFrame' in im:
            errs.append('Images 已含 tnoFrame 字段')
        if errs:
            print('❌ 先验未过，未写盘:')
            for e in errs:
                print('   -', e)
            sys.exit(1)
        os.makedirs(BAK_DIR, exist_ok=True)
        for p in (IG, IM):
            bp = p + '.pre_r6t001'
            if not os.path.exists(bp):
                shutil.copy2(p, bp)
            shutil.copy2(p, os.path.join(BAK_DIR, os.path.basename(p) + '.pre_r6t001'))
        wr(IG, ig.replace(OLD_IG, NEW_IG))
        wr(IM, im.replace(OLD_IM, NEW_IM))
        errs = post_checks(rd(IG), rd(IM))
        if errs:
            print('❌ 后验失败（需用 .pre_r6t001 回滚）:')
            for e in errs:
                print('   -', e)
            sys.exit(2)
        print('✅ r6t001 patch 完成（%d 图注册 + %d 字段 + 1 探针）' % (len(REG), len(REG)))
        print('   备份: .pre_r6t001（原树） + %s' % BAK_DIR)
    else:
        errs = post_checks(ig, im)
        if errs:
            print('❌ r6t001 check 未过:')
            for e in errs:
                print('   -', e)
            sys.exit(3)
        print('✅ r6t001 check 全过（7图 / 7字段 / 1探针）')


if __name__ == '__main__':
    main()
