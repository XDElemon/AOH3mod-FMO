# -*- coding: utf-8 -*-
# R5a003b：入口快照（5 参数版，规避 smali invoke 最多 5 寄存器 的限制）
#   先回滚到 r5a002 状态（.bak_r5a003），再插入 a1E(IIIII)V + 快照调用块
import io, os, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5a003'
assert os.path.exists(BAK), '缺少 r5a002 状态备份'
shutil.copy2(BAK, P)          # 回滚到 r5a002
src = io.open(P, encoding='utf-8').read()
assert 'a1E(IIIII)V' not in src and 'a1E' not in src, '回滚不干净'
print('已回滚到 r5a002 状态')

A1E = u'''\
.method private static a1E(IIIII)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nA1e p0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tgtciv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " all="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

'''

anchor = '.method private static strikeTick_A1(I)V'
assert src.count(anchor) == 1
src = src.replace(anchor, A1E + anchor, 1)

SNAP = u'''\
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v2, 0x0

    if-eqz v1, :a1s_nopl

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :a1s_nopl
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :a1s_noinst

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :a1s_noinst

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    :a1s_noinst
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    const/16 v7, -0x9

    if-eqz v5, :a1s_nopv

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    :a1s_nopv
    const/4 v8, 0x0

    if-eqz v3, :a1s_nomap

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->allAirports:Ljava/util/Map;

    if-eqz v8, :a1s_nomap

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    goto :a1s_call

    :a1s_nomap
    const/4 v8, -0x1

    :a1s_call
    invoke-static {p0, v4, v7, v2, v8}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1E(IIIII)V

'''

CONST = '    const/16 v0, 0x163d\n'
assert src.count(CONST) == 1
src = src.replace(CONST, CONST + '\n' + SNAP, 1)

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok lines=%d' % (src.count('\n') + 1))
assert 'a1E(IIIII)V' in src
print('OK: 5 参数入口快照已插入')