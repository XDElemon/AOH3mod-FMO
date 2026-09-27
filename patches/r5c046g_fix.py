# -*- coding: utf-8 -*-
# r5c046g_fix.py —— G1/G2：把"记忆写入/时间戳"从雾标志上解绑（无条件记录）
#   证据：s3 样本 nP2dif=78 但 nP2s=0 且 nA1 ap=0 ⇒ 候选累加为空；候选省的 getFogDrawArmy() 恒为同一值，
#         而原逻辑只在其中一个值上写 a1Known（&0x4 门随后全拒）/ 盖 a1Gsee（随后"无戳"全拒）。
#   做法：a1Scan 删掉那一条"跳过写入"的分支 ⇒ 每个候选都刷新记忆；a1bPick 让两个分支都盖戳。
#   设计含义：雾只影响"是否用旧情报"（后续 P3b 的表现层），**不再决定"能不能记住"**。
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

# G1：a1Scan —— 删除"雾门跳过写入"
t = rep(t, '    if-eqz v13, :sc_sel    # r5c046e F11: fogDrawArmy==false(不可见) ⇒ 用旧记忆；true(可见) ⇒ 刷新记忆（撤回 E4）',
           '    # r5c046g G1: 记忆写入不再受雾标志影响（无条件记录 6/4；&0x4 门才有意义）',
           'G1 解绑记忆写入')

# G2：a1bPick —— :bp_invis 分支也要盖时间戳
t = rep(t, '''    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I
:bp_nostamp''', '''    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNen:I
    aput v8, v7, v4    # r5c046g G2: 两个分支都盖时间戳（解绑雾标志）
:bp_nostamp''', 'G2 解绑时间戳')

# G3：可观测性 —— :sc_pick 入口打印"本机场选中的 pid"（-1=没选到）
t = rep(t, '''    :sc_pick
    # r5c046 P2a E7e: 每机场每回合只派 1 次（取最优）
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I''', '''    :sc_pick
    # r5c046 P2a E7e: 每机场每回合只派 1 次（取最优）
    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    const-string v14, "nP2pick"

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V''', 'G3 新增 nP2pick 探针')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))