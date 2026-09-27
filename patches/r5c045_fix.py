# -*- coding: utf-8 -*-
# r5c045_fix.py —— 方案B：飞机导弹 FX 由"屏幕坐标域"改为"世界坐标域"（弹体 + 尾迹）
# 设计依据：/sdcard/GLG/历史23/r6s5/调研B_导弹世界域施工前置_v1.md
#   ① 世界域公理：screen = (world + cam) * scale  ⇒ world = screen/scale - cam
#      （cam = Game.mapCoords.getPosX/getPosY，scale = Game.mapScale.getCurrentScale()，
#       证据：getAirDrawPosX/Y 6452/6480）
#   ② 3 处改动：
#      P1 8869↔8870：四个端点（发射机 x/y、目标 x/y，已含 +0x14 屏幕偏移）换算到世界域
#      P2 8881-8916：原内联"屏幕域尾迹绘制循环"整体移入新方法 msFxDrawTrail（内部做世界→屏幕投影）
#      P3 8937-8942：弹体世界坐标 → 屏幕投影
#   ③ 红线：8775-8790 运行门、8808-8864 端点有效性判定、8866-8869 +0x14、8870-8876 缩放钩子、
#      msFxStep(8978) / msFxTrailAdd(9143) 全体、getAirSpriteX/Y 与 getAirDrawPosX/Y 全部不动。
#   ④ 寄存器要点（本轮复核抓出的坑）：drawAirMissileFx 是 static 方法 .registers 16 ⇒ p0=v14、p1=v15，
#      两个参数不可被当临时寄存器用（p0 一直用到 8950 的 setColor，p1 到方法尾）。
#      故 P1/P3 只用局部 v0/v1/v2/v11/v12/v13；尾迹循环（原本同时占用 v1..v13）改为独立方法，
#      新方法内 .registers 16 ⇒ 局部 v0..v13 全部可用，与 p0/p1 不冲突。
import io, os, re, shutil, sys

BATCH = 'r5c045'
PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
CLS = 'Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;'
MIS = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
BATCH_DESC = 'Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;'
IMG = 'Laoc/kingdoms/lukasz/textures/Image;'
IMGS = 'Laoc/kingdoms/lukasz/textures/Images;'

# ---------------- P1：端点 屏幕 -> 世界 ----------------
P1_ANCHOR = '    add-int/lit8 v8, v8, 0x14\n'
P1_NEW = (
    '    # r5c045 B: 端点 屏幕->世界 换算 world = screen/scale - cam（+0x14 视觉偏移仍属屏幕域）\n'
    '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;\n'
    '    if-eqz v0, :mf_ret\n'
    '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I\n'
    '    move-result v12\n'
    '    int-to-float v13, v12\n'
    '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I\n'
    '    move-result v12\n'
    '    int-to-float v11, v12\n'
    '    int-to-float v12, v5\n'
    '    div-float v12, v12, v3\n'
    '    sub-float v12, v12, v13\n'
    '    float-to-int v5, v12\n'
    '    int-to-float v12, v6\n'
    '    div-float v12, v12, v3\n'
    '    sub-float v12, v12, v11\n'
    '    float-to-int v6, v12\n'
    '    int-to-float v12, v7\n'
    '    div-float v12, v12, v3\n'
    '    sub-float v12, v12, v13\n'
    '    float-to-int v7, v12\n'
    '    int-to-float v12, v8\n'
    '    div-float v12, v12, v3\n'
    '    sub-float v12, v12, v11\n'
    '    float-to-int v8, v12\n')

# ---------------- P2：尾迹绘制块 8881-8916 -> 调用新方法 ----------------
P2_START = '    iget v0, p1, ' + MIS + '->msFxTN:I\n'
P2_END = '    :mf_skip_trail\n'
P2_NEW = (
    '    # r5c045 B: 尾迹（世界域）逐点投影后绘制，全部逻辑移入 msFxDrawTrail\n'
    '    invoke-static {p0, p1}, ' + CLS + '->msFxDrawTrail(' + BATCH_DESC + MIS + ')V\n')

# ---------------- P3：弹体 世界 -> 屏幕 ----------------
P3_OLD = (
    '    iget v0, p1, ' + MIS + '->msFxX:F\n'
    '    float-to-int v0, v0\n'
    '    add-int/lit8 v0, v0, -0x7\n'
    '    iget v1, p1, ' + MIS + '->msFxY:F\n'
    '    float-to-int v1, v1\n'
    '    add-int/lit8 v1, v1, -0x7\n')
P3_NEW = (
    '    # r5c045 B: 弹体 世界->屏幕 投影 (world + cam) * scale\n'
    '    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;\n'
    '    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F\n'
    '    move-result v11\n'
    '    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;\n'
    '    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I\n'
    '    move-result v12\n'
    '    int-to-float v12, v12\n'
    '    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I\n'
    '    move-result v13\n'
    '    int-to-float v13, v13\n'
    '    iget v0, p1, ' + MIS + '->msFxX:F\n'
    '    add-float v0, v0, v12\n'
    '    mul-float v0, v0, v11\n'
    '    float-to-int v0, v0\n'
    '    add-int/lit8 v0, v0, -0x7\n'
    '    iget v1, p1, ' + MIS + '->msFxY:F\n'
    '    add-float v1, v1, v13\n'
    '    mul-float v1, v1, v11\n'
    '    float-to-int v1, v1\n'
    '    add-int/lit8 v1, v1, -0x7\n')

