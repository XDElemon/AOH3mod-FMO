# -*- coding: utf-8 -*-
# R4c187：候选层探针 dbgCand —— 打印每个候选的完整守卫链，定位 5693 为何被跳过
#   一行：nSC p= c= oc= war= inf= air= mil= rps= pls= fog=
#   插点：pickStrikeTarget 循环内，取到 Province 之后（进入守卫链之前）
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'dbgCand' not in src, 'already patched'

M = '''.method public static dbgCand(II)V
    .registers 12
    # R4c187 候选层探针：p0=pid, p1=机场所属文明
    # 输出：nSC p=<pid> c=<省主> oc=<占领者> war=<是否交战> inf=<是否已有在飞打击> air= mil= rps= pls= fog=
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nSC p="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v2
    const/4 v4, -0x1
    if-eqz v2, :sc_c1
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I
    move-result v4

    :sc_c1
    const-string v1, " c="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    move-result-object v3
    const/4 v5, -0x1
    if-eqz v3, :sc_c2
    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I
    move-result v5

    :sc_c2
    const-string v1, " oc="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, -0x1
    if-ltz v4, :sc_c3
    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z
    move-result v8
    const/4 v5, 0x0
    if-eqz v8, :sc_c3
    const/4 v5, 0x1

    :sc_c3
    const-string v1, " war="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, -0x1
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v6
    if-eqz v6, :sc_c4
    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-direct {v6, p0, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasStrikeInFlight(ILaoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z
    move-result v8
    const/4 v5, 0x0
    if-eqz v8, :sc_c4
    const/4 v5, 0x1

    :sc_c4
    const-string v1, " inf="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " air="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->provinceHasAirport(I)Z
    move-result v5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mil="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasMilitaryBuilding(I)Z
    move-result v5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0
    if-eqz v6, :sc_c5
    iget-object v8, v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;
    if-eqz v8, :sc_c5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v9
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :sc_c5
    const/4 v5, 0x1

    :sc_c5
    const-string v1, " rps="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;
    if-eqz v8, :sc_c6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v9
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v8
    if-nez v8, :sc_c6
    const/4 v5, 0x1

    :sc_c6
    const-string v1, " pls="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0
    if-eqz v2, :sc_c7
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z
    move-result v8
    if-nez v8, :sc_c7
    const/4 v5, 0x1

    :sc_c7
    const-string v1, " fog="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v0, "AIRDBG"
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    return-void
.end method
'''
anchor = '.method private static hasMilitaryBuilding(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, M + anchor, 1)

# ---- 插点：pickStrikeTarget 循环内（锚在 R4c177p(R3-a) 注释前）----
old = '    # R4c177p(R3-a)：目标省 == 本机场所在省 → 跳过（禁止打自己的机场省）\n'
assert src.count(old) == 1, 'insert anchor count=%d' % src.count(old)
new = '''    # R4c187 候选层探针
    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dbgCand(II)V

''' + old
src = src.replace(old, new, 1)

assert src.count('dbgCand(II)V') == 2
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))