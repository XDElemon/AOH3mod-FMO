#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""待填槽位清单：算出 64 个 (国×代×型) 里还缺哪些，并给出填一个条目所需的确定字段。

不猜机型名、不猜数值：只给出**公式决定的字段**（key/imageId/packed）与**可用科技节点**，
机型代号与 techId 由人填。

用法:
  python3 tools/missing_slots.py            # 打印清单 + 科技节点占用
  python3 tools/missing_slots.py --emit     # 写 data/aircraft_models.todo.json 模板
"""
import json, os, re, sys, argparse

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
MODELS = os.path.join(ROOT, 'data', 'aircraft_models.json')
TECH = os.path.join(ROOT, 'data', 'tech_ids.json')
TODO = os.path.join(ROOT, 'data', 'aircraft_models.todo.json')

COUNTRIES = ['CN', 'EU', 'RU', 'US']
TYPES = ['FIGHTER', 'INTERCEPTOR', 'ATTACKER', 'BOMBER']
TYPE_CODE = {'FIGHTER': 'F', 'INTERCEPTOR': 'I', 'ATTACKER': 'A', 'BOMBER': 'B'}
GEN_CN = {3: '三代', 4: '四代', 5: '五代', 6: '六代'}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--emit', action='store_true')
    a = ap.parse_args()

    doc = json.load(open(MODELS, encoding='utf-8'))
    rows = doc['models']
    have = {(r['country'], r['gen'], r['type']) for r in rows}
    tech_used = sorted({r['techId'] for r in rows})
    tech_all = json.load(open(TECH, encoding='utf-8')) if os.path.exists(TECH) else []

    missing = []
    for c in COUNTRIES:
        for g in (3, 4, 5, 6):
            for t in TYPES:
                if (c, g, t) in have:
                    continue
                key = COUNTRIES.index(c) * 4 + TYPES.index(t)
                img = 70 + (g - 3) * 16 + key
                missing.append(dict(country=c, gen=g, type=t, slotKey=key, imageId=img,
                                    imagePath='assets/game/AirUnit/AirUnitlmages/Gen%d/%s/%s.png' % (g, c, t),
                                    keyTemplate='A_%s_<机型代号>_%s' % (c, TYPE_CODE[t]),
                                    techIdOptions=[x for x in tech_all if 32 <= x <= 98 and x not in tech_used] or []))

    print('已有 %d 条，缺 %d 条（64 槽位）' % (len(rows), len(missing)))
    print()
    print('| 国家 | 代 | 机型 | imageId | 本次公式 key | 图片路径（占位图已就绪） |')
    print('|---|---|---|---|---|---|')
    for m in missing:
        print('| %s | %s | %s | %d | %d | `%s` |' % (
            m['country'], GEN_CN[m['gen']], m['type'], m['imageId'], m['slotKey'], m['imagePath']))

    # 科技节点占用
    per_country = {}
    for r in rows:
        per_country.setdefault(r['country'], set()).add(r['techId'])
    print()
    print('科技节点占用（tech_ids 共 %d 个，范围 %s..%s）：' % (
        len(tech_all), min(tech_all) if tech_all else '-', max(tech_all) if tech_all else '-'))
    for c in COUNTRIES:
        used = sorted(per_country.get(c, []))
        print('  %-3s 已用 %d 个: %s' % (c, len(used), used))
    unused = [x for x in tech_all if x not in tech_used]
    print('  全表未使用节点: %s' % (unused if unused else '无（新增槽位需复用或新建节点）'))

    # 机型图池占用（证：13 个缺口没有现成图可配）
    img_path = os.path.join(ROOT, 'data', 'model_images.json')
    if os.path.exists(img_path):
        imgs = json.load(open(img_path, encoding='utf-8'))['images']
        norm = lambda x: re.sub(r'[^A-Z0-9]', '', x.upper())
        used_n = {norm(r.get('modelCode', '')) for r in rows}
        spare = [i for i in imgs if norm(i) not in used_n]
        print()
        print('机型图池：%d 张，已被表使用 %d 张，**空闲 %d 张**%s' % (
            len(imgs), len(imgs) - len(spare), len(spare),
            ('（%s）' % ', '.join(spare)) if spare else ''))
        if not spare:
            print('  ⇒ 13 个缺口没有现成机型图可配：需复用已有图、或用 64 张代际占位图、或补新图')

    if a.emit:
        tpl = dict(schema=1,
                   note='待填模板：复制到 data/aircraft_models.json 的 models 数组，填 <机型代号> 与 techId 后跑生成器',
                   missing=[dict(key=m['keyTemplate'], country=m['country'], type=m['type'], gen=m['gen'],
                                 modelCode='TODO', techId=None, imageId=m['imageId'],
                                 imagePath=m['imagePath']) for m in missing])
        with open(TODO, 'w', encoding='utf-8') as f:
            json.dump(tpl, f, ensure_ascii=False, indent=2)
        print('\n已写出模板:', TODO)
    return 0


if __name__ == '__main__':
    sys.exit(main())
