# -*- coding: utf-8 -*-
# R5c018 / 甲路线：攻击机「弹药＝每机 payload」——让 payload 成为本架次的真正限流
# 依据：设计v2 §七十七 A4 行 / 《下一步调研…》§D.5-§D.6（路线甲）
# 机制（已逐行核实）：
#   · maxAttackRounds = "每段航程"开火轮数上限，且**在 relaunch(切回 EN_ROUTE) 时被清零**(2195-2198)
#   · lingerRounds 每帧 ++（EXECUTING 分支），shouldReturn 在其 >= maxLingerRounds 时转返航
#   · 真正"打光"判据由引擎自带：shouldReturn 里"存在能对地且有弹的机 ⇒ 不返航"，
#     全打光 ⇒ 直接 return true ⇒ 返航（＝D-C①"打光返航"无需新代码）
#   · AirUnit.canAttackGround() = currentPayload>0 && canAttackGround[机型] ⇒ payload 0 ⇒ 不计伤
# 做法（最小改动、零新字段）：
#   ① createAttackArmy: maxAttackRounds 2→16、maxLingerRounds 1→16（把限流交给 payload）
#   ② 探针：createAttackArmy 里 nGA init ar/lr/n；executeAttack 轮数门处 nGA dry
import io, shutil, sys

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
shutil.copyfile(F, F + '.bak_r5c018')
L = io.open(F, encoding='utf-8').read().split('\n')

def find_line(sub, start=0, end=None):
    end = len(L) if end is None else end
    for i in range(start, end):
        if sub in L[i]:
            return i
    raise AssertionError('XX 找不到锚点: %r' % sub)

# ---------- 校验：createAttackArmy 的轮数常量处 ----------
i_caa = find_line('.method public static createAttackArmy')
i_caa_end = find_line('.end method', i_caa)
i_c2 = find_line('const/4 v1, 0x2', i_caa, i_caa_end)
i_iput_rounds = find_line('->maxAttackRounds:I', i_c2, i_c2 + 6)
assert 'iput v1, v0' in L[i_iput_rounds], 'XX 轮数 iput 形态不符: %r' % L[i_iput_rounds]
assert 'const/4 v1, 0x2' in L[i_c2], 'XX 常量行不符: %r' % L[i_c2]
print('OK 锚点: createAttackArmy 第 %d 行常量 / 第 %d 行 iput' % (i_c2 + 1, i_iput_rounds + 1))

IND = '    '
# ① 改常量 + 追加 maxLingerRounds
L[i_c2] = IND + 'const/16 v1, 0x10'
L.insert(i_iput_rounds + 1, '')
L.insert(i_iput_rounds + 2, IND + 'iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I')
print('OK ① maxAttackRounds=16 + maxLingerRounds=16')

# ② 在 createAttackArmy 尾部（return-object 之前）加 nGA init 探针
i_ret = None
for i in range(i_caa_end - 1, i_caa, -1):
    if L[i].strip().startswith('return-object v0'):
        i_ret = i
        break
assert i_ret is not None, 'XX 找不到 createAttackArmy 的 return-object v0'
probe = [
    IND + '# nGA init probe (R5c018)',
    IND + 'new-instance v2, Ljava/lang/StringBuilder;',
    IND + 'invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V',
    IND + 'const-string v3, "nGA init ar="',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'const-string v3, " lr="',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'const-string v3, " n="',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;',
    IND + 'invoke-interface {v3}, Ljava/util/List;->size()I',
    IND + 'move-result v3',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    IND + 'move-result-object v3',
    IND + 'const-string v2, "AIRDBG"',
    IND + 'invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    IND + '# end probe',
]
L[i_ret:i_ret] = probe
print('OK ② nGA init 探针插入 @ %d' % (i_ret + 1))

# ③ executeAttack 轮数门处加 nGA dry 探针
i_ea = find_line('.method private executeAttack')
i_ea_end = find_line('.end method', i_ea)
i_rounds_gate = find_line('->attackRoundsExecuted:I', i_ea, i_ea_end)
i_ltr = find_line('if-lt v0, v1, :cond_7', i_rounds_gate, i_rounds_gate + 6)
assert L[i_ltr + 2].strip() == 'return-void', 'XX 轮数门后不是 return-void: %r' % L[i_ltr + 2]
dry = [
    IND + '# nGA dry probe (R5c018)',
    IND + 'new-instance v2, Ljava/lang/StringBuilder;',
    IND + 'invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V',
    IND + 'const-string v3, "nGA dry r="',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'const-string v3, " mx="',
    IND + 'invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    IND + 'move-result-object v3',
    IND + 'const-string v2, "AIRDBG"',
    IND + 'invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    IND + '# end probe',
]
L[i_ltr + 2:i_ltr + 2] = dry
print('OK ③ nGA dry 探针插入 @ %d' % (i_ltr + 3))

t = '\n'.join(L)
io.open(F, 'w', encoding='utf-8').write(t)

# ---------- 自检 ----------
t = io.open(F, encoding='utf-8').read()
checks = [
    ('const/16 v1, 0x10', 1, '常量改写'),
    ('->maxLingerRounds:I\n', 2, 'maxLingerRounds 共 2 处 iput（新增1 + 构造器1）'),
    ('nGA init ar=', 1, 'init 探针'),
    ('nGA dry r=', 1, 'dry 探针'),
    ('nGA init ar=', 1, 'init 探针唯一'),
]
for s, n, tag in checks:
    got = t.count(s)
    assert got == n, 'XX [%s] %r 出现 %d 次（期望 %d）' % (tag, s, got, n)
# 极性/结构自检：新 iput 紧跟常量之后、探针不含分支
seg = t[t.index('const/16 v1, 0x10'):t.index('const/16 v1, 0x10') + 260]
assert seg.count('iput') == 2, 'XX 两条 iput 未紧跟常量: %r' % seg
for pat in ('nGA init ar=', 'nGA dry r='):
    blk = t[t.index(pat) - 400:t.index(pat) + 900]
    for bad in ('if-', 'goto '):
        assert bad not in blk, 'XX [%s] 探针块含分支 %r' % (pat, bad)
badc = [hex(ord(c)) for c in t if ord(c) > 0x7e and c not in '、。＝（）“”·—⚠️✅❌→①②③④']
assert not badc, 'XX 非 ASCII: %s' % badc[:12]
print('OK 自检通过（常量/两条 iput/两处探针/无分支/ASCII）')
print('OK: r5c018 补丁完成（备份 .bak_r5c018）')
