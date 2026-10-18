#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""AircraftTypes.json 生成器：把推导出的每代数值写成游戏可直接读的配置文件。

产物: build/assets/game/AirUnit/AircraftTypes.json
      （结构 = 现有 4 条类型条目 + 新增 AirAttackByGen / DefenseByGen 数组）

数组下标 = gen（0..6），下标 0~2 与 3 相同（保证旧逻辑/异常输入回退到三代值）。
代码侧接线（AircraftDataManager.applyType 读数组）不在本工具范围，见
baseline/research_每代数值接入_v1.md。

用法:
  python3 tools/gen_aircraft_types.py            # 生成
  python3 tools/gen_aircraft_types.py --check    # 只校验产物是否与推导一致
"""
import json, os, re, sys, argparse

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
STATS = os.path.join(ROOT, 'data', 'aircraft_stats.derived.json')
SRC_JSON = os.path.join(ROOT, 'data', 'aircraft_types.source.json')
OUT = os.path.join(ROOT, 'build', 'assets', 'game', 'AirUnit', 'AircraftTypes.json')
MAX_GEN = 6


def load_rows():
    d = json.load(open(STATS, encoding='utf-8'))
    rows = {}
    for r in d['rows']:
        rows[(r['type'], r['gen'])] = r
    return rows


def build_arrays(rows, typ):
    """返回 (atk[7], def[7])，下标=gen，0..2 用三代值。"""
    atk, dfn = [], []
    base = rows.get((typ, 3))
    if not base:
        raise SystemExit('缺 %s 三代基准' % typ)
    for g in range(0, MAX_GEN + 1):
        r = rows.get((typ, g)) or base
        atk.append(round(r['atk']))
        dfn.append(round(r['defense']))
    return atk, dfn


def parse_gdx_json(src_text):
    """把 Gdx Json（无引号键、尾逗号）转成严格 JSON 再解析。"""
    t = re.sub(r'(?m)^(\s*)([A-Za-z_][\w]*)\s*:', r'\1"\2":', src_text)
    t = re.sub(r',(\s*[}\]])', r'\1', t)
    return json.loads(t)


def render(rows, src_text=None):
    entries = []
    if src_text:
        try:
            entries = parse_gdx_json(src_text)['AircraftTypes']
        except Exception as e:
            raise SystemExit('解析原 AircraftTypes.json 失败: %s' % e)

    types = ['INTERCEPTOR', 'FIGHTER', 'BOMBER', 'ATTACKER']
    lines = ['{', '\tAircraftTypes:', '\t[']
    for i, t in enumerate(types):
        atk, dfn = build_arrays(rows, t)
        e = dict(entries[i]) if i < len(entries) else {}
        e['Name'] = t
        e.setdefault('ID', i + 1)
        e['AirAttackByGen'] = atk
        e['DefenseByGen'] = dfn
        lines.append('\t\t{')
        for k, v in e.items():
            if isinstance(v, bool):
                lines.append('\t\t\t%s: %s,' % (k, 'true' if v else 'false'))
            elif isinstance(v, str):
                lines.append('\t\t\t%s: "%s",' % (k, v))
            elif isinstance(v, list):
                lines.append('\t\t\t%s: [%s],' % (k, ', '.join(str(x) for x in v)))
            else:
                lines.append('\t\t\t%s: %s,' % (k, v))
        lines.append('\t\t},')
    lines.append('\t]')
    lines.append('}')
    return '\n'.join(lines) + '\n'


def verify(text, rows):
    import re
    bad = []
    for t in ['INTERCEPTOR', 'FIGHTER', 'BOMBER', 'ATTACKER']:
        m = re.search(r'Name: "%s".*?AirAttackByGen: \[([^\]]+)\].*?DefenseByGen: \[([^\]]+)\]' % t, text, re.S)
        if not m:
            bad.append('%s 缺数组' % t)
            continue
        atk = [int(x) for x in m.group(1).split(',')]
        dfn = [int(x) for x in m.group(2).split(',')]
        if len(atk) != MAX_GEN + 1 or len(dfn) != MAX_GEN + 1:
            bad.append('%s 数组长度应为 %d' % (t, MAX_GEN + 1))
            continue
        for g in (3, 4, 5, 6):
            exp_a = round(rows[(t, g)]['atk'])
            exp_h = round(rows[(t, g)]['defense'])
            if abs(atk[g] - exp_a) > 1 or abs(dfn[g] - exp_h) > 1:
                bad.append('%s gen%d 不符: atk %d≠%d / def %d≠%d' % (t, g, atk[g], exp_a, dfn[g], exp_h))
        if not (atk[0] == atk[3] and dfn[0] == dfn[3]):
            bad.append('%s 低代回退不等于三代值' % t)
    return bad


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--check', action='store_true')
    a = ap.parse_args()
    rows = load_rows()
    src = open(SRC_JSON, encoding='utf-8').read() if os.path.exists(SRC_JSON) else None
    text = render(rows, src)

    bad = verify(text, rows)
    if bad:
        print('❌ 产物自检失败:')
        for b in bad:
            print('   ', b)
        return 1

    if a.check:
        if not os.path.exists(OUT):
            print('⚠️ 产物不存在:', OUT)
            return 1
        cur = open(OUT, encoding='utf-8').read()
        print('产物与推导:', '一致 ✅' if cur == text else '不一致 ❌')
        for b in verify(cur, rows):
            print('   ', b)
        return 0 if cur == text else 1

    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with open(OUT, 'w', encoding='utf-8') as f:
        f.write(text)
    print('已生成:', OUT)
    print('  4 条类型 × 每代数组（下标=gen，0~2 回退三代）')
    return 0


if __name__ == '__main__':
    sys.exit(main())
