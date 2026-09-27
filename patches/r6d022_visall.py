# -*- coding: utf-8 -*-
# r6d022_visall.py —— 第三方/盟友的空军动画可见（放宽视觉门；拦截规则不变）
#   ① 放宽 detectEnemyMissions 的"必须与玩家交战"门 ⇒ 任何非玩家任务都参与雷达/机场覆盖判定
#   ② 给 dispatchAutoIntercept 单独加"与玩家交战"守卫 ⇒ 玩法不变（不去追盟友/第三方）
import re, sys, io
F = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
GATE = ('    invoke-static {v5, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n'
        '\n'
        '    move-result v6\n'
        '\n'
        '    if-eqz v6, :cond_1af\n')
GATE_NEW = ('    # r6d022：放宽——不再要求"与玩家交战"；任何非玩家任务都参与雷达/机场覆盖判定\n'
            '    invoke-static {v5, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n'
            '\n'
            '    move-result v6\n')
DISP = '    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dispatchAutoIntercept(Laoc/kingdoms/lukasz/map/battles/AirMission;)V\n'
DISP_NEW = ('    # r6d022：自动拦截的规则保持不变——只有"与玩家交战"的目标才触发\n'
            '    iget v6, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I\n'
            '\n'
            '    invoke-static {v6, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n'
            '\n'
            '    move-result v6\n'
            '\n'
            '    if-eqz v6, :r6d022_nochase\n'
            '\n'
            + DISP +
            '    :r6d022_nochase\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(F)
    if 'r6d022' in s:
        print('[SKIP] 已打'); return
    assert s.count(GATE) == 1, '视觉门锚点=%d' % s.count(GATE)
    assert s.count(DISP) == 1, '拦截调用锚点=%d' % s.count(DISP)
    s = s.replace(GATE, GATE_NEW, 1)
    s = s.replace(DISP, DISP_NEW, 1)
    wr(F, s)
    print('  [OK] 视觉门已放宽 + 拦截守卫已加')

def chk(src):
    fails = []
    if 'r6d022' not in src: fails.append('80-0 未打')
    # 80-1 不得再有"isAtWar → if-eqz v6, :cond_1af（丢弃任务）"
    if re.search(r'isAtWar\(II\)Z\n\s*\n\s*move-result v6\n\s*\n\s*if-eqz v6, :cond_1af', src):
        fails.append('80-1 视觉门仍在丢弃非交战任务')
    # 80-2 dispatchAutoIntercept 前必须有 isAtWar 守卫且标签紧贴其后
    if not re.search(r'isAtWar\(II\)Z\n\s*\n\s*move-result (\w+)\n\s*\n\s*if-eqz \1, :(\w+)\n\s*\n\s*[^\n]*dispatchAutoIntercept[\s\S]{0,200}?:\2\b', src):
        fails.append('80-2 dispatchAutoIntercept 缺交战守卫')
    # 80-3 视觉链完整
    if not re.search(r'sget-object v\d+, [^\n]*airDetSeen:Ljava/util/HashSet;\n\s*\n\s*invoke-interface \{v\d+, v\d+\}, Ljava/util/Set;->add\(Ljava/lang/Object;\)Z', src):
        fails.append('80-3 airDetSeen 写入链缺失')
    return fails

def gate():
    s = rd(F)
    fails = chk(s)
    neg = 0
    # 负样本①：恢复丢弃
    m1 = s.replace('    move-result v6\n\n', '    move-result v6\n\n    if-eqz v6, :cond_1af\n', 1)
    hit = s.find('r6d022：放宽')
    if hit >= 0:
        pos = s.find('    move-result v6\n', hit)
        if pos >= 0:
            m1 = s[:pos] + '    move-result v6\n\n    if-eqz v6, :cond_1af\n' + s[pos + len('    move-result v6\n'):]
    if m1 != s and chk(m1): neg += 1
    # 负样本②：删掉拦截守卫
    m2 = re.sub(r'    # r6d022：自动拦截的规则保持不变[^\n]*\n(?:[^\n]*\n)*?    if-eqz v6, :r6d022_nochase\n\n', '', s, count=1)
    m2 = m2.replace('    :r6d022_nochase\n', '', 1)
    if m2 != s and chk(m2): neg += 1
    # 负样本③：删掉 airDetSeen 写入
    m3 = s.replace('    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z\n', '', 1)
    if m3 != s and chk(m3): neg += 1
    print('== 门禁 80 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('80 负样本 %d/3' % neg)
    # 视觉链调用点仍在（ProvinceDrawArmy 侧）
    d = rd('/tmp/revx/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali')
    if d.count('myOrDetectedMission(') < 3: fails.append('80-4 FX 调用点的可见性闸被改动')
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)