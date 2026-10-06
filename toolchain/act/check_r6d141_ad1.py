#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d141 门禁：AD-1 v6 重写版（AirDefense）
- 结构断言 S1..S9
- 极性断言 P1..P20（按【方法作用域】检查"正写法在场 + 反写法不在场"）
- 负样本自检 N1..N5（对内存副本做突变，门禁必须能抓到）
用法：python3 check_r6d141_ad1.py [AirDefense 路径] [AirForceManager 路径]
"""
import sys
import re

AD = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AF = sys.argv[2] if len(sys.argv) > 2 else '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'


def load(p):
    with open(p, encoding='utf-8') as f:
        return f.read()


def methods(txt):
    """{方法名: 方法体（不含 .method/.end method 行）}；同名重载合并"""
    out = {}
    for m in re.finditer(r'\.method [^\n]*?([A-Za-z0-9_$]+)\([^\n]*\n(.*?)\.end method', txt, re.S):
        out.setdefault(m.group(1), []).append(m.group(2))
    return {k: '\n'.join(v) for k, v in out.items()}


# (标签, 方法名, 正确写法, 反向写法)
POL = [
    ('P1  airDefenseAt: AAAid<0 → 返回 0', 'airDefenseAt', 'if-ltz v2, :ret', 'if-gtz v2, :ret'),
    ('P2  airDefenseAt: pid>=size → 返回 0', 'airDefenseAt', 'if-ge p0, v4, :ret', 'if-le p0, v4, :ret'),
    ('P3  airDefenseAt: i>=size → 收尾', 'airDefenseAt', 'if-ge v6, v5, :ret', 'if-le v6, v5, :ret'),
    ('P4  airDefenseAt: bid!=AAA → 跳过', 'airDefenseAt', 'if-ne v8, v2, :next', 'if-eq v8, v2, :next'),
    ('P5  inRange: a<0 → 不在射程', 'inRange', 'if-ltz v2, :no', 'if-gtz v2, :no'),
    ('P6  inRange: a>=size → 不在射程', 'inRange', 'if-ge v2, v5, :no', 'if-gt v2, v5, :no'),
    ('P7  inRange: dist²>90000 → 不在射程', 'inRange', 'if-le v9, v13, :no', 'if-lt v9, v13, :no'),
    ('P8  inRange: 同省 → 命中', 'inRange', 'if-ne v2, v3, :yes', 'if-eq v2, v3, :yes'),
    ('P9  eligible: 同国 → 不可打', 'eligible', 'if-ne v1, p1, :no', 'if-eq v1, p1, :no'),
    ('P10 eligible: 无活机 → 不可打', 'eligible', 'if-lez v3, :no', 'if-ltz v3, :no'),
    ('P11 tick: pid<0 → 跳过', 'tick', 'if-ltz v5, :next', 'if-gtz v5, :next'),
    ('P12 tick: pid>=limit → 跳过', 'tick', 'if-ge v5, v2, :next', 'if-gt v5, v2, :next'),
    ('P13 fireProvince: nad<=0 → 返回 0', 'fireProvince', 'if-lez p2, :zero', 'if-ltz p2, :zero'),
    ('P14 fireProvince: 目标数<=0 → 返回 0', 'fireProvince', 'if-lez v1, :zero', 'if-ltz v1, :zero'),
    ('P22 tick: 本省阵地<=0 → 跳过', 'tick', 'if-lez v6, :next', 'if-ltz v6, :next'),
    ('P23 tick: 本省目标<=0 → 不计入 tg', 'tick', 'if-lez v7, :next', 'if-ltz v7, :next'),
    ('P24 missionCount: 无活飞机 → 不计', 'missionCount', 'if-lez v7, :next', 'if-ltz v7, :next'),
    ('P15 fireProvince: 命中判据 rand<chance', 'fireProvince', 'if-gez v9, :snext', 'if-lez v9, :snext'),
    ('P16 applyMdDamage: hp<=0 → 收尸', 'applyMdDamage', 'if-lez v9, :dead', 'if-ltz v9, :dead'),
    ('P17 applyMdDamage: rem<=0 → 收尾', 'applyMdDamage', 'if-lez v9, :end', 'if-ltz v9, :end'),
    ('P18 applyMdDamage: rem<h → take=rem', 'applyMdDamage', 'if-ltz v9, :smaller', 'if-gtz v9, :smaller'),
    ('P19 applyMdDamage: hp<=0 → 击杀', 'applyMdDamage', 'if-lez v9, :kill', 'if-ltz v9, :kill'),
    ('P20 pickTarget: idx 命中 → 返回', 'pickTarget', 'if-ne v1, p2, :found', 'if-eq v1, p2, :found'),
    ('P21 rng: 字段为空才初始化', 'rng', 'if-nez v0, :have', 'if-eqz v0, :have'),
]


def run_gate(ad_txt, af_txt, tag=''):
    fails = []
    MB = methods(ad_txt)

    def A(cond, msg):
        if not cond:
            fails.append(tag + msg)

    # ---------------- 结构 ----------------
    pub = ['adHitChance', 'adDamagePerHit', 'rng', 'airDefenseAt', 'inRange', 'eligible',
           'countTargets', 'pickTarget', 'applyMdDamage', 'fireProvince', 'tick', 'tickSafe']
    for m in pub:
        A('.method public static %s' % m in ad_txt, 'S1 缺方法 %s' % m)
        A(m in MB, 'S1b 方法体抽取失败：%s' % m)
    for m in ['logT', 'logX', 'logAD']:
        A('.method private static %s' % m in ad_txt, 'S1c 缺私有探针方法 %s' % m)

    A(af_txt.count('AirDefense;->tickSafe(I)V') == 1, 'S2 update(I)V 调用 tickSafe 恰好 1 次')
    A('AirDefense;->tick(I)V' not in af_txt, 'S2b 不该再有人直接调 tick(I)V')

    A('AirUnit;->isAlive:Z' not in ad_txt, 'S3 不得写 isAlive')
    A('AirUnit;->isShotDown:Z' not in ad_txt, 'S3b 不得写 isShotDown')
    A('AirUnit;->isInFlight:Z' not in ad_txt, 'S3c 不得写 isInFlight')

    A(ad_txt.count('AirMission;->recordLoss(') >= 2, 'S4 击落必须走 recordLoss（已死残留 + 击杀两处）')
    A(ad_txt.count('AirMission;->recalcPool()V') == 1, 'S4b recalcPool 恰好 1 次')

    A('AirDbgLog;->dWrite(' in ad_txt, 'S5 探针必须走 dWrite（免闸免节流）')
    A(all(s not in ad_txt for s in ['AirDbgLog;->e5i(', 'AirDbgLog;->e5s(', 'AirDbgLog;->dKey(']),
      'S5b 不得再用 dKey 通道探针')

    A(ad_txt.count('Game;->lProvinces:Ljava/util/List;') >= 3, 'S6 lProvinces 上界守卫 >=3 处')
    A('AirDefense;->pickAlive(' not in ad_txt, 'S7 旧方法 pickAlive 必须删除')
    A('AirDefense;->fireAtMission(' not in ad_txt, 'S7b 旧方法 fireAtMission 必须删除')
    A('rnd:Ljava/util/Random;' in ad_txt, 'S8 随机源为静态字段（不每发 new Random）')

    # 伤害池模型的"防死循环"双保险：recordLoss 后比较 size
    amb = MB.get('applyMdDamage', '')
    A(amb.count('AirMission;->recordLoss(') == 2, 'S9 applyMdDamage 内 recordLoss 恰好 2 次（已死残留 + 击杀）')
    A(amb.count('List;->size()I') >= 4, 'S9b applyMdDamage 内多次取 size（循环上界 + 防死循环比较）')

    # r6d142：汇总诊断探针
    A('.method public static fireProvince(III)I' in ad_txt, 'S11 fireProvince 签名应为 (III)I（nad 由 tick 传入）')
    A('.method public static missionCount()I' in ad_txt, 'S12 缺 missionCount')
    A('.method private static logADA(IIIII)V' in ad_txt, 'S13 缺 logADA')
    A('AirDefense;->logADA(IIIII)V' in ad_txt, 'S13b tick 必须调用 logADA')
    A('AirDefense;->fireProvince(III)I' in ad_txt, 'S14 tick 必须以 (civ,pid,nad) 调 fireProvince')
    A('"nADA c="' in ad_txt, 'S15 汇总行前缀 nADA')

    # ---------------- 极性（方法作用域内、正/负成对） ----------------
    for name, meth, good, bad in POL:
        body = MB.get(meth, '')
        A(body != '', '%s —— 方法体为空：%s' % (name, meth))
        A(good in body, '%s —— 正写法缺失: %s' % (name, good))
        A(bad not in body, '%s —— 出现反向写法: %s' % (name, bad))

    # ---------------- 兜底 ----------------
    A('.catch Ljava/lang/Throwable;' in MB.get('tickSafe', ''), 'S10 tickSafe 必须 catch Throwable')
    A('.catch Ljava/lang/Exception;' not in MB.get('tickSafe', ''), 'S10b tickSafe 不该只 catch Exception')
    return fails


ad = load(AD)
af = load(AF)
fails = run_gate(ad, af)
if fails:
    print('❌ 门禁失败：')
    for f in fails:
        print('   - ' + f)
    sys.exit(1)
print('✅ 门禁通过：结构 S1–S10 + 极性 P1–P21（按方法作用域、正/负成对）')

# ---------------- 负样本自检（突变必须被抓到） ----------------
MUT = [
    ('N1 击杀判据写反', 'if-lez v9, :kill', 'if-ltz v9, :kill'),
    ('N2 删掉 recordLoss 记账', 'AirMission;->recordLoss(', 'AirMission;->__gone__('),
    ('N3 探针改回 dKey 通道', 'AirDbgLog;->dWrite(', 'AirDbgLog;->dKey('),
    ('N4 去掉 lProvinces 上界守卫', 'if-ge p0, v4, :ret', 'if-ge p0, v4, :nowhere'),
    ('N5 命中判据写反', 'if-gez v9, :snext', 'if-lez v9, :snext'),
    ('N6 射程判据写反', 'if-le v9, v13, :no', 'if-lt v9, v13, :no'),
]
bad_mut = []
for name, old, new in MUT:
    if old not in ad:
        bad_mut.append('%s：突变锚点不存在（门禁锚点过期）' % name)
        continue
    if not run_gate(ad.replace(old, new), af, tag='[%s] ' % name):
        bad_mut.append('%s：突变后门禁仍通过（抓不到 = 门禁无效）' % name)

if bad_mut:
    print('❌ 负样本自检失败：')
    for b in bad_mut:
        print('   - ' + b)
    sys.exit(1)
print('✅ 负样本自检通过：%d 个突变全部被抓到' % len(MUT))