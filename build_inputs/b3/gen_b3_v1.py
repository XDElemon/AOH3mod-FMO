# -*- coding: utf-8 -*-
# B3 生成器 v2: r6d259 基线 -> STAGE（树 43 节点 / 单位 51 记录(已去重) / 语言 94 键 / 剧本 955 国）
# v2 变化: ①同机型同兵种去重(只留首代) ②节点 MaintainTechnologyName=true + 纯机型名
import zipfile, re, os, shutil, collections

APK = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d259.apk'
OUT = '/sdcard/GLG/历史23/build_inputs/b3/out'
SCEN = ['qianxi', 'ModernWorld', 'WW2', 'USA_States', 'brazil', 'SouthAmerica']

S_ID = {'CN': 32, 'US': 45, 'EU': 55, 'RU': 64}
NODES = {
 'CN': [(33,'J11'),(34,'J8'),(35,'Q5'),(36,'H6'),(37,'J20'),(38,'J10'),(39,'H7'),(40,'J35'),(41,'H20'),(42,'J36'),(43,'J50'),(44,'H29')],
 'US': [(46,'F14'),(47,'A10'),(48,'B1'),(49,'F22'),(50,'F35'),(51,'B2'),(52,'X32'),(53,'F47'),(54,'CFA44')],
 'EU': [(56,'EF2000'),(57,'JAS39'),(58,'HARRIER'),(59,'TORNADO'),(60,'F35'),(61,'TEMPEST'),(62,'ASFX'),(63,'FCAS')],
 'RU': [(65,'SU27'),(66,'MIG31'),(67,'SU25'),(68,'TU160'),(69,'SU57'),(70,'SU34'),(71,'MIG41'),(72,'TU170'),(73,'X02S'),(74,'TU202')],
}
CODE2ID = {g: {c: i for i, c in lst} for g, lst in NODES.items()}
POS = {
 'CN': {'J11':(43,0),'J8':(43,1),'Q5':(43,2),'H6':(43,3),'J20':(44,0),'J10':(44,1),'H7':(44,3),'J35':(45,2),'H20':(45,3),'J36':(46,0),'J50':(46,1),'H29':(46,3)},
 'US': {'F14':(48,0),'A10':(48,2),'B1':(48,3),'F22':(49,0),'F35':(49,2),'B2':(49,3),'X32':(50,2),'F47':(51,0),'CFA44':(51,1)},
 'EU': {'EF2000':(53,0),'JAS39':(53,1),'HARRIER':(53,2),'TORNADO':(53,3),'F35':(55,0),'TEMPEST':(56,0),'ASFX':(56,1),'FCAS':(56,2)},
 'RU': {'SU27':(58,0),'MIG31':(58,1),'SU25':(58,2),'TU160':(58,3),'SU57':(59,0),'SU34':(59,2),'MIG41':(60,1),'TU170':(60,3),'X02S':(61,0),'TU202':(61,3)},
}
S_POS = {'CN': (42,4), 'US': (47,4), 'EU': (52,4), 'RU': (57,4)}
REQ = {
 37:33, 38:34, 39:36, 40:33, 41:39, 42:37, 43:37, 44:41,
 49:46, 50:47, 51:48, 52:50, 53:49, 54:50,
 60:56, 61:60, 62:60, 63:60,
 69:65, 70:67, 71:66, 72:68, 73:69, 74:72,
}
S_CHAIN = {'CN': (33, 34, {33: 35, 34: 36}), 'US': (46, 47, {46: 48}), 'EU': (56, 57, {56: 58, 57: 59}), 'RU': (65, 66, {65: 67, 66: 68})}
MAP = {
 'CN': {'F': ['J11','J20','J20','J36'], 'I': ['J8','J10','J20','J50'], 'A': ['Q5','J11','J35','J50'], 'B': ['H6','H7','H20','H29']},
 'US': {'F': ['F14','F22','F22','F47'], 'I': ['F14','F22','F35','CFA44'], 'A': ['A10','F35','X32','X32'], 'B': ['B1','B2','B2','B2']},
 'EU': {'F': ['EF2000','EF2000','F35','TEMPEST'], 'I': ['JAS39','JAS39','F35','ASFX'], 'A': ['HARRIER','TORNADO','F35','FCAS'], 'B': ['TORNADO','TORNADO','TORNADO','TEMPEST']},
 'RU': {'F': ['SU27','SU57','SU57','X02S'], 'I': ['MIG31','MIG31','MIG41','MIG41'], 'A': ['SU25','SU34','SU57','MIG41'], 'B': ['TU160','TU160','TU170','TU202']},
}
TYPE_IDX = {'F': 0, 'I': 1, 'A': 2, 'B': 3}
TYPE_FILE = {'F': 'AirFighter', 'I': 'AirInterceptor', 'A': 'AirAttacker', 'B': 'AirBomber'}
GRP_IDX = {'CN': 0, 'EU': 1, 'RU': 2, 'US': 3}
ZH = {'J11':'歼11','J8':'歼8','Q5':'强5','H6':'轰6','J20':'歼20','J10':'歼10','H7':'轰7','J35':'歼35','H20':'轰20','J36':'歼36','J50':'歼50','H29':'轰29',
 'F14':'F-14','A10':'A-10','B1':'B-1','F22':'F-22','F35':'F-35','B2':'B-2','X32':'X-32','F47':'F-47','CFA44':'CFA-44',
 'EF2000':'台风','JAS39':'鹰狮','HARRIER':'鹞式','TORNADO':'狂风','TEMPEST':'暴风雨','ASFX':'ASF-X','FCAS':'FCAS',
 'SU27':'苏27','MIG31':'米格31','SU25':'苏25','TU160':'图160','SU57':'苏57','SU34':'苏34','MIG41':'米格41','TU170':'图170','X02S':'X-02S','TU202':'图202'}
