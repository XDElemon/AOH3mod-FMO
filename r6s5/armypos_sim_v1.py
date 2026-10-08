#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
部队/空军图标位置：行为级仿真器 v1
复刻两条公式（逐条对齐 smali）：

① 省内部队纵向排布  Province.updateArmyPosY()
     j = 0
     for i, div in enumerate(lArmies):
         if div.inMovement:  upySk(...)            # 不占槽
         else:
             div.iShiftY = H*j + 2*j - H/2          # H = getArmyHeight()
             upyPr(...) ; j++

② 屏幕坐标  ProvinceDrawArmy.getArmyPosY(prov, idx)
     y = (prov.iCenterShiftY + mapCoords.getPosY() + div.iShiftY_Scaled) * mapScale.getCurrentScale()
         + div.iShiftY
     注意：iShiftY_Scaled 在【乘缩放】之内，iShiftY 在【乘缩放】之外（= 屏幕像素、不随缩放）

目的：把"_Scaled 应该如何维护"的三种可能实现跑出来，看哪种能复现用户现象
      （陆军方框 / 空军飞机都同等被"沿 Y 拉伸"，且缩放/晃动屏幕时漂移）
"""
import sys

FAIL = []


def chk(cond, msg):
    if cond:
        print('  [OK] ' + msg)
    else:
        print('  [FAIL] ' + msg)
        FAIL.append(msg)


H = 40            # 占位：getArmyHeight() = Images.armyLeft 的高度（探针会给出实测值）
GAP = 2           # updateArmyPosY 里的 "+ 2*j"


# ---------------- ① 排布 ----------------
def update_army_pos_y(divs):
    """divs: [(key, in_movement)] -> [(key, iShiftY or None)]"""
    out = []
    j = 0
    for key, mv in divs:
        if mv:
            out.append((key, None))          # upySk：移动中的部队不占槽位
            continue
        out.append((key, H * j + GAP * j - H // 2))
        j += 1
    return out, j


# ---------------- ② 屏幕坐标：三种 _Scaled 维护方式 ----------------
def screen_y(center_y, map_pos_y, iShiftY, iShiftY_Scaled, scale):
    """完全照抄 getArmyPosY 的算式"""
    return (center_y + map_pos_y + iShiftY_Scaled) * scale + iShiftY


def scaled_variant(kind, iShiftY, scale):
    """三种实现：返回 iShiftY_Scaled"""
    if kind == 'A_正确':      # _Scaled = shift * scale（设计意图：随缩放）
        return int(iShiftY * scale)
    if kind == 'B_恒为0':     # 当前快照里的实际值（updateArmyWidth_Just 把它置 0 后没人再写）
        return 0
    if kind == 'C_未乘scale':  # 写了但没乘缩放 → 双重计入
        return iShiftY
    raise ValueError(kind)


def row_y(center_y, map_pos_y, iShiftY, kind, scale):
    return screen_y(center_y, map_pos_y, iShiftY, scaled_variant(kind, iShiftY, scale), scale)


CENTER_Y = 1000
MAP_Y = 500


def show(kind, divs, scales):
    lay, j = update_army_pos_y(divs)
    print('  %s：j(占槽数)=%d' % (kind, j))
    for key, sy in lay:
        if sy is None:
            print('     %-16s 移动中（不占槽）' % key)
            continue
        cells = []
        for s in scales:
            cells.append('scale=%.1f→y=%d' % (s, row_y(CENTER_Y, MAP_Y, sy, kind, s)))
        print('     %-16s iShiftY=%4d   %s' % (key, sy, '   '.join(cells)))


print('=== T1 排布公式本身（5 个不动部队 + 1 个空军师排在末尾） ===')
divs = [('land_1', False), ('land_2', False), ('land_3', False),
        ('land_4', False), ('land_5', False), ('airhq_9_3_1_2_0', False)]
lay, j = update_army_pos_y(divs)
want = [-H // 2 + (H + GAP) * k for k in range(6)]
chk([s for _, s in lay] == want, '第 k 个不动部队的 iShiftY = -H/2 + (H+2)*k（实测 %s）' % [s for _, s in lay])
chk(j == 6, '6 个不动部队占 6 个槽位')
chk(lay[-1][1] == want[-1], '空军师排最后 ⇒ 拿到最大偏移 %d px' % want[-1])

print()
print('=== T2 移动中的部队不占槽（不挤别人） ===')
divs2 = [('land_1', False), ('land_2', True), ('land_3', False)]
lay2, j2 = update_army_pos_y(divs2)
chk(j2 == 2 and lay2[1][1] is None, '移动中的部队 iShiftY 不参与排布（j 只数到 2）')
chk(lay2[2][1] == want[1], '它后面的 land_3 仍拿第 2 格（=%d）' % want[1])

print()
print('=== T3 ★核心：三种 _Scaled 写法下，"相邻部队的屏幕间距"随缩放怎么变 ===')
scales = [0.5, 1.0, 2.0]
sy0, sy1 = want[0], want[1]          # 相邻两格
print('   相邻两格的 iShiftY 差 = %d px（= H + 2，与缩放无关的常量）' % (sy1 - sy0))
for kind in ['A_正确', 'B_恒为0', 'C_未乘scale']:
    gaps = [row_y(CENTER_Y, MAP_Y, sy1, kind, s) - row_y(CENTER_Y, MAP_Y, sy0, kind, s) for s in scales]
    print('   %-12s 屏幕间距 = %s' % (kind, list(map(int, gaps))))
gA = [row_y(CENTER_Y, MAP_Y, sy1, 'A_正确', s) - row_y(CENTER_Y, MAP_Y, sy0, 'A_正确', s) for s in scales]
gB = [row_y(CENTER_Y, MAP_Y, sy1, 'B_恒为0', s) - row_y(CENTER_Y, MAP_Y, sy0, 'B_恒为0', s) for s in scales]
gC = [row_y(CENTER_Y, MAP_Y, sy1, 'C_未乘scale', s) - row_y(CENTER_Y, MAP_Y, sy0, 'C_未乘scale', s) for s in scales]
chk(all(abs(a - b) < 1e-6 for a, b in zip(gA, [(sy1 - sy0) * s for s in scales])),
    'A 正确：屏幕间距随缩放线性变化（%s）' % list(map(int, gA)))
chk(all(abs(a - b) < 1e-6 for a, b in zip(gB, [sy1 - sy0] * 3)),
    'B 恒为0：屏幕间距恒定 = %d px（不随缩放）⇒ 相对省的视觉尺寸被"拉伸"' % (sy1 - sy0))
chk(all(abs(a - b) < 1e-6 for a, b in zip(gC, [(sy1 - sy0) * s + (sy1 - sy0) for s in scales])),
    'C 未乘scale：双重计入（%s）' % list(map(int, gC)))

print()
print('=== T4 为什么会觉得"晃动/缩放屏幕时才明显"：相对拉伸比 = 间距 / 省宽的屏幕宽度 ===')
PROV_W = 300          # 省宽（地图单位）
for s in scales:
    relA = int((sy1 - sy0) * s) / (PROV_W * s)
    relB = (sy1 - sy0) / (PROV_W * s)
    print('   scale=%.1f：A 相对间距=%.3f 省宽  ｜ B 相对间距=%.3f 省宽（越缩越小越夸张）' % (s, relA, relB))
chk(abs(int((sy1 - sy0) * 1.0) / (PROV_W * 1.0) - (sy1 - sy0) / (PROV_W * 1.0)) < 1e-9,
    'scale=1.0 时 A 与 B 完全一致 ⇒ 只有非 1 缩放才看得出差别')

print()
print('=== T5 负样本：把 _Scaled 改成"写反"（= -shift*scale）应被检出 ===')
def bad_scaled(iShiftY, scale):
    return -int(iShiftY * scale)
gBad = [( (CENTER_Y + MAP_Y + bad_scaled(sy1, s)) * s + sy1 ) - ( (CENTER_Y + MAP_Y + bad_scaled(sy0, s)) * s + sy0 ) for s in scales]
chk(gBad != [int((sy1 - sy0) * s) for s in scales], '写反的 _Scaled 与正确答案不同 ⇒ 可被区分（%s）' % list(map(int, gBad)))

print()
print('=== T6 空军师插在"列表末尾"vs"列表开头"的差异 ===')
d_mid = [('airhq_9_3_1_2_0', False), ('land_1', False), ('land_2', False)]
laym, _ = update_army_pos_y(d_mid)
chk(laym[0][1] == want[0], '插在开头：空军师拿第 1 格（%d）' % laym[0][1])
chk(lay[-1][1] == want[5], '插在末尾：空军师拿第 6 格（%d）⇒ 偏移随"省内部队数"线性增长' % lay[-1][1])

print()
if FAIL:
    print('❌ 仿真未通过：%d 条断言失败' % len(FAIL))
    for f in FAIL:
        print('   - ' + f)
    sys.exit(1)
print('✅ 仿真全部通过')
print()
print('判读提示：若探针数据显示 iShiftY_Scaled 恒为 0（写作 B），')
print('         而用户看到"缩放越小、图标相对省被拉得越夸张" ⇒ 命中 B。')
print('         若显示 _Scaled = shift*scale（A）却仍异常 ⇒ 异常不在这一环，需看别的探针。')