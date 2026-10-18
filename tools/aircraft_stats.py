#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""飞机数值推导器：data/aircraft_stats.json（参数）-> 各代 atk/def/hp 与交换比

设计意图：
  - 真源只存「曲线 + 拆比 + 3 代基数」，各代数值一律推导，禁止手填。
  - 推导结果可打印成表（给人看）/ --emit 成 JSON（给生成器用）。
  - 同时输出交换比矩阵，用来验证是否达到锚点（8:1 / 18:1）。

用法:
  python3 tools/aircraft_stats.py               # 打印表 + 交换比矩阵
  python3 tools/aircraft_stats.py --emit        # 写 data/aircraft_stats.derived.json
"""
import json, os, sys, argparse

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CFG = os.path.join(ROOT, 'data', 'aircraft_stats.json')
OUT = os.path.join(ROOT, 'data', 'aircraft_stats.derived.json')
GENS = [3, 4, 5, 6]
TYPES = ['INTERCEPTOR', 'FIGHTER', 'BOMBER', 'ATTACKER']
TYPE_CN = {'INTERCEPTOR': '截击机', 'FIGHTER': '战斗机', 'BOMBER': '轰炸机', 'ATTACKER': '攻击机'}


def load():
    with open(CFG, encoding='utf-8') as f:
        return json.load(f)


def p_mult(cfg, gen):
    c = cfg['curve']
    m = cfg['curve']['P_mult'][str(gen)]
    if c['mode'] == 'absolute':
        return float(m)
    if c['mode'] == 'per_gen':
        return float(m) ** (gen - c['base_gen'])
    raise SystemExit('未知 curve.mode: %s' % c['mode'])


def derive(cfg):
    a = cfg['split']['attack_exponent']
    d = cfg['split']['defense_exponent']
    if abs(a + d - 1.0) > 1e-9:
        raise SystemExit('split 指数之和必须为 1（当前 %.3f），否则 P 不守锚点' % (a + d))
    rows = []
    for t in TYPES:
        base = cfg['base_gen3'][t]
        for g in GENS:
            m = p_mult(cfg, g)
            atk = base['atk'] * (m ** a)
            dfn = base['def'] * (m ** d)
            hp = dfn * cfg['combat_model']['hp_from_defense']
            rows.append(dict(type=t, gen=g, atk=atk, defense=dfn, hp=hp, power=atk * hp, mult=m))
    return rows


def ratio(pa, pb):
    return 0.4 * pa / pb


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--emit', action='store_true')
    a = ap.parse_args()
    cfg = load()
    rows = derive(cfg)

    print('曲线: %s  P_mult=%s  拆比: atk^%.2f × def^%.2f' % (
        cfg['curve']['mode'], cfg['curve']['P_mult'],
        cfg['split']['attack_exponent'], cfg['split']['defense_exponent']))
    print()
    print('| 机型 | 代 | 攻 | 防 | 血 | P | P/3代 |')
    print('|---|---|---|---|---|---|---|')
    by = {}
    for r in rows:
        by[(r['type'], r['gen'])] = r
        base = by.get((r['type'], 3), r)
        print('| %s | %d | %.0f | %.0f | %.0f | %.0f | %.2f× |' % (
            TYPE_CN[r['type']], r['gen'], r['atk'], r['defense'], r['hp'], r['power'],
            r['power'] / base['power']))

    print()
    print('交换比矩阵（行打列；= 0.4×P行/P列；各机型曲线一致，取战斗机代表）：')
    print('| 攻\\守 | 3 代 | 4 代 | 5 代 | 6 代 |')
    print('|---|---|---|---|---|')
    for g in GENS:
        cells = ['%d 代' % g]
        for h in GENS:
            cells.append('%.2f' % ratio(by[('FIGHTER', g)]['power'], by[('FIGHTER', h)]['power']))
        print('| ' + ' | '.join(cells) + ' |')
    print()

    print()
    print('锚点核对（4 代打 3 代的交换比，目标 8:1）：')
    for t in TYPES:
        r = ratio(by[(t, 4)]['power'], by[(t, 3)]['power'])
        flag = '✅' if 7.5 <= r <= 8.5 else '⚠️'
        print('  %s %-6s %.2f:1' % (flag, TYPE_CN[t], r))

    if a.emit:
        out = dict(schema=1, source='data/aircraft_stats.json',
                   curve=cfg['curve'], split=cfg['split'],
                   rows=[dict(type=r['type'], gen=r['gen'],
                              atk=round(r['atk']), defense=round(r['defense']),
                              hp=round(r['hp']), power=round(r['power'], 1)) for r in rows])
        with open(OUT, 'w', encoding='utf-8') as f:
            json.dump(out, f, ensure_ascii=False, indent=2)
        print('\n已写出:', OUT)
    return 0


if __name__ == '__main__':
    sys.exit(main())
