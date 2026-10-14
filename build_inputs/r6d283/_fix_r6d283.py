#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d283：修 draw 探针的"参数槽写"错误（v7/v8→v0/v1/v2）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TAB = 'aoc/kingdoms/lukasz/menu_element/button/TechTopTab.smali'

OLD = '''    sget v7, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgDRW:I
    const/4 v8, 0x3
    if-ge v7, v8, :d_go
    goto :d_skip
    :d_go
    add-int/lit8 v8, v7, 0x1
    sput v8, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgDRW:I
    const-string v4, "nTTDRAW call"
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V'''

NEW = '''    sget v0, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgDRW:I
    const/4 v1, 0x3
    if-ge v0, v1, :d_go
    goto :d_skip
    :d_go
    add-int/lit8 v1, v0, 0x1
    sput v1, Laoc/kingdoms/lukasz/menu_element/button/TechTopTab;->dbgDRW:I
    const-string v2, "nTTDRAW call"
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V'''

for root in TREES:
    p = os.path.join(root, TAB)
    s = open(p, encoding='utf-8').read()
    assert s.count(OLD) == 1, (p, s.count(OLD))
    s = s.replace(OLD, NEW, 1)
    open(p, 'w', encoding='utf-8').write(s)
    print('FIXED', p)
print('DONE r6d283')