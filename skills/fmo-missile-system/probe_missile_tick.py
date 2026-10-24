#!/usr/bin/env python3
"""导弹小时钟互斥（D3）离线探针 —— 只读，不改仓库、不构建。

用仓库自带的 Dalvik 解释器（tools/gate_behavior.py）真跑 AirMission.missileTick，
把"屏内 / 屏外"两行结果打出来：

    屏内 MODE_FRAME -> 期望：小时钟让位（applyAirDamage=0）
    屏外 MODE_HOUR  -> 期望：小时钟兜底（applyAirDamage=1、strikeKind=0、msFxInit=2）

v66 HEAD 的实际输出是**反的**（屏内跑、屏外 return）——见 SKILL.md §8。
修复后重跑，末尾 verdict 会变成 "已修复"。

用法：python3 skills/fmo-missile-system/probe_missile_tick.py [仓库根目录]
"""
import os
import sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else os.path.dirname(
    os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, 'tools'))
import gate_behavior as g  # noqa: E402

AM = os.path.join(g.SMALI, 'aoc/kingdoms/lukasz/map/battles/AirMission.smali')
_orig = g.Interp._builtin
MODE = {'v': 0}


def _builtin(self, target, vals):
    """只补 missileTick 跑到分支点所需的外部依赖，其余交回原实现。"""
    cls, rest = target.split(';->', 1)
    name = rest.split('(', 1)[0]
    short = cls.split('/')[-1]
    if short == 'AirMissileGate' and name == 'advanceMode':
        return MODE['v']                      # 直接指定屏内(MODE_FRAME=1)/屏外(MODE_HOUR=0)
    if short == 'AirMissileCore' and name == 'flightHours':
        return 4                              # 名义 2..8h，这里取 4
    if short == 'AirMission' and name == 'defenseMul':
        return 1.0
    if short == 'System' and name == 'currentTimeMillis':
        return 10 ** 9                        # 固定墙钟，避免 fb 的 10s 新鲜度门抖动
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


def run(mode):
    MODE['v'] = mode
    g.STATICS.clear()
    g.INSTANCES.clear()
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID'] = 56
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR'] = 10      # total=1354
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game;->mapCoords'] = g.Obj(
        'aoc/kingdoms/lukasz/map/map/MapCoords')
    g.STATICS['aoc/kingdoms/lukasz/jakowski/Game;->mapScale'] = g.Obj(
        'aoc/kingdoms/lukasz/map/map/MapScale')

    target = g.Obj('aoc/kingdoms/lukasz/map/battles/AirMission')
    target.fields.update(missionID=1234, civID=2, aliveAircraft=[_unit()],
                         airDivisionAtProvinceID=5)
    me = g.Obj('aoc/kingdoms/lukasz/map/battles/AirMission')
    me.fields.update(missionID=999, civID=1, strikeKind=1, msFxInit=0,
                     msFxX=5000.0, msFxY=5000.0, strikeTargetMissionID=1234,
                     lastMissileHours=1300, msFlyHours=4, msFxStepMs=0,
                     msFxTN=0, msFxTH=15, msFxTX=None, msFxTY=None,
                     aliveAircraft=[_unit()], missilesLeft=2, missilePerPlane=2)
    afm = g.Obj('aoc/kingdoms/lukasz/map/battles/AirForceManager')
    afm.fields.update(activeMissions=[me, target])
    g.INSTANCES['AirForceManager'] = afm

    it = g.Interp(AM, 'AirMission;->missileTick')
    # 本解释器用单寄存器承载宽值：先把宽指令预翻成窄指令再跑
    tr = {'cmp-long': 'sub-int', 'sub-long': 'sub-int', 'add-long': 'add-int',
          'long-to-float': 'int-to-float', 'iget-wide': 'iget', 'iput-wide': 'iput',
          'sget-wide': 'sget'}
    it.code = [(tr.get(op, op), a) for op, a in it.code]
    it.regs[it.pbase] = me
    it.run()
    dmg = [e for e in it.events if e[0] == 'invoke' and 'applyAirDamage' in e[2]]
    return len(dmg), me.fields.get('strikeKind'), me.fields.get('msFxInit')


on = run(1)   # MODE_FRAME
off = run(0)  # MODE_HOUR
print('屏内 MODE_FRAME -> applyAirDamage=%d  strikeKind=%s  msFxInit=%s' % on)
print('屏外 MODE_HOUR  -> applyAirDamage=%d  strikeKind=%s  msFxInit=%s' % off)

if on[0] == 0 and off[0] == 1:
    print('verdict: 已修复（屏内让位、屏外兜底）')
elif on[0] == 1 and off[0] == 0:
    print('verdict: D3 仍在 —— if-nez 把屏内/屏外判反（见 SKILL.md §8），屏外弹会冻结')
else:
    print('verdict: 未预期组合，先看 mock 是否与当前代码字段对得上')