# ---------------- 新方法：msFxDrawTrail ----------------
HELPER = (
    '\n'
    '.method private static msFxDrawTrail(' + BATCH_DESC + MIS + ')V\n'
    '    .registers 16\n'
    '    # r5c045 B: 尾迹点存的是世界坐标，绘制时投影 (world + cam) * scale\n'
    '    #            局部寄存器规划：v0=scaleF v1=camXF v2=camYF v3=msFxTX v4=msFxTY v5=msFxTH\n'
    '    #                            v6=计数 v7=索引 v8=pix v9=batch v10=x v11=y v12/v13=3,3\n'
    '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;\n'
    '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F\n'
    '    move-result v0\n'
    '    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;\n'
    '    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I\n'
    '    move-result v1\n'
    '    int-to-float v1, v1\n'
    '    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;\n'
    '    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I\n'
    '    move-result v2\n'
    '    int-to-float v2, v2\n'
    '    iget v5, p1, ' + MIS + '->msFxTN:I\n'
    '    if-lez v5, :mfdt_done\n'
    '    iget-object v3, p1, ' + MIS + '->msFxTX:[F\n'
    '    if-eqz v3, :mfdt_done\n'
    '    iget-object v4, p1, ' + MIS + '->msFxTY:[F\n'
    '    if-eqz v4, :mfdt_done\n'
    '    move-object v8, p0\n'
    '    const/high16 v9, 0x3f800000\n'
    '    const/high16 v10, 0x3f800000\n'
    '    const/high16 v11, 0x3f800000\n'
    '    const/high16 v12, 0x3f800000\n'
    '    invoke-virtual/range {v8 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V\n'
    '    iget v5, p1, ' + MIS + '->msFxTH:I\n'
    '    iget v7, p1, ' + MIS + '->msFxTN:I\n'
    '    const/4 v6, 0x1\n'
    '    sub-int v6, v7, v6\n'
    '    sget-object v8, ' + IMGS + '->pix:Laoc/kingdoms/lukasz/textures/Image;\n'
    '    move-object v9, p0\n'
    '    const/16 v12, 0x3\n'
    '    const/16 v13, 0x3\n'
    '    :mfdt_loop\n'
    '    if-ltz v6, :mfdt_done\n'
    '    sub-int v7, v5, v6\n'
    '    and-int/lit8 v7, v7, 0xf\n'
    '    aget v10, v3, v7\n'
    '    aget v11, v4, v7\n'
    '    add-float v10, v10, v1\n'
    '    mul-float v10, v10, v0\n'
    '    float-to-int v10, v10\n'
    '    add-int/lit8 v10, v10, -0x1\n'
    '    add-float v11, v11, v2\n'
    '    mul-float v11, v11, v0\n'
    '    float-to-int v11, v11\n'
    '    add-int/lit8 v11, v11, -0x1\n'
    '    invoke-virtual/range {v8 .. v13}, ' + IMG + '->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V\n'
    '    add-int/lit8 v6, v6, -0x1\n'
    '    goto :mfdt_loop\n'
    '    :mfdt_done\n'
    '    return-void\n'
    '.end method\n')


def fail(msg):
    print('[ERR] %s' % msg)
    return 2


