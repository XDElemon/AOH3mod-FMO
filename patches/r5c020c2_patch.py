# -*- coding: utf-8 -*-
# R5c020c2：getTextToDraw(missionType==1) 与 actionElement 的夹取保持一致
import io, os, shutil
P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
B = P + '.pre_r5c020c'
if not os.path.exists(B):
    shutil.copy2(P, B)
lines = io.open(P, encoding='utf-8').read().split('\n')
i = None
for k, s in enumerate(lines):
    if s.strip() == ':gt1':
        i = k; break
assert i is not None, '找不到 :gt1'
j = None
for k in range(i + 1, len(lines)):
    if lines[k].strip() == 'return-object v1':
        j = k; break
assert j is not None and j - i < 40, 'gt1 结尾未找到'
assert len([1 for s in lines if s.strip() == ':gt1']) == 1, ':gt1 不唯一'
print('  定位 gt1 块: 行 %d..%d' % (i + 1, j + 1))
NEW = [
    u'    :gt1',
    u'    # R5c020c: 与 actionElement 的夹取一致（iActiveID<0/越界 ⇒ 取第0个机场）；无机场 ⇒ 回落静态标签',
    u'    const-string v1, "\\u81ea\\u52a8\\u6253\\u51fb\\uff1a\\u5173"',
    u'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;',
    u'    move-result-object v2',
    u'    if-eqz v2, :gt1_super',
    u'    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;',
    u'    if-eqz v3, :gt1_super',
    u'    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I',
    u'    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;',
    u'    move-result-object v2',
    u'    if-eqz v2, :gt1_super',
    u'    invoke-interface {v2}, Ljava/util/List;->size()I',
    u'    move-result v4',
    u'    if-gtz v4, :gt1_super',
    u'    sget v3, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I',
    u'    if-ltz v3, :gt1_c2',
    u'    const/4 v3, 0x0',
    u'    :gt1_c2',
    u'    if-ge v3, v4, :gt1_ok',
    u'    const/4 v3, 0x0',
    u'    :gt1_ok',
    u'    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;',
    u'    move-result-object v2',
    u'    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;',
    u'    if-eqz v2, :gt1_super',
    u'    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z',
    u'    if-nez v2, :gt1_ret',
    u'    const-string v1, "\\u81ea\\u52a8\\u6253\\u51fb\\uff1a\\u5f00"',
    u'    :gt1_ret',
    u'    return-object v1',
    u'    :gt1_super',
    u'    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextToDraw()Ljava/lang/String;',
    u'    move-result-object v0',
    u'    return-object v0',
]
for L in (':gt1_super', ':gt1_c2', ':gt1_ok'):
    assert L not in '\n'.join(lines), L + ' 已存在'
io.open(P, 'w', encoding='utf-8').write('\n'.join(lines[:i] + NEW + lines[j + 1:]))
print('OK: 已改为「夹取 + 无机场回落基类」')