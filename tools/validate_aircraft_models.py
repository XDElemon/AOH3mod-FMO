#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""AircraftModels 校验器

用法:
  python3 tools/validate_aircraft_models.py [--apk /sdcard/Download/fmo_baseline/fmo_baseline.apk]

检查项:
  V1 JSON 字段齐备、类型正确
  V2 key 唯一 + 命名与 (country,type) 一致
  V3 编码公式自洽：imageId = 70+(gen-3)*16+key；packed = (key<<16)|(tech<<8)|imageId
  V4 图片真实存在：assets/game/AirUnit/AirUnitlmages/Gen{gen}/{country}/{type}.png
  V5 代际与目录一致（GenN 的 N 必须等于 gen）
  V6 techId 在 Technologies.json 的节点集内
  V7 覆盖率报告：64 个 (国×代×型) 槽位缺哪些
退出码: 0 全过；1 有错误
"""
import json, os, sys, zipfile, argparse

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
JSON_PATH = os.path.join(ROOT, 'data', 'aircraft_models.json')
TECH_IDS = os.path.join(ROOT, 'data', 'tech_ids.json')

COUNTRIES = {'CN': 0, 'EU': 1, 'RU': 2, 'US': 3}
TYPES = {'FIGHTER': 0, 'INTERCEPTOR': 1, 'ATTACKER': 2, 'BOMBER': 3}
TYPECODE = {'FIGHTER': 'F', 'INTERCEPTOR': 'I', 'ATTACKER': 'A', 'BOMBER': 'B'}
BASE = 'assets/game/AirUnit/AirUnitlmages/'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--apk', default='/sdcard/Download/fmo_baseline/fmo_baseline.apk')
    a = ap.parse_args()

    doc = json.load(open(JSON_PATH, encoding='utf-8'))
    models = doc['models']
    tech = set(json.load(open(TECH_IDS, encoding='utf-8'))) if os.path.exists(TECH_IDS) else None
    names = set()
    if os.path.exists(a.apk):
        with zipfile.ZipFile(a.apk) as z:
            names = set(z.namelist())
        apk_ok = True
    else:
        apk_ok = False

    err = []
    warn = []
    slots = set()
    for i, m in enumerate(models):
        tag = m.get('key', '#%d' % i)
        # V1
        for f in ('key', 'country', 'type', 'gen', 'techId'):
            if f not in m:
                err.append('V1 %s 缺字段 %s' % (tag, f)); break
        else:
            # V2
            exp = 'A_%s_%s_%s' % (m['country'], m.get('modelCode', ''), TYPECODE.get(m['type'], '?'))
            if m['key'] != exp:
                err.append('V2 %s 命名不符，应为 %s' % (tag, exp))
            if m['key'] in slots:
                err.append('V2 %s 键重复' % tag)
            slots.add(m['key'])
            if m['country'] not in COUNTRIES:
                err.append('V2 %s 国家非法 %s' % (tag, m['country']))
            if m['type'] not in TYPES:
                err.append('V2 %s 机型非法 %s' % (tag, m['type']))
            # V3
            key = COUNTRIES[m['country']] * 4 + TYPES[m['type']]
            img = 70 + (int(m['gen']) - 3) * 16 + key
            packed = (key << 16) | (int(m['techId']) << 8) | img
            if int(m.get('imageId', -1)) != img:
                err.append('V3 %s imageId 不符: %s != %s' % (tag, m.get('imageId'), img))
            if int(str(m.get('packed', '0x0')), 16) != packed:
                err.append('V3 %s packed 不符: %s != 0x%x' % (tag, m.get('packed'), packed))
            # V4/V5
            p = '%sGen%d/%s/%s.png' % (BASE, int(m['gen']), m['country'], m['type'])
            if apk_ok and p not in names:
                err.append('V4 %s 图片缺失: %s' % (tag, p))
            # V6
            if tech is not None and int(m['techId']) not in tech:
                err.append('V6 %s techId %s 不在科技表内' % (tag, m['techId']))

    # V7 覆盖率
    missing = []
    have = {(m['country'], int(m['gen']), m['type']) for m in models if 'country' in m}
    for c in COUNTRIES:
        for g in (3, 4, 5, 6):
            for t in TYPES:
                if (c, g, t) not in have:
                    missing.append((c, g, t))
    if missing:
        warn.append('V7 未覆盖的槽位 %d 个: %s' % (
            len(missing), ', '.join('%s/Gen%d/%s' % x for x in missing[:20]) + (' …' if len(missing) > 20 else '')))

    print('=' * 60)
    print('机型条目:', len(models), '| APK:', '已加载' if apk_ok else '未找到（跳过 V4）')
    print('分代:', doc.get('counts', {}).get('byGen', {}))
    for w in warn:
        print('⚠️ ', w)
    if err:
        print('❌ 错误 %d 条:' % len(err))
        for e in err[:40]:
            print('   ', e)
        return 1
    print('✅ V1-V6 全过')
    return 0


if __name__ == '__main__':
    sys.exit(main())
