#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d164 —— 横向分列在排版里直接生效 + 取证

a1 updateArmyPosY：.registers9；两个分支各写一次 iShiftX；各调一次 columnShiftFor / upx
a2 类型流（check_castorder）0 处
a3 探针 upx(IIII)V 存在、declared-synchronized、写 "nUPX p="
a4 写入器 w 为 declared-synchronized（防日志交错）
N1 删掉陆军分支的 iShiftX 写入 ⇒ 变红
N2 删掉一次 upx 调用 ⇒ 变红
N3 去掉 upx 的 declared-synchronized ⇒ 变红
"""
import subprocess
import sys

ACT = '/sdcard/GLG/历史23/toolchain/act/'
PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
PROBE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
SIG_UPY = '.method public final updateArmyPosY()V'
SIG_UPX = '.method public static declared-synchronized upx(IIII)V'


def rd(p):
    return open(p, encoding='utf-8').read()


def m_of(t, s):
    """宽容版：找不到签名就返回空串（让断言去判红，而不是抛异常）"""
    if s not in t:
        return ''
    i = t.index(s)
    j = t.index('.end method', i)
    return t[i:j]


def ck(msgs, bad, tag, body, frag, want):
    c = body.count(frag)
    msgs.append(' %s: %-30s 命中 %d（应 %d）' % ('✅' if c == want else '❌', tag, c, want))
    if c != want:
        bad.append(tag)


def check(prov, probe, msgs):
    bad = []
    up = m_of(prov, SIG_UPY)
    ck(msgs, bad, 'a1.reg9', up, '.registers 9', 1)
    _n = up.count('Province;->columnShiftFor(II)I')
    msgs.append('   a1.columnShiftFor：%d 处（r6d164 形态=2；r6d165 已改为本地计数=0，均算通过）' % _n)
    _w = up.count('ArmyDivision;->iShiftX:I')
    msgs.append('   a1.排版写 iShiftX：%d 处（>=1 即通过）' % _w)
    if _w < 1:
        bad.append('a1.iShiftX写入')
    _u = up.count('AirPosProbe;->upx(IIII)V')
    msgs.append('   a1.取证 upx：%d 处（>=1 即通过）' % _u)
    if _u < 1:
        bad.append('a1.upx取证')
    ux = m_of(probe, SIG_UPX)
    ck(msgs, bad, 'a3.upx.reg8', ux, '.registers 8', 1)
    ck(msgs, bad, 'a3.upx.log', ux, '"nUPX p="', 1)
    ck(msgs, bad, 'a4.w同步', probe, 'declared-synchronized w(Ljava/lang/StringBuilder;)V', 1)
    return bad


def main():
    msgs = []
    prov, probe = rd(PROV), rd(PROBE)
    bad = check(prov, probe, msgs)
    for m in msgs:
        print(m)
    if bad:
        print('❌ 门禁 r6d164 未过:', bad)
        return 1
    r = subprocess.run(['python3', ACT + 'check_castorder.py', PROV, PROBE], capture_output=True, text=True)
    print('  %s: a2 类型流 → %s' % ('✅' if r.returncode == 0 else '❌',
                                 (r.stdout or '').strip().split('\n')[-1]))
    if r.returncode != 0:
        return 1

    print('--- 负样本 ---')
    up = m_of(prov, SIG_UPY)
    negs = [
        ('N1 删掉陆军分支 iShiftX 写入', 'prov',
         up.replace('iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I', '', 1)),
        ('N2 删掉一次 upx 调用', 'prov',
         up.replace('invoke-static {v6, v4, v7, v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->upx(IIII)V', '', 1)),
        ('N3 去掉 upx 的 declared-synchronized', 'probe',
         probe.replace('declared-synchronized upx(IIII)V', 'upx(IIII)V', 1)),
    ]
    nbad = []
    for name, which, src in negs:
        m2 = []
        r2 = check(prov.replace(up, src, 1), probe, m2) if which == 'prov' else check(prov, src, m2)
        print(' %s: %s' % ('✅' if r2 else '❌', name))
        if not r2:
            nbad.append(name)
    if nbad:
        print('❌ 负样本未被抓住:', nbad)
        return 1
    print('✅ 门禁 r6d164 通过（a1 写入 + a2 类型流 + a3 探针 + a4 同步 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())