EN = {'J11':'J-11','J8':'J-8','Q5':'Q-5','H6':'H-6','J20':'J-20','J10':'J-10','H7':'H-7','J35':'J-35','H20':'H-20','J36':'J-36','J50':'J-50','H29':'H-29',
 'F14':'F-14','A10':'A-10','B1':'B-1','F22':'F-22','F35':'F-35','B2':'B-2','X32':'X-32','F47':'F-47','CFA44':'CFA-44',
 'EF2000':'EF-2000','JAS39':'JAS-39','HARRIER':'Harrier','TORNADO':'Tornado','TEMPEST':'Tempest','ASFX':'ASF-X','FCAS':'FCAS',
 'SU27':'Su-27','MIG31':'MiG-31','SU25':'Su-25','TU160':'Tu-160','SU57':'Su-57','SU34':'Su-34','MIG41':'MiG-41','TU170':'Tu-170','X02S':'X-02S','TU202':'Tu-202'}
SUF_ZH = {'F':'战斗机','I':'截击机','A':'攻击机','B':'轰炸机'}
SUF_EN = {'F':' Fighter','I':' Interceptor','A':' Attacker','B':' Bomber'}
TRMAP = str.maketrans('歼击轰强苏图风狮鹰鹞战斗军国欧台罗机', '殲擊轟強蘇圖風獅鷹鷂戰鬥軍國歐颱羅機')
def to_tr(s): return s.translate(TRMAP)

# ---------- 读基线 ----------
z = zipfile.ZipFile(APK)
TECH_OLD = z.read('assets/game/technologies/Technologies.json').decode('utf-8')
BUNDLES = {n: z.read('assets/game/languages/%s.properties' % n).decode('utf-8') for n in ['Bundle', 'Bundle_cn_sp', 'Bundle_cn_tr']}
SCEN_TXT = {s: z.read('assets/map/Earth3/scenarios/%s/Data.json' % s).decode('utf-8') for s in SCEN}

# ---------- 记录（去重：同机型同兵种只留首次出现的代） ----------
records = []  # (g, t, gi, code, key, img, level, req)
for g in ['CN', 'US', 'EU', 'RU']:
    for t in ['F', 'I', 'A', 'B']:
        seen = set()
        for gi, code in enumerate(MAP[g][t]):
            if code in seen:
                continue
            seen.add(code)
            key = 'A_%s_%s_%s' % (g, code, t)
            img = 70 + gi * 16 + GRP_IDX[g] * 4 + TYPE_IDX[t]
            records.append((g, t, gi, code, key, img, gi, CODE2ID[g][code]))

# ---------- 节点块 ----------
blocks = []
for g in ['CN', 'US', 'EU', 'RU']:
    sid = S_ID[g]; a1, a2, chain = S_CHAIN[g]
    c0, r0 = S_POS[g]
    blocks.append((sid, 'AF3_%s' % g, c0, r0, 250, a1, a2))
    for (cid, code) in NODES[g]:
        col, row = POS[g][code]
        gens = [gi for t in ['F','I','A','B'] for gi, cc in enumerate(MAP[g][t]) if cc == code]
        gen = min(gens); cost = [11000, 13000, 16000, 20000][gen]
        req = REQ.get(cid, -1); r2 = chain.get(cid, -1)
        blocks.append((cid, 'T_%s_%s' % (g, code), col, row, cost, req, r2))

