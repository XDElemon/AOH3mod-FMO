# -*- coding: utf-8 -*-
# R5c021 E5 诊断批：11 处探针（零行为改动、无分支、寄存器不升级）
# 写侧 W0-W5（SaveGameManager.Save_Airforce_Data）／读侧 R1/R2/R4/R5/R6（LoadSavedGameManager.loadSave_Airforce）
# 新增日志辅助方法：AirDbgLog.e5i(String,I)V / e5ii(String,I,I)V / e5s(String,String)V
import io

W = '/tmp/w3a/smali'
B = W + '/aoc/kingdoms/lukasz/map/battles'
S = W + '/aoc/kingdoms/lukasz/jakowski/SaveLoad'
DL = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'

NEW_METHODS = u'''
.method public static e5i(Ljava/lang/String;I)V
    .registers 8
    const-string v0, "AIRDBG"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "nE5 "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " a="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

.method public static e5ii(Ljava/lang/String;II)V
    .registers 10
    const-string v0, "AIRDBG"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "nE5 "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " a="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " b="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

.method public static e5s(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    const-string v0, "AIRDBG"
    const-string v4, "-"
    if-nez p1, :e5s_have
    move-object v4, p1
    :e5s_have
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "nE5 "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, " s="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method
'''

def rd(p):
    return io.open(p, encoding='utf-8').read().split('\n')

def wr(p, lines):
    io.open(p, 'w', encoding='utf-8').write('\n'.join(lines))

def method_span(lines, sig):
    st = None
    for i, l in enumerate(lines):
        if l.startswith('.method') and sig in l:
            st = i
            break
    assert st is not None, 'method not found: ' + sig
    for j in range(st + 1, len(lines)):
        if lines[j].strip() == '.end method':
            return st, j
    raise AssertionError('no end method for ' + sig)

def find_nth(lines, a, b, needle, nth, tag):
    hits = [i for i in range(a, b + 1) if needle in lines[i]]
    assert len(hits) > nth, 'anchor %s hits=%d need nth=%d (%s)' % (tag, len(hits), nth, needle)
    return hits[nth]

def find_exact(lines, a, b, text, tag):
    hits = [i for i in range(a, b + 1) if lines[i].strip() == text]
    assert len(hits) == 1, 'exact anchor %s hits=%d (%s)' % (tag, len(hits), text)
    return hits[0]

def insert(lines, idx, snippet, before=True):
    return lines[:idx] + snippet + lines[idx:] if before else lines[:idx + 1] + snippet + lines[idx + 1:]

# ---------- A) AirDbgLog 新增三个辅助方法（幂等） ----------
p = B + '/AirDbgLog.smali'
L = rd(p)
if any('e5i(Ljava/lang/String;I)V' in x for x in L):
    print('A: 已存在，跳过')
else:
    s, e = method_span(L, 'provArmySz(')
    L = insert(L, e, NEW_METHODS.strip('\n').split('\n'), before=False)
    wr(p, L)
    print('A: AirDbgLog +3 methods, lines=%d' % len(L))

# ---------- B) 写侧 6 处 ----------
p = S + '/SaveGameManager.smali'
L = rd(p)
s, e = method_span(L, 'Save_Airforce_Data(')
i = find_nth(L, s, e, 'Ljava/util/Map;->values()Ljava/util/Collection;', 0, 'W0')
L = insert(L, i, [
    '    const-string v10, "W0civ"',
    '    invoke-interface {v3}, Ljava/util/Map;->size()I',
    '    move-result v11',
    '    invoke-static {v10, v11}, %se5i(Ljava/lang/String;I)V' % DL,
])

s, e = method_span(L, 'Save_Airforce_Data(')
i = find_nth(L, s, e, 'FileManager;->getSaveType(Ljava/lang/String;)', 0, 'W1')
L = insert(L, i + 1, [
    '    const-string v10, "W1path"',
    '    invoke-static {v10, v4}, %se5s(Ljava/lang/String;Ljava/lang/String;)V' % DL,
])

