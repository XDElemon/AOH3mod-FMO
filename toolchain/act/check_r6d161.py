#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 r6d161 v2 —— 方法域检查（4 断言 + 4 负样本）"""
import sys

ROOT = '/tmp/w3a/smali/'
PROV = ROOT + 'aoc/kingdoms/lukasz/map/province/Province.smali'
ARMY = ROOT + 'aoc/kingdoms/lukasz/map/army/ArmyDivision.smali'
PROBE = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'

SIG_UPY = '.method public final updateArmyPosY()V'
SIG_DSX = '.method public final defaultShiftX()I'
SIG_UP = '.method public static up(I)V'


def rd(p):
    return open(p, encoding='utf-8').read()


def m_of(text, sig):
    i = text.index(sig)
    j = text.index('.end method', i)
    return text[i:j]


def ck(msgs, bad, tag, body, frag, want):
    c = body.count(frag)
    msgs.append(' %s: %-40s 命中 %d（应 %d）' % ('✅' if c == want else '❌', tag, c, want))
    if c != want:
        bad.append(tag)


def check(prov, army, probe, msgs):
    bad = []
    up = m_of(prov, SIG_UPY)
    dsx = m_of(army, SIG_DSX)
    upp = m_of(probe, SIG_UP)
    _r = [x for x in ('.registers 7', '.registers 9') if x in up]*1
    msgs.append(' a1.reg7: .registers>=7 → %s' % ('OK' if _r else '缺失'))
    if not _r:
        bad.append('a1.reg7')
    ck(msgs, bad, 'a1.jAirInit', up, 'const/4 v5, 0x0', 1)
    ck(msgs, bad, 'a1.jAirLocal', up, '.local v5, "jAir":I', 1)
    ck(msgs, bad, 'a1.airUseJAir', up, 'mul-int v3, v3, v5', 1)
    ck(msgs, bad, 'a1.airInc', up, 'add-int/lit8 v5, v5, 0x1', 1)
    ck(msgs, bad, 'a1.groundLabelDef', up, '\n    :r6d161_ground\n', 1)
    ck(msgs, bad, 'a1.groundLabelUses', up, ':r6d161_ground', 3)
    _sw = up.count('startsWith(Ljava/lang/String;)Z')
    msgs.append('   a1.startsWith：%d 处（>=1 即通过；r6d165 第二遍又多一处）' % _sw)
    if _sw < 1:
        bad.append('a1.startsWith')
    ck(msgs, bad, 'a2.groundFormula(v1)', up, 'mul-int v3, v3, v1', 1)
    ck(msgs, bad, 'a2.iShiftY写点(2)', up, 'iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I', 2)
    ck(msgs, bad, 'a2.陆军槽位自增', up, 'add-int/lit8 v1, v1, 0x1', 1)
    # a3：空军横向偏移能力存在（旧形态=r6d161 常量 +0x38；新形态=r6d163 的 columnShiftFor 调用）
    ck(msgs, bad, 'a3.airDetect', dsx, 'startsWith(Ljava/lang/String;)Z', 1)
    _old = dsx.count('const/16 v1, 0x38')
    _new = dsx.count('Province;->columnShiftFor(II)I')
    msgs.append(' %s: %-34s 旧形态 %d + 新形态 %d（应合计 1）' % ('✅' if _old + _new == 1 else '❌', 'a3.shiftForm', _old, _new))
    if _old + _new != 1:
        bad.append('a3.shiftForm')
    ck(msgs, bad, 'a3.addOffset', dsx, 'add-int/2addr v0, v1' if _old else 'add-int/2addr v0, v4', 1)
    ck(msgs, bad, 'a3.shiftLabel', dsx, ':r6d161_done' if _old else ':r6d163_done', 3 if _old else 2)
    ck(msgs, bad, 'a4.reg15', upp, '.registers 15', 1)
    ck(msgs, bad, 'a4.v13Zero', upp, 'const/4 v13, 0x0', 1)
    ck(msgs, bad, 'a4.readAx', upp, 'iget v13, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I', 1)
    ck(msgs, bad, 'a4.logAx', upp, '" ax="', 1)
    return bad


def main():
    msgs = []
    prov, army, probe = rd(PROV), rd(ARMY), rd(PROBE)
    bad = check(prov, army, probe, msgs)
    for m in msgs:
        print(m)
    if bad:
        print('❌ 门禁未过:', bad)
        return 1

    print('--- 4 个负样本 ---')
    upm = m_of(prov, SIG_UPY)
    dsm = m_of(army, SIG_DSX)
    upm_p = m_of(probe, SIG_UP)
    negs = [
        ('N1 空军分支用回陆军计数 v1', 'prov', upm.replace('mul-int v3, v3, v5', 'mul-int v3, v3, v1', 1)),
        ('N2 去掉空军槽位自增', 'prov', upm.replace('add-int/lit8 v5, v5, 0x1', '', 1)),
        ('N3 去掉横向偏移', 'army', dsm.replace('add-int/2addr v0, v1' if 'const/16 v1, 0x38' in dsm else 'add-int/2addr v0, v4', '', 1)),
        ('N4 去掉 v13 置零', 'probe', upm_p.replace('const/4 v13, 0x0', '', 1)),
        ('N5 up() 寄存器退回 14（v13 变参数寄存器）', 'probe', upm_p.replace('.registers 15', '.registers 14', 1)),
    ]
    nbad = []
    for name, which, src in negs:
        m2 = []
        if which == 'prov':
            r = check(prov.replace(upm, src, 1), army, probe, m2)
        elif which == 'army':
            r = check(prov, army.replace(dsm, src, 1), probe, m2)
        else:
            r = check(prov, army, probe.replace(upm_p, src, 1), m2)
        print(' %s: %s' % ('✅' if r else '❌', name))
        if not r:
            nbad.append(name)
    if nbad:
        print('❌ 负样本未被抓住:', nbad)
        return 1
    print('✅ 门禁 r6d161 通过（4 断言 + 4 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())