# ---------- 树文本（CRLF；节点带 MaintainTechnologyName） ----------
NL = '\r\n'
new_blocks = ''
for (nid, key, col, row, cost, req, r2) in blocks:
    new_blocks += ('\t\t{%s\t\t\tID: %d,%s\t\t\tName: "%s",%s\t\t\tImageID: 0,%s\t\t\t%s'
                   '\t\t\tTreeColumn: %d,%s\t\t\tTreeRow: %d,%s\t\t\t%s'
                   '\t\t\tRequiredTech: %d,%s\t\t\tRequiredTech2: %d,%s\t\t\t%s'
                   '\t\t\tResearchCost: %d,%s\t\t\t%s'
                   '\t\t\tRepeatable: false,%s\t\t\tMaintainTechnologyName: true,%s\t\t\tAI: 8,%s\t\t},%s' %
                   (NL, nid, NL, key, NL, NL, NL, col, NL, row, NL, NL,
                    req, NL, r2, NL, NL, cost, NL, NL, NL, NL, NL, NL))
anchor = '\r\n\t],\r\n\tAge_of_History: Technology\r\n}'
assert TECH_OLD.count(anchor) == 1, 'tree anchor not single'
TECH_NEW = TECH_OLD.replace(anchor, '\r\n' + new_blocks + '\t],\r\n\tAge_of_History: Technology\r\n}')

# ---------- 单位文件 ----------
def stats(t, gi):
    base = {'F': (20, 15, 11.4, 40, 0.32), 'I': (30, 12, 12.0, 32, 0.24), 'A': (30, 20, 11.0, 48, 0.38), 'B': (60, 22, 10.6, 80, 0.64)}[t]
    am, dm = [1.0, 1.25, 1.55, 1.9][gi], [1.0, 1.25, 1.55, 1.9][gi]
    msadd, cm, mcm = [0, 1, 2, 3][gi], [1.0, 1.3, 1.7, 2.1][gi], [1.0, 1.25, 1.5, 1.8][gi]
    return (int(base[0] * am + 0.5), int(base[1] * dm + 0.5), base[2] + msadd,
            int(base[3] * cm + 0.5), base[4] * mcm, 80 + 10 * gi)

unit_txt = {}
for t in ['F', 'I', 'A', 'B']:
    s = '{\n\tArmy: [\n'
    for (rg, rt, gi, code, key, img, lvl, req) in records:
        if rt != t:
            continue
        atk, df, ms, cost, mc, rt2 = stats(t, gi)
        s += ('\t\t{\n\t\t\tName: "%s",\n\t\t\tImageID: %d,\n\t\t\tUnitLevel: %d,\n\t\t\tAttack: %d,\n\t\t\tDefense: %d,\n'
              '\t\t\tMovementSpeed: %.1f,\n\t\t\tAttackRange: 3,\n\t\t\tSiegeProgress: 0.25,\n\t\t\tRequiredTechID: %d,\n'
              '\t\t\tCost: %d,\n\t\t\tMaintenanceCost: %.2f,\n\t\t\tRecruitmentTime: %d,\n\t\t},\n' % (key, img, lvl, atk, df, ms, req, cost, mc, rt2))
    s += '\t],\n\tAge_of_History: Army\n}\n'
    unit_txt[TYPE_FILE[t]] = s

# ---------- 语言键 ----------
lang_keys = collections.OrderedDict()
for (rg, rt, gi, code, key, img, lvl, req) in records:
    if key not in lang_keys:
        lang_keys[key] = (ZH[code] + SUF_ZH[rt], EN[code] + SUF_EN[rt], to_tr(ZH[code] + SUF_ZH[rt]))
for g, nm in [('CN', '中国'), ('US', '美国'), ('EU', '欧洲'), ('RU', '俄罗斯')]:
    lang_keys['AF3_%s' % g] = (nm + '空军', g + ' Air Force', to_tr(nm + '空军'))
for g in ['CN', 'US', 'EU', 'RU']:
    for (cid, code) in NODES[g]:
        lang_keys['T_%s_%s' % (g, code)] = (ZH[code], EN[code], to_tr(ZH[code]))

bundle_new = {}
for bn, txt in BUNDLES.items():
    add = '\n' + ''.join('%s = %s\n' % (k, v[0] if bn == 'Bundle_cn_sp' else (v[1] if bn == 'Bundle' else v[2])) for k, v in lang_keys.items())
    bundle_new[bn] = txt + add

# ---------- 剧本 ----------
def group_of(tag):
    t = tag.lower()
    for p in ['chi', 'chn']:
        if t.startswith(p): return 'CN'
    for p in ['usa', 'jap', 'kor', 'tai']:
        if t.startswith(p): return 'US'
    for p in ['rus', 'sov', 'prk', 'ind', 'vnm', 'irn']:
        if t.startswith(p): return 'RU'
    for p in ['ger', 'fra', 'eng', 'ita', 'spa', 'pol', 'ukr']:
        if t.startswith(p): return 'EU'
    return 'RU'

