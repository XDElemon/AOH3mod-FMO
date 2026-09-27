# -*- coding: utf-8 -*-
# R5a003（诊断批）：给 strikeTick_A1 加入口快照日志 a1E
#   输出：nA1e p0= apts= tgtciv= pl= all= k=
#     p0    = update(I) 传入的 civID（看玩家文明到底有没有被调到）
#     apts  = getAirportsForCiv(p0) 的数量（0 说明该系统里没有该文明的机场）
#     tgtciv= getProvince(5693).getCivID()，-9 表示 getProvince 返回 null
#     pl    = Game.player.iCivID（玩家文明号）
#     all   = allAirports.size()（-1 表示拿不到）
#     k     = 1（入口快照）
import io, os, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5a003'
src = io.open(P, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(P, BAK)
    print('BACKUP ->', BAK)
assert 'a1E(' not in src, 'a1E 已存在，先回滚'

A1E = u'''\
.method private static a1E(IIIIII)V
    .registers 10

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

    const-string v1, " k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIRDBG"

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

'''

# 1) 插入 a1E（放在 a1Log 之后）
anchor = '.method private static strikeTick_A1(I)V'
assert src.count(anchor) == 1
src = src.replace(anchor, A1E + anchor, 1)

# 2) 在 strikeTick_A1 的常量之后插入入口快照块
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
    const/4 v9, 0x1

    invoke-static {p0, v4, v7, v2, v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1E(IIIIII)V

'''

CONST = '    const/16 v0, 0x163d\n'
assert src.count(CONST) == 1, '目标常量定位失败'
src = src.replace(CONST, CONST + '\n' + SNAP, 1)

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok lines=%d' % (src.count('\n') + 1))
assert 'a1E(IIIIII)V' in src
print('OK: 入口快照已插入')