#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6t007 门禁：TnoBlock.draw 的「HoiBox.open 守卫」极性
#   —— 血案：r6t006 把守卫写成 if-eqz（open==0 就跳过绘制）⇒ 主界面反而看不到三图块、开盒才看到。
#   正确：if-nez v14, :tno_detail_done（open!=0 才跳过 = 盒界面隐藏三图块）。
#   本门禁 = 语义断言（分支方向）+ 行为级模拟（解释真实 smali）+ 反转敏感性自检 + 3 负样本。
import sys, re

TB = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menus/TnoBlock.smali'


def rd():
    return open(TB, encoding='utf-8').read()


def checks(s):
    F = []
    # S1 守卫形态（正确极性唯一；血案形态必须零）
    c_ne = s.count('if-nez v14, :tno_detail_done')
    c_eq = s.count('if-eqz v14, :tno_detail_done')
    if c_ne != 1:
        F.append('S1 if-nez 守卫出现 %d 次（应 1）' % c_ne)
    if c_eq != 0:
        F.append('S1 血案形态 if-eqz 守卫仍在（%d 处）' % c_eq)
    # S2 标签唯一定义
    if len(re.findall(r'^\s*:tno_detail_done\s*$', s, re.M)) != 1:
        F.append('S2 标签 :tno_detail_done 定义 ≠ 1')
    # S3 顺序：守卫在 GW 读取之前；标签在最后一个 drawImage 之后
    gi = s.find('if-nez v14, :tno_detail_done')
    gw = s.find('sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I')
    li = s.rfind('drawImage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V')
    lt = s.find(':tno_detail_done', li)
    if not (0 <= gi < gw):
        F.append('S3 守卫不在绘制段（GW 读取）之前')
    if lt == -1:
        F.append('S3 标签不在最后一次 drawImage 之后')
    return F


def sim(s, open_val):
    """行为级模拟：读真实 smali 的 sget-boolean + 紧随的 if-*，判断是否跳到 :tno_detail_done（=跳过绘制）。"""
    m = re.search(r'sget-boolean v14, Laoc/kingdoms/lukasz/menus/HoiBox;->open:Z\s*\n\s*(if-\w+) v14, :tno_detail_done', s)
    if not m:
        return 'NOGUARD'
    op = m.group(1)
    v = open_val
    if op == 'if-eqz':
        jump = (v == 0)
    elif op == 'if-nez':
        jump = (v != 0)
    else:
        return 'OP?'
    return 'SKIP' if jump else 'DRAW'


def main():
    s = rd()
    F = checks(s)
    if F:
        for e in F:
            print('❌', e)
        print('❌ r6t007 门禁未过')
        sys.exit(1)
    print('✅ S1 守卫极性 / S2 标签 / S3 顺序')
    # 行为模拟：open=0（主界面）→ DRAW；open=1（盒界面）→ SKIP
    a0, a1 = sim(s, 0), sim(s, 1)
    bad = False
    if a0 != 'DRAW':
        print('❌ sim open=0 →', a0, '（应为 DRAW，主界面要画三图块）'); bad = True
    if a1 != 'SKIP':
        print('❌ sim open=1 →', a1, '（应为 SKIP，盒界面隐藏三图块）'); bad = True
    if not bad:
        print('✅ sim open=0→DRAW / open=1→SKIP')
    # 反转敏感性：把 if-nez 改成 if-eqz，模拟必须翻转（open=0 变 SKIP）
    m2 = s.replace('if-nez v14, :tno_detail_done', 'if-eqz v14, :tno_detail_done', 1)
    b0 = sim(m2, 0)
    if b0 != 'SKIP':
        print('❌ 反转敏感性失败（改错方向后模拟未翻转）'); bad = True
    else:
        print('✅ 反转敏感性（错误形态被抓）')
    # 负样本回放（必须变红）
    negs = [
        ('N1 极性反转', s.replace('if-nez v14, :tno_detail_done', 'if-eqz v14, :tno_detail_done', 1)),
        ('N2 删标签', s.replace(':tno_detail_done', ':tno_detail_x', 1)),
        ('N3 守卫后移', s.replace('if-nez v14, :tno_detail_done\n', 'x\n', 1) .replace('mul-int/lit8 v0, v0, 0x5\n', 'mul-int/lit8 v0, v0, 0x5\n    if-nez v14, :tno_detail_done\n', 1)),
    ]
    okN = True
    for name, m in negs:
        if checks(m):
            print('✅ %s 被捕获' % name)
        else:
            print('❌ %s 未被捕获（门禁失效）' % name); okN = False
    if bad or not okN:
        sys.exit(4)
    print('✅ r6t007 门禁全过（含负样本回放）')
    sys.exit(0)


if __name__ == '__main__':
    main()