scen_new = {}
for s in SCEN:
    txt = SCEN_TXT[s]; out = []; last = 0; cnt = 0; fb = 0
    for m in re.finditer(r'\{[^{}]*?\}', txt):
        rec = m.group(0)
        if 'CivTAG' not in rec:
            continue
        tag = re.search(r'CivTAG:\s*"([^"]+)"', rec).group(1)
        g = group_of(tag); val = S_ID[g]; cnt += 1
        if 'TechnologyID' in rec:
            new_rec = re.sub(r'(TechnologyID:\s*)(-?\d+)', r'\g<1>%d' % val, rec, count=1)
        else:
            nl = '\r\n' if '\r\n' in rec else '\n'
            if nl + '\tPopulation' in rec:
                new_rec = rec.replace(nl + '\tPopulation', nl + '\tTechnologyID: %d,' % val + nl + '\tPopulation', 1)
            else:
                fb += 1
                i = rec.rfind(nl + '}')
                head = rec[:i]
                head = (head + ',') if not head.endswith(',') else head
                new_rec = head + nl + '\tTechnologyID: %d' % val + rec[i:]
        out.append(txt[last:m.start()]); out.append(new_rec); last = m.end()
    out.append(txt[last:])
    scen_new[s] = ''.join(out)
    print('scen %-14s civs=%d  fb=%d' % (s, cnt, fb))

# ---------- 全量校验 ----------
errs = []
ids = [n[0] for n in blocks]
assert ids == list(range(32, 75)), 'node id continuity broken'
def closure(sid):
    req = {n[0]: (n[5], n[6]) for n in blocks}
    seen = set(); stack = [sid]
    while stack:
        cur = stack.pop()
        if cur in seen: continue
        seen.add(cur)
        if cur in req:
            for p in req[cur]:
                if p >= 0 and p not in seen: stack.append(p)
    return seen
for g, (a1, a2, chain) in S_CHAIN.items():
    cl = closure(S_ID[g])
    expect = {S_ID[g], a1, a2} | set(chain.keys()) | set(chain.values())
    if cl != expect:
        errs.append('closure %s: %s != %s' % (g, sorted(cl), sorted(expect)))
if TECH_NEW.count('\t\t\tID: ') != 75: errs.append('tree id count != 75')
if TECH_NEW.count('\t\t\tMaintainTechnologyName: true,') != 43: errs.append('maintain count != 43')
imgs = [r[5] for r in records]
if len(set(imgs)) != len(imgs): errs.append('img dup')
if len(records) != 51: errs.append('records=%d' % len(records))
for bn, txt in bundle_new.items():
    for k in lang_keys:
        if re.search(r'(?m)^%s = ' % re.escape(k), BUNDLES[bn]):
            errs.append('key exists: %s' % k)
for s in SCEN:
    if scen_new[s].count('CivTAG') != SCEN_TXT[s].count('CivTAG'): errs.append('scen %s civ diff' % s)
    if scen_new[s].count('TechnologyID') != SCEN_TXT[s].count('CivTAG'): errs.append('scen %s techid' % s)
    vals = set(re.findall(r'TechnologyID:\s*(-?\d+)', scen_new[s]))
    if not vals <= {'32', '45', '55', '64'}: errs.append('scen %s vals' % s)
tot = sum(scen_new[s].count('CivTAG') for s in SCEN)
if tot != 955: errs.append('total %d' % tot)
print('checks done, total civs =', tot, 'errs =', errs)

# ---------- 写盘 ----------
if errs:
    print('BLOCKED - 不写盘')
    raise SystemExit(1)
if os.path.exists(OUT):
    shutil.rmtree(OUT)
for sub in ['assets/game/technologies', 'assets/game/units', 'assets/game/languages']:
    os.makedirs(os.path.join(OUT, sub), exist_ok=True)
open(os.path.join(OUT, 'assets/game/technologies/Technologies.json'), 'w', encoding='utf-8').write(TECH_NEW)
for fn, txt in unit_txt.items():
    open(os.path.join(OUT, 'assets/game/units/%s.json' % fn), 'w', encoding='utf-8').write(txt)
for bn, txt in bundle_new.items():
    open(os.path.join(OUT, 'assets/game/languages/%s.properties' % bn), 'w', encoding='utf-8').write(txt)
for s in SCEN:
    d = os.path.join(OUT, 'assets/map/Earth3/scenarios', s)
    os.makedirs(d, exist_ok=True)
    open(os.path.join(d, 'Data.json'), 'w', encoding='utf-8').write(scen_new[s])
print('WROTE to', OUT)
print('records =', len(records), ' lang keys =', len(lang_keys))
from collections import Counter
print(Counter([r[1] for r in records]))