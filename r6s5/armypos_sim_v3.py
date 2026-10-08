#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
armypos_sim_v3.py —— r6d163「横向对称分列 / 单边居中」行为级模拟器

建模（r6d163 施工后的真实规则）：
  纵向：空军用 jAir、陆军用 j（r6d161/r6d162 已定）
  横向：columnShiftFor(province, isAir)
          省里同时有 空军 与 非空军 ⇒ 空军 +28 / 陆军 −28
          只有一类 / 无省 / 无部队     ⇒ 0（居中）
        defaultShiftX() = −(图标宽/2) + columnShiftFor(...)

含**反转敏感性自检**（血案2 要求）：把“是否空军”判据取反 ⇒ 模型结果必须变化。
"""
import sys

H = 32
DX = 28
W = 32


def shift_for(kinds, is_air):
    """kinds: 该省所有部队的 'air'/'ground' 列表"""
    n_air = kinds.count('air')
    n_gnd = kinds.count('ground')
    if n_air > 0 and n_gnd > 0:
        return DX if is_air else -DX
    return 0


def layout(divs, invert=False):
    """divs: [(key, inMovement)] → [(iShiftY, iShiftX, is_air)]"""
    keys = [k for k, mv in divs]
    kinds = []
    for k in keys:
        a = k.startswith('airhq_')
        if invert:
            a = not a
        kinds.append('air' if a else 'ground')
    j = jair = 0
    out = []
    for idx, (k, mv) in enumerate(divs):
        is_air = (kinds[idx] == 'air')
        if mv:
            out.append((None, -W // 2 + shift_for(kinds, is_air), is_air))
            continue
        if is_air:
            y = H * jair + 2 * jair - H // 2
            jair += 1
        else:
            y = H * j + 2 * j - H // 2
            j += 1
        out.append((y, -W // 2 + shift_for(kinds, is_air), is_air))
    return out


def main():
    bad = []
    # A1 两类都在 ⇒ 对称分列（陆军左、空军右）
    r = layout([('army_1', False), ('airhq_a', False)])
    if (r[0][1], r[1][1]) != (-W // 2 - DX, -W // 2 + DX):
        bad.append('A1 两类都在应 −28/+28，实得 %s/%s' % (r[0][1], r[1][1]))
    print('  A1 两类都在：陆军 x=%s / 空军 x=%s' % (r[0][1], r[1][1]))

    # A2 只有空军 ⇒ 回中（用户要求1）
    r = layout([('airhq_a', False)])
    if r[0][1] != -W // 2:
        bad.append('A2 只有空军应居中(%d)，实得 %s' % (-W // 2, r[0][1]))
    print('  A2 只有空军：x=%s（居中）' % r[0][1])

    # A3 陆军离开后同一支空军回中（用户要求1 的动态版）
    before = layout([('army_1', False), ('army_2', False), ('airhq_a', False)])[2][1]
    after = layout([('airhq_a', False)])[0][1]
    if before == after:
        bad.append('A3 陆军离开前后空军 x 应变化（%s → %s）' % (before, after))
    print('  A3 陆军离开：空军 x %s → %s' % (before, after))

    # A4 只有陆军 ⇒ 居中
    r = layout([('army_1', False), ('army_2', False)])
    if r[0][1] != -W // 2 or r[1][1] != -W // 2:
        bad.append('A4 只有陆军应全居中，实得 %s' % (r,))
    print('  A4 只有陆军：x=%s / %s（居中）' % (r[0][1], r[1][1]))

    # A5 纵向仍按 r6d161 规则（空军不被陆军挤走）
    r = layout([('army_%d' % i, False) for i in range(12)] + [('airhq_a', False)])
    if r[-1][0] != -16:
        bad.append('A5 空军纵向应恒为 −16，实得 %s' % (r[-1][0],))
    print('  A5 12 陆军 + 1 空军：空军 y=%s（不被挤走）' % r[-1][0])

    # N 反转敏感性自检
    rn = layout([('army_1', False), ('airhq_a', False)], invert=True)
    if not (rn[0][2] is True and rn[1][2] is False):
        bad.append('N 反转判据后模型未变化 ⇒ 对极性不敏感（无效门禁）')
    print('  N 反转自检：角色互换 = %s' % (rn[0][2] is True and rn[1][2] is False))

    print()
    if bad:
        print('❌ armypos_sim_v3 断言失败：')
        for b in bad:
            print('  -', b)
        return 1
    print('✅ armypos_sim_v3 全部通过（5 断言 + 反转敏感性自检）')
    return 0


if __name__ == '__main__':
    sys.exit(main())