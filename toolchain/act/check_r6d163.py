#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d163 —— 横向对称分列 / 单边居中（用户两条要求）

a1 Province.columnShiftFor(II)I 存在且规则正确（两类都在才分列；单边/无省 ⇒ 0）
a2 ArmyDivision.defaultShiftX() 用 provinceID 调 columnShiftFor，且旧的“永远 +56”已移除
a3 类型流（check_castorder）在两个文件上必须 0 处
N1 把空军的返回改成 −28（符号反）⇒ 必须变红
N2 删掉“没有陆军则居中”的守卫 ⇒ 必须变红
N3 删掉分列调用（回到“不偏移”）⇒ 必须变红
"""
import os
import re
import subprocess
import sys

ACT = '/sdcard/GLG/历史23/toolchain/act/'
PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
ARMY = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/army/ArmyDivision.smali'

SIG_HELPER = '.method public static columnShiftFor(II)I'
SIG_DSX = '.method public final defaultShiftX()I'


def rd(p):
    return open(p, encoding='utf-8').read()


def m_of(text, sig):
    i = text.index(sig)
    j = text.index('.end method', i)
    return text[i:j]


def ck(msgs, bad, tag, body, frag, want):
    c = body.count(frag)
    msgs.append(' %s: %-34s 命中 %d（应 %d）' % ('✅' if c == want else '❌', tag, c, want))
    if c != want:
        bad.append(tag)


def check(prov, army, msgs):
    bad = []
    h = m_of(prov, SIG_HELPER)
    d = m_of(army, SIG_DSX)
    # ---- a1 规则 ----
    ck(msgs, bad, 'a1.reg10', h, '.registers 10', 1)
    ck(msgs, bad, 'a1.取本省', h, 'Province;->getArmySize()I', 1)
    ck(msgs, bad, 'a1.遍历', h, 'Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;', 1)
    ck(msgs, bad, 'a1.判空省', h, 'if-nez v0, :r6d163_done', 1)
    ck(msgs, bad, 'a1.空军计数', h, 'add-int/lit8 v3, v3, 0x1', 1)
    ck(msgs, bad, 'a1.陆军计数', h, 'add-int/lit8 v4, v4, 0x1', 1)
    ck(msgs, bad, 'a1.无空军⇒居中', h, 'if-lez v3, :r6d163_done', 1)
    ck(msgs, bad, 'a1.无陆军⇒居中', h, 'if-lez v4, :r6d163_done', 1)
    _pos = len([x for x in h.split('\n') if x.strip().startswith('const/16 v') and ', 0x' in x and '-' not in x.split(', ')[1]])
    msgs.append('   a1.空军正偏移：%d 处（>=1 即通过）' % _pos)
    if _pos < 1:
        bad.append('a1.airShiftPositive')
    _neg = len([x for x in h.split('\n') if x.strip().startswith('const/16 v7, -0x')])
    ck(msgs, bad, 'a1.否则0', h, 'const/4 v7, 0x0', 2)   # 入口置零 + 居中返回各一次
    # ---- a2 调用点 ----
    ck(msgs, bad, 'a2.reg6', d, '.registers 6', 1)
    ck(msgs, bad, 'a2.取provinceID', d, 'ArmyDivision;->provinceID:I', 1)
    ck(msgs, bad, 'a2.调columnShiftFor', d, 'Province;->columnShiftFor(II)I', 1)
    ck(msgs, bad, 'a2.旧+56已移除', d, 'const/16 v1, 0x38', 0)
    ck(msgs, bad, 'a2.key空⇒不加偏移', d, 'if-eqz v2, :r6d163_done', 1)
    return bad


def main():
    msgs = []
    prov, army = rd(PROV), rd(ARMY)
    bad = check(prov, army, msgs)
    for m in msgs:
        print(m)
    if bad:
        print('❌ 门禁 r6d163 未过:', bad)
        return 1

    # ---- a3 类型流 ----
    r = subprocess.run(['python3', ACT + 'check_castorder.py', PROV, ARMY], capture_output=True, text=True)
    print('  %s: a3 类型流 → %s' % ('✅' if r.returncode == 0 else '❌',
                                 (r.stdout or '').strip().split('\n')[-1]))
    if r.returncode != 0:
        return 1

    # ---- 负样本 ----
    print('--- 负样本 ---')
    h = m_of(prov, SIG_HELPER)
    d = m_of(army, SIG_DSX)
    negs = [
        ('N1 空军符号反（正→负）', 'prov', re.sub(r'const/16 v7, 0x[0-9a-f]+', 'const/16 v7, -0x1c', h, count=1)),
        ('N2 删掉“无陆军⇒居中”守卫', 'prov', h.replace('if-lez v4, :r6d163_done', '', 1)),
        ('N3 删掉分列调用', 'army', d.replace('Province;->columnShiftFor(II)I', 'Province;->toString()Ljava/lang/String;', 1)),
    ]
    nbad = []
    for name, which, src in negs:
        m2 = []
        if which == 'prov':
            r2 = check(prov.replace(h, src, 1), army, m2)
        else:
            r2 = check(prov, army.replace(d, src, 1), m2)
        print(' %s: %s' % ('✅' if r2 else '❌', name))
        if not r2:
            nbad.append(name)
    if nbad:
        print('❌ 负样本未被抓住:', nbad)
        return 1
    print('✅ 门禁 r6d163 通过（a1 规则 + a2 调用 + a3 类型流 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())