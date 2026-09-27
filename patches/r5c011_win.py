# -*- coding: utf-8 -*-
# R5c011：
#  ① 新鲜度窗口改为运行时 6 × Game.HOURS_PER_TURN（原写死 12 刻度 = 只在 hpt=2 时才对）
#  ② a1bDiag 补 k=22 = HOURS_PER_TURN（把"每回合几小时"钉死，供判读窗口）
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.bak_r5c011')
s = io.open(P, encoding='utf-8').read()
AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
GM = 'Laoc/kingdoms/lukasz/jakowski/Game;'
bad = 0
L = []


def sub1(pat, rep, desc):
    global s, bad
    n = len(re.findall(pat, s, re.S))
    if n != 1:
        L.append(' XX ' + desc + '（命中 ' + str(n) + '）')
        bad += 1
        return
    s = re.sub(pat, rep, s, count=1, flags=re.S)
    L.append(' OK ' + desc)


# ① 窗口 = 6 × HOURS_PER_TURN（运行时）
sub1(r'\s*const/16 v10, 0xc\n(\s*if-gt v11, v10, :bp_loop)',
     '\n    sget v10, ' + GM + '->HOURS_PER_TURN:I\n'
     '    mul-int/lit8 v10, v10, 0x6\n'
     '\\1',
     '① 窗口改为 6×HOURS_PER_TURN')

# ② k=22 = HOURS_PER_TURN
sub1(r'(\n:dg_done\n)',
     r'\1'
     '    const/16 v11, 0x16\n'
     '    sget v10, ' + GM + '->HOURS_PER_TURN:I\n'
     '    invoke-static {v13, v10, v11, v3}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n',
     '② k=22 = HOURS_PER_TURN')

ck = [
    ('窗口已改运行时', ('sget v10, ' + GM + '->HOURS_PER_TURN:I\n    mul-int/lit8 v10, v10, 0x6') in s),
    ('旧 0xc 已无', 'const/16 v10, 0xc' not in s),
    ('k=22 已加', 'const/16 v11, 0x16' in s),
    ('无控制字符', all(ord(c) >= 32 or c in '\n\t' for c in s)),
]
for why, ok in ck:
    L.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)
for x in L:
    print(x)
assert bad == 0
print('OK: r5c011 窗口修正 + k=22 完成')