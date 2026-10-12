# -*- coding: utf-8 -*-
# r6d269：飞行贴图修复——绘制入口注入"编队机型记录"，取图优先用它
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
AFM = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PDA = 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def rep_once(s, old, new, tag):
    c = s.count(old)
    if c != 1:
        raise SystemExit('ANCHOR FAIL [%s]: expect 1 got %d :: %r' % (tag, c, old[:130]))
    return s.replace(old, new, 1)

# ---------- AFM：3 静态字段 ----------
afm = load(os.path.join(TREES[0], AFM))
afm2 = rep_once(afm, '.field public static dgAirGroup:I',
    '.field public static dgAirGroup:I\n\n.field public static dgAirUid:I\n\n.field public static dgAirAid:I\n\n.field public static dgAirCiv:I', 'A1-fields')

# ---------- PDA ----------
pda = load(os.path.join(TREES[0], PDA))

rec_old = ('    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I\n'
           '    move-result v9\n'
           '    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I\n')
rec_new = ('    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I\n'
           '    move-result v9\n'
           '    # r6d269:记录当前绘制编队的机型（供"编队贴图"用；含飞行中）\n'
           '    sput v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirCiv:I\n'
           '    const/4 v1, -0x1\n'
           '    sput v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirUid:I\n'
           '    sput v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirAid:I\n'
           '    iget-object v1, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
           '    if-eqz v1, :r6d269_rs\n'
           '    invoke-interface {v1}, Ljava/util/List;->size()I\n'
           '    move-result v2\n'
           '    if-eqz v2, :r6d269_rs\n'
           '    const/4 v2, 0x0\n'
           '    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
           '    move-result-object v1\n'
           '    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;\n'
           '    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I\n'
           '    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirUid:I\n'
           '    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I\n'
           '    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirAid:I\n'
           '    :r6d269_rs\n'
           '    invoke-static {v9}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I\n')
pda2 = rep_once(pda, rec_old, rec_new, 'A2-inject')

ak_old = ('    .registers 8\n'
          '    # r6d266:优先按任务编制内飞机机型取图\n')
ak_new = ('    .registers 8\n'
          '    # r6d269:优先"当前绘制编队"的机型（含飞行中）\n'
          '    sget v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirUid:I\n'
          '    const/4 v5, 0x7\n'
          '    if-lt v4, v5, :r6d269_ak_skip\n'
          '    const/16 v5, 0xa\n'
          '    if-gt v4, v5, :r6d269_ak_skip\n'
          '    sget v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirAid:I\n'
          '    if-ltz v5, :r6d269_ak_skip\n'
          '    sget v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAirCiv:I\n'
          '    invoke-static {v0, v4, v5}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForRec(III)I\n'
          '    move-result v4\n'
          '    if-ltz v4, :r6d269_ak_skip\n'
          '    return v4\n'
          '    :r6d269_ak_skip\n'
          '    # r6d266:优先按任务编制内飞机机型取图\n')
pda2 = rep_once(pda2, ak_old, ak_new, 'A3-priority')

for rel, text in ((AFM, afm2), (PDA, pda2)):
    for t in TREES:
        p = os.path.join(t, rel)
        b = p + '.pre_r6d269'
        if not os.path.exists(b):
            import shutil; shutil.copy2(p, b)
        if load(p) != text:
            with open(p, 'w', encoding='utf-8') as f:
                f.write(text)

print('PATCHED 2 files')
print('fields:', afm2.count('dgAirUid'), ' rs:', pda2.count('r6d269_rs'), ' skip:', pda2.count('r6d269_ak_skip'))
print('DONE')