s, e = method_span(L, 'Save_Airforce_Data(')
i = find_nth(L, s, e, 'Json;->toJson(Ljava/lang/Object;)', 0, 'W2')
L = insert(L, i, [
    '    const-string v10, "W2h"',
    '    const/4 v11, 0x1',
    '    invoke-static {v10, v11}, %se5i(Ljava/lang/String;I)V' % DL,
])

s, e = method_span(L, 'Save_Airforce_Data(')
i = find_nth(L, s, e, '{v3, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString', 0, 'W3')
L = insert(L, i, [
    '    const-string v10, "W3main"',
    '    const/4 v11, 0x1',
    '    invoke-static {v10, v11}, %se5i(Ljava/lang/String;I)V' % DL,
], before=False)

s, e = method_span(L, 'Save_Airforce_Data(')
i = find_nth(L, s, e, '{v6, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeString', 0, 'W4')
L = insert(L, i, [
    '    const-string v10, "W4dbg"',
    '    const/4 v11, 0x1',
    '    invoke-static {v10, v11}, %se5i(Ljava/lang/String;I)V' % DL,
], before=False)

s, e = method_span(L, 'Save_Airforce_Data(')
i = find_exact(L, s, e, ':catch_22a', 'W5a')
j = find_nth(L, i, e, 'move-exception v0', 0, 'W5b')
L = insert(L, j, [
    '    const-string v10, "W5ex"',
    '    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;',
    '    move-result-object v11',
    '    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;',
    '    move-result-object v11',
    '    invoke-static {v10, v11}, %se5s(Ljava/lang/String;Ljava/lang/String;)V' % DL,
], before=False)
wr(p, L)
print('B: SaveGameManager +6 probes')

# ---------- C) 读侧 5 处 ----------
p = S + '/LoadSavedGameManager.smali'
L = rd(p)
s, e = method_span(L, 'loadSave_Airforce(')
i = find_nth(L, s, e, 'goto :goto_77', 0, 'R1')
L = insert(L, i, [
    '    const-string v4, "R1main"',
    '    const/4 v5, 0x1',
    '    invoke-static {v4, v5}, %se5i(Ljava/lang/String;I)V' % DL,
])

s, e = method_span(L, 'loadSave_Airforce(')
i = find_exact(L, s, e, ':goto_77', 'R2')
L = insert(L, i, [
    '    const-string v4, "R2dbg"',
    '    const/4 v5, 0x1',
    '    invoke-static {v4, v5}, %se5i(Ljava/lang/String;I)V' % DL,
])

s, e = method_span(L, 'loadSave_Airforce(')
i = find_nth(L, s, e, 'Save_Airforce;->airports:Ljava/util/List;', 0, 'R4a')
j = find_nth(L, i + 1, e, 'invoke-interface {v6}, Ljava/util/List;->iterator()', 0, 'R4b')
L = insert(L, j, [
    '    const-string v14, "R4civ"',
    '    iget-object v15, v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;',
    '    invoke-interface {v15}, Ljava/util/Map;->size()I',
    '    move-result v15',
    '    invoke-static {v14, v15}, %se5i(Ljava/lang/String;I)V' % DL,
    '    const-string v14, "R4dto"',
    '    invoke-interface {v6}, Ljava/util/List;->size()I',
    '    move-result v15',
    '    invoke-static {v14, v15}, %se5i(Ljava/lang/String;I)V' % DL,
])

s, e = method_span(L, 'loadSave_Airforce(')
i = find_nth(L, s, e, 'Save_Airport;->totalAircraft:I', 0, 'R5')
L = insert(L, i, [
    '    const-string v14, "L1hit"',
    '    invoke-static {v14, v12}, %se5i(Ljava/lang/String;I)V' % DL,
])

s, e = method_span(L, 'loadSave_Airforce(')
i = find_nth(L, s, e, 'iget-object v0, v12, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;', 0, 'R6')
L = insert(L, i, [
    '    const-string v14, "L3unit"',
    '    invoke-static {v14, v0}, %se5i(Ljava/lang/String;I)V' % DL,
])
wr(p, L)
print('C: LoadSavedGameManager +5 probes')
print('OK: r5c021 11 处探针已写入')