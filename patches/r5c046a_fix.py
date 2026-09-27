# -*- coding: utf-8 -*-
# r5c046a_fix.py —— 修 VerifyError：a1Scan 内寄存器类型冲突（v3 引用↔int、v7 引用↔int）
# 做法：只动 a1Scan —— .registers 16→19，并把"本批新增的打分/随机/常量"临时量改用全新寄存器 v15/v16/v17
#       （不触碰任何原有寄存器 ⇒ 不再与循环回边的引用类型合并冲突）
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

# 0) 断言：这确实是"含 r5c046 P2a 且尚未修"的树
for m in ('r5c046 P2a E7d','r5c046 P2a E7e','r5c046 P2a E2'):
    assert m in t, '缺少标记：'+m+'（基线不对）'

# 1) a1Scan 提升寄存器数（16 → 19）
t = rep(t, '''.method private static a1Scan(I)V
    .registers 16''', '''.method private static a1Scan(I)V
    .registers 19''', 'A1 .registers 16→19（a1Scan）')

# 2) 打分：economy/pop 相关临时量 → v15 / v16 / v17
t = rep(t, '''    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v3

    const/high16 v14, 0x41200000    # 10.0f

    mul-float v3, v3, v14

    float-to-int v3, v3

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v14

    const/16 v7, 0x64

    div-int v14, v14, v7

    add-int v3, v3, v14

    if-ltz v3, :p2s_pos

    const/4 v3, 0x0

    :p2s_pos''', '''    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

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

    :p2s_pos''', 'A2 打分临时量 → v15/v16/v17')

# 3) 分数比较：sub-int 的候选分 → v15
t = rep(t, '    sub-int v14, v3, v14', '    sub-int v14, v15, v14', 'A3 分数比较用 v15')

# 4) 蓄水池随机：v7 → v16（整块替换，避免误伤别处）
t = rep(t, '''    :p2s_eq
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    if-nez v7, :p2s_take''', '''    :p2s_eq
    sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkN:I

    sget-object v16, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v16, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    if-nez v16, :p2s_take''', 'A4 蓄水池随机 → v16')

# 5) 军建档探针：v7/v14 → v16/v17（不动 v13=tier）
t = rep(t, '''    if-nez v13, :p2s_take2

    const-string v7, "nP2mil"

    const/4 v14, 0x1

    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V''', '''    if-nez v13, :p2s_take2

    const-string v16, "nP2mil"

    const/4 v17, 0x1

    invoke-static {v16, v17}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V''', 'A5 军建探针 → v16/v17')

# 6) 存分：sput v3 → v15
t = rep(t, '    sput v3, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I',
           '    sput v15, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkScore:I', 'A6 存分 → v15')

open(SM,'w',encoding='utf-8').write(t)
print('[OK] 修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))

# 7) 自检：a1Scan 内不得再有"v3 被写为数值"或"v7 被写为数值"
import subprocess, re
body = re.search(r'\.method private static a1Scan\(I\)V.*?\n\.end method', t, re.S).group(0)
bad = [l.strip() for l in body.splitlines()
       if re.search(r'\b(move-result|move|const|const/4|const/16|const/high16|sput|add-int|sub-int|div-int|float-to-int|mul-float|if-ltz|if-lez|if-gez|if-gtz)\b', l)
       and re.search(r'\bv3\b|\bv7\b', l)]
print('自检：a1Scan 内仍有对 v3/v7 的数值写/读行数 =', len(bad))
for l in bad[:10]: print('   ', l)
print('结论:', 'PASS（v3/v7 已不再被本批代码触碰）' if not bad or all(('sget-object v7' in l or 'aget-byte' in l or 'aput-byte' in l or 'array-length' in l or 'if-eqz v7' in l) for l in bad) else 'STILL-RISKY')
