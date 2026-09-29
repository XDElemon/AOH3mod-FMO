#!/usr/bin/env python3
# r6d061 构建：在权威树(/tmp/w3a/smali, 来自装机 dex 反汇编)里插入 cfgFix()V + 两处调用 + 一个静态字段
import sys, io

TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
AFM = TREE + 'AirForceManager.smali'
ADL = TREE + 'AirDbgLog.smali'

A = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
L = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'

METHOD = '''.method public static cfgFix()V
    .registers 8
    # r6d061：配置加载【自证 + 修正】。独立方法；调用点只留 1 行 invoke-static {}。
    # 寄存器：v0=StringBuilder(引用) v1=文本(引用) v3=临时String(引用) v2/v4/v5=int
    const-string v3, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json"

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # ---------- CFGT（stage 0->1，一次性，防刷盘）：读入长度 + 键存在性 ----------
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgFixStage:I

    if-nez v2, :cf_st0

    goto :cf_writes

    :cf_st0
    const/4 v2, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgFixStage:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFGT r6d061 tlen="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cf_t0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    goto :cf_t1

    :cf_t0
    const/4 v2, -0x1

    :cf_t1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # 哨兵默认 -7：值为 -7 表示该键在文本里找不到
    const-string v3, "prob"

    const/4 v4, -0x7

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "pin"

    const/4 v4, -0x7

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "debug"

    const/4 v4, -0x7

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ai_cap"

    const/4 v4, -0x7

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ai_build"

    const/4 v4, -0x7

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :cf_writes
    # ---------- 写回 12 键（语义与旧链路一致；prob 钳 [0,100]） ----------
    const-string v3, "prob"

    const/16 v4, 0x50

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cf_p1

    const/4 v2, 0x0

    :cf_p1
    const/16 v4, 0x64

    if-le v2, v4, :cf_p2

    const/16 v2, 0x64

    :cf_p2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I

    const-string v3, "intel"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgIntel:I

    const-string v3, "pin"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I

    const-string v3, "debug"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I

    const/4 v4, 0x0

    if-eqz v2, :cf_d1

    const/4 v4, 0x1

    :cf_d1
    sput-boolean v4, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z

    const-string v3, "ai_build"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiBuild:I

    const-string v3, "ai_wartime"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiWar:I

    const-string v3, "ai_cap"

    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I

    const-string v3, "ai_type"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiType:I

    const-string v3, "ai_w_fighter"

    const/4 v4, 0x5

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWF:I

    const-string v3, "ai_w_inter"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWI:I

    const-string v3, "ai_w_attacker"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWA:I

    const-string v3, "ai_w_bomber"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I

    # ---------- CFGT3（stage 1->2，一次性）：字段回读自证 ----------
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgFixStage:I

    const/4 v4, 0x1

    if-ne v2, v4, :cf_ret

    const/4 v2, 0x2

    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgFixStage:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFGT3 r6d061 fp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgProb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " fpin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgPin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " fdbg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgDebug:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " fcap="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " fbld="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiBuild:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " finit="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    :cf_ret
    return-void
.end method

'''

CALL = '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgFix()V\n\n'
FIELD = '.field public static cfgFixStage:I\n\n'


def patch(path, subs, backup_suffix='.pre_r6d061'):
    src = io.open(path, encoding='utf-8').read()
    for old, new, label in subs:
        n = src.count(old)
        if n != 1:
            print('❌ 锚点 %s 命中 %d 次（必须为 1）' % (label, n))
            sys.exit(1)
        src = src.replace(old, new, 1)
        print('✅ %s 锚点命中 1 次，已替换' % label)
    io.open(path + backup_suffix, 'w', encoding='utf-8').write(io.open(path, encoding='utf-8').read())
    io.open(path, 'w', encoding='utf-8').write(src)


# --- AirForceManager：字段 + 新方法 + demoLoadCfg 末尾调用 ---
anc_a1 = '.method public static demoLoadCfg()V\n    .registers 6\n'
anc_a2 = '    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I\n\n    :cond_d7\n    return-void\n.end method\n'
anc_a0 = '.method static constructor <clinit>()V\n'
patch(AFM, [
    (anc_a0, FIELD + anc_a0, 'A0(字段声明)'),
    (anc_a1, METHOD + anc_a1, 'A1(插入 cfgFix 方法)'),
    (anc_a2, '    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I\n\n' + CALL + '    :cond_d7\n    return-void\n.end method\n', 'A2(demoLoadCfg 末尾调用)'),
])

# --- AirDbgLog.boot()：在 dbgOn=1 之后调用 ---
anc_a3 = '    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z\n\n    new-instance v0, Ljava/lang/StringBuilder;\n'
patch(ADL, [(anc_a3, '    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z\n\n' + CALL + '    new-instance v0, Ljava/lang/StringBuilder;\n', 'A3(boot 调用)')])

print('== 构建脚本完成 ==')
