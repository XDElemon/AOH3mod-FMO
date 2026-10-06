#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d165 —— 横向分列改由“排版自己的计数”驱动（不再反查省份）

a1 updateArmyPosY：第二遍遍历结构完整（loop/end/catch），
   两类都在的守卫（v5>0 且 v1>0）、±0x1c、写一次 iShiftX、调一次 upx
a2 探针：csf(III)V（declared-synchronized，写 "nCSF p="）
a3 类型流（在流水线里跑）
N1 删掉“没有空军⇒不分列”守卫 ⇒ 变红
N2 删掉“地面⇒−28”的分支 ⇒ 变红
N3 删掉第二遍的 .catch ⇒ 变红
"""
import subprocess
import sys

ACT = '/sdcard/GLG/历史23/toolchain/act/'
PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
PROBE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
SIG_UPY = '.method public final updateArmyPosY()V'


def m_of(t, s):
    if s not in t:
        return ''
    i = t.index(s)
    j = t.index('.end method', i)
    return t[i:j]


def ck(msgs, bad, tag, body, frag, want):
    c = body.count(frag)
    msgs.append(' %s: %-32s 命中 %d（应 %d）' % ('✅' if c == want else '❌', tag, c, want))
    if c != want:
        bad.append(tag)


def check(prov, probe, msgs):
    bad = []
    up = m_of(prov, SIG_UPY)
    ck(msgs, bad, 'a1.tryStart(def+catch)', up, ':r6d165_try_start', 2)
    ck(msgs, bad, 'a1.loopDef+goto', up, ':r6d165_loop', 2)
    ck(msgs, bad, 'a1.endLabel', up, ':r6d165_end', 2)
    ck(msgs, bad, 'a1.catchDef+target', up, ':r6d165_catch', 2)
    ck(msgs, bad, 'a1.catchDirective', up,
       '.catch Ljava/lang/Exception; {:r6d165_try_start .. :r6d165_try_end} :r6d165_catch', 1)
    ck(msgs, bad, 'a1.无空军⇒不分列', up, 'if-lez v5, :r6d165_base', 1)
    ck(msgs, bad, 'a1.无陆军⇒不分列', up, 'if-lez v1, :r6d165_base', 1)
    _pos = len([x for x in up.split('\n') if x.strip().startswith('const/16 v') and ', 0x' in x and '-' not in x.split(', ')[1]])
    msgs.append('   a1.空军正偏移：%d 处（>=1 即通过；r6d166 起为 0x2c=44）' % _pos)
    if _pos < 1:
        bad.append('a1.airShiftPositive')
    _neg = len([x for x in up.split('\n') if x.strip().startswith('const/16 v6, -0x')])
    msgs.append('   a1.陆军负偏移：%d 处（>=1 即通过）' % _neg)
    if _neg < 1:
        bad.append('a1.groundShift')
    ck(msgs, bad, 'a1.地面⇒−28分支', up, 'if-eqz v7, :r6d165_neg', 1)
    ck(msgs, bad, 'a1.写一次iShiftX', up, 'ArmyDivision;->iShiftX:I', 1)
    ck(msgs, bad, 'a1.一次upx', up, 'AirPosProbe;->upx(IIII)V', 1)
    ck(msgs, bad, 'a1.旧r6d164块已删', up, 'r6d164：横向列偏移', 0)
    ck(msgs, bad, 'a2.csf探针', probe, 'declared-synchronized csf(III)V', 1)
    ck(msgs, bad, 'a2.csf日志', probe, '"nCSF p="', 1)
    return bad


def main():
    msgs = []
    prov, probe = open(PROV, encoding='utf-8').read(), open(PROBE, encoding='utf-8').read()
    bad = check(prov, probe, msgs)
    for m in msgs:
        print(m)
    if bad:
        print('❌ 门禁 r6d165 未过:', bad)
        return 1
    r = subprocess.run(['python3', ACT + 'check_castorder.py', PROV, PROBE], capture_output=True, text=True)
    print('  %s: a3 类型流 → %s' % ('✅' if r.returncode == 0 else '❌',
                                 (r.stdout or '').strip().split('\n')[-1]))
    if r.returncode != 0:
        return 1

    print('--- 负样本 ---')
    up = m_of(prov, SIG_UPY)
    negs = [
        ('N1 删“无空军⇒不分列”守卫', up.replace('if-lez v5, :r6d165_base\n\n', '', 1)),
        ('N2 删“地面⇒−28”分支', up.replace('if-eqz v7, :r6d165_neg\n\n', '', 1)),
        ('N3 删第二遍的 .catch',
         up.replace('.catch Ljava/lang/Exception; {:r6d165_try_start .. :r6d165_try_end} :r6d165_catch\n', '', 1)),
    ]
    nbad = []
    for name, src in negs:
        m2 = []
        r2 = check(prov.replace(up, src, 1), probe, m2)
        print(' %s: %s' % ('✅' if r2 else '❌', name))
        if not r2:
            nbad.append(name)
    if nbad:
        print('❌ 负样本未被抓住:', nbad)
        return 1
    print('✅ 门禁 r6d165 通过（a1 结构 + a2 探针 + a3 类型流 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())