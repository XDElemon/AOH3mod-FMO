# ===== r6d266 用例（接在解释器后） =====
import re as _re

afm = rd(F_AFM); pda = rd(F_PDA)
mf = split_methods(afm)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AFM airImgForUnit(单位) 定义1', afm.count('.method public static airImgForUnit(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I') == 1)
ok('AFM airImgForAirportOrd 定义1', afm.count('.method public static airImgForAirportOrd') == 1)
ok('AFM mission 新链标签1', afm.count(':r6d266_aim_old') == 1)
ok('PDA forKey 新链 6 处（1标签+5跳）', pda.count('r6d266_ak_old') == 6)
ok('PDA 分支 4 处新调用', pda.count('airImgForAirportOrd(Laoc/kingdoms/lukasz/map/battles/Airport;II)I') == 4)
ok('PDA 旧读科技树注释清零', pda.count('# r6d265:按机场国×已研究最高代取图') == 0)
ok('PDA airImgForCiv 仅剩回退 1 处', pda.count('airImgForCiv(II)I') == 1)

def mk_larmy():
    L = [None] * 11
    L[8] = [{'ImageID': 70}, {'ImageID': 86}, {'ImageID': 118}, {'ImageID': 130}]
    L[9] = [{'ImageID': 78}]
    L[10] = [{'ImageID': 82}]
    return L

print('== SIM U airImgForUnit ==')
def simU(aid, ordv=1, img=86):
    L = mk_larmy()
    if img is not None and ordv + 7 < len(L): L[ordv + 7] = [{'ImageID': img}]
    rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    u = {'modelAid': aid, 'type': airtype(ordv), 'civID': 1}
    sm = run_named(mf, 'airImgForUnit', stubs, {'p0': u}, {'ArmyManager;->lArmy:Ljava/util/ArrayList;': L})
    return sm.ret, rec
r, rec = simU(1)
ok('U1 命中→按代取图 (4,1,0)', r == 77 and rec == [[4, 1, 0]])
ok('U2 无章→-1', simU(-1)[0] == -1)
ok('U3 图号<=0→-1', simU(1, img=0)[0] == -1)
ok('U4 越界→-1', simU(9)[0] == -1)

print('== SIM A airImgForAirportOrd ==')
def simA_case(ordv, aircraft, nullAirport=False):
    rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1],
                        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 88)[1],
                        ('values'): lambda sm, a: [airtype(0), airtype(1), airtype(2), airtype(3)]})
    ap = None if nullAirport else {'civID': 1, 'aircraft': aircraft}
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy(), 'Images;->airFighter:I': 9009}
    sm = run_named(mf, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': ordv, 'p2': 2}, sf)
    return sm.ret, rec
u1 = {'modelAid': 1, 'type': airtype(1), 'civID': 1}
r, rec = simA_case(1, {airtype(1): [u1]})
ok('A1 末架→单位机型图', r == 77 and rec == [[4, 1, 0]])
r, rec = simA_case(1, {})
ok('A2 空表→回退国最佳(88)', r == 88 and rec and rec[-1][0] == 'civ')
r, rec = simA_case(1, None, nullAirport=True)
ok('A3 机场空→原版小飞机(9009)', r == 9009)

print('== SIM M airImgForMission ==')
def simM(unitAid, empty=False):
    rec = []; b = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1],
                        ('AirModelTables;', 'bestIdx'): lambda sm, a: (b.append(1), 7)[1],
                        ('AirModelTables;', 'genOf'): lambda sm, a: 4})
    u = {'modelAid': unitAid, 'type': airtype(1), 'civID': 5}
    m = {'assignedAircraft': [] if empty else [u], 'civID': 5}
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy(), 'Images;->airFighter:I': 9009}
    sm = run_named(mf, 'airImgForMission', stubs, {'p0': m}, sf)
    return sm.ret, len(b), rec
r, b, rec = simM(1)
ok('M1 单位链命中→不再走科技树', r == 77 and b == 0 and rec == [[4, 1, 0]])
r, b, rec = simM(-1)
ok('M2 无章→回退旧链(bestIdx 1 次)', r == 77 and b == 1)
ok('M3 空列表→原版小飞机', simM(1, empty=True)[0] == 9009)

