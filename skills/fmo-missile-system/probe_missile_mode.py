#!/usr/bin/env python3
"""导弹结算方式（v68）离线探针 —— 只读，不改仓库、不构建。

口径（2026-10-24 定）：结算方式在**发射时定死**——
    发射点 在屏幕外 **且** 该任务未被玩家雷达探测（airDetSeen）⇒ 小时钟（按时间结算）
    其余（屏内 或 被雷达探测）                                   ⇒ 帧钟（逐帧推进 + 接触结算）

探针跑两段：
  1) `AirMissileCore.markHourMode` 的真值表（屏内 / 屏外未探测 / 屏外已探测）；
  2) `AirMission.missileTick` 在 msHourMode=0/1 下是否只让对应的那套时钟结算。

期望输出：
    屏内             -> 0（帧钟）
    屏外 + 未探测     -> 1（小时钟）
    屏外 + 已探测     -> 0（帧钟）
    msHourMode=1     -> applyAirDamage=1 sk=0 fx=2
    msHourMode=0     -> applyAirDamage=0 sk=1 fx=0

用法：python3 skills/fmo-missile-system/probe_missile_mode.py [仓库根目录]
"""
import os
import sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else os.path.dirname(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, 'tools'))
import gate_behavior as g  # noqa: E402

AM = os.path.join(g.SMALI, 'aoc/kingdoms/lukasz/map/battles/AirMission.smali')
CORE = g.CORE_SMALI
_orig = g.Interp._builtin
STATE = {'onscreen': True, 'detected': False}


def _builtin(self, target, vals):
    cls, rest = target.split(';->', 1)
    name = rest.split('(', 1)[0]
    short = cls.split('/')[-1]
    if short == 'AirMissileGate' and name == 'onScreen':
        return STATE['onscreen']
    if short == 'ProvinceDrawArmy' and name == 'myOrDetectedMission':
        return STATE['detected']
    if short == 'AirMissileCore' and name == 'flightHours':
        return 4
    if short == 'AirMission' and name == 'defenseMul':
        return 1.0
    if short == 'System' and name == 'currentTimeMillis':
        return 10 ** 9
    if short == 'AirForceManager' and name == 'getInstance':
        return g.INSTANCES.get('AirForceManager')
    if name == 'getCurrentScale':
        return 1.0
    if name in ('getPosX', 'getPosY'):
        return 0
    return _orig(self, target, vals)


g.Interp._builtin = _builtin


def _unit():
    u = g.Obj('aoc/kingdoms/lukasz/map/battles/AirUnit')
    u.fields.update(airAttack=10.0, modelAid=0)
    return u


def _mission(mode=0):
    m = g.Obj('aoc/kingdoms/lukasz/map/battles/AirMission')
    m.fields.update(missionID=999, civID=1, strikeKind=1, msFxInit=0,
                    msFxX=5000.0, msFxY=5000.0, strikeTargetMissionID=1234,
                    lastMissileHours=1300, msFlyHours=4, msFxStepMs=0,
                    msFxTN=0, msFxTH=15, msFxTX=None, msFxTY=None,
                    aliveAircraft=[_unit()], missilesLeft=2, missilePerPlane=2,
                    msHourMode=mode)
    return m


def mark_mode(on_screen, detected):
    STATE['onscreen'], STATE['detected'] = on_screen, detected
    g.STATICS.clear()
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game;->mapCoords'] = g.Obj(
        'aoc/kingdoms/lukasz/map/map/MapCoords')
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game;->mapScale'] = g.Obj(
        'aoc/kingdoms/lukasz/map/map/MapScale')
    m = _mission()
    it = g.Interp(CORE, 'AirMissileCore;->markHourMode')
    it.regs[it.pbase] = m
    it.run()
    return m.fields.get('msHourMode')


def tick(mode):
    g.STATICS.clear()
    g.INSTANCES.clear()
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID'] = 56
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR'] = 10     # total=1354
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game;->mapCoords'] = g.Obj(
        'aoc/kingdoms/lukasz/map/map/MapCoords')
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game;->mapScale'] = g.Obj(
        'aoc/kingdoms/lukasz/map/map/MapScale')
    me = _mission(mode)
    target = g.Obj('aoc/kingdoms/lukasz/map/battles/AirMission')
    target.fields.update(missionID=1234, civID=2, aliveAircraft=list(me.fields['aliveAircraft']),
                         airDivisionAtProvinceID=5)
    afm = g.Obj('aoc/kingdoms/lukasz/map/battles/AirForceManager')
    afm.fields.update(activeMissions=[me, target])
    g.INSTANCES['AirForceManager'] = afm

    it = g.Interp(AM, 'AirMission;->missileTick')
    tr = {'cmp-long': 'sub-int', 'sub-long': 'sub-int', 'add-long': 'add-int',
          'long-to-float': 'int-to-float', 'iget-wide': 'iget', 'iput-wide': 'iput',
          'sget-wide': 'sget'}
    it.code = [(tr.get(op, op), a) for op, a in it.code]
    it.regs[it.pbase] = me
    it.run()
    dmg = [e for e in it.events if e[0] == 'invoke' and 'applyAirDamage' in e[2]]
    return len(dmg), me.fields.get('strikeKind'), me.fields.get('msFxInit')


rows = [
    ('屏内', mark_mode(True, False), 0),
    ('屏外+未探测', mark_mode(False, False), 1),
    ('屏外+已探测', mark_mode(False, True), 0),
]
for name, got, want in rows:
    print('%-12s -> msHourMode=%s（期望 %s）%s' % (name, got, want, '' if got == want else '  ❌'))

for mode, want, label in ((1, (1, 0, 2), 'msHourMode=1 小时钟'),
                          (0, (0, 1, 0), 'msHourMode=0 帧钟')):
    got = tick(mode)
    print('%-22s -> dmg/sk/fx=%s（期望 %s）%s' % (label, got, want, '' if got == want else '  ❌'))

ok = all(got == want for _, got, want in rows) and tick(1) == (1, 0, 2) and tick(0) == (0, 1, 0)
print('verdict: ' + ('v68 口径成立（发射点定死、两钟互斥）' if ok else '与 v68 口径不符'))
