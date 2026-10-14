#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d283b：逐条替换（含真实空行版）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'
TC = 'Laoc/kingdoms/lukasz/menu_element/button/TechTopTab'

REPS = [
    ('sget v7, %s;->dbgDRW:I' % TC, 'sget v0, %s;->dbgDRW:I' % TC),
    ('const/4 v8, 0x3\n    if-ge v7, v8, :d_go', 'const/4 v1, 0x3\n    if-ge v0, v1, :d_go'),
    ('add-int/lit8 v8, v7, 0x1', 'add-int/lit8 v1, v0, 0x1'),
    ('sput v8, %s;->dbgDRW:I' % TC, 'sput v1, %s;->dbgDRW:I' % TC),
    ('const-string v4, "nTTDRAW call"\n    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V',
     'const-string v2, "nTTDRAW call"\n    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V'),
]
for root in TREES:
    p = os.path.join(root, TAB)
    s = open(p, encoding='utf-8').read()
    for old, new in REPS:
        c = s.count(old)
        assert c == 1, (p, old[:40], c)
        s = s.replace(old, new, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('FIXED', p)
print('DONE r6d283b')