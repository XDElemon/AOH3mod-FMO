#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d160 —— 修"空中攻击结算闪退"（回归修复）

症状：FATAL Exception（GLThread）
  IndexOutOfBoundsException: Index 8 out of bounds for length 1
    at ArmyDivision.updateArmy(ArmyDivision.java:317)
    at AirMission.applyArmyDamage(:211)
    at AirMission.executeAttack -> update -> AirForceManager.updateMissions
原因：我们在"结算伤害后"直接调 `ArmyDivision.updateArmy(true)V` 刷新部队；
     该师编制数据不一致（槽位索引 8 > 列表长度 1）时它内部越界 ⇒ 整个游戏崩。
修法：把这次刷新改成 **受保护调用** `AirPosProbe.safeUpd(Object)`：
     内部 try/catch(Throwable) 包住 updateArmy(true)，越界不再致命（其它行为不变）。

S1  AirPosProbe 新增 safeUpd(Ljava/lang/Object;)V（带 try/catch）
S2  AirMission.applyArmyDamage 里把 `updateArmy(true)` 换为 safeUpd(div)
"""
import os, shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d160'
REVX = '/tmp/revx/'
AM = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PP = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def backup(p):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)


A_CALL = '''    if-ne v4, v5, :cond_d8

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V'''

N_CALL = '''    if-ne v4, v5, :cond_d8

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->safeUpd(Ljava/lang/Object;)V'''

SAFE = '''

.method public static safeUpd(Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :end

    move-object v0, p0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    :try_start_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :end
    return-void

    :catch_1
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->rtCatch(Ljava/lang/Throwable;)V

    return-void
.end method
'''


def main():
    s = rd(AM)
    if 'AirPosProbe;->safeUpd(' in s:
        print('  [S2] 已应用')
    else:
        backup(AM)
        n = s.count(A_CALL)
        assert n == 1, 'S2 锚点命中 %d != 1' % n
        s = s.replace(A_CALL, N_CALL)
        wr(AM, s)
        print('  S2 AirMission 刷新改受保护调用')
    q = rd(PP)
    if '.method public static safeUpd(' in q:
        print('  [S1] 已应用')
    else:
        backup(PP)
        q = q.rstrip('\n') + '\n' + SAFE
        wr(PP, q)
        print('  S1 AirPosProbe.safeUpd 已追加')
    print()
    print('✅ r6d160 补丁落地（闪退修复）')


if __name__ == '__main__':
    main()