def main():
    if not os.path.exists(PDA):
        return fail('缺文件 %s' % PDA)
    bak = PDA + '.pre_' + BATCH
    if os.path.exists(bak):
        return fail('备份已存在 %s ⇒ 本批可能已应用，拒绝重复' % bak)

    src = io.open(PDA, encoding='utf-8').read()

    # --- 定位 drawAirMissileFx 方法体 ---
    m = re.search(r'\.method public static drawAirMissileFx\(.*?\n\.end method\n', src, re.S)
    if not m:
        return fail('未找到 drawAirMissileFx 方法体')
    head, body, tail = src[:m.start()], m.group(0), src[m.end():]

    # --- 前置断言 ---
    if 'msFxDrawTrail' in src:
        return fail('已存在 msFxDrawTrail ⇒ 拒绝重复插入')
    if src.count(P1_ANCHOR) != 1:
        return fail('P1 锚点命中 %d 次（期望 1）' % src.count(P1_ANCHOR))
    if body.count(P2_START) != 1:
        return fail('P2 起点在方法内命中 %d 次' % body.count(P2_START))
    if body.count(P3_OLD) != 1:
        return fail('P3 块在方法内命中 %d 次' % body.count(P3_OLD))
    if body.count(':mf_tloop') != 2 or body.count(':mf_tldone') != 2:
        return fail('尾迹循环标签计数异常 tloop=%d tldone=%d' % (body.count(':mf_tloop'), body.count(':mf_tldone')))
    if body.count(P2_END) != 1:
        return fail('P2 结束标签 :mf_skip_trail 在方法内命中 %d 次' % body.count(P2_END))
    # P1 落点之后、msFxStep 调用之前，不得引用 v11/v12/v13（当作可用寄存器）
    i_a = body.find(P1_ANCHOR) + len(P1_ANCHOR)
    i_b = body.find('invoke-static {p1, v5, v6, v7, v8}')
    if i_b < 0:
        return fail('未找到 msFxStep 调用点')
    seg = body[i_a:i_b]
    for r in ('v11', 'v12', 'v13', 'v14', 'v15'):
        if re.search(r'\b' + r + r'\b', seg):
            return fail('P1 插入区之后的 %s 已被占用 ⇒ 需重排寄存器' % r)
    # P1 插入点之前不得有未定义标签依赖
    print('[OK] 前置断言通过：方法体 %d 行，锚点全唯一，v11-v13 在 P1 段空闲' % body.count('\n'))

    # --- 备份 ---
    shutil.copy2(PDA, bak)

    # --- P1：在 +0x14 之后插入世界域换算 ---
    body2 = body.replace(P1_ANCHOR, P1_ANCHOR + P1_NEW, 1)
    # --- P2：把尾迹块整体替换成一次调用 ---
    p2s = body2.find(P2_START)
    p2e = body2.find(P2_END, p2s)
    if p2s < 0 or p2e < 0 or p2e - p2s > 4000:
        return fail('P2 区间定位失败')
    span = body2[p2s:p2e + len(P2_END)]
    if 'Image;->draw' not in span or 'msFxTX:[F' not in span:
        return fail('P2 区间内容不符（未包含尾迹绘制循环）')
    body2 = body2[:p2s] + P2_NEW + body2[p2e + len(P2_END):]
    # --- P3：弹体投影 ---
    body2 = body2.replace(P3_OLD, P3_NEW, 1)

    out = head + body2 + '\n' + HELPER + tail
    io.open(PDA, 'w', encoding='utf-8').write(out)

    # --- 后置断言（按方法体范围统计，避免其它方法的同名寄存器干扰）---
    chk = io.open(PDA, encoding='utf-8').read()
    mm = re.search(r'\.method public static drawAirMissileFx\(.*?\n\.end method\n', chk, re.S)
    if not mm:
        return fail('写入后找不到 drawAirMissileFx 方法体')
    mb = mm.group(0)
    hb = re.search(r'\.method private static msFxDrawTrail\(.*?\n\.end method\n', chk, re.S)
    hb = hb.group(0) if hb else ''
    post = [
        ('P1 世界域换算已插入(4处)', mb.count('div-float v12, v12, v3') == 4),
        ('P1 相机两轴已读', mb.count('int-to-float v13, v12') == 1 and mb.count('int-to-float v11, v12') == 1),
        ('P2 已改为一次调用', mb.count('->msFxDrawTrail(') == 1),
        ('P2 内联循环已移除', chk.count(':mf_tloop') == 0 and chk.count(':mf_tldone') == 0),
        ('P2 孤标签已随块移除', chk.count(':mf_skip_trail') == 0),
        ('P3 弹体投影已替换', mb.count('mul-float v0, v0, v11') == 1 and mb.count('mul-float v1, v1, v11') == 1),
        ('P3 旧写法已消失', mb.count(P3_OLD) == 0),
        ('新方法已追加', chk.count('.method private static msFxDrawTrail(') == 1),
        ('新方法 draw 目标类必须是 Image（单数）', hb.count('Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V') == 1),
        ('全文件不存在 Images;->draw 误写', chk.count('textures/Images;->draw') == 0),
        ('新方法 pix 取值来自 Images', hb.count('textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;') == 1),
        ('新方法末尾封口', chk.rstrip().endswith('.end method')),
        ('msFxStep 未被触碰', chk.count('.method private static msFxStep(') == 1),
        ('msFxTrailAdd 未被触碰', chk.count('.method private static msFxTrailAdd(') == 1),
        ('两道 if-ne v0, v1 门均在（运行门 + msFxInit 门）', mb.count('if-ne v0, v1, :mf_ret') == 2),
        ('方法体内无 v14/v15 误用', len(re.findall(r'\bv1[45]\b', mb)) == 0),
        ('新方法体内无 v14/v15 误用', len(re.findall(r'\bv1[45]\b', hb)) == 0),
    ]
    bad = [n for n, ok in post if not ok]
    if bad:
        return fail('后置断言失败: %s ⇒ 已写入但需回滚（备份 %s）' % (bad, bak))

    print('invoke- 行数: %d -> %d' % (src.count('    invoke-'), chk.count('    invoke-')))
    print('文件行数: %d -> %d' % (src.count('\n'), chk.count('\n')))
    print('[OK] r5c045 已应用（备份 %s）' % os.path.basename(bak))
    return 0


if __name__ == '__main__':
    sys.exit(main())