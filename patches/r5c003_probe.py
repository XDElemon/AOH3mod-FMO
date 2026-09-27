# -*- coding: utf-8 -*-
# R5c003（B1 收尾）：给攻击机扫描补两处"无分支探针"，避免"什么都没发生"时无从定位
#   ① a1bPick 出口：nA1b ap=<机场省> tgt=<选出省，-1=无候选> k=9
#   ② a1bPick 前置不满足：nA1b ap=-1 tgt=-1 k=8
#   ③ a1bScan 前置不满足（记忆表没建/省数为 0 等）：nA1b ap=-1 tgt=-1 k=7
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.bak_r5c003')
s = io.open(P, encoding='utf-8').read()
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


AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

# ---- ① a1bPick：出口探针 + 前置探针 ----
sub1(r':bp_done\s*\n\s*return v5\s*\n:bp_none\s*\n\s*const/4 v5, -0x1\s*\n\s*return v5',
     ':bp_done\n'
     '    const/4 v10, 0x0\n'
     '    const/4 v11, 0x9\n'
     '    invoke-static {v13, v5, v11, v10}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    return v5\n'
     ':bp_none\n'
     '    const/4 v5, -0x1\n'
     '    const/4 v12, -0x1\n'
     '    const/4 v11, 0x8\n'
     '    const/4 v10, 0x0\n'
     '    invoke-static {v12, v12, v11, v10}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    return v5',
     '① a1bPick 加出口探针(k=9) 与前置探针(k=8)')

# ---- ③ a1bScan：四处"前置不满足"改跳 :bs_skip，并补 :bs_skip 段 ----
sub1(r'(sget-object v1, ' + re.escape('Laoc/kingdoms/lukasz/jakowski/Game;') + r'->lProvinces:Ljava/util/List;\s*\n\s*if-eqz v1, )(:bs_ret)',
     r'\1:bs_skip', '③a a1bScan：省表空 -> :bs_skip')
sub1(r'(move-result v12\s*\n\s*if-gtz v12, )(:bs_ret)', r'\1:bs_skip', '③b a1bScan：省数<=0 -> :bs_skip')
sub1(r'(sget-object v7, ' + re.escape(AFM) + r'->a1Gsee:\[I\s*\n\s*if-eqz v7, )(:bs_ret)',
     r'\1:bs_skip', '③c a1bScan：记忆表未建 -> :bs_skip')
sub1(r'(array-length v13, v7\s*\n\s*if-ne v13, v12, )(:bs_ret)', r'\1:bs_skip', '③d a1bScan：表长不符 -> :bs_skip')
sub1(r':bs_ret\s*\n\s*return-void\s*\n\.end method',
     ':bs_ret\n'
     '    return-void\n'
     ':bs_skip\n'
     '    const/4 v12, -0x1\n'
     '    const/4 v11, 0x7\n'
     '    const/4 v13, 0x0\n'
     '    invoke-static {v12, v12, v11, v13}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    goto :bs_ret\n'
     '.end method',
     '③e a1bScan 加 :bs_skip 探针段(k=7)')

ck = [
    ('k=9 出口探针存在', 'const/4 v11, 0x9' in s),
    ('k=8 前置探针存在', 'const/4 v11, 0x8' in s),
    ('k=7 扫描未执行探针存在', 'const/4 v11, 0x7' in s),
    ('标签 :bs_skip 定义唯一', len(re.findall(r'\n:bs_skip\n', s)) == 1),
    ('跳转+定义 :bs_skip 共 6 处（4 跳 + 1 define + 1 goto）', len(re.findall(r':bs_skip', s)) == 6),
    ('a1bScan 正常出口仍为 :bs_ret', ':bs_ret\n    return-void' in s),
]
for why, ok in ck:
    L.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)
for x in L:
    print(x)
assert bad == 0
print('OK: r5c003 探针补丁完成')