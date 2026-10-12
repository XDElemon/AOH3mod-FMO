#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d270 B5a: Technology 加 Category/SubTag 字段 + 类别读取探针（双树补丁）
import re, os, shutil

Q = chr(34)
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
CLS  = 'aoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology.smali'
TREE = 'aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali'

def patch_file(p, pairs):
    s = open(p, encoding='utf-8').read()
    for i, (old, new) in enumerate(pairs):
        c = s.count(old)
        assert c == 1, ('anchor-miss', p, i, c)
        s = s.replace(old, new, 1)
    open(p, 'w', encoding='utf-8').write(s)

field_pairs = [
    ('.field public BattleWidth:I\n\n.field public Discipline:I',
     '.field public BattleWidth:I\n\n.field public Category:Ljava/lang/String;\n\n.field public Discipline:I'),
    ('.field public ResearchCost:I\n\n.field public TreeColumn:I',
     '.field public ResearchCost:I\n\n.field public SubTag:Ljava/lang/String;\n\n.field public TreeColumn:I'),
]

dump_lines = [
    '.method public static final dumpTechCategories()V',
    '    .registers 4',
    '    const/4 v0, 0x0',
    '',
    '    :goto_r270',
    '    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I',
    '    if-ge v0, v1, :cond_r270',
    '    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;',
    '    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;',
    '    move-result-object v1',
    '    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;',
    '    new-instance v2, Ljava/lang/StringBuilder;',
    '    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V',
    '    const-string v3, ' + Q + 'nTCAT id=' + Q,
    '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '    move-result-object v2',
    '    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    '    move-result-object v2',
    '    const-string v3, ' + Q + ' cat=' + Q,
    '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '    move-result-object v2',
    '    iget-object v3, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Category:Ljava/lang/String;',
    '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '    move-result-object v2',
    '    const-string v3, ' + Q + ' sub=' + Q,
    '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '    move-result-object v2',
    '    iget-object v3, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->SubTag:Ljava/lang/String;',
    '    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    '    move-result-object v2',
    '    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    '    move-result-object v2',
    '    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V',
    '    add-int/lit8 v0, v0, 0x1',
    '    goto :goto_r270',
    '',
    '    :cond_r270',
    '    return-void',
    '.end method',
]
dump = '\n'.join(dump_lines) + '\n'

sput = '    sput v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I'
call = '    invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->dumpTechCategories()V'
tail_old = sput + '\n\n    .line 226\n    invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->loadTechnologyImages()V'
tail_new = sput + '\n\n' + call + '\n\n    .line 226\n    invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->loadTechnologyImages()V'

tree_pairs = [
    (tail_old, tail_new),
    ('.method public static final loadTechnologyImages()V',
     dump + '\n.method public static final loadTechnologyImages()V'),
]

for t in TREES:
    cls = os.path.join(t, CLS)
    tree = os.path.join(t, TREE)
    for f in (cls, tree):
        assert os.path.exists(f), f
        if not os.path.exists(f + '.pre_r6d270'):
            shutil.copy2(f, f + '.pre_r6d270')
    s2 = open(cls, encoding='utf-8').read()
    if 'Category:Ljava/lang/String;' not in s2:
        patch_file(cls, field_pairs)
    s2 = open(cls, encoding='utf-8').read()
    assert s2.count('.field public Category:Ljava/lang/String;') == 1, t
    assert s2.count('.field public SubTag:Ljava/lang/String;') == 1, t
    s = open(tree, encoding='utf-8').read()
    if 'dumpTechCategories' not in s:
        patch_file(tree, tree_pairs)
    s = open(tree, encoding='utf-8').read()
    assert s.count('dumpTechCategories') == 2, ('count', t, s.count('dumpTechCategories'))
    print('patched', t)

print('DONE')
