#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d208_when.py —— 修“在途弹到达时刻被无限顺延”+ 延迟参数化
- scheduleHit 重写：若已有在途弹（adHitAt > now）⇒ 只累加伤害，不改到达时刻
- 延迟小时数读 addmg.expected 行3（默认 24）
"""
import os, re, sys, shutil

HERE = os.path.dirname(os.path.abspath(__file__))
TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
AD = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali")
EXP = os.path.join(HERE, "addmg.expected")

def read_hours(default=24):
    hrs = default
    if os.path.exists(EXP):
        vals = []
        for ln in open(EXP, encoding='utf-8'):
            s = ln.strip()
            if not s or s.startswith('#'):
                continue
            vals.append(s.split())
        if len(vals) >= 3 and vals[2]:
            hrs = int(float(vals[2][0]))
    return hrs

BODY = """.method public static scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V
    .registers 8

    if-eqz p0, :done

    # now = TURN_ID + HOUR
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    add-int/2addr v0, v1

    # r6d208：已有在途弹（adHitAt > now）⇒ 保留最早到达时刻，不得每发都顺延
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    if-gt v2, v0, :dmg

    # 无在途弹 ⇒ 排定到达：now + 延迟小时（addmg.expected 行3）
    const/16 v1, %s

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    :dmg
    # 累加伤害（同任务的多次命中合并成一次结算）
    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    add-float v3, v3, p1

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F

    # 弹迹进入“在途”
    const/4 v5, 0x0

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I

    const/4 v5, 0x1

    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    # 日志：nADF at=… dmg=…
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nADF at="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
"""

def main():
    hrs = read_hours()
    s = open(AD, encoding='utf-8').read()
    i = s.find('.method public static scheduleHit(')
    j = s.find('.end method', i)
    assert i != -1, 'scheduleHit 未找到'
    s = s[:i] + (BODY % hex(hrs)) + s[j + len('.end method'):]
    bak = AD + '.pre_r6d208b'
    if not os.path.exists(bak):
        shutil.copy2(AD, bak)
    open(AD, 'w', encoding='utf-8').write(s)
    print('  ✅ scheduleHit 已重写（保留最早到达；延迟=%d 小时）' % hrs)

if __name__ == '__main__':
    main()