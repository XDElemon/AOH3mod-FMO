#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d287：nTTV 守卫修正 + actionElement(I) 命中探针（nTTAE）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
TREE = 'aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
CL = 'Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree'
DBG= 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog'

AE = '''.method public actionElement(I)V
    .registers 6

    sget v0, %(cl)s;->dbgAE:I
    const/4 v1, 0x10
    if-ge v0, v1, :ae_skip

    add-int/lit8 v1, v0, 0x1
    sput v1, %(cl)s;->dbgAE:I
    const-string v0, "nTTAE i="
    invoke-static {v0}, %(dbg)s;->dWrite(Ljava/lang/String;)V
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, %(dbg)s;->dWrite(Ljava/lang/String;)V

    :ae_skip
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V
    return-void
.end method
''' % {'cl': CL, 'dbg': DBG}

for root in TREES:
    p = os.path.join(root, TREE)
    t = open(p, encoding='utf-8').read()

    # 1) nTTV 守卫：if-lt → if-ge（>=3 跳过；<3 打日志）
    a = 'if-lt v3, v5, :vis_skip'
    b = 'if-ge v3, v5, :vis_skip'
    assert t.count(a) == 1, ('visguard', t.count(a))
    t = t.replace(a, b, 1)

    # 2) dbgAE 字段
    if 'dbgAE:I' not in t:
        a2 = '.field public static dbgVIS:I'
        assert t.count(a2) == 1
        t = t.replace(a2, a2 + '\n\n.field public static dbgAE:I', 1)

    # 3) actionElement(I) 覆盖（插在 applyTopFilter 之前）
    if 'nTTAE i=' not in t:
        a3 = '.method public applyTopFilter(Ljava/lang/String;)V'
        assert t.count(a3) == 1
        t = t.replace(a3, AE + '\n' + a3, 1)

    open(p, 'w', encoding='utf-8').write(t)
    print('PATCHED', p)
print('DONE r6d287')