# -*- coding: utf-8 -*-
# R4c193b：修正寄存器类型冲突（int/object 混用 ⇒ VerifyError）
#   规则：一个寄存器只干一件事（对象/整型分开）；宽寄存器(v2v3/v4v5)不复用为对象
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()
assert 'cfgConfirmed' not in src, 'already patched (restore backup first)'

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

# ---------- ② 新方法（寄存器按用途分开） ----------
NEW = '''.method public static cfgReadText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    # R4c193b：读外部配置（失败→null）。v1=结果对象 v2=String[] v3=Path v4=byte[]
    const/4 v1, 0x0

    :ct_try
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    :ct_end
    return-object v1

    :ct_catch
    const/4 v1, 0x0

    return-object v1
    .catch Ljava/lang/Exception; {:ct_try .. :ct_end} :ct_catch
.end method
.method public static cfgParseIntSet(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    # R4c193b：v0=set对象 v1=len v2=i v3=acc v4=inNum v5=char v6=int临时 v7=Integer对象 v8=int结果
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

    const/16 v6, 0x39

    if-gt v5, v6, :pi_nondigit

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v3, v5

    const/4 v4, 0x1

    goto :pi_next

    :pi_nondigit
    if-eqz v4, :pi_next

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    :pi_next
    add-int/lit8 v2, v2, 0x1

    goto :pi_loop

    :pi_tail
    if-eqz v4, :pi_ret

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    :pi_ret
    return-object v0
.end method
.method public static cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 9
    # R4c193b：v0=StringBuilder对象 v1=key串 v2=Int对象 v3/v4/v5=int索引 v6=子串对象 v7=结果对象
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :ce_null

    const-string v1, "["

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :ce_null

    const-string v1, "]"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :ce_null

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgParseIntSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v7

    return-object v7

    :ce_null
    const/4 v7, 0x0

    return-object v7
.end method
.method public static loadStrikeConfig()V
    .registers 14
    # R4c193b：v0=path v1=File v2v3=mtime v4v5=旧stamp v6=v7=8=12=13=int临时 v9=HashSet对象 v10=StringBuilder对象 v11=String对象
    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgTick:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgTick:I

    and-int/lit8 v6, v6, 0x3f

    if-nez v6, :lc_check

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

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    if-nez v9, :lc_conf

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgConfirmed:Ljava/util/HashSet;

    :lc_conf
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :lc_end

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :lc_end

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :lc_end

    const-string v12, "list_only"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :lc_m1

    const/4 v6, 0x2

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    goto :lc_lists

    :lc_m1
    const-string v12, "list_first"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :lc_lists

    const/4 v6, 0x1

    sput v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    :lc_lists
    const-string v12, "watch"

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v9

    if-eqz v9, :lc_pin

    sput-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    :lc_pin
    const-string v12, "pin"

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractIntSet(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v9

    if-eqz v9, :lc_done

    sput-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    :lc_done
    const-string v12, "AIRDBG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nCFG mode="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgMode:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " watch="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " pin="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgPin:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :lc_end
    return-void
.end method
.method private static hasWatchBuilding(I)Z
    .registers 10
    # R4c193b：v0=watch对象 v1=prov对象 v2=list对象 v3=size v4=i v5=cb对象 v6=索引int v7=Integer对象 v8=int结果
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgWatch:Ljava/util/HashSet;

    if-eqz v0, :hw_no

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :hw_no

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

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :hw_next

    const/4 v8, 0x1

    return v8

    :hw_next
    add-int/lit8 v4, v4, 0x1

    goto :hw_loop

    :hw_no
    const/4 v8, 0x0

    return v8
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
    # R4c193 新语义门（配置驱动）：mode==0→旧门；pin命中→放行；覆盖∧含配置建筑→证实并放行；其余拒绝
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