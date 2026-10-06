#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 check_aircol.py —— 部队分列参数（**参数文件驱动**）

读 `toolchain/act/aircol.expected`，两行：
    第 1 行 = 空军列偏移（例如 0x41）       第 2 行 = 陆军列偏移（例如 -0x24）
断言（两处写入路径必须一致）：
    a1 `Province.updateArmyPosY` 第二遍：`const/16 v6, <air>` 与 `const/16 v6, <ground>` 各 1
    a2 `Province.columnShiftFor`      ：`const/16 v7, <air>` 与 `const/16 v7, <ground>` 各 1
    a3 两处不得残留其它值（方法内 `const/16 v6|v7, 0x..` 恰好各 2 处：一正一负）
N1 改掉排版里的空军值 ⇒ 变红       N2 改掉 csf 里的陆军值 ⇒ 变红
★ 以后“再往左/往右调几 px”只需：改两处 smali 常量 + 改 aircol.expected，**不用动本文件与任何旧门禁**。
"""
import os
import sys

ACT = os.path.dirname(os.path.abspath(__file__))
lines = [l.strip() for l in open(os.path.join(ACT, 'aircol.expected'), encoding='utf-8') if l.strip()]
AIR, GND = lines[0], lines[1]
PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
SIG_UPY = '.method public final updateArmyPosY()V'
SIG_CSF = '.method public static columnShiftFor(II)I'


def m_of(t, s):
    if s not in t:
        return ''
    i = t.index(s)
    return t[i:t.index('.end method', i)]


def pos_consts(body, reg):
    """方法内该寄存器的 const/16 常量列表（stripped）"""
    out = []
    for l in body.split('\n'):
        t = l.strip()
        if t.startswith('const/16 v%s, ' % reg):
            out.append(t.split(', ')[1])
    return out


def check(prov, msgs):
    bad = []
    up, cs = m_of(prov, SIG_UPY), m_of(prov, SIG_CSF)
    pu, pc = pos_consts(up, '6'), pos_consts(cs, '7')
    msgs.append('   a1 排版第二遍 const/16 v6: %s（期望 %s / %s）' % (pu, AIR, GND))
    msgs.append('   a2 columnShiftFor  const/16 v7: %s（期望 %s / %s）' % (pc, AIR, GND))
    ok1 = sorted(pu) == sorted([AIR, GND])
    ok2 = sorted(pc) == sorted([AIR, GND])
    msgs.append('   %s a3 两处均为 [空军, 陆军] 且无多余值' % ('✅' if (ok1 and ok2) else '❌'))
    if not (ok1 and ok2):
        bad.append('colShift')
    return bad


def main():
    msgs = []
    prov = open(PROV, encoding='utf-8').read()
    bad = check(prov, msgs)
    for m in msgs:
        print(m)
    if bad:
        print('❌ 门禁 check_aircol 未过: %s（期望 空军=%s / 陆军=%s）' % (bad, AIR, GND))
        return 1
    up, cs = m_of(prov, SIG_UPY), m_of(prov, SIG_CSF)
    negs = [
        ('N1 改掉排版里的空军值', prov.replace(up, up.replace('const/16 v6, %s' % AIR, 'const/16 v6, 0x1c', 1), 1)),
        ('N2 改掉 csf 里的陆军值', prov.replace(cs, cs.replace('const/16 v7, %s' % GND, 'const/16 v7, -0x1c', 1), 1)),
    ]
    nbad = []
    for name, src in negs:
        r = check(src, [])
        print(' %s: %s' % ('✅' if r else '❌', name))
        if not r:
            nbad.append(name)
    if nbad:
        print('❌ 负样本未被抓住:', nbad)
        return 1
    print('✅ 门禁 check_aircol 通过（空军 %s / 陆军 %s，两处一致，2 负样本）' % (AIR, GND))
    return 0


if __name__ == '__main__':
    sys.exit(main())