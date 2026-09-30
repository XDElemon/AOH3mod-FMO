#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d094：新增 AirForceManager.artGroupOf(I)I（L1 标签表 + L3=RU）与 airImgForCiv(II)I
本批只建方法、不接调用点（零风险）。组：0=CN 1=EU 2=RU 3=US
L2（按首都省区域）待补：需要先钉清“取首都省”的 API。
"""
import io, shutil, os

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

# 标签 → 组（startsWith 小写匹配）
TAGS = [
    ('chi', 0), ('chn', 0),
    ('usa', 3), ('jap', 3), ('kor', 3), ('tai', 3),
    ('rus', 2), ('sov', 2), ('prk', 2), ('ind', 2), ('vnm', 2), ('irn', 2),
    ('ger', 1), ('fra', 1), ('eng', 1), ('ita', 1), ('spa', 1), ('pol', 1), ('ukr', 1),
]

L = []
L.append('.method public static artGroupOf(I)I')
L.append('    .registers 3')
L.append('    const/4 v0, 0x2                 # 默认 RU（L3 兜底）')
L.append('    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;')
L.append('    move-result-object v1')
L.append('    if-eqz v1, :done')
L.append('    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;')
L.append('    move-result-object v1')
L.append('    if-eqz v1, :done')
L.append('    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;')
L.append('    move-result-object v1')
for i, (tag, grp) in enumerate(TAGS):
    L.append('    const-string v2, "%s"' % tag)
    L.append('    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z')
    L.append('    move-result p0')
    L.append('    if-eqz p0, :t%d' % i)
    L.append('    const/4 v0, 0x%x' % grp)
    L.append('    return v0')
    L.append(':t%d' % i)
L.append(':done')
L.append('    return v0')
L.append('.end method')
L.append('')
L.append('.method public static airImgForCiv(II)I')
L.append('    .registers 4')
L.append('    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I')
L.append('    move-result v0')
L.append('    const/4 v1, 0x3                 # 代：暂固定 3（B3e 再接 AirUnit.gen）')
L.append('    invoke-static {v1, v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickAirImage(III)I')
L.append('    move-result v0')
L.append('    return v0')
L.append('.end method')
METHOD = '\n'.join(L) + '\n'

if not os.path.exists(AFM + '.pre_r6d094'):
    shutil.copyfile(AFM, AFM + '.pre_r6d094')
afm = io.open(AFM, encoding='utf-8').read()
assert 'artGroupOf' not in afm and 'airImgForCiv' not in afm
afm = afm.rstrip('\n') + '\n\n' + METHOD
io.open(AFM, 'w', encoding='utf-8').write(afm)
print('OK 已追加 artGroupOf(%d 条标签) + airImgForCiv' % len(TAGS))