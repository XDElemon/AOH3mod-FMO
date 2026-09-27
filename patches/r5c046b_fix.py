# -*- coding: utf-8 -*-
# r5c046b_fix.py —— 在 16 寄存器上限内修 VerifyError
#   a1Scan 可用 scratch：v8（只被赋 TURN_ID、之后从未被读）、v5（每轮先赋值后读）、v14（纯 int 临时）、v13（纯 int 临时）
#   ⇒ 打分用 v8；常量/计数用 v14；随机与探针字符串用 v5；tier 仍用 v13；**不再触碰 v3 / v7**
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

# 0) 回退到 16 寄存器（RunSmali 硬限 v0..v15）
t = rep(t, '''.method private static a1Scan(I)V
    .registers 19''', '''.method private static a1Scan(I)V
    .registers 16''', 'B1 .registers 19→16（工具链硬限 16）')

# 1) 打分块：v15/v16/v17 → v8 / v14（/100 改 div-int/lit8，省一个寄存器）
t = rep(t, '''    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v15

    const/high16 v17, 0x41200000    # 10.0f

    mul-float v15, v15, v17

    float-to-int v15, v15

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    const/16 v16, 0x64

    div-int v14, v14, v16

    add-int v15, v15, v14

    if-ltz v15, :p2s_pos

    const/4 v15, 0x0

    :p2s_pos''', '''    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v8

    const/high16 v14, 0x41200000    # 10.0f

    mul-float v8, v8, v14

    float-to-int v8, v8

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    add-int v8, v8, v14

    if-ltz v8, :p2s_pos

    const/4 v8, 0x0

    :p2s_pos''', 'B2 打分块 → v8 / v14（含 div-int/lit8）')

# 2) 分数比较
t = rep(t, '    sub-int v14, v15, v14', '    sub-int v14, v8, v14', 'B3 分数比较 → v8')

# 3) 蓄水池随机：v16 → v5
t = rep(t, '''    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v16, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    if-nez v16, :p2s_take''', '''    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-nez v5, :p2s_take''', 'B4 蓄水池随机 → v5')

# 4) 军建探针：v16/v17 → v5/v14
t = rep(t, '''    const-string v16, "nP2mil"

    const/4 v17, 0x1

    invoke-static {v16, v17}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V''', '''    const-string v5, "nP2mil"

    const/4 v14, 0x1

    invoke-static {v5, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V''', 'B5 军建探针 → v5/v14')

# 5) 存分：sput v15 → v8
t = rep(t, '    sput v15, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I',
           '    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I', 'B6 存分 → v8')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))

# 6) 自检
import re
body = re.search(r'\.method private static a1Scan\(I\)V.*?\n\.end method', t, re.S).group(0)
hi = [l.strip() for l in body.splitlines() if re.search(r'\bv1[5-9]\b', l)]
num_v37 = [l.strip() for l in body.splitlines()
           if re.search(r'\b(move-result|const|sput|add-int|sub-int|div-int|mul-float|float-to-int)\b', l)
           and re.search(r'\bv3\b|\bv7\b', l)]
print('自检 v15+ 出现行数 =', len(hi), '｜v3/v7 被数值写行数 =', len(num_v37))
for l in (hi+num_v37)[:6]: print('   ', l)
print('结论:', 'PASS' if not hi and not num_v37 else 'CHECK')