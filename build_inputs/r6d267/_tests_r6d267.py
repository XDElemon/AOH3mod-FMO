# ===== r6d267 用例（接在解释器后）：哨兵 0 撞车修复 =====
import re as _re

afm = rd(F_AFM); au = rd(F_AU)
mf = split_methods(afm)

def run_named(methods, key, stubs, regs, sfields=None):
    sig = next(k for k in methods if key in k)
    labels, instr = prep(methods[sig])
    sm = Sim(labels, instr, stubs, sfields, dict(regs))
    sm.run()
    return sm

print('== S0 文本断言 ==')
ok('AirUnit 构造器默认 -1', au.count('const/4 v0, -0x1\n\n    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I') == 1)
ok('补章守卫已改 if-ltz（且无 if-gtz）', afm.count('if-gez v5, :r6d265_astamped') == 1 and afm.count('if-gtz v5, :r6d265_astamped') == 0)
ok('两处钳位齐（各 1 标签+1 跳）', afm.count('r6d267_u_ok') == 2 and afm.count('r6d267_c_ok') == 2)

def mk_prov():
    return {'k': {}, 'd': {}, '__next': 1}

def simS(models, best, preseed=None, in_mission=None, methods=None):
    m2 = methods or mf
    prov = mk_prov()
    if preseed:
        for key, div in preseed.items():
            prov['k'][key] = prov['__next']; prov['d'][prov['__next']] = div; prov['__next'] += 1
    im = in_mission or {}
    T = airtype(1)
    units = [{'modelAid': m} for m in models]
    ap = {'civID': 1, 'provinceID': 2, 'aircraft': {T: units}}
    def h_key(sm, a): return 'K%d' % a[3]
    def h_gk(sm, a): return prov['k'].get(a[1], -1)
    def h_ga(sm, a): return prov['d'].get(a[1])
    def h_add(sm, a):
        d = a[1]; prov['k'][d.get('key')] = prov['__next']; prov['d'][prov['__next']] = d; prov['__next'] += 1
        return d.get('key')
    def h_rm(sm, a):
        i = prov['k'].pop(a[1], None)
        if i is not None: prov['d'].pop(i, None)
        return None
    stubs = base_stubs({
        ('getBestAidForType'): lambda sm, a: best,
        ('Game;', 'getProvince'): lambda sm, a: prov,
        ('airhqKey4'): h_key,
        ('airhqKeyInMission'): lambda sm, a: 1 if im.get(a[0]) else 0,
        ('Province;', 'getArmyKeyID'): h_gk,
        ('Province;', 'getArmy'): h_ga,
        ('Province;', 'addArmy'): h_add,
        ('Province;', 'removeArmy'): h_rm,
    })
    run_named(m2, 'syncAirModelDivisions', stubs, {'p0': ap, 'p1': T})
    return units, prov

print('== SIM S 盖章哨兵 ==')
u, prov = simS([0], 9)
ok('S1 合法 0 不被重盖', u[0]['modelAid'] == 0 and prov['d'][1]['regiments'][0]['aID'] == 0)
u, prov = simS([-1], 9)
ok('S2 -1 正常补章到 best', u[0]['modelAid'] == 9 and prov['d'][1]['regiments'][0]['aID'] == 9)
u, prov = simS([-1], -1)
ok('S3 无 best：留 -1 且编制 aID 钳 0', u[0]['modelAid'] == -1 and prov['d'][1]['regiments'][0]['aID'] == 0)

print('== 负样本 ==')
def negGuard():
    t = afm.replace('if-gez v5, :r6d265_astamped', 'if-gtz v5, :r6d265_astamped', 1)
    m2 = split_methods(t)
    u, prov = simS([0], 9, methods=m2)
    return u[0]['modelAid'] != 0  # 0 被重盖 ⇒ 红
ok('N1 守卫回翻→红', negGuard())
def negClampC():
    t = afm.replace('\n    if-ltz v12, :r6d267_c_ok\n    const/4 v12, 0x0\n    :r6d267_c_ok\n', '\n', 1)
    m2 = split_methods(t)
    u, prov = simS([-1], -1, methods=m2)
    return prov['d'][1]['regiments'][0]['aID'] != 0  # aID=-1 ⇒ 红
ok('N2 去创建钳→红', negClampC())
def negClampU():
    t = afm.replace('    if-ltz v12, :r6d267_u_ok\n    const/4 v12, 0x0\n    :r6d267_u_ok\n', '', 1)
    m2 = split_methods(t)
    div0 = {'key': 'K1', 'lArmyRegiment': [{'uID': 0, 'aID': 0, 'num': 0}]}
    u, prov = simS([-1], -1, preseed={'K1': div0}, methods=m2)
    return prov['d'][1]['regiments'][0]['aID'] != 0  # aID=-1 ⇒ 红
ok('N3 去更新钳→红', negClampU())

print()
if errs:
    print('❌ 门禁未过：%d 项' % len(errs)); [print('  -', e) for e in errs]
    sys.exit(1)
print('✅ check_r6d267 全部通过')