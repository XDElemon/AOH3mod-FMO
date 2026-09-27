# -*- coding: utf-8 -*-
# R5c010：
#  ① 新鲜度时钟改用游戏原生刻度 now = TURN_ID*24 + HOUR（每回合 +2，天然单调，不依赖我们自己的计数器）
#     6 回合 = 12 个刻度 ⇒ 判定 diff <= 0xC
#  ② 补 3 个可证伪探针：k=21 当前刻度 / k=26 选中省的记录值 / k=27 选中的距离
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.bak_r5c010')
s = io.open(P, encoding='utf-8').read()
AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
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


# ① 时钟：TURN_ID*24 + HOUR
sub1(r'(\s*)sget v8, ' + re.escape(AFM) + r'->a1bTurn:I\n',
     r'\1sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I\n'
     '    mul-int/lit8 v8, v8, 0x18\n'
     '    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I\n'
     '    add-int/2addr v8, v11\n',
     '① 时钟改为 TURN_ID*24+HOUR')

# ①b 窗口 6 回合 = 12 刻度（用后随的 a1bNfr 锚定，避免误伤别处）
sub1(r'\s*const/4 v10, 0x6\n\s*if-gt v11, v10, :bp_loop\s*\n',
     '\n    const/16 v10, 0xc\n    if-gt v11, v10, :bp_loop\n',
     '①b 窗口 6→12 刻度')

# ② 探针：k=21 当前刻度
sub1(r'(\n:bp_done\n)',
     r'\1'
     '    const/4 v12, 0x0\n'
     '    const/16 v11, 0x15\n'
     '    invoke-static {v13, v8, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    const/16 v11, 0x1b\n'
     '    float-to-int v10, v6\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    if-ltz v5, :bp_lgr\n'
     '    goto :bp_lgr_done\n'
     ':bp_lgr\n'
     '    aget v10, v7, v5\n'
     '    const/16 v11, 0x1a\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     ':bp_lgr_done\n',
     '② 探针 k=21(刻度)/k=27(距离)/k=26(选中省记录)')

ck = [
    ('时钟已换（含 mul-int/lit8 v8, v8, 0x18）', 'mul-int/lit8 v8, v8, 0x18' in s),
    ('窗口已改 0xc', 'const/16 v10, 0xc' in s),
    ('旧 0x6 已无（a1bPick 内）', s.count('const/4 v10, 0x6') == 0),
    ('k=21 已加', 'const/16 v11, 0x15' in s),
    ('k=26/27 已加', ('const/16 v11, 0x1a' in s) and ('const/16 v11, 0x1b' in s)),
    ('无控制字符', all(ord(c) >= 32 or c in '\n\t' for c in s)),
]
for why, ok in ck:
    L.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)
for x in L:
    print(x)
assert bad == 0
print('OK: r5c010 时钟修正 + 证伪探针 完成')