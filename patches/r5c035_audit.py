# -*- coding: utf-8 -*-
# r5c035_audit.py —— 施工前全面审计（只读）：字段/API 存在性、签名、寄存器活性、锚点唯一
import io, re, subprocess

T = '/tmp/w3a/smali'
B = T + '/aoc/kingdoms/lukasz/map/battles'
AP = B + '/Airport.smali'
AF = B + '/AirForceManager.smali'
CV = T + '/aoc/kingdoms/lukasz/map/civilization/Civilization.smali'
GAME = T + '/aoc/kingdoms/lukasz/jakowski/Game.smali'


def rd(p):
    return io.open(p, encoding='utf-8').read()


def fields(src, cls):
    return sorted(set(re.findall(r'^\.field[^\n]*->([A-Za-z0-9_]+):([^\s]+)', src, re.M)))


print('=' * 74)
print('[1] Airport 字段（全部）')
print('=' * 74)
ap = rd(AP)
for f in sorted(re.findall(r'^\.field[^\n]*?->([A-Za-z0-9_]+):([^\s]+)', ap, re.M)):
    print('   %-24s %s' % f)

print('=' * 74)
print('[2] p1bStat 用到的 6 个 Airport 字段是否都在')
print('=' * 74)
need = ['civID', 'buildingType', 'buildQueue', 'totalAircraft', 'aircraft']
for n in need:
    hit = re.search(r'^\.field[^\n]*?->%s:([^\s]+)' % n, ap, re.M)
    print('   %-16s %s' % (n, ('OK  ' + hit.group(1)) if hit else '**MISSING**'))

print('=' * 74)
print('[3] Civilization.fGold 字段 / addGold 签名')
print('=' * 74)
cv = rd(CV)
for n in ['fGold', 'iGold', 'gold']:
    hit = re.search(r'^\.field[^\n]*?->%s:([^\s]+)' % n, cv, re.M)
    print('   %-10s %s' % (n, hit.group(1) if hit else '-'))
print('   addGold 方法:', re.findall(r'^\.method[^\n]*addGold[^\n]*', cv, re.M)[:3])

print('=' * 74)
print('[4] Game.getCiv 签名（静态? 参数? 返回?）')
print('=' * 74)
gm = rd(GAME)
print('   ', re.findall(r'^\.method[^\n]*getCiv[^\n]*', gm, re.M)[:5])

print('=' * 74)
print('[5] Airport 构造器里 aircraft 表预建了哪些 AirType（防 NPE）')
print('=' * 74)
s = ap.index('.method public constructor <init>')
e = ap.index('\n.end method', s)
print(re.sub(r'\n{2,}', '\n', ap[s:e])[:2600])

print('=' * 74)
print('[6] AirUnit$AirType 枚举常量名')
print('=' * 74)
AU = B + '/AirUnit$AirType.smali'
try:
    au = rd(AU)
    print('   ', re.findall(r'^\.field public static final enum ([A-Z_]+)', au, re.M))
except Exception as ex:
    print('   ERR', ex)

print('=' * 74)
print('[7] updateAIBuildUp 全文（看插入点上下文 + v8 后续是否被用）')
print('=' * 74)
s, e = (lambda h: (AF.index(h), AF.index('\n.end method', AF.index(h))))('.method private updateAIBuildUp(')
body = AF[s:e]
for i, l in enumerate(body.split('\n')):
    print('%3d| %s' % (i, l))
print('--- v8 出现次数:', body.count('v8') / 0 if False else body.count('v8'))
print('--- 插入点之后 v8 的使用行:')
lines = body.split('\n')
idx = [i for i, l in enumerate(lines) if 'r5c035 probe' in l]
if idx:
    k = idx[0]
    for i in range(k, len(lines)):
        if re.search(r'\bv8\b', lines[i]):
            print('   %3d| %s' % (i, lines[i]))

print('=' * 74)
print('[8] p1bStat 的 .registers 是否够用（静态: p0=Airport, p1=String）')
print('=' * 74)
s2 = ap.index('.method public static p1bStat(')
e2 = ap.index('\n.end method', s2)
mb = ap[s2:e2]
regs = re.search(r'\.registers (\d+)', mb)
mx = max(int(x) for x in re.findall(r'\bv(\d+)\b', mb)) if re.findall(r'\bv(\d+)\b', mb) else -1
print('   .registers =', regs.group(1) if regs else '?', '| 最大局部编号 v%d' % mx, '| 参数占 2')
print('   结论:', 'OK' if regs and int(regs.group(1)) >= mx + 3 else '**不足**')

print('=' * 74)
print('[9] 幂等标记与备份')
print('=' * 74)
print('   Airport 含 "r5c035 probe":', 'r5c035 probe' in ap)
print('   AFM 含 "r5c035 probe":', 'r5c035 probe' in AF)
print('   备份存在:', subprocess.run(['bash', '-lc', 'ls -l %s.pre_r5c035 %s.pre_r5c035 2>&1 | wc -l' % (AP, AF)],
                                  capture_output=True, text=True).stdout.strip())