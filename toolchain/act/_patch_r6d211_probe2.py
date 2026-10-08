import os, re, shutil, sys
T = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
NL = '\n\n'
PDA = os.path.join(T, 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali')
DIAG = os.path.join(T, 'aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali')
M = '''
.method public static adFxDbg2(IIIII)V
    .registers 13

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adDbgN2:I

    const/16 v1, 0x8

    if-ge v0, v1, :skip

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nADW tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adDbgN2:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adDbgN2:I

    :skip
    return-void
.end method
'''
s = open(PDA, encoding='utf-8').read()
if 'adDbgN2:I' not in s:
    i = s.find('.method')
    s = s[:i] + '.field public static adDbgN2:I' + NL + s[i:]
if 'adFxDbg2(IIIII)V' not in s:
    a = '.method public static adFxDbg('
    s = s.replace(a, M.strip() + NL + NL + a, 1)
# 探针1：即将调用 adFxStep 前
A1 = '    invoke-static {p1, v8, v9, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxStep('
if 'nADW tag="1"' not in s:
    assert s.count(A1) == 1
    s = s.replace(A1, '    const/16 v10, 0x1\n\n    invoke-static {v10, v8, v9, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V' + NL + A1, 1)
# 探针2：adFxStep 之后。
# 先定位 adFxStep 调用行后面的 adFxInit 读取
B = '    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n\n    const/4 v1, 0x1'
assert s.count(B) == 1, ('锚点B', s.count(B))
if 'nADW tag="2"' not in s:
    s = s.replace(B, B + NL + '    # r6d211 探针2：推进后 adFxInit / adFxTN\n    const/16 v10, 0x2\n\n    iget v11, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n\n    iget v12, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTN:I\n\n    invoke-static {v10, v11, v12, v11, v12}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg2(IIIII)V', 1)
shutil.copy2(PDA, PDA + '.pre_r6d211')
open(PDA, 'w', encoding='utf-8').write(s)
d = open(DIAG, encoding='utf-8').read()
open(DIAG, 'w', encoding='utf-8').write(re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d211', d))
print('  OK 探针2已插入 + nABOOT→r6d211')
