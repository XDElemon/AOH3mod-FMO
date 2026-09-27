# -*- coding: utf-8 -*-
# r6c001_b1a.py —— B1 第一半：情报门 + 双登记表 + Province 钩子（逐字件优先，缺失件按语义重建）
#   用法: python3 r6c001_b1a.py patch | gate
#   逐字来源：r6s5/phaseB_verbatim2/  （provinceHasAirport=r4c188、hasMilitaryBuilding=r4c185、noteProvinceBuildings=r4c185）
#   重建件（原件随 r4c177/178 丢失）：milRaw（原 hasMilitaryBuilding 扫描体）、isMilIdx（军事建筑 id 集合判定）
import re, os, sys

AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
PRV = '/tmp/revx/aoc/kingdoms/lukasz/map/province/Province.smali'
VB = '/sdcard/GLG/历史23/r6s5/phaseB_verbatim2/'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
BM = 'Laoc/kingdoms/lukasz/map/BuildingsManager;'

def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def vb(name, src):
    """取逐字方法体（首行 .method … .end method）"""
    p = VB + '%s__%s.txt' % (name, src)
    s = rd(p)
    m = re.search(r'\.method[^\n]*\n[\s\S]*?\.end method', s)
    assert m, ('逐字件不可用', name)
    return m.group(0)

# ---------- 重建：isMilIdx / milRaw ----------
NEW_ISMIL = '''.method private static isMilIdx(I)Z
    .registers 4
    # 【重建】原件随 r4c177/178 丢失；语义=“军事建筑 id 集合”。
    # 依据：BuildingsManager 里四个军事类建筑 id 常量（默认 -1）+ 设计档“空军基地=军事组 idx34”。
    # 真值表：id<0 → 0；id 命中 AIRPORT/LONGRADAR/RADAR/AAA 任一（且该常量≥0）→ 1；否则 0
    if-ltz p0, :im_true_chk
    const/4 v0, 0x0
    return v0
    :im_true_chk
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AIRPORT_BUILDING_ID:I
    if-ltz v0, :im1
    if-ne p0, v0, :im_yes
    :im1
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->LONGRADAR_BUILDING_ID:I
    if-ltz v0, :im2
    if-ne p0, v0, :im_yes
    :im2
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->RADAR_BUILDING_ID:I
    if-ltz v0, :im3
    if-ne p0, v0, :im_yes
    :im3
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I
    if-ltz v0, :im_no
    if-ne p0, v0, :im_yes
    :im_no
    const/4 v0, 0x0
    return v0
    :im_yes
    const/4 v0, 0x1
    return v0
.end method
'''

NEW_MILRAW = '''.method private static milRaw(I)Z
    .registers 8
    # 【重建】原件=早期 hasMilitaryBuilding 扫描体（r4c183 改名时未留档）。
    # 语义：读该省建筑列表，任一建筑命中 isMilIdx → 1；省为空/列表空/数据未装载 → 0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v0
    if-eqz v0, :mr_no
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;
    if-eqz v1, :mr_no
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    const/4 v3, 0x0
    :mr_loop
    if-ge v3, v2, :mr_no
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    if-eqz v4, :mr_next
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I
    move-result v5
    invoke-static {v5},''' + ' ' + CLS + '''->isMilIdx(I)Z
    move-result v5
    if-eqz v5, :mr_next
    const/4 v5, 0x1
    return v5
    :mr_next
    add-int/lit8 v3, v3, 0x1
    goto :mr_loop
    :mr_no
    const/4 v5, 0x0
    return v5
.end method
'''

B1_METHODS = ['provinceHasAirport__r4c188_airreg', 'hasMilitaryBuilding__r4c185_event',
              'noteProvinceBuildings__r4c185_event']

