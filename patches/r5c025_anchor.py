# -*- coding: utf-8 -*-
# r5c025_anchor.py —— 打印各插桩点精确文本（含空行）
import io
B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
def rd(p): return io.open(B + p, encoding='utf-8').read()

afm = rd('AirForceManager.smali')
apt = rd('Airport.smali')
mis = rd('AirMission.smali')

def show(tag, t, key, before=200, after=260):
    i = t.find(key)
    print('===== %s =====' % tag)
    print(repr(t[max(0, i - before): i + after]))
    print('')

show('I2 executeAIAssignment 循环 (实调用点)', afm, 'if-ne v3, v4, :cond_20', 200, 260)
show('I8 registerAirport 尾部 totalAircraft', afm, 'const/16 v5, 0x8', 200, 300)