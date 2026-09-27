# -*- coding: utf-8 -*-
# R4c194：
#   ① loadStrikeConfig 加诊断探针：nCL tick=enter / nCL skip=<1..4>
#   ② "证实"改为事件驱动：noteProvinceBuildings（Province 建筑增删钩子）里顺带检查 watch 列表 → cfgConfirmed
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'nCL ' not in src, 'already patched'

pairs = [
('''    and-int/lit8 v6, v6, 0x3f

    if-nez v6, :lc_check

    return-void

    :lc_check
''',
 '''    and-int/lit8 v6, v6, 0x3f

    if-nez v6, :lc_check

    return-void

    :lc_check
    const-string v12, "AIRDBG"

    const-string v13, "nCL tick=enter"

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6
'''),
('''    cmp-long v6, v2, v4

    if-nez v6, :lc_end

    sput-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgStamp:J
''',
 '''    cmp-long v6, v2, v4

    if-nez v6, :lc_skip1

    goto :lc_proceed

    :lc_skip1
    const-string v12, "nCL skip=1"

    goto :lc_plog

    :lc_proceed
    sput-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgStamp:J
'''),
('''    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :lc_end

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :lc_end

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :lc_end
''',
 '''    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :lc_skip2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :lc_skip3

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :lc_skip4

    goto :lc_ok

    :lc_skip2
    const-string v12, "nCL skip=2"

    goto :lc_plog

    :lc_skip3
    const-string v12, "nCL skip=3"

    goto :lc_plog

    :lc_skip4
    const-string v12, "nCL skip=4"

    goto :lc_plog

    :lc_plog
    const-string v13, "AIRDBG"

    invoke-static {v13, v12}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    return-void

    :lc_ok
'''),
]
for old, new in pairs:
    assert src.count(old) == 1, 'anchor=%d' % src.count(old)
    src = src.replace(old, new, 1)

start = src.index('.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V')
end = src.index('.end method', start) + len('.end method\n')
NB = '''.method public static noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V
    .registers 11
    # R4c194 钩子入口（Province 建筑增删的 8 处）：军事登记 + 配置建筑"证实"
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->loadStrikeConfig()V

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;

    if-nez v0, :nb_i1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;

    :nb_i1
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    if-nez v0, :nb_i2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    :nb_i2
    if-eqz p0, :nb_ret

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-eqz v2, :nb_apply

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :nb_loop
    if-ge v4, v5, :nb_apply

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-eqz v6, :nb_next

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isMilIdx(I)Z

    move-result v8

    if-eqz v8, :nb_n2

    const/4 v3, 0x1

    :nb_n2
    sget-object v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    if-eqz v8, :nb_next

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :nb_next

    const/4 v7, 0x1

    :nb_next
    add-int/lit8 v4, v4, 0x1

    goto :nb_loop

    :nb_apply
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->afMilReal:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :nb_unset

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :nb_watch

    :nb_unset
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    :nb_watch
    if-eqz v7, :nb_ret

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    if-eqz v0, :nb_ret

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :nb_ret

    const-string v8, "AIRDBG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nCNF p="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :nb_ret
    return-void
.end method
'''
src = src[:start] + NB + src[end:]

assert src.count('nCL skip=4') == 1
assert src.count('nCNF p=') == 1
assert src.count('loadStrikeConfig()V') == 3
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))