def patch():
    s = rd(AFM)
    if 'afMilReal' in s:
        print('[SKIP] 已打过 B1 第一半'); return True
    # 1) 字段
    f_anchor = '.field public static afSuspended:Z\n'
    if f_anchor not in s:
        m = re.search(r'\.field public static [A-Za-z0-9_$]+:Z\n', s)
        f_anchor = m.group(0)
    s = s.replace(f_anchor, f_anchor +
                  '.field public static afMilReal:Ljava/util/HashSet;\n'
                  '.field public static afAirportProv:Ljava/util/HashSet;\n', 1)
    # 2) 方法（重建两件 + 逐字三件）
    add = [NEW_ISMIL, NEW_MILRAW]
    for nm_src in B1_METHODS:
        add.append(vb(*nm_src.split('__')) + '\n')
    s = s.rstrip('\n') + '\n\n' + '\n'.join(add)
    wr(AFM, s)
    print('[OK] AFM: 双字段 + 5 个方法（2 重建 + 3 逐字）')
    # 3) Province 4 个方法挂 8 处钩子
    pr = rd(PRV)
    if 'noteProvinceBuildings' in pr:
        print('[SKIP] Province 钩子已在'); return True
    HOOK = '    invoke-static {p0}, ' + CLS + '->noteProvinceBuildings(Laoc/kingdoms/lukasz/map/province/Province;)V\n'
    lines = pr.split('\n')
    METHODS = ['addNewBuilding(', 'addNewBuilding_LoadScenario(', 'destroyBuilding(', 'destroyBuilding_ScenarioEditor(']
    total = 0
    for name in METHODS:
        idx = [i for i, L in enumerate(lines) if L.startswith('.method') and name in L]
        assert len(idx) == 1, (name, idx)
        st = idx[0]
        en = next(i for i in range(st + 1, len(lines)) if lines[i].startswith('.end method'))
        out, cnt = [], 0
        for i in range(st, en + 1):
            if re.match(r'^\s*return-void\s*$', lines[i]):
                out.append(HOOK.rstrip('\n')); cnt += 1
            out.append(lines[i])
        lines[st:en + 1] = out
        total += cnt
        print('   hook %-32s x%d' % (name, cnt))
    wr(PRV, '\n'.join(lines))
    print('[OK] Province 钩子 %d 处' % total)
    return True

def gate():
    fails = []
    s = rd(AFM); pr = rd(PRV)
    for f in ('afMilReal', 'afAirportProv', 'isMilIdx', 'milRaw', 'provinceHasAirport', 'hasMilitaryBuilding', 'noteProvinceBuildings'):
        if f not in s: fails.append('AFM 缺 %s' % f)
    # 登记表三来源
    h = re.search(r'\.method[^\n]*hasMilitaryBuilding[\s\S]*?\.end method', s)
    if h and not ('afMilReal' in h.group(0) and 'milRaw' in h.group(0) and 'provinceHasAirport' in h.group(0)):
        fails.append('54-1 hasMilitaryBuilding 三来源不全')
    # milRaw 的空守卫 + isMilIdx 调用
    mr = re.search(r'\.method[^\n]*milRaw[\s\S]*?\.end method', s)
    if mr:
        if 'getProvince(I)' not in mr.group(0): fails.append('54-2 milRaw 未查 Province')
        if 'isMilIdx' not in mr.group(0): fails.append('54-2 milRaw 未用 isMilIdx')
    else: fails.append('54-2 milRaw 缺失')
    # isMilIdx：必须有 if-ltz 守卫（AIRPORT_BUILDING_ID 默认 -1 血案）
    im = re.search(r'\.method[^\n]*isMilIdx[\s\S]*?\.end method', s)
    if im:
        body = im.group(0)
        if body.count('if-ltz v0') < 3: fails.append('54-3 isMilIdx 缺 if-ltz 守卫（默认 -1 血案）')
        for c in ('AIRPORT_BUILDING_ID', 'LONGRADAR_BUILDING_ID', 'RADAR_BUILDING_ID', 'AAA_BUILDING_ID'):
            if c not in body: fails.append('54-3 isMilIdx 缺 %s' % c)
    else: fails.append('54-3 isMilIdx 缺失')
    # 自愈回写
    pa = re.search(r'\.method[^\n]*provinceHasAirport[\s\S]*?\.end method', s)
    if pa and 'afAirportProv' not in pa.group(0): fails.append('54-4 provinceHasAirport 缺登记表/自愈')
    # Province 钩子
    n = pr.count('noteProvinceBuildings')
    if n < 4: fails.append('54-5 Province 钩子不足（%d）' % n)
    # 字节级：不得在 Province 里改 return-void 语义（只加 invoke-static）
    if re.search(r'sput[^\n]*afMilReal', pr): fails.append('54-6 Province 内不得直接写登记表')
    # 负样本
    neg = 0
    if re.search(r'if-ltz v0', '    if-ltz v0, :x'): neg += 1                 # 守卫识别
    if re.search(r'if-ne p0, v0, :im_yes', 'if-ne p0, v0, :im_yes'): neg += 1  # 命中判定识别
    if re.search(r'move-result-object v0\s*\n\s*if-eqz v0, :mr_no', 'move-result-object v0\n    if-eqz v0, :mr_no'): neg += 1
    print('== 门禁 54 ==')
    print('  负样本捕获：%d/3' % neg)
    if neg != 3: fails.append('54 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：')
        for f in fails: print('    - ' + f)
        return False
    print('  OK 全过')
    return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': sys.exit(0 if patch() else 1)
    else: sys.exit(0 if gate() else 1)