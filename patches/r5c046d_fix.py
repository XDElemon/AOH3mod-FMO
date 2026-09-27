# -*- coding: utf-8 -*-
# r5c046d_fix.py —— 全量复读后一次修掉 7 处"写反"（r5c046c 之后）
#   F3 FRQ 门：if-ge → if-lt（预算未满才派发）
#   F4/F5 开关解绑：if-ne → if-eq（玩家本国机场才看开关）
#   F6 a1bDivCmp：if-gtz → if-lez（师数更多 ⇒ 返回 +1 = 更好）
#   F7 a1ProbFor 难度系数表：5× if-ne → if-eq（否则档位全错）
#   F8 a1FrqFor：if-lt → if-ge（低难度才返回 1）
#   F9 a1FrqFor：if-ne → if-eq（第 5 档才返回 3）
import os, sys, hashlib
SM='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()
def rep(t,old,new,tag):
    n=t.count(old)
    if n!=1:
        print('[FAIL] %s 锚点匹配=%d（期望1）'%(tag,n)); sys.exit(1)
    print('[OK]   %s'%tag); return t.replace(old,new,1)

t=open(SM,encoding='utf-8').read()
print('修前 md5:', md5(SM))

# F3：FRQ 门（预算 < 上限 ⇒ 派发）
t = rep(t, 'if-ge v13, v14, :p2p_go', 'if-lt v13, v14, :p2p_go    # r5c046d F3: 预算未满才派发', 'F3 FRQ 门极性')

# F4：轰炸线开关解绑（玩家本国 ⇒ 看开关）
t = rep(t, 'if-ne v14, v13, :p2s_swchk', 'if-eq v14, v13, :p2s_swchk    # r5c046d F4: 玩家本国才看开关', 'F4 轰炸线解绑极性')

# F5：攻击机线开关解绑
t = rep(t, 'if-ne v4, v13, :p2K_swchk', 'if-eq v4, v13, :p2K_swchk    # r5c046d F5: 玩家本国才看开关', 'F5 攻击机线解绑极性')

# F6：a1bDivCmp（师数更多 ⇒ 更好）
t = rep(t, 'if-gtz v1, :dcc_le', 'if-lez v1, :dcc_le    # r5c046d F6: >0(更多) ⇒ 返回 +1', 'F6 师数比较极性')

# F7：a1ProbFor 难度系数表（5 处 if-ne → if-eq）
for i in range(5):
    t = rep(t, 'if-ne v2, v3, :pf_m%d' % i, 'if-eq v2, v3, :pf_m%d' % i, 'F7 系数表档位 %d' % i)

# F8：a1FrqFor 低难度分支
t = rep(t, 'if-lt v0, v1, :ff_hi2', 'if-ge v0, v1, :ff_hi2    # r5c046d F8: <3 返回 1', 'F8 FRQ 低档极性')

# F9：a1FrqFor 第 5 档
t = rep(t, 'if-ne v0, v1, :ff_five', 'if-eq v0, v1, :ff_five    # r5c046d F9: ==5 返回 3', 'F9 FRQ 最高档极性')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))