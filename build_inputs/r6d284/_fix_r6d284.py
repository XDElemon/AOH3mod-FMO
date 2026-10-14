#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d284：draw 内的 invoke-super 改 /range（5参数+this=6寄存器，非range上限5）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'

OLD = '    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V'
NEW = '    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/button/Button;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V'

for root in TREES:
    p = os.path.join(root, TAB)
    s = open(p, encoding='utf-8').read()
    c = s.count(OLD)
    assert c == 1, (p, c)
    s = s.replace(OLD, NEW, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('FIXED', p)
print('DONE r6d284')