# -*- coding: utf-8 -*-
# R5c018c：
#   A) 删掉 shouldReturn 循环守卫后的【冗余无条件 goto :goto_2c】（AirMission:2877）
#      ⇒ 解锁循环体（canAttackGround/payload 判定）⇒ 让 r5c018b 的 if-lez 真正生效
#   B) 把 update() 里的 um_sr 探针从 d() 通道改为 dKey()（抓样可见 shouldReturn 返回值）
# 证据（reach.py 源码级可达性）：shouldReturn total=53 reachable=22 dead=31，死区自 2880 起；
#      删掉 2877 那条 goto 后死区应清零。
# 影响面：仅 ATTACK_ARMY 任务（其 maxLingerRounds=16）；其它类型 linger=1 ⇒ 至多多待 1 帧。
import io, shutil

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
shutil.copyfile(F, F + '.pre_r5c018c')
L = io.open(F, encoding='utf-8').read().split('\n')
IND = '    '

# ---------- 定位 shouldReturn ----------
i_sr = None
for i, s in enumerate(L):
    if s.strip().startswith('.method') and 'shouldReturn()Z' in s:
        i_sr = i
        break
assert i_sr is not None, 'XX 找不到 shouldReturn'
i_sr_end = None
for i in range(i_sr + 1, len(L)):
    if L[i].strip() == '.end method':
        i_sr_end = i
        break
assert i_sr_end is not None, 'XX 找不到 shouldReturn 的 .end method'

def prev_nonblank(i):
    j = i - 1
    while j > i_sr and not L[j].strip():
        j -= 1
    return j

cands = []
for i in range(i_sr, i_sr_end):
    if L[i].strip() == 'goto :goto_2c':
        p = prev_nonblank(i)
        if L[p].strip() == 'if-ge v1, v2, :goto_2c':
            cands.append(i)
assert len(cands) == 1, 'XX 冗余 goto 候选 %d 处（期望1）' % len(cands)
j = cands[0]
print('OK A 锚点: 第 %d 行 %r（上一非空行 = %r）' % (j + 1, L[j].strip(), L[prev_nonblank(j)].strip()))
del L[j]

# ---------- um_sr 探针换通道 ----------
i_us = None
for i, s in enumerate(L):
    if '"um_sr:"' in s:
        i_us = i
        break
assert i_us is not None, 'XX 找不到 um_sr 探针'
i_call = None
for i in range(i_us, i_us + 24):
    if 'AirDbgLog;->d(' in L[i]:
        i_call = i
        break
assert i_call is not None, 'XX um_sr 的 d() 调用未找到'
old = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)'
assert old in L[i_call], 'XX d() 调用形态不符: %r' % L[i_call]
new = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)'
L[i_call] = L[i_call].replace(old, new)
print('OK B um_sr 已改 dKey（第 %d 行）' % (i_call + 1))

io.open(F, 'w', encoding='utf-8').write('\n'.join(L))

# ---------- 自检 ----------
t = io.open(F, encoding='utf-8').read()
assert t.count('goto :goto_2c') == 1, 'XX goto :goto_2c 计数=%d（期望1）' % t.count('goto :goto_2c')
assert '"um_sr:"' in t, 'XX um_sr 丢失'
i2 = t.index('"um_sr:"')
seg = t[i2:i2 + 900]
assert 'AirDbgLog;->dKey(' in seg and 'AirDbgLog;->d(' not in seg.replace('dKey(', ''), 'XX um_sr 通道未换成 dKey'
print('OK: r5c018c 完成（备份 .pre_r5c018c）')