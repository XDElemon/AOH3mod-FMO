# -*- coding: utf-8 -*-
# r5c046c_fix.py —— 修"AI 没起飞"的两个根因
#   F1：autoStrikeOff 解绑没做 ⇒ 新增"只对玩家自己的机场生效"（AI 文明视为已开）—— a1Scan / a1bScan 各一处
#   F2：a1ProbFor 兜底极性写反（if-gtz → if-lez）⇒ 值为 0/载入失败时应回退 0.33，而不是把 P 变成 0
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
for m in ('r5c046 P2a E7a','a1ProbFor'):
    assert m in t, '基线不对：缺 '+m

# ---- F1a：轰炸线（a1Scan）----
t = rep(t, '''    # R5c020: 自动打击开关（每机场，轰炸线）——关掉则跳过该机场（借 v4，随后即被覆盖）
    iget-boolean v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z
    if-nez v4, :sc_ap_next''', '''    # r5c046c F1: 自动打击开关只对"玩家自己的机场"生效；AI 文明视为已开（否则 AI 机场永远被跳过）
    # 真值表：无玩家(观战) ⇒ 照旧看开关；airport.civID == 玩家civ ⇒ 看开关；否则(AI) ⇒ 跳过开关
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    const/4 v14, -0x1
    if-eqz v13, :p2s_swchk
    iget v14, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    if-ne v14, v13, :p2s_swchk
    goto :p2s_swdone
    :p2s_swchk
    iget-boolean v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z
    if-nez v4, :sc_ap_next
    :p2s_swdone''', 'F1a 轰炸线解绑开关')

# ---- F1b：攻击机线（a1bScan）----
t = rep(t, '''    # R5c020: 自动打击开关（每机场，攻击机线）——关掉则跳过该机场（只影响新派发）
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z
    if-nez v3, :bs_ap_next''', '''    # r5c046c F1: 同轰炸线——开关只对玩家自己的机场生效
    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    const/4 v4, -0x1
    if-eqz v13, :p2K_swchk
    iget v4, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    iget v13, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    if-ne v4, v13, :p2K_swchk
    goto :p2K_swdone
    :p2K_swchk
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z
    if-nez v3, :bs_ap_next
    :p2K_swdone''', 'F1b 攻击机线解绑开关')

# ---- F2：a1ProbFor 兜底极性 ----
t = rep(t, 'if-gtz v4, :pf_base', 'if-lez v4, :pf_base    # r5c046c F2: ≤0（含载入失败）才回退 0.33f', 'F2 概率兜底极性')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))