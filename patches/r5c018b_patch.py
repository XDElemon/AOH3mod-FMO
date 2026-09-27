# -*- coding: utf-8 -*-
# R5c018b：翻转 shouldReturn 的 payload 极性 —— 让攻击机"投满 payload 才走"
# 抓样实证（r5c018a）：nGA init ar=16 lr=16（80次）但 nGA fire 全 r=0（77次）、下一帧 nRT sw ⇒ 一趟只投1轮。
# 根因：shouldReturn 里 `if-gtz v4, :cond_29` —— if-gtz = "大于0则跳"，
#       故真值为：存在"能对地且有弹"的机 ⇒ v0 保持1 ⇒ 直接 return true（立刻返航）。
#       期望：有弹 ⇒ v0=0 ⇒ 走 linger（继续待命投弹）；全打光/无对地机 ⇒ return true（打光即走）。
# 改法：`if-gtz v4, :cond_29` → `if-lez v4, :cond_29`（payload<=0 才跳过）
# 影响面：仅 ATTACK_ARMY 任务（其 maxLingerRounds=16）；其余任务类型 linger=1 ⇒ 行为不变。
import io, shutil

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
shutil.copyfile(F, F + '.pre_r5c018b')
L = io.open(F, encoding='utf-8').read().split('\n')
IND = '    '

i_sr = None
for i, s in enumerate(L):
    if 'shouldReturn()Z' in s and s.strip().startswith('.method'):
        i_sr = i
        break
assert i_sr is not None, 'XX 找不到 shouldReturn'
i_sr_end = None
for i in range(i_sr + 1, len(L)):
    if L[i].strip() == '.end method':
        i_sr_end = i
        break
assert i_sr_end is not None, 'XX 找不到 shouldReturn 的 .end method'

hits = [i for i in range(i_sr, i_sr_end) if L[i].strip() == 'if-gtz v4, :cond_29']
assert len(hits) == 1, 'XX shouldReturn 内 if-gtz v4,:cond_29 命中 %d 处（期望1）' % len(hits)
j = hits[0]

# 上下文确认：上一行必须是 iget currentPayload，下一行必须是 const/4 v0,0x0
assert 'currentPayload:I' in L[j - 2], 'XX 上上文不是 currentPayload: %r' % L[j - 2]
assert L[j + 2].strip() == 'const/4 v0, 0x0', 'XX 下一行不是 const/4 v0,0x0: %r' % L[j + 2]
print('OK 锚点: shouldReturn 第 %d 行 = %r' % (j + 1, L[j].strip()))

L[j] = IND + 'if-lez v4, :cond_29'
L.insert(j, IND + '# R5c018b: was if-gtz (armed -> return now). Now: payload<=0 -> skip; armed -> linger')
L.insert(j + 1, '')

io.open(F, 'w', encoding='utf-8').write('\n'.join(L))

# 自检
t = io.open(F, encoding='utf-8').read()
assert t.count('if-gtz v4, :cond_29') == 0, 'XX 旧条件仍在'
assert t.count('if-lez v4, :cond_29') == 1, 'XX 新条件数不为1'
assert t.count('# R5c018b:') == 1, 'XX 标记数不为1'
bad = [c for c in t if ord(c) > 0x7e and c not in u'、。＝（）“”·—→①②③']
assert not bad, 'XX 非 ASCII: %s' % bad[:10]
print('OK: r5c018b 完成（备份 .pre_r5c018b）')