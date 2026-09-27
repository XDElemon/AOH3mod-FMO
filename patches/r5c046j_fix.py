# -*- coding: utf-8 -*-
# r5c046j_fix.py —— P2b（发射基地钉死 + 机场预筛 + 探针 nP2ap）+ S1（敌方航线不可见）
# 严格按《调研_r5c046_施工前体检_v1.md》§4 编辑清单 E1–E8 执行；锚点逐字（含空行差异），每条要求唯一命中。
import os, sys, hashlib
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
A = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;->'
AT = 'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->'

def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()

AFM_EDITS = []
# E1 字段
AFM_EDITS.append(('E1 字段声明',
'    .field public static a1bDivNew:I\n',
'    .field public static a1bDivNew:I\n'
'    # r5c046 P2b: 发射机场绑定（扫描侧写入 / 派发侧只认该机场）\n'
'    .field public static a1PkApPid:I\n'
'    .field public static a1bApPid:I\n'))

# E2 helper a1AirOk
AFM_EDITS.append(('E2 helper a1AirOk',
'.method private static a1DivCount(I)I\n',
'.method private static a1AirOk(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z\n'
'    .registers 4\n'
'    # r5c046 P2b: 该机场是否有"闲置师"（true=有）——pickIdleDivKey 为空即无机可派\n'
'    invoke-static {p0, p1}, ' + A + 'pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;\n'
'    move-result-object v0\n'
'    if-eqz v0, :p2bok_no\n'
'    const/4 v0, 0x1\n'
'    return v0\n'
'    :p2bok_no\n'
'    const/4 v0, 0x0\n'
'    return v0\n'
'.end method\n'
'.method private static a1DivCount(I)I\n'))

# E3 a1Scan 机场头：写字段 + 预筛
AFM_EDITS.append(('E3 a1Scan 机场头',
'    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n\n    if-eqz v2, :sc_ap_next\n',
'    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n\n    if-eqz v2, :sc_ap_next\n'
'    # r5c046 P2b: 记录"本机场" + 无机可派则跳过（预筛；v8 在本方法内恒为基本型）\n'
'    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n'
'    sput v8, ' + A + 'a1PkApPid:I\n'
'    invoke-static {v2, v3}, ' + A + 'a1AirOk(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z\n'
'    move-result v8\n'
'    if-eqz v8, :sc_ap_next\n'))

# E4 探针 nP2ap
AFM_EDITS.append(('E4 探针 nP2ap',
'    const-string v14, "nP2pick"\n\n    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n',
'    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n'
'    const-string v14, "nP2ap"\n\n'
'    invoke-static {v14, v8}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n\n'
'    const-string v14, "nP2pick"\n\n    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'))

# E5 a1Dispatch 绑定
AFM_EDITS.append(('E5 a1Dispatch 绑定',
'    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n\n    sget-object v3, ' + AT + 'BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n',
'    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n\n'
'    sget v11, ' + A + 'a1PkApPid:I\n'
'    # r5c046 P2b: 只认"被评估的那一个机场"（其余机场一律跳过）\n'
'    if-ne v7, v11, :a1d_next\n\n'
'    sget-object v3, ' + AT + 'BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'))

# E6 a1bScan 机场头
AFM_EDITS.append(('E6 a1bScan 机场头',
'    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n    if-eqz v2, :bs_ap_next\n',
'    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n    if-eqz v2, :bs_ap_next\n'
'    # r5c046 P2b: 记录"本机场" + 无机可派则跳过（预筛；v8/v5 在本方法内未被使用）\n'
'    iget v8, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n'
'    sput v8, ' + A + 'a1bApPid:I\n'
'    sget-object v5, ' + AT + 'ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'
'    invoke-static {v2, v5}, ' + A + 'a1AirOk(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z\n'
'    move-result v8\n'
'    if-eqz v8, :bs_ap_next\n'))

# E7 a1bDispatch 绑定
AFM_EDITS.append(('E7 a1bDispatch 绑定',
'    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n    sget-object v3, ' + AT + 'ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n',
'    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I\n'
'    sget v8, ' + A + 'a1bApPid:I\n'
'    # r5c046 P2b: 只认"被评估的那一个机场"（其余机场一律跳过）\n'
'    if-ne v7, v8, :abd_next\n'
'    sget-object v3, ' + AT + 'ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n'))

PDA_EDITS = []
# E8 敌方航线不可见（S1）
PDA_EDITS.append(('E8 航线守卫',
'    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->drawLinePts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V\n',
'    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z\n'
'    move-result v2\n'
'    # r5c046 S1: 航线只画给玩家自己的任务；非玩家（AI）任务不画航线\n'
'    if-eqz v2, :p3_noline\n\n'
'    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->drawLinePts(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V\n\n'
'    :p3_noline\n'))

def apply(path, edits, tag):
    src = open(path, encoding='utf-8').read()
    before = md5(path)
    for name, old, new in edits:
        n = src.count(old)
        if n != 1:
            print('[FAIL] %s %s 锚点命中 %d 次（要求 1）' % (tag, name, n))
            return None
        src = src.replace(old, new, 1)
        print('[OK] %s %s' % (tag, name))
    open(path, 'w', encoding='utf-8').write(src)
    print('   %s md5 %s -> %s  (%d B)' % (tag, before[:12], md5(path)[:12], os.path.getsize(path)))
    return True

def main():
    if apply(AFM, AFM_EDITS, 'AFM') is None: return 1
    if apply(PDA, PDA_EDITS, 'PDA') is None: return 1
    return 0

if __name__ == '__main__':
    sys.exit(main())