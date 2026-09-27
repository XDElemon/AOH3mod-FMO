# -*- coding: utf-8 -*-
# R4c191：修选择方向（保留最小分，而不是最大分）
#   现状：cmpg-float v9, v7(score), v8(best) + if-gez v9, :cond_51
#         ⇒ v9≤0（score≤best）就跳过更新 ⇒ 实际保留“最大分” ⇒ tier1(机场)永远最后一名
#   修法：对调操作数 ⇒ cmpg-float v9, v8(best), v7(score)
#         ⇒ v9≤0（best≤score）跳过；v9>0（best>score）更新 ⇒ 保留“最小分” ✓
#   并新增探针 dbgSel(IF)V：nSV p=<pid> s=<score>（每次刷新最优时打一行，用于验证方向）
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'dbgSel' not in src, 'already patched'

# ---------- ① 对调比较操作数 + 插探针（按位置定位，避开空行格式差异） ----------
A = 'cmpg-float v9, v7, v8'
assert src.count(A) == 1, 'anchor count=%d' % src.count(A)
i = src.index(A)
B = 'move v1, v4'
j = src.index(B, i)
k = j + len(B)
src = (src[:i] + 'cmpg-float v9, v8, v7' + src[i + len(A):k]
       + '\n    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgSel(IF)V'
       + src[k:])

# ---------- ② 探针 dbgSel(IF)V ----------
SEL = '''.method public static dbgSel(IF)V
    .registers 6
    # R4c191 选择探针：nSV p=<省> s=<分>（每次刷新“最优”时一行，用于验证 min/max 方向）
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "nSV p="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " s="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v0, "AIRDBG"
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    return-void
.end method
'''
anchor = '.method private static provinceHasAirport(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, SEL + anchor, 1)

assert src.count('dbgSel(IF)V') == 2
assert src.count('cmpg-float v9, v8, v7') == 1
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))