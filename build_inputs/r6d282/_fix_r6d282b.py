#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d282b：两点探针（构造器 nTTNEW / draw 覆盖 nTTDRAW），二分定位绘制链
import os, shutil

TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
TCLS = 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

# 1) 构造器日志（在 iput-object p2 之后）
CTOR_LOG = ('    const-string v0, "nTTNEW"\n'
            '    invoke-static {v0}, %(dbg)s;->dWrite(Ljava/lang/String;)V\n'
            '    invoke-static {p2}, %(dbg)s;->dWrite(Ljava/lang/String;)V\n') % {'dbg': DBG}

# 2) draw 覆盖（含计数日志 + 调 super）
DRAW_OVR = '''.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 12

    sget v7, %(tcls)s;->dbgDRW:I
    const/4 v8, 0x3
    if-ge v7, v8, :d_go
    goto :d_skip

    :d_go
    add-int/lit8 v8, v7, 0x1
    sput v8, %(tcls)s;->dbgDRW:I
    const-string v4, "nTTDRAW call"
    invoke-static {v4}, %(dbg)s;->dWrite(Ljava/lang/String;)V

    :d_skip
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    return-void
.end method
''' % {'tcls': TCLS, 'dbg': DBG}

for root in TREES:
    p = os.path.join(root, TAB)
    if not os.path.exists(p + '.pre_r6d282b'):
        shutil.copy2(p, p + '.pre_r6d282b')
    s = open(p, encoding='utf-8').read()

    # 静态字段
    if 'dbgDRW:I' not in s:
        anchor_f = '.field public static dbgTBG:I'
        assert s.count(anchor_f) == 1
        s = s.replace(anchor_f, anchor_f + '\n\n.field public static dbgDRW:I', 1)

    # 构造器日志：优先 p2（id）
    if 'nTTNEW' not in s:
        a2 = '    iput-object p2, p0, %s;->sTopID:Ljava/lang/String;\n' % TCLS
        assert s.count(a2) == 1, ('ctor', s.count(a2))
        s = s.replace(a2, a2 + CTOR_LOG, 1)

    # draw 覆盖（插在 actionElement 之前）
    if '.method public draw(' not in s:
        mk = '.method public actionElement()V'
        assert s.count(mk) == 1
        s = s.replace(mk, DRAW_OVR.strip() + '\n\n' + mk, 1)

    open(p, 'w', encoding='utf-8').write(s)
    print('PATCHED', p)
print('DONE r6d282b')