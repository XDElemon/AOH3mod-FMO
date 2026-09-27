# -*- coding: utf-8 -*-
# R5c019c / 攻击机选靶分散化（Plan B：寄存器仍 16，新状态走静态字段）
#  · 排序键 = (在飞数↑ , 距离↑ , 同档[≤航程10%]随机)
#  · 取消“每省在飞≤2”上限（层数不封顶）
#  · 顺带修 a1bPick 原比较块的方向雷（更远也采纳 / 并列取较大ID）
#  · 探针：0x30=选中在飞数 0x31=同档数；重瞄 0x32=在飞数 0x33=同档数
import io, os, shutil

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = F + '.pre_r5c019c'
if not os.path.exists(BAK):
    shutil.copy2(F, BAK)
t = io.open(F, encoding='utf-8').read()
n0 = t.count('\n')

def repl(old, new, tag):
    global t
    c = t.count(old)
    assert c == 1, '锚点未唯一命中: %s (count=%d)' % (tag, c)
    t = t.replace(old, new)
    print('  OK', tag)

A = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;->'

# ---------- 0. 新增静态暂存字段 ----------
repl(
'.field public static a1bNfr:I\n',
'.field public static a1bNfr:I\n'
'    # R5c019: 选靶分散用的静态暂存（工具链限 16 寄存器，故不走局部寄存器）\n'
'    .field public static a1bPkInf:I\n'
'    .field public static a1bPkN:I\n'
'    .field public static a1bPkTol:F\n'
'    .field public static a1bRtInf:I\n'
'    .field public static a1bRtN:I\n'
'    .field public static a1bRtTol:F\n',
'新增字段')

# ---------- 1. a1bPick 初始化 ----------
repl(
'    sput v11, ' + A + 'a1bNfr:I\n'
':bp_loop\n',
'    sput v11, ' + A + 'a1bNfr:I\n'
'    # R5c019: 重置分散暂存 + 计算同档阈值(航程*10%)\n'
'    const/4 v10, -0x1\n'
'    sput v10, ' + A + 'a1bPkInf:I\n'
'    const/4 v10, 0x0\n'
'    sput v10, ' + A + 'a1bPkN:I\n'
'    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
'    invoke-static {v10}, ' + A + 'getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
'    move-result v10\n'
'    const v11, 0x3dcccccd    # 0.1f\n'
'    mul-float v10, v10, v11\n'
'    sput v10, ' + A + 'a1bPkTol:F\n'
':bp_loop\n',
'pick 初始化')

# ---------- 2. a1bPick 主体（去上限 + 三级键） ----------
repl(
'    invoke-static {v4}, ' + A + 'a1bInflight(I)I\n'
'    move-result v10\n'
'    const/4 v11, 0x2\n'
'    if-lt v10, v11, :bp_go\n'
'    const/4 v12, 0x0\n'
'    const/16 v11, 0x4\n'
'    move v10, v4\n'
'    invoke-static {v13, v10, v11, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    goto :bp_loop\n'
':bp_go\n'
'    invoke-direct {v0, v13, v4}, ' + A + 'provinceDistance(II)F\n'
'    move-result v12\n'
'    cmpl-float v10, v12, v6\n'
'    if-gez v10, :bp_tw\n'
'    goto :bp_take\n'
':bp_tw\n'
'    if-nez v10, :bp_loop\n'
'    if-ge v4, v5, :bp_loop\n'
':bp_take\n'
'    move v6, v12\n'
'    move v5, v4\n'
'    goto :bp_loop\n',
'    # R5c019: 排序键=(在飞数↑, 距离↑, 同档随机)；不再有“每省≤2”上限\n'
'    invoke-static {v4}, ' + A + 'a1bInflight(I)I\n'
'    move-result v10\n'
'    if-gtz v10, :bp_key\n'
'    const/4 v12, 0x0\n'
'    const/16 v11, 0x4\n'
'    invoke-static {v13, v4, v11, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
':bp_key\n'
'    invoke-direct {v0, v13, v4}, ' + A + 'provinceDistance(II)F\n'
'    move-result v11\n'
'    sget v12, ' + A + 'a1bPkInf:I\n'
'    if-gez v12, :bp_cmp\n'
'    move v12, v10\n'
'    sput v12, ' + A + 'a1bPkInf:I\n'
'    move v6, v11\n'
'    const/4 v12, 0x1\n'
'    sput v12, ' + A + 'a1bPkN:I\n'
'    goto :bp_take\n'
':bp_cmp\n'
'    sget v12, ' + A + 'a1bPkInf:I\n'
'    if-lt v10, v12, :bp_better\n'
'    if-gt v10, v12, :bp_loop\n'
'    sget v12, ' + A + 'a1bPkTol:F\n'
'    sub-float v12, v6, v12\n'
'    cmpl-float v12, v11, v12\n'
'    if-ltz v12, :bp_better\n'
'    sget v12, ' + A + 'a1bPkTol:F\n'
'    add-float v12, v6, v12\n'
'    cmpl-float v12, v11, v12\n'
'    if-lez v12, :bp_band\n'
'    goto :bp_loop\n'
':bp_band\n'
'    sget v12, ' + A + 'a1bPkN:I\n'
'    add-int/lit8 v12, v12, 0x1\n'
'    sput v12, ' + A + 'a1bPkN:I\n'
'    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;\n'
'    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I\n'
'    move-result v10\n'
'    if-nez v10, :bp_take\n'
'    goto :bp_loop\n'
':bp_better\n'
'    const/4 v12, 0x1\n'
'    sput v12, ' + A + 'a1bPkN:I\n'
'    move v12, v10\n'
'    sput v12, ' + A + 'a1bPkInf:I\n'
'    move v6, v11\n'
':bp_take\n'
'    move v5, v4\n'
'    goto :bp_loop\n',
'pick 主体')

