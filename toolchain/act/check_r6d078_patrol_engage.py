#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""门禁 123 · r6d078 巡逻机视敌升格（patrolEngage）
用法: python3 check_r6d078_patrol_engage.py <smali树根>
断言 6 条 + 负样本 3 条（变异测试：把树改坏后必须能被检出）
"""
import io, sys, os

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
P = os.path.join(ROOT, 'aoc/kingdoms/lukasz/map/battles/AirMission.smali')


def body_of(src, header):
    i = src.find(header)
    if i < 0:
        return ''
    j = src.find('.end method', i)
    return src[i:j]


def checks(src):
    """返回 (通过列表, 失败列表)"""
    ok, bad = [], []
    M = body_of(src, '.method private patrolEngage()V')

    # 1 helper 存在且寄存器足量
    if src.count('.method private patrolEngage()V') == 1 and '.registers 13' in M:
        ok.append('A1 patrolEngage 定义存在且 .registers 13')
    else:
        bad.append('A1 缺失/寄存器不符')

    # 2 update() 内挂点唯一
    U = body_of(src, '.method public update()V')
    if U.count('->patrolEngage()V') == 1:
        ok.append('A2 update() 内挂点唯一')
    else:
        bad.append('A2 挂点数异常')

    # 3 类型门：PATROL 判定 + 极性为 if-ne（非 PATROL 直接返回）
    if 'MissionType;->PATROL:' in M and 'if-ne v0, v1, :pe_ret' in M:
        ok.append('A3 PATROL 类型门 + 极性正确')
    else:
        bad.append('A3 类型门缺失或极性写反')

    # 4 三条判据齐备：交战 / 视野 / 追猎去重
    need = ['DiplomacyManager;->isAtWar(II)Z',
            'AirForceManager;->aiRadarVision(Laoc/kingdoms/lukasz/map/battles/AirMission;I)Z',
            'AirForceManager;->hasActiveChaser(JI)Z']
    miss = [n for n in need if n not in M]
    if not miss:
        ok.append('A4 交战/视野/去重三判据齐备')
    else:
        bad.append('A4 判据缺失: %s' % miss)

    # 5 升格三写齐备
    tri = ['->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;',
           '->targetMissionID:J', '->targetProvinceID:I']
    if all(M.count('iput') >= 1 and t in M for t in tri) \
       and 'iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:' in M \
       and 'iput-wide v6, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetMissionID:J' in M \
       and 'iput v8, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I' in M:
        ok.append('A5 升格三写齐备(type/targetMissionID/targetProvinceID)')
    else:
        bad.append('A5 升格写入不完整')

    # 6 白名单已摘除（airCombatTick 内不得再有类型过滤）
    C = body_of(src, '.method private airCombatTick()V')
    if ('STRATEGIC_BOMBING' not in C) and ('ATTACK_ARMY' not in C):
        ok.append('A6 空战候选白名单已摘除')
    else:
        bad.append('A6 白名单仍在（战斗机互殴不可达）')

    return ok, bad


def mut_in_method(src, header, old, new):
    """只在指定方法体内做替换（负样本专用，避免误改别处）"""
    i = src.find(header)
    j = src.find('.end method', i)
    return src[:i] + src[i:j].replace(old, new, 1) + src[j:]


def main():
    src = io.open(P, encoding='utf-8').read()
    ok, bad = checks(src)
    print('=== 断言 ===')
    for x in ok:
        print('  PASS', x)
    for x in bad:
        print('  FAIL', x)

    PM = '.method private patrolEngage()V'
    # ---- 负样本 3 条：变异后必须被检出 ----
    negs = [
        ('N1 类型门极性反转(if-ne→if-eq)',
         lambda s: mut_in_method(s, PM, 'if-ne v0, v1, :pe_ret', 'if-eq v0, v1, :pe_ret')),
        ('N2 删掉交战判据(isAtWar)',
         lambda s: mut_in_method(s, PM, 'DiplomacyManager;->isAtWar(II)Z',
                                 'DiplomacyManager;->isAtWarYY(II)Z')),
        ('N3 白名单加回(STRATEGIC_BOMBING 重新出现于 airCombatTick)',
         lambda s: s.replace('.method private airCombatTick()V',
                             '.method private airCombatTick()V\n    sget-object v5, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->STRATEGIC_BOMBING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;', 1)),
    ]
    print('=== 负样本（必须被检出）===')
    caught = 0
    for name, mut in negs:
        _, b2 = checks(mut(src))
        hit = len(b2) > 0
        caught += 1 if hit else 0
        print('  %s %s' % ('CAUGHT' if hit else 'MISSED', name))

    print()
    print('断言通过 %d/6 ；负样本命中 %d/3' % (len(ok), caught))
    rc = 0 if (len(ok) == 6 and caught == 3) else 1
    print('门禁 123 %s' % ('PASS' if rc == 0 else 'FAIL'))
    return rc


if __name__ == '__main__':
    sys.exit(main())