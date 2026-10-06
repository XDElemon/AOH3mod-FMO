#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d206.py —— AD-3（防空导弹可见弹迹）门禁
断言 S1..S5 + 负样本 N1..N4（每个负样本必须能让对应断言变红）
用法: python3 check_r6d206.py <smali树> [--selftest]
"""
import sys, os, re, shutil, tempfile

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
SELFTEST = "--selftest" in sys.argv
P = lambda *a: os.path.join(TREE, *a)
AM = P("aoc/kingdoms/lukasz/map/battles/AirMission.smali")
AD = P("aoc/kingdoms/lukasz/map/battles/AirDefense.smali")
PDA = P("aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")

def method(body, sig):
    i = body.find('.method')
    out = []
    while i != -1:
        j = body.find('.end method', i)
        seg = body[i:j]
        if sig in seg.split('\n')[0]:
            return seg
        i = body.find('.method', j)
    return ''

def load():
    return open(AM, encoding='utf-8').read(), open(AD, encoding='utf-8').read(), open(PDA, encoding='utf-8').read()

def checks(t):
    am, ad, pda = t
    r = []
    # S1 AirMission：10 个 adFx 字段
    fs = ['adFxSrc:I', 'adFxInit:I', 'adFlyHours:I', 'adFxSpd:F', 'adFxTN:I', 'adFxTH:I',
          'adFxTX:[F', 'adFxTY:[F', 'adFxX:F', 'adFxY:F']
    r.append(('S1 AirMission 10 个 adFx 字段', all(('.field public ' + f) in am for f in fs)))
    # S2 AirDefense 三处登记
    fp = method(ad, 'fireProvince')
    sch = method(ad, 'scheduleHit')
    th = method(ad, 'tickHits')
    r.append(('S2a fireProvince 写 adFxSrc(iput p1, v5)',
              fp.count('iput p1, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I') == 1))
    r.append(('S2b scheduleHit 置 adFlyHours=1 且 adFxInit=0',
              sch.count('->adFlyHours:I') == 1 and sch.count('->adFxInit:I') == 1))
    r.append(('S2c tickHits 到达清弹迹（adFlyHours/adFxInit=0、adFxSrc=-1）',
              th.count('->adFlyHours:I') == 1 and th.count('->adFxInit:I') == 1
              and '->adFxSrc:I' in th and 'const/4 v8, -0x1' in th))
    # S3 拷贝体 + 尾迹黄
    r.append(('S3a 三个拷贝方法存在', all(k in pda for k in
              ['adFxStep(', 'adFxDrawTrail', 'adFxTrailAdd'])))
    r.append(('S3b 尾迹 tint = 黄(0x3f59999a/0x3e19999a) 且非 const/high16',
              'const v10, 0x3f59999a' in pda and 'const v11, 0x3e19999a' in pda
              and 'const/high16 v10, 0x3f59999a' not in pda))
    r.append(('S3c 拷贝体不残留 msFx 字段引用（除帧计时）',
              len([l for l in method(pda, 'adFxStep').split('\n') if 'msFx' in l and 'msFxFrameDt' not in l]) == 0))
    # S4 入口 + 调用点
    e = method(pda, 'drawAdMissileFx')
    r.append(('S4a 入口守卫 adFxSrc>=0 / adFlyHours>0',
              '->adFxSrc:I' in e and 'if-ltz v0, :done' in e and '->adFlyHours:I' in e))
    # S4b 调用点：各 1 处，且 AD 调用必须“紧随”飞机导弹调用（≤6 行内）
    _ls = pda.split('\n')
    _iv = [i for i, l in enumerate(_ls) if '->drawAirMissileFx(' in l]
    _ia = [i for i, l in enumerate(_ls) if '->drawAdMissileFx(' in l]
    r.append(('S4b 调用点各 1 处且 AD 紧随飞机导弹（≤6 行）',
              len(_iv) == 1 and len(_ia) == 1 and 0 < _ia[0] - _iv[0] <= 6))
    # S5 迷雾门（C 口径）：目标省 fogDrawArmy==true ⇒ 跳过
    r.append(('S5 迷雾门 getFogDrawArmy + if-nez v3, :done（迷雾内不画）',
              'getFogDrawArmy()Z' in e and 'if-nez v3, :done' in e))
    return r

def run(tree):
    return checks(load.__wrapped__(tree) if False else (
        open(os.path.join(tree, "aoc/kingdoms/lukasz/map/battles/AirMission.smali"), encoding='utf-8').read(),
        open(os.path.join(tree, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali"), encoding='utf-8').read(),
        open(os.path.join(tree, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"), encoding='utf-8').read()))

def selftest():
    tmp = tempfile.mkdtemp()
    for sub in ("aoc/kingdoms/lukasz/map/battles", "aoc/kingdoms/lukasz/map/province"):
        os.makedirs(os.path.join(tmp, sub), exist_ok=True)
    for src, rel in ((AM, "aoc/kingdoms/lukasz/map/battles/AirMission.smali"),
                     (AD, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali"),
                     (PDA, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")):
        shutil.copy2(src, os.path.join(tmp, rel))
    print('--- 正检 ---')
    allok = True
    for name, ok in run(tmp):
        print(('  ✅ ' if ok else '  ❌ ') + name)
        allok &= ok
    # 负样本
    N = []
    f = os.path.join(tmp, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
    base = open(f, encoding='utf-8').read()
    # N1 删迷雾门
    open(f, 'w', encoding='utf-8').write(base.replace('    if-nez v3, :done\n', ''))
    N.append(('N1 删迷雾门 ⇒ S5 红', not dict(run(tmp))['S5 迷雾门 getFogDrawArmy + if-nez v3, :done（迷雾内不画）']))
    # N2 迷雾门极性写反
    open(f, 'w', encoding='utf-8').write(base.replace('if-nez v3, :done', 'if-eqz v3, :done'))
    N.append(('N2 迷雾门反写 ⇒ S5 红', not dict(run(tmp))['S5 迷雾门 getFogDrawArmy + if-nez v3, :done（迷雾内不画）']))
    # N3 尾迹退回白（const/high16）
    open(f, 'w', encoding='utf-8').write(base.replace('const v10, 0x3f59999a', 'const/high16 v10, 0x3f800000'))
    N.append(('N3 尾迹退回白 ⇒ S3b 红', not dict(run(tmp))['S3b 尾迹 tint = 黄(0x3f59999a/0x3e19999a) 且非 const/high16']))
    # N4 删调用点
    open(f, 'w', encoding='utf-8').write(base.replace(
        '    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAdMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V\n\n', '', 1))
    N.append(('N4 删调用点 ⇒ S4b 红', not dict(run(tmp))['S4b 调用点各 1 处且 AD 紧随飞机导弹（≤6 行）']))
    open(f, 'w', encoding='utf-8').write(base)
    print('--- 负样本 ---')
    for name, ok in N:
        print(('  ✅ ' if ok else '  ❌ ') + name)
        allok &= ok
    shutil.rmtree(tmp, ignore_errors=True)
    print('\n正检 %d/%d · 负样本 %d/%d · result=%s' % (
        sum(1 for _, ok in run(TREE) if ok), len(run(TREE)),
        sum(1 for _, ok in N if ok), len(N), str(allok).lower()))
    return allok

def main():
    if SELFTEST:
        sys.exit(0 if selftest() else 1)
    ok = True
    for name, k in run(TREE):
        print(('  ✅ ' if k else '  ❌ ') + name)
        ok &= k
    print('result=' + str(ok).lower())
    sys.exit(0 if ok else 1)

if __name__ == '__main__':
    main()