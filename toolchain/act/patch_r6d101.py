#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d101：左侧飞机名称接入（按“国别+代+机型”）
1) AFM 新增 airNameForTypeP(I)Ljava/lang/String;（组=玩家文明；代固定 3）
   16 种组合（4 组 × 4 机型）直接 const-string 返回，如“俄罗斯三代截击机”
2) BtnBuild:115 / BtnSelect:171：把 `iget-object v3, p0, ->modelName` 换成
   `iget v3, p0, ->typeOrdinal` + `invoke-static/range {v3..v3}, airNameForTypeP` + `move-result-object v3`
   （同寄存器、同类型 String ⇒ 后续 StringBuilder 使用不变）
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
PLR = 'Laoc/kingdoms/lukasz/jakowski/Player/Player;'
BTN = [
    '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild.smali',
    '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect.smali',
]
CN = ['中国', '欧洲', '俄罗斯', '美国']
TN = ['战斗机', '截击机', '攻击机', '轰炸机']

for p in [AFM] + BTN:
    if not os.path.exists(p + '.pre_r6d101'):
        shutil.copyfile(p, p + '.pre_r6d101')

# ---------- 1) 名称方法 ----------
L = ['.method public static airNameForTypeP(I)Ljava/lang/String;',
     '    .registers 4',
     '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:%s' % PLR,
     '    iget v0, v0, %s->iCivID:I' % PLR,
     '    invoke-static {v0}, %s->artGroupOf(I)I' % AFM_CLS,
     '    move-result v0',
     '    const/4 v1, 0x0',
     '    if-ge v0, v1, :gl',
     '    const/4 v0, 0x0',
     ':gl',
     '    const/4 v1, 0x3',
     '    if-le v0, v1, :gh',
     '    const/4 v0, 0x3',
     ':gh',
     '    const/4 v1, 0x0',
     '    if-ge p0, v1, :tl',
     '    const/4 p0, 0x0',
     ':tl',
     '    const/4 v1, 0x3',
     '    if-le p0, v1, :th',
     '    const/4 p0, 0x3',
     ':th']
for gi in range(4):
    if gi < 3:
        L.append('    const/4 v1, 0x%x' % gi)
        L.append('    if-eq v0, v1, :N%d' % gi)
    else:
        L.append('    goto :N3')
for gi in range(4):
    L.append(':N%d' % gi)
    for ti in range(4):
        if ti < 3:
            L.append('    const/4 v1, 0x%x' % ti)
            L.append('    if-eq p0, v1, :N%d_%d' % (gi, ti))
        else:
            L.append('    goto :N%d_3' % gi)
    for ti in range(4):
        L.append(':N%d_%d' % (gi, ti))
        L.append('    const-string v0, "%s三代%s"' % (CN[gi], TN[ti]))
        L.append('    return-object v0')
L.append('.end method')
afm = io.open(AFM, encoding='utf-8').read()
assert 'airNameForTypeP' not in afm
afm = afm.rstrip('\n') + '\n\n' + '\n'.join(L) + '\n'
io.open(AFM, 'w', encoding='utf-8').write(afm)

# ---------- 2) 两处按钮 ----------
for p in BTN:
    s = io.open(p, encoding='utf-8').read()
    a = '    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$%s;->modelName:Ljava/lang/String;' % (
        'BtnBuild' if 'BtnBuild' in p else 'BtnSelect')
    assert s.count(a) == 1, (p, s.count(a))
    b = ('    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$%s;->typeOrdinal:I\n'
         '    invoke-static/range {v3 .. v3}, %s->airNameForTypeP(I)Ljava/lang/String;\n'
         '    move-result-object v3') % (('BtnBuild' if 'BtnBuild' in p else 'BtnSelect'), AFM_CLS)
    s = s.replace(a, b, 1)
    io.open(p, 'w', encoding='utf-8').write(s)
    print('%s -> OK' % os.path.basename(p))