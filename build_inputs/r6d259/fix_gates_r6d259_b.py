# -*- coding: utf-8 -*-
# r6d259 patch B: fix r6d255 broken line; upgrade check_r6d174 sim to AirLat semantics.
from pathlib import Path

DIRS = ['/root/history23_repo/toolchain/act', '/sdcard/GLG/历史23/toolchain/act']

def rep(t, old, new, cnt, tag):
    c = t.count(old)
    assert c == cnt, (tag, 'count', c)
    return t.replace(old, new)

for d in DIRS:
    # --- r6d255: repair mangled comment line
    p = Path(d) / 'check_r6d255.py'
    t = p.read_text(encoding='utf-8')
    t = rep(t, "ok('# r6d259 re-baseline: nABOOT 已前滚至 r6d258",
            "# r6d259 re-baseline: nABOOT 已前滚至 r6d258", 1, 'r6d255.repair')
    p.write_text(t, encoding='utf-8')
    print('patched check_r6d255.py @', d)

    # --- r6d174: AirLat upgrade
    p = Path(d) / 'check_r6d174.py'
    t = p.read_text(encoding='utf-8')
    t = rep(t, "'x': 300, 'y': 100}", "'x': 150, 'y': 4300}", 1, 'r6d174.prov11')
    t = rep(t, "'x': 600, 'y': 100}", "'x': 250, 'y': 4300}", 1, 'r6d174.prov12')
    t = rep(t, "'x': 100, 'y': 100}", "'x': 100, 'y': 4300}", 1, 'r6d174.prov10')
    t = rep(t, "'E2 同上但 200px'", "'E2 同上但 50px（≤R100）'", 1, 'r6d174.case2')
    t = rep(t, "'E3 同上但 500px(>300)'", "'E3 同上但 150px（>R100）'", 1, 'r6d174.case3')
    t = rep(t, "E2 敌方 + 已部署 + 有飞机 + 200px", "E2 敌方 + 已部署 + 有飞机 + 50px（≤R100）", 1, 'r6d174.doc2')
    t = rep(t, "E3 敌方 + 已部署 + 有飞机 + 500px（>300）", "E3 敌方 + 已部署 + 有飞机 + 150px（>R100）", 1, 'r6d174.doc3')
    fns = ('def airlat_f(y):\n'
           '    c = math.cos((y - 4300) / 4300.0 * (math.pi / 2))\n'
           '    return max(0.25, min(1.0, c))\n\n'
           'def airlat_hit(dx, dy, R, y):\n'
           '    f = airlat_f(y)\n'
           '    rr = int(R * f)\n'
           '    cosk = int((f * f) * 1000)\n'
           '    return (dx * dx * cosk / 1000.0 + dy * dy) <= rr * rr\n\n')
    t = rep(t, 'def run_body(tag, prov_id, mission, depth=0):', fns + 'def run_body(tag, prov_id, mission, depth=0):', 1, 'r6d174.fns')
    handlers = ("        elif t.startswith('invoke-static') and 'AirLat;->hit(IIII)Z' in t:\n"
                "            mreg = re.search(r'\\{([^}]*)\\}', t)\n"
                "            args = [x.strip() for x in mreg.group(1).split(',')] if mreg else []\n"
                "            while len(args) < 4:\n"
                "                args.append('')\n"
                "            dx, dy, R, y = (r.get(a) for a in args[:4])\n"
                "            pending = airlat_hit(dx or 0, dy or 0, R or 0, y or 0)\n"
                "            pc += 1\n"
                "        elif t.startswith('invoke-static') and 'AirForceManager;->getInstance()' in t:\n"
                "            pending = {'fm': True}\n"
                "            pc += 1\n"
                "        elif t.startswith('invoke-virtual') and ('hasRadarBuilding(I)Z' in t or 'hasLongWaveRadarBuilding(I)Z' in t):\n"
                "            pending = False\n"
                "            pc += 1\n")
    t = rep(t, "        elif t.startswith('invoke-interface'):", handlers + "        elif t.startswith('invoke-interface'):", 1, 'r6d174.handlers')
    p.write_text(t, encoding='utf-8')
    print('patched check_r6d174.py @', d)
print('ALL DONE (B)')