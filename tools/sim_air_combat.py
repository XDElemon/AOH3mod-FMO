#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""空战结算模拟器 v2（逐指令对齐 src/smali，用于标定「数值 -> 交换比」）

引擎事实（AirForceManager ~3200-3290，实测）：
  拦截器 p2 对任务机群逐个结算：
      hp(目标) -= p2.airAttack * 0.2      # 0x3e4ccccd
      if hp(目标) < 0 -> recordLoss
      if hp(目标) > 0:
          hp(p2) -= 目标.airAttack * 0.5  # 0x3f000000
          if hp(p2) < 0 -> removeAircraft(p2); recordKill
  注：`airCombatOne` 首指令为 return-void（# AA disabled），整段是死代码。
  本模拟器按「假设恢复结算」建模，只回答：要拉出目标交换比，atk/hp 各该乘多少。

模型说明（两种，互相验证）：
  A. 解析式：A 打死 D 需 hp_D/(0.2·atk_A) tick；D 打死 A 需 hp_A/(0.5·atk_D) tick
     => 交换比(D 损失/A 损失) = 0.4 · (atk_A·hp_A) / (atk_D·hp_D) = 0.4 · P_A/P_D
  B. 离散 1v1：逐 tick 按引擎顺序（先 A 打 D，D 未死才反击），验证与 A 一致。

用法: python3 tools/sim_air_combat.py [--calibrate|--demo]
"""
import argparse

C_ATK = 0.2   # 拦截方/攻击方对目标的伤害系数
C_CNT = 0.5   # 目标反击系数
P_BASE = dict(atk=20.0, hp=100.0)


def duel_1v1(a, b, max_ticks=100000):
    """离散 1v1，严格照引擎顺序：A 先手打 B，B 未死才反击。"""
    a = dict(a); b = dict(b)
    t = 0
    while t < max_ticks:
        t += 1
        b['hp'] -= a['atk'] * C_ATK
        if b['hp'] < 0:
            return dict(winner='A', ticks=t)
        a['hp'] -= b['atk'] * C_CNT
        if a['hp'] < 0:
            return dict(winner='B', ticks=t)
    return dict(winner='draw', ticks=t)


def ratio_analytic(m_a, m_b):
    """m = {'a': atk倍率, 'h': hp倍率}；返回交换比（B 损失 / A 损失）。"""
    P = (P_BASE['atk'] * m_a['a']) * (P_BASE['hp'] * m_a['h'])
    Q = (P_BASE['atk'] * m_b['a']) * (P_BASE['hp'] * m_b['h'])
    return 0.4 * P / Q


def required_p_multiplier(target_ratio):
    """要让交换比 = target，P_A/P_B 需要多少（解析式）。"""
    return target_ratio / 0.4


def split(p_mult, mode):
    """把 P 倍率拆成 (atk倍率, hp倍率)。"""
    if mode == 'balanced':
        r = p_mult ** 0.5
        return r, r
    if mode == 'attack':          # 80% 的 P 增量给攻击
        return p_mult ** 0.8, p_mult ** 0.2
    if mode == 'hp':              # 80% 给耐久
        return p_mult ** 0.2, p_mult ** 0.8
    raise ValueError(mode)


def calibrate():
    print('基准同代: atk=%.0f  hp=%.0f  P=%.0f' % (P_BASE['atk'], P_BASE['hp'],
                                                  P_BASE['atk'] * P_BASE['hp']))
    print('解析式: 交换比 = 0.4 × P_A/P_B   （0.2/0.5 系数天然偏向防守方）')
    print()
    anchors = [(8.0, '−1 代（八换一，用户锚点①）'),
               (18.0, '−2 代（18 换一，用户锚点②）'),
               (45.0, '−3 代（外推）')]
    print('%-8s %-12s %-28s %s' % ('目标交换比', '需要 P 倍率', '拆法', '实测(离散1v1)'))
    for target, note in anchors:
        pm = required_p_multiplier(target)
        for mode in ('balanced', 'attack', 'hp'):
            ma, mh = split(pm, mode)
            res = duel_1v1(dict(atk=P_BASE['atk'] * ma, hp=P_BASE['hp'] * mh),
                           dict(atk=P_BASE['atk'], hp=P_BASE['hp']))
            print('%-10.1f %-12.1f %-28s %s' % (
                target, pm, '%s atk×%.2f hp×%.2f' % (mode, ma, mh),
                ('A 胜 %d tick' % res['ticks']) if res['winner'] == 'A' else 'B 胜'))
        print('   %s' % note)
    print()
    print('反查：给定 P 倍率，实际交换比')
    for pm in (2, 4, 8, 20, 45, 112.5):
        print('   P×%-6.1f -> 交换比 %.1f : 1' % (pm, 0.4 * pm))


def demo():
    print('—— 引擎模式：1 架拦截器 vs N 架同代任务机（引擎是 1 对 N，不是 N 对 N）——')
    for n in (1, 2, 4):
        # 每 tick：拦截器打每架 0.2·atk；每架反击 0.5·atk
        ic = dict(atk=20.0, hp=100.0)
        ds = [dict(atk=20.0, hp=100.0) for _ in range(n)]
        t = 0
        kills = 0
        while t < 10000 and ic['hp'] > 0 and any(d['hp'] > 0 for d in ds):
            t += 1
            for d in ds:
                if d['hp'] <= 0:
                    continue
                d['hp'] -= ic['atk'] * C_ATK
                if d['hp'] < 0:
                    kills += 1
                    continue
                ic['hp'] -= d['atk'] * C_CNT
                if ic['hp'] <= 0:
                    break
        print('   N=%d -> 击落 %d/%d，拦截机%s（%d tick）' % (
            n, kills, n, '被击落' if ic['hp'] <= 0 else '存活', t))
    print('   ⇒ 同代 1 打 N 必输/打不动：这正是"代差要体现在数值上"的落点')


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument('--calibrate', action='store_true')
    ap.add_argument('--demo', action='store_true')
    a = ap.parse_args()
    if a.calibrate:
        calibrate()
    else:
        demo()
