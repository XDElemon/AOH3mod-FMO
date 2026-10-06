#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d166 —— 只把空军那一列右移（+28 → +44），陆军不动

a1 排版第二遍（updateArmyPosY）：空军 +0x2c(44) / 陆军 −0x1c(−28)
a2 第二路径（columnShiftFor）：同样 +0x2c / −0x1c（两处必须一致，否则会被写回）
a3 不得残留旧的 +0x1c
N1 把排版里的空军改回 0x1c ⇒ 变红
N2 把 columnShiftFor 里的空军改回 0x1c ⇒ 变红
"""
import sys

PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
SIG_UPY = '.method public final updateArmyPosY()V'
SIG_CSF = '.method public static columnShiftFor(II)I'


def m_of(t, s):
    if s not in t:
        return ''
    i = t.index(s)
    j = t.index('.end method', i)
    return t[i:j]


def ck(msgs, bad, tag, body, frag, want):
    c = body.count(frag)
    msgs.append(' %s: %-28s 命中 %d（应 %d）' % ('✅' if c == want else '❌', tag, c, want))
    if c != want:
        bad.append(tag)


def check(prov, msgs):
    bad = []
    up = m_of(prov, SIG_UPY)
    cs = m_of(prov, SIG_CSF)
    ck(msgs, bad, 'a1.空军+44', up, 'const/16 v6, 0x2c', 1)
    ck(msgs, bad, 'a1.陆军-28', up, 'const/16 v6, -0x1c', 1)
    ck(msgs, bad, 'a2.空军+44', cs, 'const/16 v7, 0x2c', 1)
    ck(msgs, bad, 'a2.陆军-28', cs, 'const/16 v7, -0x1c', 1)
    ck(msgs, bad, 'a3.无旧值(排版)', up, 'const/16 v6, 0x1c', 0)
    ck(msgs, bad, 'a3.无旧值(csf)', cs, 'const/16 v7, 0x1c', 0)
    return bad


def main():
    msgs = []
    prov = open(PROV, encoding='utf-8').read()
    bad = check(prov, msgs)
    for m in msgs:
        print(m)
    if bad:
        print('❌ 门禁 r6d166 未过:', bad)
        return 1

    print('--- 负样本 ---')
    up = m_of(prov, SIG_UPY)
    cs = m_of(prov, SIG_CSF)
    negs = [
        ('N1 排版里的空军改回 +28', prov.replace(up, up.replace('const/16 v6, 0x2c', 'const/16 v6, 0x1c', 1), 1)),
        ('N2 columnShiftFor 里的空军改回 +28',
         prov.replace(cs, cs.replace('const/16 v7, 0x2c', 'const/16 v7, 0x1c', 1), 1)),
    ]
    nbad = []
    for name, src in negs:
        m2 = []
        r = check(src, m2)
        print(' %s: %s' % ('✅' if r else '❌', name))
        if not r:
            nbad.append(name)
    if nbad:
        print('❌ 负样本未被抓住:', nbad)
        return 1
    print('✅ 门禁 r6d166 通过（空军 +44 / 陆军 −28，两路径一致，3 组断言 + 2 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())