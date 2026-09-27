# -*- coding: utf-8 -*-
# R5c019 / 攻击机选靶分散化（用户 2026-09-24 拍板）：
#   · 排序键 = (在飞数↑ , 距离↑ , 同档[≤航程10%]随机)
#   · 每省在飞上限(2)取消 —— 层数不封顶，多余的飞机继续按“人少的省优先”往回填
#   · 同时修 a1bPick 的“更远也采纳”方向雷（原 6519 goto :bp_take / 6522 并列取较大ID）
#   · 探针：0x30=选中在飞数(=层号) 0x31=同档候选数；重瞄侧 0x32=在飞数 0x33=同档数
import io, os, shutil

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = F + '.pre_r5c019'
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

def reg16to20(header, tag):
    global t
    i = t.index(header)
    j = t.index('    .registers 16\n', i)
    t = t[:j] + '    .registers 20\n' + t[j + len('    .registers 16\n'):]
    print('  OK registers16->20:', tag)

# ==================== a1bPick ====================
reg16to20('a1bPick(Laoc/kingdoms/lukasz/map/battles/Airport;I)I', 'a1bPick')

# 初始化新寄存器：v14=bestInf(-1=未初始化) v15=同档计数 v16=同档阈值(航程*10%)
repl(
'    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I\n'
':bp_loop\n',
'    sput v11, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I\n'
'    # R5c019: v14=最优在飞数(-1未定) v15=同档计数 v16=同档阈值(航程*10%)\n'
'    const/4 v14, -0x1\n'
'    const/4 v15, 0x0\n'
'    sget-object v16, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
'    invoke-static {v16}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
'    move-result v16\n'
'    const v17, 0x3dcccccd    # 0.1f\n'
'    mul-float v16, v16, v17\n'
':bp_loop\n',
'pick init')

# 主体比较块：删“≥2跳过”闸门 + 新三级键
repl(
'    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I\n'
'    move-result v10\n'
'    const/4 v11, 0x2\n'
'    if-lt v10, v11, :bp_go\n'
'    const/4 v12, 0x0\n'
'    const/16 v11, 0x4\n'
'    move v10, v4\n'
'    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    goto :bp_loop\n'
':bp_go\n'
'    invoke-direct {v0, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F\n'
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
'    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I\n'
'    move-result v10\n'
'    if-gtz v10, :bp_key\n'
'    const/4 v12, 0x0\n'
'    const/16 v11, 0x4\n'
'    invoke-static {v13, v4, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
':bp_key\n'
'    invoke-direct {v0, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceDistance(II)F\n'
'    move-result v11\n'
'    if-gez v14, :bp_cmp\n'
'    move v14, v10\n'
'    move v6, v11\n'
'    const/4 v15, 0x1\n'
'    goto :bp_take\n'
':bp_cmp\n'
'    if-lt v10, v14, :bp_better\n'
'    if-gt v10, v14, :bp_loop\n'
'    sub-float v12, v6, v16\n'
'    cmpl-float v12, v11, v12\n'
'    if-ltz v12, :bp_better\n'
'    add-float v12, v6, v16\n'
'    cmpl-float v12, v11, v12\n'
'    if-lez v12, :bp_band\n'
'    goto :bp_loop\n'
':bp_band\n'
'    add-int/lit8 v15, v15, 0x1\n'
'    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;\n'
'    invoke-virtual {v12, v15}, Ljava/util/Random;->nextInt(I)I\n'
'    move-result v12\n'
'    if-nez v12, :bp_take\n'
'    goto :bp_loop\n'
':bp_better\n'
'    const/4 v15, 0x1\n'
'    move v14, v10\n'
'    move v6, v11\n'
':bp_take\n'
'    move v5, v4\n'
'    goto :bp_loop\n',
'pick 主体')

