# ===== r6d269 用例：绘制入口注入"编队机型记录"，取图优先 =====
afm = rd(F_AFM); pda = rd(F_PDA)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AFM 字段三件齐', afm.count('dgAirUid') == 1 and afm.count('dgAirAid') == 1 and afm.count('dgAirCiv') == 1)
ok('PDA 注入+读取齐（uid/aid 各3、civ2）', pda.count('dgAirUid') == 3 and pda.count('dgAirAid') == 3 and pda.count('dgAirCiv') == 2)
ok('注入标签 3 处', pda.count('r6d269_rs') == 3)
ok('forKey 优先块 5 处', pda.count('r6d269_ak_skip') == 5)
ok('优先/记录注释各1', pda.count('# r6d269:优先') == 1 and pda.count('# r6d269:记录') == 1)

def simG(u, a, c):
    rec = []
    stubs = base_stubs({
        ('airImgForRec'): lambda sm, x: (rec.append(('rec', x)), 77)[1],
        ('airImgForDivKey'): lambda sm, x: (rec.append(('div', x)), 66)[1],
        ('getAirMissionByKey'): lambda sm, x: None,
        ('airImgForCiv'): lambda sm, x: (rec.append(('civ', x)), 55)[1],
        ('getKeyCiv'): lambda sm, x: 7, ('aif'): lambda sm, x: None, ('artD'): lambda sm, x: None,
    })
    sf = {'AirForceManager;->dgAirUid:I': u, 'AirForceManager;->dgAirAid:I': a,
          'AirForceManager;->dgAirCiv:I': c, 'ProvinceDrawArmy;->artCiv:I': -1}
    sm = run_named(pf, 'airImgForKey', stubs, {'p0': 3, 'p1': 'airhq_7_2'}, sf)
    return sm.ret, rec

print('== SIM G 优先块 ==')
r, rec = simG(8, 1, 5)
ok('G1 注入命中→记录链(5,8,1)', r == 77 and rec == [('rec', [5, 8, 1])])
r, rec = simG(-1, -1, -1)
ok('G2 无注入→DivKey 后备(66)', r == 66 and rec and rec[0][0] == 'div')
r, rec = simG(6, 1, 5)
ok('G3 uID=6 非法→后备(66)', r == 66)
r, rec = simG(8, -1, 5)
ok('G4 aid=-1 非法→后备(66)', r == 66)

print('== 负样本 ==')
def mk_neg(pat_old, pat_new):
    t = pda.replace(pat_old, pat_new, 1)
    return split_methods(t)
def negN1():
    m2 = mk_neg('if-lt v4, v5, :r6d269_ak_skip', 'if-ge v4, v5, :r6d269_ak_skip')
    rec = []
    stubs = base_stubs({('airImgForRec'): lambda sm, x: (rec.append(('rec', x)), 77)[1],
                        ('airImgForDivKey'): lambda sm, x: 66, ('getAirMissionByKey'): lambda sm, x: None})
    sf = {'AirForceManager;->dgAirUid:I': 6, 'AirForceManager;->dgAirAid:I': 1, 'AirForceManager;->dgAirCiv:I': 5}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K'}, sf)
    return sm.ret != 66
ok('N1 uID<7 守卫翻→红', negN1())
def negN2():
    m2 = mk_neg('if-ltz v5, :r6d269_ak_skip', 'if-gez v5, :r6d269_ak_skip')
    rec = []
    stubs = base_stubs({('airImgForRec'): lambda sm, x: (rec.append(('rec', x)), 77)[1],
                        ('airImgForDivKey'): lambda sm, x: 66, ('getAirMissionByKey'): lambda sm, x: None})
    sf = {'AirForceManager;->dgAirUid:I': 8, 'AirForceManager;->dgAirAid:I': -1, 'AirForceManager;->dgAirCiv:I': 5}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K'}, sf)
    return sm.ret != 66
ok('N2 aid<0 守卫翻→红', negN2())
def negN3():
    m2 = mk_neg('if-ltz v4, :r6d269_ak_skip\n    return v4\n    :r6d269_ak_skip', 'if-gez v4, :r6d269_ak_skip\n    return v4\n    :r6d269_ak_skip')
    stubs = base_stubs({('airImgForRec'): lambda sm, x: 77,
                        ('airImgForDivKey'): lambda sm, x: 66, ('getAirMissionByKey'): lambda sm, x: None})
    sf = {'AirForceManager;->dgAirUid:I': 8, 'AirForceManager;->dgAirAid:I': 1, 'AirForceManager;->dgAirCiv:I': 5}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K'}, sf)
    return sm.ret != 77
ok('N3 结果极性翻→红', negN3())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d269 全部通过')