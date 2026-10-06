#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d203_missile.py —— 防空导弹"飞行时间"（镜像飞机导弹设计）+ 红圈只显示自己
① AirMission 新增字段 adHitAt:I / adHitDmg:F（在途弹挂在目标任务上）
② AirDefense：
   - scheduleHit(AirMission;F)V：设 adHitAt = now + (flyTurns>0 ? HOURS_PER_TURN : 0)、adHitDmg += dmg（探针 nADF）
   - tickHits()V：到期的在途弹结算 applyMdDamage（探针 nADK），清状态
   - fireProvince：把"立即 applyMdDamage"换成 scheduleHit
   - tickTurn：先跑 tickHits() 再 tickAll()
③ RadarBitmap.refreshAd：只画"玩家自己的省"（红圈=self；蓝盘仍是别人，互补）
纪律：锚点先验 → 全绿才写盘；备份 .pre_r6d203
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
AM = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirMission.smali")
AD = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali")
RB = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/RadarBitmap.smali")
NL = "\n\n"

FIELDS = """
.field public adHitAt:I

.field public adHitDmg:F
"""

SCHEDULE = """
# ============================================================
# r6d203：防空导弹"在途"登记（镜像飞机导弹 AirMission.missileTick 的口径）
#   now = Game_Calendar.TURN_ID + Game_Calendar.HOUR
#   adHitAt = now + (flyTurns>0 ? Game.HOURS_PER_TURN : 0)   ← 有飞行时间 ⇒ 下一回合到
#   adHitDmg += dmg                                          ← 同任务多发累加
# ============================================================
.method public static scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    .registers 8

    if-eqz p0, :done

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    const/16 v2, 0x1    # flyTurns（1 回合，对齐飞机导弹）

    if-lez v2, :nofly

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    add-int/2addr v0, v2

    :nofly
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    add-float v3, v3, p1

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nADF at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dmg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v5, p1, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :done
    return-void
.end method

# ============================================================
# r6d203：tickHits —— 到期的防空在途弹结算（每个回合在 tickAll 之前调用一次）
# ============================================================
.method public static tickHits()V
    .registers 12

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :done

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    if-eqz v2, :done

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :loop
    if-ge v3, v4, :done

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/AirMission;

    if-eqz v5, :next

    iget v6, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    const/4 v7, 0x0

    cmpg-float v8, v6, v7

    if-lez v8, :next

    iget v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    if-lt v0, v8, :notyet

    const/4 v8, 0x0

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    const/4 v8, 0x0

    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nADK dmg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float v7, v6, v11

    float-to-int v7, v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " k="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :notyet
    :next
    add-int/lit8 v3, v3, 0x1

    goto/16 :loop

    :done
    return-void
.end method
"""

def main():
    # ---------- ① AirMission 字段 ----------
    s = open(AM, encoding="utf-8").read()
    if ".field public adHitAt:I" not in s:
        a = ".field public lastMissileHours:I"
        assert s.count(a) == 1, "AirMission 字段插入锚点异常"
        s = s.replace(a, a + NL + FIELDS.strip() + NL, 1)
        open(AM, "w", encoding="utf-8").write(s)
        print("  ✅ AirMission：adHitAt/adHitDmg 已加")
    # ---------- ② AirDefense ----------
    t = open(AD, encoding="utf-8").read()
    if "scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;" not in t:
        anode = "    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickAll()V\n"
        assert t.count(anode) == 1
        t = t.replace(anode, "    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickHits()V\n" + NL + anode, 1)
        anchor = "    invoke-static {p1, v8, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logHit(IFFI)V\n"
        assert t.count(anchor) == 1
        t = t.replace(anchor, SCHEDULE.strip() + NL + NL + anchor, 1)
        # 把"立即结算"换成"登记在途"
        old = ("    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDamagePerHit(II)F" + NL +
               "    move-result v10" + NL +
               "    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I" + NL +
               "    move-result v9" + NL +
               "    add-int/2addr v4, v9\n")
        new = ("    invoke-static {v9, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->adDamagePerHit(II)F" + NL +
               "    move-result v10" + NL +
               "    # r6d203：不再立即结算 —— 登记为\"在途弹\"，到期由 tickHits() 结算（镜像飞机导弹）" + NL +
               "    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V\n")
        assert t.count(old) == 1, "fireProvince 立即结算块未匹配"
        t = t.replace(old, new, 1)
        open(AD, "w", encoding="utf-8").write(t)
        print("  ✅ AirDefense：tickHits/scheduleHit 已加；fireProvince 改为登记在途；tickTurn 先跑 tickHits")
    # ---------- ③ 红圈只显示自己的 ----------
    r = open(RB, encoding="utf-8").read()
    if "r6d203：红圈只画玩家自己的省" not in r:
        old = ("    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z" + NL +
               "    move-result v9" + NL +
               "    if-eqz v9, :loop\n")
        new = ("    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasAAABuilding(I)Z" + NL +
               "    move-result v9" + NL +
               "    if-eqz v9, :loop" + NL +
               "    # r6d203：红圈只画玩家自己的省（蓝盘仍是别人，二者互补）" + NL +
               "    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n" +
               "    if-eqz v16, :ownchk" + NL +
               "    goto :loop" + NL +
               "    :ownchk" + NL +
               "    iget v16, v16, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I" + NL +
               "    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I" + NL +
               "    move-result v17" + NL +
               "    if-ne v16, v17, :notmine" + NL +
               "    goto :loop" + NL +
               "    :notmine\n")
        assert r.count(old) == 1, "refreshAd 红圈过滤锚点未匹配"
        r = r.replace(old, new, 1)
        # 需要 v16/v17 ⇒ .registers 16 → 18（按需上调）
        r = r.replace("    .registers 16\n\n    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp",
                      "    .registers 18    # r6d203：v16/v17 用于\"只画自己的省\"过滤\n\n    sget-object v0, Laoc/kingdoms/lukasz/map/province/RadarBitmap;->adBmp", 1)
        open(RB, "w", encoding="utf-8").write(r)
        print("  ✅ RadarBitmap.refreshAd：只画玩家自己的省（.registers 16→18）")
    for f in (AM, AD, RB):
        bak = f + ".pre_r6d203"
        if not os.path.exists(bak):
            shutil.copy2(f, bak)

if __name__ == "__main__":
    main()