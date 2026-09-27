# -*- coding: utf-8 -*-
# R4c193：配置文件驱动 + 新语义（证实才盯打）
#   配置：/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json
#     {"mode":"list_first|list_only|off","watch":[34,37],"pin":[5693]}
#   语义（用户三条）：
#     1) 未探查过 → 不打
#     2) 探查时"看到配置建筑" → 记入 afConfirmed（永久）；否则不打
#     3) 航程/交战等守卫照旧
#   实现：
#     · 新字段 cfgMode/cfgStamp/cfgWatch/cfgPin/cfgConfirmed
#     · loadStrikeConfig()（按文件 mtime 懒加载，含 try/catch 安全回退）
#     · hasWatchBuilding(pid)：该省建筑是否含配置类型
#     · 旧门改名 bomberIntelOkLegacy；新 bomberIntelOk = 配置语义门
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'cfgConfirmed' not in src, 'already patched'

# ---------- ① 字段 ----------
f_old = '\n.field public static afAirportProv:Ljava/util/HashSet;\n'
assert src.count(f_old) == 1
src = src.replace(f_old, f_old + '''
.field public static cfgMode:I

.field public static cfgStamp:J

.field public static cfgWatch:Ljava/util/HashSet;

.field public static cfgPin:Ljava/util/HashSet;

.field public static cfgConfirmed:Ljava/util/HashSet;

.field public static cfgTick:I
''', 1)

# ---------- ② 新方法们 ----------
NEW = '''.method public static cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    # R4c193：读外部配置文件（失败→null，不抛异常）
    const/4 v1, 0x0

    :ct_try
    const/4 v2, 0x0
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :ct_end
    return-object v1

    :ct_catch
    const/4 v1, 0x0
    return-object v1
    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch
.end method
.method public static cfgParseIntSet(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 8
    # R4c193：把 "12,34,56" 解析成 HashSet<Integer>（纯数字扫描，不用 parseInt，不会抛）
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :pi_ret

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :pi_loop
    if-ge v2, v1, :pi_tail

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :pi_nondigit

    const/16 v7, 0x39

    if-gt v5, v7, :pi_nondigit

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v3, v5

    const/4 v4, 0x1

    goto :pi_next

    :pi_nondigit
    if-eqz v4, :pi_next

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :pi_next
    add-int/lit8 v2, v2, 0x1

    goto :pi_loop

    :pi_tail
    if-eqz v4, :pi_ret

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    :pi_ret
    return-object v0
.end method
.method public static cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 8
    # R4c193：从配置文本里取 "key": [ ... ] 中的数字集合；找不到→null
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :ce_null

    const-string v2, "["

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :ce_null

    const-string v3, "]"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :ce_null

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgParseIntSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v5

    return-object v5

    :ce_null
    const/4 v5, 0x0
    return-object v5
.end method
.method public static loadStrikeConfig()V
    .registers 9
    # R4c193：按文件 mtime 懒加载配置；任何失败都退回 mode=0（旧行为）
    # 节流：每 64 次调用才真的查一次 mtime（避免每个候选都做文件 stat）
    sget v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgTick:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgTick:I

    and-int/lit8 v8, v8, 0x3f

    if-nez v8, :lc_check

    return-void

    :lc_check
    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-wide v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgStamp:J

    cmp-long v6, v2, v4

    if-nez v6, :lc_end

    sput-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgStamp:J

    const/4 v6, 0x0

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    if-nez v6, :lc_conf

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    :lc_conf
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :lc_end

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :lc_end

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :lc_end

    const-string v6, "list_only"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :lc_m1

    const/4 v6, 0x2

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    goto :lc_lists

    :lc_m1
    const-string v6, "list_first"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :lc_lists

    const/4 v6, 0x1

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    :lc_lists
    const-string v6, "watch"

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :lc_pin

    sput-object v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    :lc_pin
    const-string v6, "pin"

    invoke-static {v7, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :lc_done

    sput-object v8, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    :lc_done
    const-string v6, "AIRDBG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nCFG mode="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " watch="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pin="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :lc_end
    return-void
.end method
.method private static hasWatchBuilding(I)Z
    .registers 8
    # R4c193：该省建筑里是否有“配置的建筑类型”（此刻列表须可读；读不到→false）
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    if-eqz v0, :hw_no

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :hw_no

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :hw_no

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    if-eqz v2, :hw_no

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :hw_loop
    if-ge v4, v3, :hw_no

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    if-eqz v5, :hw_next

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :hw_next

    const/4 v7, 0x1

    return v7

    :hw_next
    add-int/lit8 v4, v4, 0x1

    goto :hw_loop

    :hw_no
    const/4 v7, 0x0
    return v7
.end method
'''
anchor = '.method private static hasMilitaryBuilding(I)Z\n'
assert src.count(anchor) == 1
src = src.replace(anchor, NEW + anchor, 1)

# ---------- ③ 旧门改名 + 新门 ----------
gd = '.method private static bomberIntelOk(I)Z\n'
assert src.count(gd) == 1
src = src.replace(gd, '.method private static bomberIntelOkLegacy(I)Z\n', 1)

NEWGATE = '''.method private static bomberIntelOk(I)Z
    .registers 8
    # R4c193 新语义门（配置文件驱动）：
    #   mode==0(off)                → 走旧门 bomberIntelOkLegacy
    #   省在 pin 列表里              → 直接放行
    #   被覆盖(雷达∨飞机∨可见) 且 含配置建筑 → 记入 afConfirmed 并放行
    #   其余                        → 拒绝（未探查/未证实 → 不打）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->loadStrikeConfig()V

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    if-eqz v0, :bg_legacy

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    if-eqz v1, :bg_cov

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :bg_cov

    const/4 v3, 0x1
    return v3

    :bg_cov
    const/4 v0, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :bg_c2

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;

    if-eqz v2, :bg_c2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :bg_c2

    const/4 v0, 0x1

    :bg_c2
    if-eqz v0, :bg_c3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->planeFogSeen:Ljava/util/HashSet;

    if-eqz v2, :bg_c3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :bg_c3

    const/4 v0, 0x1

    :bg_c3
    if-eqz v0, :bg_mem

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :bg_mem

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v4

    if-eqz v4, :bg_mem

    const/4 v0, 0x1

    :bg_mem
    if-eqz v0, :bg_gate

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasWatchBuilding(I)Z

    move-result v4

    if-eqz v4, :bg_gate

    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    if-eqz v1, :bg_gate

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    :bg_gate
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    if-eqz v1, :bg_false

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {p0, v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->ikLog3(III)V

    return v3

    :bg_false
    const/4 v3, 0x0
    return v3

    :bg_legacy
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->bomberIntelOkLegacy(I)Z

    move-result v3
    return v3
.end method
'''
anchor2 = '.method private static bomberIntelOkLegacy(I)Z\n'
assert src.count(anchor2) == 1
src = src.replace(anchor2, NEWGATE + anchor2, 1)

assert src.count('cfgConfirmed:Ljava/util/HashSet;') == 5
assert src.count('loadStrikeConfig()V') == 2
io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))