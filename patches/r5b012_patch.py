# -*- coding: utf-8 -*-
# R5b012：修 r5b011 探针里的 NoSuchMethodError
#   ArmyDivision 没有 getCivID() 方法（civID 是 public 字段）-> 改成 iget 直读。
# 同时内置一个"本方法内所有对 ArmyDivision 的调用是否真实存在"的小检查（防同类错误）。
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
BAK = P + '.bak_r5b012'
ARM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/army/ArmyDivision.smali'
src = io.open(P, encoding='utf-8').read()
assert 'R5b012' not in src, '已打过 R5b012，先回滚'
shutil.copyfile(P, BAK)

HDR = '.method private static applyArmyDamage'
i = src.index(HDR)
j = src.index('.end method', i) + len('.end method')
body = src[i:j]

OLD = ('    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getCivID()I\n'
       '    move-result v5\n')
NEW = ('    # R5b012: civID 是 public 字段，直接 iget（ArmyDivision 没有 getCivID() 方法）\n'
       '    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I\n')
assert body.count(OLD) == 1, '锚点不唯一：%d' % body.count(OLD)
body = body.replace(OLD, NEW, 1)

src = src[:i] + body + src[j:]
io.open(P, 'w', encoding='utf-8').write(src)

# ---------------- 自检 ----------------
m = re.search(re.escape(HDR) + r'.*?\.end method', src, re.S).group(0)
bad = 0
ok1 = 'ArmyDivision;->getCivID()I' not in m
print(('  OK  ' if ok1 else '  XX  ') + '已移除不存在的 getCivID() 调用')
bad += 0 if ok1 else 1
ok2 = 'iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I' in m
print(('  OK  ' if ok2 else '  XX  ') + '改为 iget 读 civID 字段')
bad += 0 if ok2 else 1

# —— 本方法内所有 "TargetClass;->method(...)" 调用：若目标类在树内，方法必须真实存在（含继承链）
arm = io.open(ARM, encoding='utf-8').read()
DEF = re.compile(r'^\.method\s+(?:public\s+|private\s+|protected\s+|static\s+|final\s+|abstract\s+|'
                 r'synthetic\s+|declared-synchronized\s+|varargs\s+|bridge\s+|constructor\s+|native\s+|'
                 r'strictfp\s+)*(?P<name>[^\s(]+)\((?P<args>[^)]*)\)')
arm_defs = set()
for line in arm.splitlines():
    mm = DEF.match(line)
    if mm:
        arm_defs.add(mm.group('name') + '(' + mm.group('args') + ')')

CALL = re.compile(r'Laoc/kingdoms/lukasz/map/army/ArmyDivision;->([A-Za-z0-9_$<>]+)\(([^)]*)\)')
missing = []
for mn, args in CALL.findall(m):
    if (mn + '(' + args + ')') not in arm_defs and not mn.startswith('<'):
        missing.append(mn + '(' + args + ')')
if missing:
    print('  XX  本方法调用了 ArmyDivision 里不存在的方法：' + ', '.join(sorted(set(missing))))
    bad += 1
else:
    print('  OK  本方法对 ArmyDivision 的所有调用都真实存在')

print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b012 补丁完成')