# 选出后追加探针
repl(
'    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I\n'
'    const/16 v11, 0xe\n'
'    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    return v5\n',
'    sget v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bNfr:I\n'
'    const/16 v11, 0xe\n'
'    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    # R5c019: 0x31=同档候选数(>1 说明随机档生效)\n'
'    const/16 v11, 0x31\n'
'    invoke-static {v13, v15, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    if-gez v5, :bp_pk_done\n'
'    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I\n'
'    move-result v10\n'
'    const/16 v11, 0x30\n'
'    invoke-static {v13, v10, v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
':bp_pk_done\n'
'    return v5\n',
'pick 探针')

# ==================== a1bRetarget ====================
reg16to20('a1bRetarget(II)I', 'a1bRetarget')

repl(
'    move v4, v12\n'
'    const/4 v1, 0x0\n',
'    move v4, v12\n'
'    # R5c019: v13=最优在飞数(-1未定) v14=同档计数 v15=同档阈值(航程*10%)\n'
'    const/4 v13, -0x1\n'
'    const/4 v14, 0x0\n'
'    sget-object v15, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
'    invoke-static {v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F\n'
'    move-result v15\n'
'    const v16, 0x3dcccccd    # 0.1f\n'
'    mul-float v15, v15, v16\n'
'    const/4 v1, 0x0\n',
'rt init')

# 取消“每省≤2”闸门（保留在飞数作为排序键）
repl(
'    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I\n'
'    move-result v7\n'
'    const/4 v10, 0x2\n'
'    if-ge v7, v10, :rt_next\n',
'    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I\n'
'    move-result v7\n',
'rt 去上限')

# 新三级键（半程门保留）
repl(
'    cmpl-float v10, v5, v6\n'
'    if-gtz v10, :rt_next\n'
'    cmpl-float v10, v5, v4\n'
'    if-gez v10, :rt_next\n'
'    move v4, v5\n'
'    move v0, v1\n',
'    cmpl-float v10, v5, v6\n'
'    if-gtz v10, :rt_next\n'
'    if-gez v13, :rt_first\n'
'    if-lt v7, v13, :rt_better\n'
'    if-gt v7, v13, :rt_next\n'
'    sub-float v10, v4, v15\n'
'    cmpl-float v10, v5, v10\n'
'    if-ltz v10, :rt_better\n'
'    add-float v10, v4, v15\n'
'    cmpl-float v10, v5, v10\n'
'    if-lez v10, :rt_band\n'
'    goto :rt_next\n'
':rt_band\n'
'    add-int/lit8 v14, v14, 0x1\n'
'    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;\n'
'    invoke-virtual {v10, v14}, Ljava/util/Random;->nextInt(I)I\n'
'    move-result v10\n'
'    if-nez v10, :rt_take\n'
'    goto :rt_next\n'
':rt_better\n'
'    const/4 v14, 0x1\n'
':rt_first\n'
'    move v13, v7\n'
'    move v4, v5\n'
':rt_take\n'
'    move v0, v1\n',
'rt 主体')

# 重瞄侧探针
repl(
'    const/16 v10, 0x28\n'
'    const/4 v12, 0x0\n'
'    invoke-static {p0, v0, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    return v0\n',
'    const/16 v10, 0x28\n'
'    const/4 v12, 0x0\n'
'    invoke-static {p0, v0, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    # R5c019: 0x33=同档候选数 0x32=选中省在飞数\n'
'    const/16 v10, 0x33\n'
'    invoke-static {p0, v14, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
'    if-gez v0, :rt_pk_done\n'
'    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bInflight(I)I\n'
'    move-result v11\n'
'    const/16 v10, 0x32\n'
'    invoke-static {p0, v11, v10, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n'
':rt_pk_done\n'
'    return v0\n',
'rt 探针')

io.open(F, 'w', encoding='utf-8').write(t)
print('OK: r5c019 补丁完成（备份 .pre_r5c019）；行数 %d -> %d' % (n0, t.count('\n')))
