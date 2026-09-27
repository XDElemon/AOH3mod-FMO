# -*- coding: utf-8 -*-
# R5c018a / 甲1'（用户 2026-09-24 拍板）：攻击机"弹药=payload、投完就跑"
# 机制依据（逐行核对）：
#   · EXECUTING 每帧：executeAttack() → a1bReHunt() → lingerRounds++ → shouldReturn()
#   · executeAttack 内部先判 attackRoundsExecuted >= maxAttackRounds ⇒ return-void
#   · 开火尾部 :cond_51 → recordDamage → attackRoundsExecuted++ → :cond_5a return
#   · 攻击机工厂只设 maxAttackRounds=2，maxLingerRounds 取构造器默认 1
#   · shouldReturn：还有"能对地且有弹"的机 ⇒ 走 linger；全打光/无对地机 ⇒ 立即返航
# 本轮改动（只有两处常量 + 三处探针，零新字段、零新门、零状态机改动）：
#   ① createAttackArmy: maxAttackRounds 2→16（抬大，让 payload 当唯一限流）
#   ② 同处新增 maxLingerRounds = 16（必须 ≥ 轮数；写1会退回"打完1轮就走"）
#   ③ 探针 nGA init（工厂）／nGA fire（仅攻击机档，采 :cond_51 之前）／nGA dry（轮数门）
import io, shutil

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
shutil.copyfile(F, F + '.pre_r5c018a')
L = io.open(F, encoding='utf-8').read().split('\n')
IND = '    '

def idx(sub, start=0, end=None):
    end = len(L) if end is None else end
    for i in range(start, end):
        if sub in L[i]:
            return i
    raise AssertionError('XX 找不到锚点: %r (范围 %d..%s)' % (sub, start, end))

# ---------- ① / ② createAttackArmy ----------
i_caa = idx('.method public static createAttackArmy')
i_caa_end = idx('.end method', i_caa)
assert L[i_caa + 1].strip() == '.registers 7', 'XX createAttackArmy 寄存器数变了: %r' % L[i_caa + 1]
i_c2 = idx('const/4 v1, 0x2', i_caa, i_caa_end)
assert L[i_c2].strip() == 'const/4 v1, 0x2', 'XX 常量行不符: %r' % L[i_c2]
i_iput_mr = i_c2 + 2
assert 'maxAttackRounds:I' in L[i_iput_mr], 'XX 轮数 iput 不在常量行 +2: %r' % L[i_iput_mr]
assert 'iput v1, v0' in L[i_iput_mr], 'XX iput 形态不符: %r' % L[i_iput_mr]
L[i_c2] = IND + 'const/16 v1, 0x10'
L.insert(i_iput_mr + 1, '')
L.insert(i_iput_mr + 2, IND + 'iput v1, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I')
print('OK ① maxAttackRounds=16；② maxLingerRounds=16（@%d）' % (i_iput_mr + 3))

# ---------- ③a 探针 nGA init（工厂尾部）----------
# 注意：上面插入了两行 ⇒ 之前算出的 i_caa_end 已失效，必须重算（否则向下搜不到 return-object）
i_caa_end = idx('.end method', i_caa)
i_ret = None
for i in range(i_caa_end, i_caa, -1):
    if L[i].strip().startswith('return-object v0'):
        i_ret = i
        break
assert i_ret is not None, 'XX 找不到 createAttackArmy 的 return-object v0'
# 寄存器纪律：.registers 7 静态方法（p0..p3 = v3..v6）⇒ 只能借 v1/v2（v0 是任务对象）
init_probe = [
    IND + '# nGA init probe (R5c018a)',
    IND + 'new-instance v1, Ljava/lang/StringBuilder;',
    IND + 'invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V',
    IND + 'const-string v2, "nGA init ar="',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxAttackRounds:I',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'const-string v2, " lr="',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->maxLingerRounds:I',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'const-string v2, " n="',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AirMission;->assignedAircraft:Ljava/util/List;',
    IND + 'invoke-interface {v2}, Ljava/util/List;->size()I',
    IND + 'move-result v2',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    IND + 'move-result-object v2',
    IND + 'const-string v1, "AIRDBG"',
    IND + 'invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    IND + '# end probe',
]
L[i_ret:i_ret] = init_probe
print('OK ③a nGA init 探针 @ %d' % (i_ret + 1))