# ---------- 3. a1bPick 探针 ----------
repl(
'    sget v10, ' + A + 'a1bNfr:I\n'
'    const/16 v11, 0xe\n'
'    invoke-static {v13, v10, v11, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    return v5\n',
'    sget v10, ' + A + 'a1bNfr:I\n'
'    const/16 v11, 0xe\n'
'    invoke-static {v13, v10, v11, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    # R5c019: 0x31=同档候选数(>1 说明随机档生效)\n'
'    const/4 v12, 0x0\n'
'    const/16 v11, 0x31\n'
'    sget v10, ' + A + 'a1bPkN:I\n'
'    invoke-static {v13, v10, v11, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    if-gez v5, :bp_pk_done\n'
'    invoke-static {v5}, ' + A + 'a1bInflight(I)I\n'
'    move-result v10\n'
'    const/16 v11, 0x30\n'
'    invoke-static {v13, v10, v11, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
':bp_pk_done\n'
'    return v5\n',
'pick 探针')

# ---------- 4. a1bRetarget 初始化 ----------
repl(
'    move v4, v12\n'
'    const/4 v1, 0x0\n',
'    move v4, v12\n'
'    # R5c019: 重置分散暂存 + 同档阈值(航程*10%)\n'
'    const/4 v10, -0x1\n'
'    sput v10, ' + A + 'a1bRtInf:I\n'
'    const/4 v10, 0x0\n'
'    sput v10, ' + A + 'a1bRtN:I\n'
'    sget-object v10, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
'    invoke-static {v10}, ' + A + 'getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
'    move-result v10\n'
'    const v11, 0x3dcccccd    # 0.1f\n'
'    mul-float v10, v10, v11\n'
'    sput v10, ' + A + 'a1bRtTol:F\n'
'    const/4 v1, 0x0\n',
'rt 初始化')

# ---------- 5. a1bRetarget 去上限 ----------
repl(
'    invoke-static {v1}, ' + A + 'a1bInflight(I)I\n'
'    move-result v7\n'
'    const/4 v10, 0x2\n'
'    if-ge v7, v10, :rt_next\n',
'    invoke-static {v1}, ' + A + 'a1bInflight(I)I\n'
'    move-result v7\n',
'rt 去上限')

# ---------- 6. a1bRetarget 主体 ----------
repl(
'    cmpl-float v10, v5, v6\n'
'    if-gtz v10, :rt_next\n'
'    cmpl-float v10, v5, v4\n'
'    if-gez v10, :rt_next\n'
'    move v4, v5\n'
'    move v0, v1\n',
'    cmpl-float v10, v5, v6\n'
'    if-gtz v10, :rt_next\n'
'    sget v10, ' + A + 'a1bRtInf:I\n'
'    if-gez v10, :rt_cmp\n'
'    const/4 v10, 0x1\n'
'    sput v10, ' + A + 'a1bRtN:I\n'
'    goto :rt_first\n'
':rt_cmp\n'
'    sget v10, ' + A + 'a1bRtInf:I\n'
'    if-lt v7, v10, :rt_better\n'
'    if-gt v7, v10, :rt_next\n'
'    sget v10, ' + A + 'a1bRtTol:F\n'
'    sub-float v10, v4, v10\n'
'    cmpl-float v10, v5, v10\n'
'    if-ltz v10, :rt_better\n'
'    sget v10, ' + A + 'a1bRtTol:F\n'
'    add-float v10, v4, v10\n'
'    cmpl-float v10, v5, v10\n'
'    if-lez v10, :rt_band\n'
'    goto :rt_next\n'
':rt_band\n'
'    sget v10, ' + A + 'a1bRtN:I\n'
'    add-int/lit8 v10, v10, 0x1\n'
'    sput v10, ' + A + 'a1bRtN:I\n'
'    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;\n'
'    invoke-virtual {v11, v10}, Ljava/util/Random;->nextInt(I)I\n'
'    move-result v11\n'
'    if-nez v11, :rt_take\n'
'    goto :rt_next\n'
':rt_better\n'
'    const/4 v10, 0x1\n'
'    sput v10, ' + A + 'a1bRtN:I\n'
':rt_first\n'
'    move v4, v5\n'
'    move v10, v7\n'
'    sput v10, ' + A + 'a1bRtInf:I\n'
':rt_take\n'
'    move v0, v1\n',
'rt 主体')

# ---------- 7. a1bRetarget 探针 ----------
repl(
'    const/16 v10, 0x28\n'
'    const/4 v12, 0x0\n'
'    invoke-static {p0, v0, v10, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    return v0\n',
'    const/16 v10, 0x28\n'
'    const/4 v12, 0x0\n'
'    invoke-static {p0, v0, v10, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    # R5c019: 0x33=同档候选数 0x32=选中省在飞数\n'
'    const/16 v10, 0x33\n'
'    sget v11, ' + A + 'a1bRtN:I\n'
'    invoke-static {p0, v11, v10, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
'    if-gez v0, :rt_pk_done\n'
'    invoke-static {v0}, ' + A + 'a1bInflight(I)I\n'
'    move-result v11\n'
'    const/16 v10, 0x32\n'
'    invoke-static {p0, v11, v10, v12}, ' + A + 'a1bLog(IIILjava/lang/String;)V\n'
':rt_pk_done\n'
'    return v0\n',
'rt 探针')

io.open(F, 'w', encoding='utf-8').write(t)
print('OK: r5c019c 完成（备份 .pre_r5c019c）；行数 %d -> %d' % (n0, t.count('\n')))