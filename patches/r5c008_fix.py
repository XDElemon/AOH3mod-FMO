# -*- coding: utf-8 -*-
# R5c008：修根因（cmpl-float 后的比较方向写反）+ 救活 a1bDiag（死代码）+ 补 k=4 出口码
#   ① a1bPick  cmpl-float v10,v12,v6 ; if-ltz :bp_tw  -> if-gez :bp_tw
#      （if-ltz = 小于0才跳；我们要的是"dist>=best 才进并列/更差块"）
#   ② a1bDiag  cmpl-float v10,v4,v6  ; if-ltz :dg_next -> if-gez :dg_next
#   ③ 把 a1bDiag(I)V 从 ":bs_ret return-void" 之后（不可达）移到 4 个前置检查通过之后
#   ④ a1bPick 在飞达上限时补打 k=4
import io, re, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.bak_r5c008')
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


# ① a1bPick 距离比较方向
sub1(r'(cmpl-float v10, v12, v6\s*\n\s*)if-ltz v10, :bp_tw',
     r'\1if-gez v10, :bp_tw',
     '① a1bPick: if-ltz -> if-gez')

# ② a1bDiag 距离比较方向
sub1(r'(cmpl-float v10, v4, v6\s*\n\s*)if-ltz v10, :dg_next',
     r'\1if-gez v10, :dg_next',
     '② a1bDiag: if-ltz -> if-gez')

# ③a 删掉不可达的那次 a1bDiag 调用
sub1(r'(:bs_ret\n\s*return-void\n)\s*invoke-static \{p0\}, ' + re.escape(AFM) + r'->a1bDiag\(I\)V\n\s*goto :bs_ret\n',
     r'\1',
     '③a 删除死代码 a1bDiag 调用')

# ③b 在 4 个前置检查通过后调用（可达）
sub1(r'(if-ne v13, v12, :bs_skip\s*\n)(\s*)invoke-static \{\}, ' + re.escape(AFM) + r'->getInstance\(\)' + re.escape(AFM) + r'\n',
     r'\1    invoke-static {p0}, ' + AFM + '->a1bDiag(I)V\n\2invoke-static {}, ' + AFM + '->getInstance()' + AFM + '\n',
     '③b a1bDiag 移到可达处')

# ④ 在飞上限补 k=4（用 if-lt 跳过日志块，不重复距离计算）
sub1(r'(invoke-static \{v4\}, ' + re.escape(AFM) + r'->a1bInflight\(I\)I\s*\n\s*move-result v10\s*\n\s*const/4 v11, 0x2\s*\n\s*)if-ge v10, v11, :bp_loop\s*\n',
     r'\1if-lt v10, v11, :bp_go\n'
     '    const/4 v12, 0x0\n'
     '    const/16 v11, 0x4\n'
     '    move v10, v4\n'
     '    invoke-static {v13, v10, v11, v12}, ' + AFM + '->a1bLog(IIILjava/lang/String;)V\n'
     '    goto :bp_loop\n'
     ':bp_go\n',
     '④ k=4 出口码')

ck = [
    ('a1bPick 已改 if-gez :bp_tw', 'if-gez v10, :bp_tw' in s and 'if-ltz v10, :bp_tw' not in s),
    ('a1bDiag 已改 if-gez :dg_next', 'if-gez v10, :dg_next' in s and 'if-ltz v10, :dg_next' not in s),
    ('死代码调用已删（a1bDiag 只剩 1 次调用）', s.count('->a1bDiag(I)V') == 1),
    ('a1bDiag 调用在 getInstance 之前（可达处）',
     'if-ne v13, v12, :bs_skip\n    invoke-static {p0}, ' + AFM + '->a1bDiag(I)V' in s),
    ('k=4 跳过标签唯一 :bp_go', len(re.findall(r'\n:bp_go\n', s)) == 1),
    ('k=4 已加', 'const/16 v11, 0x4' in s),
    ('距离比较只出现 2 处 cmpl-float+if-gez',
     len(re.findall(r'cmpl-float v10, v1?[24], v6\s*\n\s*if-gez v10', s)) == 2),
]
for why, ok in ck:
    L.append((' OK ' if ok else ' XX ') + why)
    bad += 0 if ok else 1

io.open(P, 'w', encoding='utf-8').write(s)
for x in L:
    print(x)
assert bad == 0
print('OK: r5c008 根因修复补丁完成')