# ---------- ③b 探针 nGA dry（executeAttack 轮数门）----------
i_ea = idx('.method private executeAttack')
i_ea_end = idx('.end method', i_ea)
assert L[i_ea + 1].strip() == '.registers 10', 'XX executeAttack 寄存器数变了: %r' % L[i_ea + 1]
i_gate = idx('if-lt v0, v1, :cond_7', i_ea, i_ea_end)
i_retv = None
for i in range(i_gate + 1, i_gate + 5):
    if L[i].strip() == 'return-void':
        i_retv = i
        break
assert i_retv is not None, 'XX 轮数门后找不到 return-void'
dry_probe = [
    IND + '# nGA dry probe (R5c018a)',
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
L[i_retv:i_retv] = dry_probe
print('OK ③b nGA dry 探针 @ %d' % (i_retv + 1))

# ---------- ③c 探针 nGA fire（仅攻击机档：:cond_51 之前）----------
i_ea_end = idx('.end method', i_ea)   # ③b 插入后旧索引已失效 ⇒ 必须重算
i_51 = None
for i in range(i_ea, i_ea_end):
    if L[i].strip() == ':cond_51':
        i_51 = i
        break
assert i_51 is not None, 'XX 找不到 :cond_51 标签行'
fire_probe = [
    IND + '# nGA fire probe (R5c018a) - attacker tier only (bomber path jumps to :cond_51)',
    IND + 'new-instance v1, Ljava/lang/StringBuilder;',
    IND + 'invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V',
    IND + 'const-string v2, "nGA fire r="',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->attackRoundsExecuted:I',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'const-string v2, " n="',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;',
    IND + 'iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->aliveAircraft:Ljava/util/List;',
    IND + 'invoke-interface {v2}, Ljava/util/List;->size()I',
    IND + 'move-result v2',
    IND + 'invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;',
    IND + 'invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;',
    IND + 'move-result-object v2',
    IND + 'const-string v1, "AIRDBG"',
    IND + 'invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I',
    IND + '# end probe',
]
L[i_51:i_51] = fire_probe
print('OK ③c nGA fire 探针 @ %d' % (i_51 + 1))

io.open(F, 'w', encoding='utf-8').write('\n'.join(L))

# ---------- 自检 ----------
t = io.open(F, encoding='utf-8').read()
for s, n, tag in [
    ('const/16 v1, 0x10', 1, '轮数常量改写'),
    ('->maxLingerRounds:I', 2, 'maxLingerRounds iput（新增1 + 构造器1）'),
    ('nGA init ar=', 1, 'init 探针'),
    ('nGA dry r=', 1, 'dry 探针'),
    ('nGA fire r=', 1, 'fire 探针'),
]:
    got = t.count(s)
    assert got == n, 'XX [%s] %r 出现 %d 次（期望 %d）' % (tag, s, got, n)
for pat in ('nGA init ar=', 'nGA dry r=', 'nGA fire r='):
    p = t.index(pat)
    blk = t[p:p + 1400]
    blk = blk[:blk.index('end probe')]
    for bad in ('if-', 'goto ', ':cond_'):
        assert bad not in blk, 'XX 探针块含控制流 %r' % bad
badc = [c for c in t if ord(c) > 0x7e and c not in '、。＝（）“”·—→①②③']
assert not badc, 'XX 非 ASCII: %s' % badc[:10]
print('OK 自检通过（两常量/三探针/无控制流/ASCII）')
print('OK: r5c018a 完成（备份 .pre_r5c018a）')