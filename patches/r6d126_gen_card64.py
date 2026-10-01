#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""生成 64 张"蓝底卡片图"（模板：200x118，蓝底 RGB(0,70,142)＝包里 66..69 号实测量得）
编号规则（写死，后续接线以此为准）：
  index = 70 + (代-3)*16 + 组*4 + 机型
  组：中=0 欧=1 俄=2 美=3      （与 pickAirImage 的 p1 组索引一致）
  机型（美术序）：战斗机=0 截击机=1 攻击机=2 轰炸机=3   （与 pickAirImage 的 p2 一致）
⇒ 3 代：70..85   4 代：86..101   5 代：102..117   6 代：118..133
"""
import os, io
from PIL import Image

SRC = '/sdcard/GLG/贴图补充/空军贴图'
OUT = '/sdcard/GLG/历史23/build_inputs/r6d126/unitsImages_new'
BG = (0, 70, 142)
W, H = 200, 118
GEN = {'3': 0, '4': 1, '5': 2, '6': 3}
GRP = {'中': 0, '欧': 1, '俄': 2, '美': 3}
TYP = {'战斗机': 0, '截击机': 1, '攻击机': 2, '轰炸机': 3}

os.makedirs(OUT, exist_ok=True)
rows = []
for gen in sorted(GEN):
    for cn in ('中', '欧', '俄', '美'):
        d = os.path.join(SRC, gen + '代', cn)
        if not os.path.isdir(d):
            continue
        for fn in sorted(os.listdir(d)):
            if not fn.lower().endswith('.png'):
                continue
            typ = None
            # 注意：素材里存在别名（如"四代战机SU-57"＝战斗机），判定顺序：先长词、后短词
            for k, t in (('截击机', '截击机'), ('攻击机', '攻击机'), ('轰炸机', '轰炸机'),
                         ('战斗机', '战斗机'), ('战机', '战斗机')):
                if k in fn:
                    typ = t
                    break
            if typ is None:
                print('!! 未识别机型', fn)
                continue
            idx = 70 + GEN[gen] * 16 + GRP[cn] * 4 + TYP[typ]
            src = Image.open(os.path.join(d, fn)).convert('RGBA')
            card = Image.new('RGB', (W, H), BG)
            nh = 92
            nw = int(src.size[0] * nh / src.size[1])
            if nw > 188:
                nw = 188
                nh = int(src.size[1] * nw / src.size[0])
            s2 = src.resize((nw, nh))
            card.paste(s2, ((W - nw) // 2, (H - nh) // 2), s2)
            card.save(os.path.join(OUT, '%d.png' % idx))
            rows.append((idx, gen + '代', cn, typ, fn, nw, nh))

rows.sort()
with io.open(os.path.join(OUT, 'MANIFEST.txt'), 'w', encoding='utf-8') as f:
    for r in rows:
        f.write('%d\t%s\t%s\t%s\t%s\t%dx%d\n' % r)
with io.open(os.path.join(OUT, 'numOfImages.txt'), 'w', encoding='utf-8') as f:
    f.write('134')
print('生成文件数=%d' % len(rows))
print('3代编号 = %s' % [r[0] for r in rows if r[1] == '3代'])
print('4代编号 = %s' % [r[0] for r in rows if r[1] == '4代'])
print('样例行1 = %s' % (rows[0],))
print('样例行N = %s' % (rows[-1],))