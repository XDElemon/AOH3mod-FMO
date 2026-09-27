# -*- coding: utf-8 -*-
# r5c046e_fix.py —— F10/F11：
#   F10 守卫写反：E7e 的 `if-gez v13, :sc_ap_next` → `if-ltz`（只有 pid<0 才跳过）
#   F11 撤回 E4/E5"视野门翻转"：fogDrawArmy==true 其实表示**可见**（证据：PlayerFogOfWar.setFogOfWar_ExtraCheck 行249-252），
#        原判据 `if-eqz`（不可见→用旧记忆；可见→刷新记忆）本来就是对的；我按错误语义翻反了 ⇒ 可见省永不写记忆 ⇒ 全部候选被 &0x4 门拒绝。
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

# F11a：撤回 a1Scan 的视野门翻转
t = rep(t, 'if-nez v13, :sc_sel    # r5c046 E4: 可见(fog=false) ⇒ 刷新记忆；不可见 ⇒ 用旧记忆',
           'if-eqz v13, :sc_sel    # r5c046e F11: fogDrawArmy==false(不可见) ⇒ 用旧记忆；true(可见) ⇒ 刷新记忆（撤回 E4）',
           'F11a 撤回 E4')

# F11b：撤回 a1bPick 的视野门翻转
t = rep(t, 'if-nez v10, :bp_invis    # r5c046 E5: 可见(fog=false) ⇒ 盖时间戳；不可见 ⇒ 用旧戳',
           'if-eqz v10, :bp_invis    # r5c046e F11: 不可见 ⇒ 不盖戳；可见 ⇒ 盖时间戳（撤回 E5）',
           'F11b 撤回 E5')

# F10：修正 E7e 的 pid 守卫（该行无缩进；用三行组合保证唯一）
t = rep(t, '''    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    if-gez v13, :sc_ap_next''', '''    sget v13, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkPid:I

    if-ltz v13, :sc_ap_next    # r5c046e F10: 只有 pid<0（没选到）才跳过''', 'F10 pid 守卫极性')

# F12：P 骰极性（rnd < P 才尝试）
t = rep(t, '''    cmpl-float v13, v13, v14

    if-ltz v13, :sc_ap_next''', '''    cmpl-float v13, v13, v14

    if-gez v13, :sc_ap_next    # r5c046e F12: cmpl>=0 即 rnd>=P 才跳过；rnd<P 才尝试''', 'F12 P 骰极性')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))