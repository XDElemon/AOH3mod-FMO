import io
P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
lines = io.open(P, encoding='utf-8').read().split('\n')

# 定位 airCombatTick 方法范围
s = None
for i, l in enumerate(lines):
    if l.startswith('.method private airCombatTick()V'):
        s = i
        break
assert s is not None, 'no airCombatTick'
e = s
while not lines[e].startswith('.end method'):
    e += 1

# 在该范围内定位三行（去空行后按子串匹配）
idx_sb = [i for i in range(s, e) if 'STRATEGIC_BOMBING' in lines[i]]
idx_aa = [i for i in range(s, e) if 'ATTACK_ARMY' in lines[i]]
idx_goto = []
for i in range(idx_aa[0] + 1, e):
    if lines[i].strip() == 'goto :goto_9d':
        idx_goto = [i]
        break
print('范围内: SB=%d AA=%d goto9d(取AA之后)=%d' % (len(idx_sb), len(idx_aa), len(idx_goto)))
assert len(idx_sb) == 1 and len(idx_aa) == 1 and len(idx_goto) == 1, '锚点不唯一，放弃'

idx_get = [i for i in range(max(s, idx_sb[0] - 8), idx_sb[0]) if '->type:' in lines[i]]
assert len(idx_get) == 1, ('idx_get', idx_get)
drop = set(range(idx_get[0], idx_goto[0] + 1))
out = [l for i, l in enumerate(lines) if i not in drop]
io.open(P, 'w', encoding='utf-8').write('\n'.join(out))
print('已删除 %d 行；剩余 SB=%d AA=%d' % (
    len(drop), sum('STRATEGIC_BOMBING' in l for l in out), sum('ATTACK_ARMY' in l for l in out)))