#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
armypos_sim_v2.py —— r6d161「陆军一列 / 飞机一列」行为级模拟器

用途：把 Province.updateArmyPosY() 的新判定用**可执行模型**写出来并断言，
      并对"key 前缀判定"做**反转敏感性自检**（世界书血案2 要求）。

被建模的真实规则（r6d161 施工后的 smali）：
  for 每个部队 div（按省内顺序）:
      if div.inMovement:            → 不占槽位（upySk 处理）
      elif div.key.startsWith("airhq_"):
            div.iShiftY = H*jAir + 2*jAir - H//2
            jAir += 1
      else:
            div.iShiftY = H*j  + 2*j  - H//2
            j  += 1
  横向：defaultShiftX() = -(iconWidth(div)//2) + (56 if air else 0)
"""
import sys

H = 32          # getArmyHeight()
AIR_DX = 56     # defaultShiftX 里的空军横向偏移
W = 32          # getArmyWidth 的示意值（居中量 = -16）


def layout(divs, invert_polarity=False):
    """divs: [(key, inMovement, width)] → [(iShiftY, iShiftX, is_air)]"""
    j = jair = 0
    out = []
    for key, mv, w in divs:
        if mv:
            out.append((None, -w // 2, False))       # upySk 处理，本模拟只标"移动"
            continue
        is_air = key.startswith("airhq_")
        if invert_polarity:                          # ← 反转敏感性自检用
            is_air = not is_air
        if is_air:
            y = H * jair + 2 * jair - H // 2
            jair += 1
        else:
            y = H * j + 2 * j - H // 2
            j += 1
        out.append((y, -w // 2 + (AIR_DX if is_air else 0), is_air))
    return out


def main():
    bad = []

    # ---- 断言 1：和平省（1 陆军 + 1 空军）----
    r = layout([("army_1", False, W), ("airhq_73_6337_0_1", False, W)])
    if r[1][0] != -16 or r[1][1] != -16 + AIR_DX:
        bad.append('A1 空军应落在自己列的首位(-16) 且横向 -16+56，实得 %s' % (r[1],))
    print('  A1 和平省：陆军 %s / 空军 %s' % (r[0], r[1]))

    # ---- 断言 2：战争省（12 陆军 + 1 空军）——本版核心 ----
    divs = [("army_%d" % i, False, W) for i in range(12)] + [("airhq_226_5712_0_1", False, W)]
    r = layout(divs)
    air = r[-1]
    if air[0] != -16:
        bad.append('A2 空军纵向应恒为 -16（不被 12 个陆军挤走），实得 %s' % (air[0],))
    if r[11][0] != H * 11 + 22 - 16:
        bad.append('A2 第 12 个陆军槽位应仍为 %d，实得 %s' % (H * 11 + 22 - 16, r[11][0]))
    print('  A2 战争省：陆军第12槽 y=%s（旧版空军会被排到此）；空军 y=%s x=%s'
          % (r[11][0], air[0], air[1]))
    old_air_y = H * 12 + 24 - 16
    print('     （旧行为下空军 y=%d ⇒ 向下 %d 像素＝"像跑到别的省"）' % (old_air_y, old_air_y + 16))

    # ---- 断言 3：空军多架时各自独立成列 ----
    r = layout([("army_1", False, W), ("airhq_a", False, W), ("army_2", False, W), ("airhq_b", False, W)])
    if (r[1][0], r[3][0]) != (-16, 18):
        bad.append('A3 两架空军应纵向 -16/18 各自排开，实得 %s/%s' % (r[1][0], r[3][0]))
    if r[2][0] != 18:
        bad.append('A3 第二个陆军不应受空军影响（应为 18），实得 %s' % (r[2][0],))
    print('  A3 混排：%s' % (r,))

    # ---- 断言 4：移动中不占槽位（既有规则未变）----
    r = layout([("army_1", False, W), ("airhq_x", True, W), ("army_2", False, W)])
    if r[2][0] != 18:
        bad.append('A4 移动中的空军不该占槽（第二陆军应为18），实得 %s' % (r[2][0],))
    print('  A4 移动中：%s' % (r,))

    # ---- 反转敏感性自检（血案2）----
    rn = layout([("army_1", False, W), ("airhq_a", False, W)], invert_polarity=True)
    if not (rn[0][2] is True and rn[1][2] is False):
        bad.append('N 反转判据后模拟器未发生变化 ⇒ 模拟器对极性不敏感（无效门禁）')
    print('  N 反转自检：陆军 %s / 空军 %s（角色互换 ⇒ 模拟器对极性敏感 ✓）'
          % ('air' if rn[0][2] else 'ground', 'air' if rn[1][2] else 'ground'))

    print()
    if bad:
        print('❌ 模拟器断言失败：')
        for b in bad:
            print('  -', b)
        return 1
    print('✅ armypos_sim_v2 全部通过（4 断言 + 反转敏感性自检）')
    return 0


if __name__ == '__main__':
    sys.exit(main())