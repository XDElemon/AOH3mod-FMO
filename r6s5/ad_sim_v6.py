#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
AD-1 v6 行为级仿真器（防空阵地自动开火）
- 目的：在写 smali 之前，把判定链在"模型"上跑通；每条函数都标注它在 smali 里对应哪个方法。
- 铁律：本文件的逻辑必须与 AirDefense.smali 逐条一致（写码时以本文件为准）。
- 运行：python3 ad_sim_v6.py
"""
import sys

RANGE_PX = 300
RANGE_SQ = RANGE_PX * RANGE_PX
HIT_CHANCE = 0.5          # adHitChance(0,0)
DMG = 3.0                 # adDamagePerHit(0,0)
AAA_ID = 77               # 仿真用的 BuildingsManager.AAA_BUILDING_ID

FAIL = []


def chk(cond, msg):
    if cond:
        print('  [OK] ' + msg)
    else:
        print('  [FAIL] ' + msg)
        FAIL.append(msg)


# ============================ 模型（对应游戏类） ============================
class AirUnit:                                  # AirUnit
    def __init__(self, hp, name=''):
        self.hp = float(hp)
        self.maxHp = float(hp)
        self.name = name
        self.isAlive = True                     # 只用于断言"我们没碰它"
        self.isShotDown = False


class Airport:                                  # Airport
    def __init__(self):
        self.aircraft = []

    def removeAircraft(self, u):                # Airport.removeAircraft(AirUnit)Z
        if u in self.aircraft:
            self.aircraft.remove(u)
            return True
        return False


class AirMission:                               # AirMission
    def __init__(self, civID, airport=None):
        self.civID = civID
        self.airDivisionAtProvinceID = -1       # 构造器初值 -1
        self.aliveAircraft = []
        self.assignedAircraft = []
        self.lostAircraft = []
        self.sourceAirport = airport
        self.enemyAircraftShotDown = 0
        self.totalDamageDealt = 0.0
        self.maxPoolHP = 0.0
        self.fPoolHP = 0.0

    def recordLoss(self, u):                    # AirMission.recordLoss(AirUnit)V
        self.aliveAircraft.remove(u)
        self.lostAircraft.append(u)
        if self.sourceAirport is not None:
            self.sourceAirport.removeAircraft(u)

    def recalcPool(self):                       # AirMission.recalcPool()V
        self.maxPoolHP = sum(x.maxHp for x in self.assignedAircraft if x is not None)
        self.fPoolHP = sum(x.hp for x in self.aliveAircraft if x is not None)

    def allAircraftLost(self):                  # AirMission.allAircraftLost()Z
        return len(self.aliveAircraft) == 0


class Province:
    def __init__(self, pid, aaa=0, cx=0, cy=0):
        self.pid = pid
        self.buildings = [BuiltBuilding(AAA_ID) for _ in range(aaa)]
        self.cx = cx
        self.cy = cy

    def getProvinceID(self):
        return self.pid

    def getCenterX_Real(self):
        return self.cx

    def getCenterY_Real(self):
        return self.cy


class BuiltBuilding:                            # ProvinceConstructedBuilding
    def __init__(self, bid):
        self._b = bid

    def getBuilding(self):
        return self._b


class Civ:                                      # Civilization
    def __init__(self, cid, province_list):
        self.cid = cid
        self.province_list = province_list

    def getNumOfProvinces(self):                # Civilization.getNumOfProvinces()I
        return len(self.province_list)

    def getProvinceID(self, i):                 # Civilization.getProvinceID(I)I
        return self.province_list[i]


class ScriptedRng:
    def __init__(self, seq):
        self.seq = list(seq)
        self.i = 0

    def nextFloat(self):
        if self.i >= len(self.seq):
            raise AssertionError('rng 用尽：用例没有提供足够随机值')
        v = self.seq[self.i]
        self.i += 1
        return v


class World:
    """把散落的游戏全局装进一个对象，便于重复构造。"""

    def __init__(self, provinces, civs, missions, rng):
        self.provinces = provinces              # Game.lProvinces
        self.civs = civs                        # civID -> Civ
        self.missions = missions                # AirForceManager.activeMissions
        self.rng = rng
        self.log = []

    def getProvince(self, pid):                 # Game.getProvince(I)Province（裸 List.get：越界即抛）
        if pid < 0 or pid >= len(self.provinces):
            raise IndexError('getProvince 越界: %d' % pid)
        return self.provinces[pid]

    def lProvincesSize(self):
        return len(self.provinces)


# ============================ AD-1 判定链（逐条对齐 smali） ============================
def airDefenseAt(w, pid):                       # AirDefense.airDefenseAt(I)I
    if AAA_ID < 0:
        return 0
    if pid < 0 or pid >= w.lProvincesSize():     # 防 IndexOutOfBounds（tick 已保证，这里再保一层）
        return 0
    prov = w.getProvince(pid)
    if prov is None or prov.buildings is None:
        return 0
    lst = prov.buildings
    size = len(lst)
    n = 0
    i = 0
    while i < size:                             # 索引循环（recordLoss 会改列表 ⇒ 禁用迭代器）
        u = lst[i]
        if u is not None and u.getBuilding() == AAA_ID:
            n += 1
        i += 1
    return n


def inRange(w, m, prov):                        # AirDefense.inRange(AirMission;Province;)Z
    if m is None or prov is None:
        return False
    a = m.airDivisionAtProvinceID
    if a < 0:                                   # -1 = 未部署
        return False
    if a == prov.getProvinceID():
        return True                             # 同省必中
    if a >= w.lProvincesSize():                 # 防越界
        return False
    other = w.getProvince(a)
    if other is None:
        return False
    dx = prov.getCenterX_Real() - other.getCenterX_Real()
    dy = prov.getCenterY_Real() - other.getCenterY_Real()
    return dx * dx + dy * dy <= RANGE_SQ        # 含等号：300px 算在射程内


def eligible(w, m, civID, prov):                # AirDefense.eligible(AirMission;I;Province;)Z
    if m is None:
        return False
    if m.civID == civID:                        # 自己人不打
        return False
    if m.aliveAircraft is None or len(m.aliveAircraft) == 0:
        return False                            # 没有活飞机：不浪费弹
    return inRange(w, m, prov)


def countTargets(w, civID, prov):               # AirDefense.countTargets(I;Province;)I
    n = 0
    lst = w.missions
    i = 0
    while i < len(lst):
        if eligible(w, lst[i], civID, prov):
            n += 1
        i += 1
    return n


def pickTarget(w, civID, prov, idx):            # AirDefense.pickTarget(I;Province;I)AirMission;
    j = 0
    lst = w.missions
    i = 0
    while i < len(lst):
        m = lst[i]
        if eligible(w, m, civID, prov):
            if j == idx:
                return m
            j += 1
        i += 1
    return None


def applyMdDamage(w, m, dmg):                   # AirDefense.applyMdDamage(AirMission;F)I
    kills = 0
    rem = float(dmg)
    lst = m.aliveAircraft
    if lst is None:
        return 0
    i = 0
    while i < len(lst) and rem > 0:
        u = lst[i]
        if u is None:
            i += 1
            continue
        h = u.hp
        if h <= 0:                              # 已死残留：只收尸，不吃伤害
            n0 = len(lst)
            m.recordLoss(u)
            if len(lst) == n0:
                i += 1                          # 没能移除 ⇒ 前进一步，防死循环
            else:
                kills += 1
            continue
        take = rem if rem < h else h
        u.hp = h - take
        rem -= take
        if u.hp <= 0:                           # 击落判据：<= 0（不是 < 0）
            n0 = len(lst)
            m.recordLoss(u)
            if len(lst) == n0:
                i += 1
            else:
                kills += 1
        else:
            i += 1
    m.recalcPool()
    return kills


def fireProvince(w, civID, pid):                # AirDefense.fireProvince(II)V
    if pid < 0 or pid >= w.lProvincesSize():
        return
    prov = w.getProvince(pid)
    if prov is None:
        return
    nad = airDefenseAt(w, pid)                  # 阵地数 = 本回合发射次数
    if nad <= 0:
        return
    k = countTargets(w, civID, prov)
    if k <= 0:
        return                                  # 无合格目标：不开火、不写日志
    hits = 0
    kills = 0
    s = 0
    while s < nad:
        m = pickTarget(w, civID, prov, s % k)   # 轮转选靶
        if m is not None:
            r = w.rng.nextFloat()
            if r < HIT_CHANCE:                  # 命中判据：rng < chance（等于算未命中）
                hits += 1
                kills += applyMdDamage(w, m, DMG)
        s += 1
    w.log.append('nAD p=%d n=%d t=%d s=%d h=%d k=%d' % (pid, nad, k, nad, hits, kills))


def tick(w, civID):                             # AirDefense.tick(I)V
    civ = w.civs.get(civID)
    if civ is None:
        return
    n = civ.getNumOfProvinces()
    i = 0
    while i < n:
        pid = civ.getProvinceID(i)
        if pid >= 0 and pid < w.lProvincesSize():   # 上界守卫
            fireProvince(w, civID, pid)
        i += 1


# ============================ 工具 ============================
def mk(prov_aaa, civ_prov, missions, rng, extra_prov=None):
    """prov_aaa: {pid: (aaa_count, cx, cy)}; civ_prov: {civID: [pid...]}"""
    max_pid = max(prov_aaa.keys()) if prov_aaa else 0
    provinces = []
    for pid in range(0, max_pid + 1):
        aaa, cx, cy = prov_aaa.get(pid, (0, 0, 0))
        provinces.append(Province(pid, aaa, cx, cy))
    civs = {}
    for cid, plist in civ_prov.items():
        civs[cid] = Civ(cid, list(plist))
    return World(provinces, civs, list(missions), rng)


def mission_units(m, hps, airport):
    us = [AirUnit(hp, 'u%d' % i) for i, hp in enumerate(hps)]
    m.aliveAircraft.extend(us)
    m.assignedAircraft.extend(us)
    if airport is not None:
        airport.aircraft.extend(us)
    return us


# ============================ 用例 ============================
print('=== T1 基本命中 + 只动 hp（不碰 isAlive/isShotDown） ===')
ap = Airport()
m1 = AirMission(1, ap)
m1.airDivisionAtProvinceID = 0
u1 = mission_units(m1, [4.0, 4.0, 4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.4]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=1 k=0'], '日志 = %s' % w.log)
chk(abs(u1[0].hp - 1.0) < 1e-6, '首架 hp 4.0 -> 1.0（实测 %.2f）' % u1[0].hp)
chk(len(m1.aliveAircraft) == 3 and len(m1.lostAircraft) == 0, '无人损失')
chk(len(ap.aircraft) == 3, '机场仍有 3 架')
chk(u1[0].isAlive is True and u1[0].isShotDown is False, '未写 isAlive/isShotDown')
chk(abs(m1.fPoolHP - 9.0) < 1e-6, 'recalcPool 后 fPoolHP=9.0（实测 %.1f）' % m1.fPoolHP)

print('=== T2 命中率边界（0.5 算未命中；0.4999 算命中） ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
u1 = mission_units(m1, [4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.5]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=0 k=0'] and u1[0].hp == 4.0, 'rng=0.5 -> 未命中（h=0, hp=4.0）')
ap = Airport(); m2 = AirMission(1, ap); m2.airDivisionAtProvinceID = 0
u2 = mission_units(m2, [4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m2], ScriptedRng([0.4999]))
tick(w, 0)
chk(w.log[0].endswith('h=1 k=0') and abs(u2[0].hp - 1.0) < 1e-6, 'rng=0.4999 -> 命中（hp=1.0）')

print('=== T3 击落 = 记账（出 aliveAircraft / 进 lostAircraft / 出机场） ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
u1 = mission_units(m1, [1.0, 4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.4]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=1 k=1'], '日志 = %s' % w.log)
chk(len(m1.aliveAircraft) == 1 and m1.aliveAircraft[0] is u1[1], 'aliveAircraft 只剩第 2 架')
chk(len(m1.lostAircraft) == 1 and m1.lostAircraft[0] is u1[0], 'lostAircraft 收进第 1 架')
chk(len(ap.aircraft) == 1 and ap.aircraft[0] is u1[1], '机场里也没了（不是幽灵）')
chk(abs(u1[1].hp - 2.0) < 1e-6, '溢出伤害 3-1=2 打到第 2 架（hp=2.0，实测 %.2f）' % u1[1].hp)

print('=== T4 最后一架被打掉 -> allAircraftLost() 为真 ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
mission_units(m1, [2.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
tick(w, 0)
chk(m1.allAircraftLost() is True and len(ap.aircraft) == 0, '任务无飞机、机场无飞机（游戏自会收尾）')

print('=== T5 射程边界（300px 打得到，301px 打不到） ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 1
mission_units(m1, [4.0], ap)
w = mk({0: (1, 0, 0), 1: (0, 300, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=1 k=0'], 'dx=300 -> 在射程内（%s）' % w.log)
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 1
mission_units(m1, [4.0], ap)
w = mk({0: (1, 0, 0), 1: (0, 301, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
tick(w, 0)
chk(w.log == [], 'dx=301 -> 不在射程内（无日志）')

print('=== T6 未部署的任务不可打（airDivisionAtProvinceID = -1） ===')
ap = Airport(); m1 = AirMission(1, ap)
mission_units(m1, [4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
tick(w, 0)
chk(w.log == [], 'at=-1 -> 不打')

print('=== T7 自己人不打、空任务不打 ===')
ap = Airport(); mown = AirMission(0, ap); mown.airDivisionAtProvinceID = 0
mission_units(mown, [4.0], ap)
mempty = AirMission(1, ap); mempty.airDivisionAtProvinceID = 0
w = mk({0: (1, 0, 0)}, {0: [0]}, [mown, mempty], ScriptedRng([0.1]))
tick(w, 0)
chk(w.log == [], '同国任务 + 无活机任务 -> 都不打')

print('=== T8 多阵地轮转选靶（2 阵地 / 2 目标，各吃 1 发） ===')
ap1 = Airport(); ap2 = Airport()
mA = AirMission(1, ap1); mA.airDivisionAtProvinceID = 0
uA = mission_units(mA, [4.0], ap1)
mB = AirMission(1, ap2); mB.airDivisionAtProvinceID = 1
uB = mission_units(mB, [4.0], ap2)
w = mk({0: (2, 0, 0), 1: (0, 100, 0)}, {0: [0]}, [mA, mB], ScriptedRng([0.4, 0.6]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=2 t=2 s=2 h=1 k=0'], '日志 = %s' % w.log)
chk(abs(uA[0].hp - 1.0) < 1e-6 and uB[0].hp == 4.0, '目标 A 中 1 发、目标 B 未中')

print('=== T9 号位为空（hp<=0 残留）：先收尸、不吃伤害 ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
u1 = mission_units(m1, [0.0, 4.0], ap)     # 第 1 架已经是 0 血（历史残留）
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=1 k=1'], '日志 = %s' % w.log)
chk(len(m1.aliveAircraft) == 1 and len(m1.lostAircraft) == 1, '0 血残留被收走')
chk(abs(u1[1].hp - 1.0) < 1e-6, '剩余 3 点伤害全部打在第 2 架（hp=1.0，实测 %.2f）' % u1[1].hp)

print('=== T10 无阵地省 / AAA 未定义 都不开火 ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
mission_units(m1, [4.0], ap)
w = mk({0: (0, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
tick(w, 0)
chk(w.log == [], '本省无阵地 -> 不打')
_old = AAA_ID
AAA_ID = -1
try:
    ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
    mission_units(m1, [4.0], ap)
    w = mk({0: (3, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.1]))
    tick(w, 0)
    chk(w.log == [], 'AAA_BUILDING_ID<0 -> 不打')
finally:
    AAA_ID = _old

print('=== T11 非法省 id 不抛异常（越界省被跳过） ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
mission_units(m1, [4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0, 999, -1]}, [m1], ScriptedRng([0.4]))
try:
    tick(w, 0)
    chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=1 k=0'], '越界/负数省被跳过，其余照打（%s）' % w.log)
except Exception as e:
    chk(False, '不该抛异常，却抛了 %r' % e)

print('=== T12 多回合累积：1 阵地 1 架 4hp（每发 3.0）两回合击落 ===')
ap = Airport(); m1 = AirMission(1, ap); m1.airDivisionAtProvinceID = 0
u1 = mission_units(m1, [4.0], ap)
w = mk({0: (1, 0, 0)}, {0: [0]}, [m1], ScriptedRng([0.1, 0.1]))
tick(w, 0)
chk(abs(u1[0].hp - 1.0) < 1e-6 and len(m1.aliveAircraft) == 1, '第 1 回合：hp=1.0，仍在编')
tick(w, 0)
chk(len(m1.aliveAircraft) == 0 and len(m1.lostAircraft) == 1 and len(ap.aircraft) == 0, '第 2 回合：击落并记账')
chk(w.log[1] == 'nAD p=0 n=1 t=1 s=1 h=1 k=1', '第 2 回合日志 = %s' % w.log[1])

print('=== T13 对 AI 同样生效（civ 1 的防空打 civ 0 的飞机） ===')
ap = Airport(); m0 = AirMission(0, ap); m0.airDivisionAtProvinceID = 5
u0 = mission_units(m0, [4.0], ap)
w = mk({5: (1, 0, 0)}, {1: [5]}, [m0], ScriptedRng([0.1]))
tick(w, 1)
chk(w.log == ['nAD p=5 n=1 t=1 s=1 h=1 k=0'] and abs(u0[0].hp - 1.0) < 1e-6, 'AI 的阵地打我方飞机：%s' % w.log)

print('=== T14 同省多省混合：只有有阵地且射程内有敌机的省写日志 ===')
ap1 = Airport(); ap2 = Airport()
mA = AirMission(1, ap1); mA.airDivisionAtProvinceID = 0
mission_units(mA, [4.0], ap1)
mB = AirMission(1, ap2); mB.airDivisionAtProvinceID = 2
mission_units(mB, [4.0], ap2)
w = mk({0: (1, 0, 0), 1: (1, 1000, 0), 2: (0, 5000, 0)}, {0: [0, 1]}, [mA, mB],
       ScriptedRng([0.4, 0.4]))
tick(w, 0)
chk(w.log == ['nAD p=0 n=1 t=1 s=1 h=1 k=0'], '只有 p0 开火（p1 有阵地但射程内无目标、p2 无阵地）：%s' % w.log)
chk(len(mA.aliveAircraft) == 1 and abs(mA.aliveAircraft[0].hp - 1.0) < 1e-6,
    'mA 只被 p0 打中 1 发（hp=1.0，p1 够不着它）')

print()
if FAIL:
    print('❌ 仿真未通过：%d 条断言失败' % len(FAIL))
    for f in FAIL:
        print('   - ' + f)
    sys.exit(1)
print('✅ 仿真全部通过（14 组用例）')
