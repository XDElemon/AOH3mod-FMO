# ===== r6d268 用例：贴图补中间层（编制记录链 + 机场反向扫描） =====
afm = rd(F_AFM); pda = rd(F_PDA)
mf = split_methods(afm)
pf = split_methods(pda)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AFM airImgForRec 定义1', afm.count('.method public static airImgForRec(III)I') == 1)
ok('AFM airImgForDivKey 定义1', afm.count('.method public static airImgForDivKey(Ljava/lang/String;)I') == 1)
ok('机场反向扫描 2 处（1标签+1跳）', afm.count('r6d268_apo_scan') == 2)
ok('mission 编制链注释1', afm.count('# r6d268:无飞机章→按任务编制记录取图') == 1)
ok('PDA getKeyProv 定义1', pda.count('.method public static getKeyProv(Ljava/lang/String;)I') == 1)
ok('PDA forKey→DivKey 调用1', pda.count('airImgForDivKey(Ljava/lang/String;)I') == 1)

def mk_larmy2():
    L = [None] * 12
    L[6] = [{'ImageID': 70}]
    L[8] = [{'ImageID': 70}, {'ImageID': 86}]
    L[9] = [{'ImageID': 78}]
    L[10] = [{'ImageID': 82}]
    return L

print('== SIM R airImgForRec ==')
def simR(civ, uID, aID, img86=True, L=None):
    L = L or mk_larmy2()
    rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': L}
    sm = run_named(mf, 'airImgForRec', stubs, {'p0': civ, 'p1': uID, 'p2': aID}, sf)
    return sm.ret, rec
r, rec = simR(5, 8, 1)
ok('R1 命中→按代取图(4,1,0)', r == 77 and rec == [[4, 1, 0]])
ok('R2 uID<7→-1', simR(5, 6, 0)[0] == -1)
ok('R3 uID>10→-1', simR(5, 11, 0)[0] == -1)
ok('R4 aID 越界→-1', simR(5, 8, 5)[0] == -1)
L2 = mk_larmy2(); L2[8] = [{'ImageID': 0}, {'ImageID': 86}]
ok('R5 图号≤0→-1', simR(5, 8, 0, L=L2)[0] == -1)

print('== SIM D airImgForDivKey ==')
def simD(key, civ=7, prov=2, army_id=10, div=True, rec_miss=False):
    rec = []
    divobj = {'regiments': [{'uID': 8, 'aID': 1}]}
    stubs = base_stubs({
        ('getKeyCiv'): lambda sm, a: civ,
        ('getKeyProv'): lambda sm, a: prov,
        ('Game;', 'getProvince'): lambda sm, a: {'p': prov},
        ('Province;', 'getArmyKeyID'): lambda sm, a: army_id,
        ('Province;', 'getArmy'): lambda sm, a: (divobj if div else None),
        ('airImgForRec'): lambda sm, a: (rec.append(a), (77 if not rec_miss else -1))[1],
    })
    sm = run_named(mf, 'airImgForDivKey', stubs, {'p0': key})
    return sm.ret, rec
r, rec = simD('airhq_7_2')
ok('D1 命中→核心参数(civ,uID,aID)', r == 77 and rec == [[7, 8, 1]])
ok('D2 key 空→-1', simD(None)[0] == -1)
ok('D3 civ 失败→-1', simD('airhq_7_2', civ=-1)[0] == -1)
ok('D4 编制缺失→-1', simD('airhq_7_2', div=False)[0] == -1)

print('== SIM K airImgForKey（用户场景：无任务+编制在） ==')
def simK(mission=False, divkey=77):
    rec = []
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: ({'assignedAircraft': [], 'civID': 5} if mission else None),
        ('airImgForDivKey'): lambda sm, a: (rec.append(('div', a)), divkey)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 7, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None,
    })
    sf = {'ProvinceDrawArmy;->artCiv:I': -1}
    sm = run_named(pf, 'airImgForKey', stubs, {'p0': 3, 'p1': 'airhq_7_2'}, sf)
    return sm.ret, rec
r, rec = simK(False, 77)
ok('K1 无任务→DivKey 记录链(77)', r == 77 and rec and rec[0][0] == 'div')
r, rec = simK(False, -1)
ok('K2 DivKey 失败→国最佳回退(66)', r == 66 and rec and rec[-1][0] == 'civ')

