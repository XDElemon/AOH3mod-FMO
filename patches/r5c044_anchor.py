# -*- coding: utf-8 -*-
# r5c044_anchor.py —— 只读：确认 r5c044 三处锚点的唯一性（铁律㉜/【55】）
import io

AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
FOW = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
a = io.open(AF, encoding='utf-8').read()
f = io.open(FOW, encoding='utf-8').read()

print('=== [1] AFM: hasActiveChaser 命中判据 ===')
print("count('if-eq v5, v11, :hac_next') =", a.count('if-eq v5, v11, :hac_next'))
print("count(':hac_next')                     =", a.count(':hac_next'))
print("count('hasActiveChaser(JI)Z')         =", a.count('hasActiveChaser(JI)Z'))

print()
print('=== [2] AFM: chaser 门（dispatchAutoIntercept 入口）===')
blk = ('    move-result v5\n'
       '    if-eqz v5, :rc_nc\n'
       '    goto :dsp_ret\n')
print("count(rc_nc 块) =", a.count(blk))

print()
print('=== [3] FOW: 第一条门 + helper 调用 ===')
blk2 = ('    if-nez v5, :rr_p1\n'
        '    iget-wide v8, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J\n'
        '    invoke-static {v8, v9, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z\n')
print("count(if-nez + helper 调用块) =", f.count(blk2))
print("count('if-eqz v5, :rr_p1')    =", f.count('if-eqz v5, :rr_p1'))
print("count('hasActiveChaser')      =", f.count('hasActiveChaser'))

print()
print('=== [4] AFM: AI 链两条门（应保持不动）===')
print("count('if-eqz v9, :uai_go') =", a.count('if-eqz v9, :uai_go'))

print()
print('=== [5] AFM: 插入 nHAC 探针处（v8/v9 是否空闲）===')
print("count('if-eqz v5, :rc_nc') =", a.count('if-eqz v5, :rc_nc'))
print("count('const-string v8, \"nHAC\"') =", a.count('const-string v8, "nHAC"'))

print()
print('=== [6] 备份是否存在（防重复补丁）===')
import os
for p in (AF + '.pre_r5c044', FOW + '.pre_r5c044'):
    print('%-70s %s' % (p.replace('/tmp/w3a/smali/', ''), os.path.exists(p)))