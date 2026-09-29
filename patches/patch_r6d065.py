#!/usr/bin/env python3
# r6d065 施工：加载图"加载中轮换"（方案甲，时间驱动，复用 loadBackground）
import io, sys

TREE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/'
AFM = TREE + 'map/battles/AirForceManager.smali'
INIT = TREE + 'menus/InitGame.smali'
REND = TREE + 'jakowski/Renderer/Renderer.smali'
AF = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'

METHOD = '''.method public static loadingRotateTick()V
    .registers 8
    # r6d065：加载页背景轮换（时间驱动，方案甲）。
    # 语义：swapMs<=0 关闭；lastSwapMs==0 只初始化计时；now-lastSwapMs < swapMs 等待；否则换图并重置计时。
    sget v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgLoadSwapMs:I

    if-lez v0, :lrt_ret

    sget-wide v2, Laoc/kingdoms/lukasz/menus/InitGame;->lastSwapMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :lrt_chk

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menus/InitGame;->lastSwapMs:J

    return-void

    :lrt_chk
    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menus/InitGame;->lastSwapMs:J

    sub-long/2addr v2, v4

    sget v6, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgLoadSwapMs:I

    int-to-long v6, v6

    cmp-long v0, v2, v6

    if-lt v0, :lrt_ret

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menus/InitGame;->lastSwapMs:J

    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadBackground()V

    :lrt_ret
    return-void
.end method

'''

SWAP_CFG = '''    const-string v3, "load_swap_ms"

    const/16 v4, 0xbb8

    invoke-static {v1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cf_s1

    const/4 v2, 0x0

    :cf_s1
    const/16 v4, 0xea60

    if-le v2, v4, :cf_s2

    const/16 v2, 0xea60

    :cf_s2
    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgLoadSwapMs:I

'''

EDITS = [
    (AFM, '.field public static cfgFixStage:I\n\n.method static constructor <clinit>()V\n',
     '.field public static cfgFixStage:I\n\n.field public static dgLoadSwapMs:I\n\n.method static constructor <clinit>()V\n',
     'A0 dgLoadSwapMs 字段'),
    (AFM, '    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I\n\n    return-void\n.end method\n',
     '    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgAiCap:I\n\n    const/16 v0, 0xbb8\n\n    sput v0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgLoadSwapMs:I\n\n    return-void\n.end method\n',
     'A1 clinit 默认 3000ms'),
    (AFM, '    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I\n\n    # ---------- CFGT3',
     '    sput v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgWB:I\n\n' + SWAP_CFG + '    # ---------- CFGT3',
     'A2 cfgFix 解析 load_swap_ms'),
    (AFM, '    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I\n\n    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n\n    move-result-object v0\n\n    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n',
     '    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgInit:I\n\n    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n\n    move-result-object v0\n\n    const-string v3, " fswap="\n\n    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n\n    move-result-object v0\n\n    sget v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dgLoadSwapMs:I\n\n    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n\n    move-result-object v0\n\n    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n',
     'A3 CFGT3 追加 fswap'),
    (INIT, '.field public static backgroundHeight:I\n', '.field public static backgroundHeight:I\n\n.field public static lastSwapMs:J\n', 'B0 lastSwapMs 字段'),
    (INIT, '.method public static final loadBackground()V\n', METHOD + '.method public static final loadBackground()V\n', 'B1 新方法 loadingRotateTick'),
    (REND, '.method public static final drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V\n    .registers 17\n',
     '.method public static final drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V\n    .registers 17\n    # r6d065：加载页每帧检查是否该换背景图\n    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadingRotateTick()V\n\n',
     'C0 drawLoading 挂钩'),
]

for path, old, new, label in EDITS:
    src = io.open(path, encoding='utf-8').read()
    n = src.count(old)
    if n != 1:
        print('❌ 锚点 [%s] 命中 %d 次（必须 1）' % (label, n))
        sys.exit(1)
    io.open(path + '.pre_r6d065', 'w', encoding='utf-8').write(src)
    io.open(path, 'w', encoding='utf-8').write(src.replace(old, new, 1))
    print('✅ %s' % label)
print('== r6d065 施工完成 ==')