print('== SIM A 机场反向扫描 ==')
TS = [airtype(0), airtype(1), airtype(2), airtype(3)]
def simA(units):
    rec = []
    stubs = base_stubs({
        ('values'): lambda sm, a: TS,
        ('airImgForUnit'): lambda sm, a: (rec.append(a), (77 if a[0].get('ok') else -1))[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 88)[1],
    })
    ap = {'civID': 1, 'aircraft': {TS[1]: units}}
    sf = {'Images;->airFighter:I': 9009, 'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy2()}
    sm = run_named(mf, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': 1, 'p2': 2}, sf)
    return sm.ret, rec
r, rec = simA([{'ok': 1}, {'ok': 0}])
ok('A1 末架坏章→扫描到前一架(77)', r == 77 and len(rec) == 2 and rec[0][0] == {'ok': 0} and rec[1][0] == {'ok': 1})
r, rec = simA([{'ok': 1}])
ok('A2 单架→77', r == 77)
r, rec = simA([{'ok': 0}])
ok('A3 全坏→回退(88)', r == 88 and rec and rec[-1][0] == 'civ')

print('== SIM M mission 编制链 ==')
def simM(kind):
    rec = []
    if kind == 'badunit':
        m = {'assignedAircraft': [{'modelAid': 0, 'type': airtype(1)}], 'airhqDivision': {'regiments': [{'uID': 8, 'aID': 1}]}, 'civID': 5}
    elif kind == 'nodiv':
        m = {'assignedAircraft': [{'modelAid': 0, 'type': airtype(1)}], 'airhqDivision': None, 'civID': 5}
    else:
        m = {'assignedAircraft': [], 'airhqDivision': {'regiments': [{'uID': 8, 'aID': 1}]}, 'civID': 5}
    stubs = base_stubs({
        ('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: 55,
        ('AirModelTables;', 'bestIdx'): lambda sm, a: 7, ('AirModelTables;', 'genOf'): lambda sm, a: 4,
        ('airImgForUnit'): lambda sm, a: -1,
        ('airImgForRec'): lambda sm, a: (rec.append(a), 77)[1],
    })
    sf = {'Images;->airFighter:I': 9009}
    sm = run_named(mf, 'airImgForMission', stubs, {'p0': m}, sf)
    return sm.ret, rec
r, rec = simM('badunit')
ok('M1 坏章→编制记录链(5,8,1)', r == 77 and rec == [[5, 8, 1]])
ok('M2 无编制→旧链(55)', simM('nodiv')[0] == 55)
ok('M3 空列表→原版小飞机（既定口径）', simM('empty')[0] == 9009)

print('== 负样本 ==')
def negR():
    t = afm.replace('if-lt p1, v0, :r6d268_rec_m1', 'if-ge p1, v0, :r6d268_rec_m1', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({('artGroupOf'): lambda sm, a: 1, ('pickAirImage'): lambda sm, a: (rec.append(a), 77)[1]})
    sf = {'ArmyManager;->lArmy:Ljava/util/ArrayList;': mk_larmy2()}
    sm = run_named(m2, 'airImgForRec', stubs, {'p0': 5, 'p1': 6, 'p2': 0}, sf)
    return sm.ret != -1
ok('N1 Rec 型守卫翻转→红', negR())
def negScan():
    t = afm.replace('    :r6d268_apo_scan\n    if-ltz v1, :r6d266_apo_fb\n', '    :r6d268_apo_scan\n    if-gez v1, :r6d266_apo_fb\n', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({('values'): lambda sm, a: [airtype(0), airtype(1), airtype(2), airtype(3)],
                        ('airImgForUnit'): lambda sm, a: (rec.append(a), (77 if a[0].get('ok') else -1))[1],
                        ('airImgForCiv'): lambda sm, a: 88})
    ap = {'civID': 1, 'aircraft': {airtype(1): [{'ok': 1}, {'ok': 0}]}}
    sm = run_named(m2, 'airImgForAirportOrd', stubs, {'p0': ap, 'p1': 1, 'p2': 2}, {'Images;->airFighter:I': 9009})
    return sm.ret != 77
ok('N2 扫描守卫翻转→红', negScan())
def negK():
    t = pda.replace('    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForDivKey(Ljava/lang/String;)I\n    move-result v4\n    if-ltz v4, :r6d266_ak_old',
                    '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForDivKey(Ljava/lang/String;)I\n    move-result v4\n    if-gez v4, :r6d266_ak_old', 1)
    m2 = split_methods(t); rec = []
    stubs = base_stubs({
        ('getAirMissionByKey'): lambda sm, a: None,
        ('airImgForDivKey'): lambda sm, a: (rec.append(('div', a)), 77)[1],
        ('airImgForCiv'): lambda sm, a: (rec.append(('civ', a)), 66)[1],
        ('getKeyCiv'): lambda sm, a: 7, ('aif'): lambda sm, a: None, ('artD'): lambda sm, a: None})
    sm = run_named(m2, 'airImgForKey', stubs, {'p0': 3, 'p1': 'airhq_7_2'}, {'ProvinceDrawArmy;->artCiv:I': -1})
    return sm.ret != 77
ok('N3 forKey-DivKey 极性翻转→红', negK())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d268 全部通过')