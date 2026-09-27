# -*- coding: utf-8 -*-
# r5c028_probe.py —— 纯探针批：二分定位"executeAIAssignment 循环不跑"
#   nA2t：紧接 getAirportsForCiv 的 move-result 之后，打印该 List 的 size()
#   nA2u：紧接 check-cast v2,Airport 之后、nA2m 之前，打印该机场 provinceID
# 判读：nA2s有 & nA2t有 & nA2u无 ⇒ 卡在 isEmpty/if-ge；nA2t无 ⇒ getAirportsForCiv/异常；nA2u有 ⇒ 循环确实在跑
import io, sys, shutil
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
t = io.open(AFM, encoding='utf-8').read()
if u'nA2t' in t:
    print('!! 已打过 r5c028，退出'); sys.exit(1)
shutil.copy2(AFM, AFM + '.pre_r5c028')

# A) nA2t：紧跟 move-result-object v0（getAirportsForCiv 的返回值），在 isEmpty 之前
A_OLD = u'''    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z'''
A_NEW = u'''    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    # r5c028 A: 打印返回的 List 尺寸（在 isEmpty 判定之前）
    const-string v1, "nA2t"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z'''
c = t.count(A_OLD)
if c != 1:
    print('!! A 锚点不唯一 count=%d' % c); sys.exit(1)
t = t.replace(A_OLD, A_NEW, 1)
print('[A] nA2t OK')

# B) nA2u：紧跟 check-cast v2, Airport（循环内），在 nA2m 探针之前
B_OLD = u'''    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    # r5c026 C1b: 无条件探针（原插入点落在 mode==AI 分支内，已移出）'''
B_NEW = u'''    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    # r5c028 B: 循环体入口探针（证明循环真的进了）
    const-string v3, "nA2u"

    iget v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    # r5c026 C1b: 无条件探针（原插入点落在 mode==AI 分支内，已移出）'''
c2 = t.count(B_OLD)
if c2 != 1:
    print('!! B 锚点不唯一 count=%d' % c2); sys.exit(1)
t = t.replace(B_OLD, B_NEW, 1)
print('[B] nA2u OK')

io.open(AFM, 'w', encoding='utf-8').write(t)
print('r5c028 探针批完成')