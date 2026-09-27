# -*- coding: utf-8 -*-
# r5c026_p1a_audit_final.py —— P1a 开工前终批调研：施工锚点 + 寄存器预算 + 视野件调用约定（只读）
import io
R = '/tmp/w3a/smali/'
B = R + 'aoc/kingdoms/lukasz/map/battles/'
def L(p): return io.open(p, encoding='utf-8').read().split('\n')

def show(tag, path, a, b, cut=118):
    X = L(path)
    print('====== %s (%s %d-%d) ======' % (tag, path.split('/')[-1], a, b))
    for i in range(a - 1, min(b, len(X))):
        s = X[i].rstrip()
        if s.strip():
            print('  %5d| %s' % (i + 1, s[:cut]))
    print('')

AFM = B + 'AirForceManager.smali'
APT = B + 'Airport.smali'
PRO = R + 'aoc/kingdoms/lukasz/map/province/Province.smali'
GAM = R + 'aoc/kingdoms/lukasz/jakowski/Game.smali'

show('E1. executeAIAssignment(I) 全貌（含 r5c025 的 nA2m 探针）', AFM, 2801, 2852)
show('E2. executeAIAssignmentForAirport 现状（含探针）', AFM, 1021, 1085)
show('E2b. ... 后半 + 和平分支', AFM, 1086, 1175)
show('E3. strikeTick_A1 现状', AFM, 6900, 6920)

# 视野件：签名 + 调用约定（radar pass 全貌）
show('E4. aiVisRadarPass 全貌', AFM, 4072, 4150)
show('E4b. aiVisAirportPass 签名/尾部', AFM, 4150, 4166)
show('E4c. aiVisAirportPass 尾部（返回值出口）', AFM, 4196, 4216)

# 字段与工具方法签名
print('====== E5. 关键字段/方法签名 ======')
for tag, p, pat in (('Game.oR', GAM, '.field public static oR'),
                    ('Game.difficultyID', GAM, '.field public static difficultyID'),
                    ('AFM.aiSvSrc', AFM, '.field'),
                    ('Game.getProvince', GAM, '.method public static getProvince('),
                    ('Province.getCenterX_Real', PRO, '.method public getCenterX_Real('),
                    ('Province.getCenterY_Real', PRO, '.method public getCenterY_Real('),
                    ('Province.getCivID', PRO, '.method public getCivID('),
                    ('AFM.getEnemyProvincesInRange', AFM, '.method private getEnemyProvincesInRange('),
                    ('AFM.isAtWar', AFM, '.method private isAtWar('),
                    ('AFM.aiVisRadarPass', AFM, '.method private static aiVisRadarPass('),
                    ('AFM.aiVisAirportPass', AFM, '.method private static aiVisAirportPass(')):
    X = L(p)
    hits = []
    for i, ln in enumerate(X):
        if ln.startswith(pat) or (pat == '.field' and 'aiSv' in ln and ln.startswith('.field')):
            hits.append((i + 1, ln.strip()[:110]))
        if len(hits) >= 6:
            break
    print('  %-30s -> %s' % (tag, hits if hits else '未找到'))
print('')
# AIA-p 的 registers 与局部使用情况（为"概率门/视野过滤"腾寄存器）
X = L(AFM)
a = None
for i, ln in enumerate(X):
    if ln.startswith('.method') and 'executeAIAssignmentForAirport(' in ln:
        a = i
        break
print('====== E6. AIA-p 的 .registers 与 v 寄存器使用统计 ======')
print('  %s' % X[a + 1].strip())
b = a
while not X[b].startswith('.end method'):
    b += 1
import re, collections
cnt = collections.Counter()
for i in range(a, b):
    for m in re.finditer(r'\bv(\d+)\b', X[i]):
        cnt[int(m.group(1))] += 1
print('  v 使用计数: %s' % dict(sorted(cnt.items())))