print('== SIM K airImgForKey ==')
pf = split_methods(pda)
def simK(mission):
    rec = []
    m = None if not mission else {'assignedAircraft': [{'modelAid': 1, 'type': airtype(1), 'civID': 5}]}
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: m,
        ('airImgForUnit'): lambda sm, a: (rec.append(('unit', a)), 77)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 5, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None})
    sf = {'ProvinceDrawArmy;->artCiv:I': -1, 'Images;->airFighter:I': 9009}
    sm = run_named(pf, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K1'}, sf)
    return sm.ret, rec
r, rec = simK(True)
ok('K1 任务链命中→单位机型图', r == 77 and rec and rec[0][0] == 'unit')
r, rec = simK(False)
ok('K2 无任务→回退旧链(66)', r == 66 and rec and rec[-1][0] == 'civ')

print('== SIM B 分支×4 ==')
blocks = _re.findall(r'(const/4 v15, (0x[0-9a-f]+)\n\s*invoke-static \{v6, v0, v15\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd\(Laoc/kingdoms/lukasz/map/battles/Airport;II\)I\n\s*move-result v14)', pda)
ok('B0 抓到 4 块', len(blocks) == 4)
got = []
for blk, kk in blocks:
    rec = []
    stubs = base_stubs({('airImgForAirportOrd'): lambda sm, a: (rec.append(a), 99)[1]})
    labels, instr = prep([l for l in blk.split('\n')])
    sm = Sim(labels, instr, stubs, {}, {'v6': {'civID': 1}, 'v0': 0})
    sm.run(); got.append((rec[0][2], int(kk, 16), sm.get('v14')))
ok('B1 参数={机场,型序,imgType} 齐全', all(g[2] == 99 for g in got))
ok('B2 imgType={0,1,2,3} 各一次', sorted([g[0] for g in got]) == [0, 1, 2, 3] and sorted([g[1] for g in got]) == [0, 1, 2, 3])

print('== 负样本 ==')
def negU():
    t = afm.replace('if-ltz v0, :r6d266_iu_m1', 'if-gez v0, :r6d266_iu_m1', 1)
    m2 = split_methods(t)
    L = mk_larmy(); rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    u = {'modelAid': -1, 'type': airtype(1), 'civID': 1}
    sm = run_named(m2, 'airImgForUnit', stubs, {'p0': u}, {'ArmyManager;->lArmy:Ljava/util/ArrayList;': L})
    return sm.ret != -1
ok('N1 单位守卫翻转→红', negU())
def negB():
    t = pda.replace('const/4 v15, 0x2\n    invoke-static {v6, v0, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd', 'const/4 v15, 0x1\n    invoke-static {v6, v0, v15}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd', 1)
    ks = sorted([int(k, 16) for k in _re.findall(r'const/4 v15, (0x[0-9a-f]+)\n\s*invoke-static \{v6, v0, v15\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForAirportOrd', t)])
    return ks != [0, 1, 2, 3]
ok('N2 分支常量错→红', negB())
def negM():
    t = afm.replace('if-ltz v1, :r6d266_aim_old', 'if-gez v1, :r6d266_aim_old', 1)
    m2 = split_methods(t); rec = []; b = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1],
                        ('AirModelTables;', 'bestIdx'): lambda sm, a: (b.append(1), 7)[1],
                        ('AirModelTables;', 'genOf'): lambda sm, a: 4})
    u = {'modelAid': 1, 'type': airtype(1), 'civID': 5}
    m = {'assignedAircraft': [u], 'civID': 5}
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy(), 'Images;->airFighter:I': 9009}
    sm = run_named(m2, 'airImgForMission', stubs, {'p0': m}, sf)
    return len(b) == 1
ok('N3 mission 极性翻转→红', negM())
def negK():
    t = pda.replace('if-ltz v4, :r6d266_ak_old', 'if-gez v4, :r6d266_ak_old', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: {'assignedAircraft': [{'modelAid': 1, 'type': airtype(1), 'civID': 5}]},
        ('airImgForUnit'): lambda sm, a: (rec.append(('unit', a)), 77)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 5, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None})
    sf = {'ProvinceDrawArmy;->artCiv:I': -1}
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'K1'}, sf)
    return sm.ret != 77
ok('N4 forKey 极性翻转→红', negK())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d266 全部通过')