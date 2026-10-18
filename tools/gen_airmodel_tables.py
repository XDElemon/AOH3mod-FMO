#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""AirModelTables 生成器：JSON 真源 -> smali 常量表

用法:
  python3 tools/gen_airmodel_tables.py            # 生成到 src/smali/.../AirModelTables.smali
  python3 tools/gen_airmodel_tables.py --check    # 只比对，不改文件（CI/门禁用）

编码（已实证，见 baseline/research_代差靠数值_v1.md）:
  key  = country*4 + type            country: CN0 EU1 RU2 US3 | type: F0 I1 A2 B3
  img  = 70 + (gen-3)*16 + key       gen: 3..6
  packed = (key<<16) | (techId<<8) | img
"""
import json, sys, os, argparse

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
JSON_PATH = os.path.join(ROOT, 'data', 'aircraft_models.json')
SMALI_PATH = os.path.join(ROOT, 'src', 'smali', 'aoc', 'kingdoms', 'lukasz', 'map',
                          'battles', 'AirModelTables.smali')
CLASS = 'Laoc/kingdoms/lukasz/map/battles/AirModelTables;'
BEGIN = '.method static constructor <clinit>()V'


def load():
    with open(JSON_PATH, encoding='utf-8') as f:
        d = json.load(f)
    return d['models']


def decode(m):
    """导出字段并做一致性自检，返回 (key, tech, img)。"""
    country = {'CN': 0, 'EU': 1, 'RU': 2, 'US': 3}[m['country']]
    typ = {'FIGHTER': 0, 'INTERCEPTOR': 1, 'ATTACKER': 2, 'BOMBER': 3}[m['type']]
    key = country * 4 + typ
    gen = int(m['gen'])
    img = 70 + (gen - 3) * 16 + key
    tech = int(m['techId'])
    packed = (key << 16) | (tech << 8) | img
    return key, gen, tech, img, packed


def build_clinit(models):
    n = len(models)
    L = []
    L.append(BEGIN)
    L.append('    .registers 4')
    L.append('    const/16 v0, 0x%x' % n)
    L.append('    new-array v1, v0, [I')
    L.append('    const/4 v2, 0x0')
    for m in models:
        _, _, _, _, packed = decode(m)
        L.append('    const v3, 0x%x' % packed)
        L.append('    aput v3, v1, v2')
        L.append('    add-int/lit8 v2, v2, 0x1')
    L.append('    sput-object v1, %s->INFO:[I' % CLASS)
    L.append('    new-array v1, v0, [Ljava/lang/String;')
    L.append('    const/4 v2, 0x0')
    for m in models:
        L.append('    const-string v3, "%s"' % m['key'])
        L.append('    aput-object v3, v1, v2')
        L.append('    add-int/lit8 v2, v2, 0x1')
    L.append('    sput-object v1, %s->KEY:[Ljava/lang/String;' % CLASS)
    L.append('    return-void')
    L.append('.end method')
    return '\n'.join(L) + '\n'


def replace_clinit(text, block):
    i = text.index(BEGIN)
    j = text.index('.end method', i) + len('.end method\n')
    return text[:i] + block + text[j:]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--check', action='store_true')
    ap.add_argument('--out')
    a = ap.parse_args()

    models = load()
    # 自检：JSON 内字段与公式必须自洽
    seen = set()
    for m in models:
        key, gen, tech, img, packed = decode(m)
        assert m['key'] not in seen, '键重复: %s' % m['key']
        seen.add(m['key'])
        if 'imageId' in m:
            assert int(m['imageId']) == img, '%s imageId 不符: %s != %s' % (m['key'], m['imageId'], img)
        if 'packed' in m:
            assert int(str(m['packed']), 16) == packed, '%s packed 不符' % m['key']

    src = open(SMALI_PATH, encoding='utf-8').read()
    out = replace_clinit(src, build_clinit(models))

    if a.check:
        same = (out == src)
        print('JSON 条数:', len(models))
        print('生成结果与原文件:', '一致 ✅' if same else '不一致 ❌')
        if not same:
            import difflib
            for line in list(difflib.unified_diff(src.splitlines(), out.splitlines(),
                                                  'repo', 'generated', lineterm=''))[:40]:
                print(line)
        return 0 if same else 1

    dst = a.out or SMALI_PATH
    with open(dst, 'w', encoding='utf-8') as f:
        f.write(out)
    print('已生成:', dst, '（%d 条）' % len(models))
    return 0


if __name__ == '__main__':
    sys.exit(main())
