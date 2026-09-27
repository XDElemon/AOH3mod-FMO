# -*- coding: utf-8 -*-
# r5c041_fix.py —— P1c-5：照原版 a1bDispatch 的规矩给 AI 出兵"传 divKey"（有师才出兵）
#   轰炸：key = pickIdleDivKey(ap, BOMBER)  ⇒ key==null ⇒ k=5 跳过；否则 createStrategicBombing(ap, target, key)
#   巡逻：key = pickIdleDivKey(ap, FIGHTER) ⇒ key==null ⇒ k=6 跳过；否则 createPatrol(ap, prov, key)
#   同时：删掉 tagAirhqKey（两处调用 + 定义）—— 工厂内部会自己写 airhqKey
import io, os, re, sys, shutil, time

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS = time.strftime('%Y-%m-%d %H:%M')
BOMB_INV = u'    invoke-static {p1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing('
PATROL_INV = u'    invoke-static {p1, v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol('
PICK_SIG = u'(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;'


def rd(p):
    return io.open(p, encoding='utf-8').read()


def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)


def repl_key_before_invoke(s, inv, reg, type_ord, blk_label, tag):
    """把 invoke 之前的 'const/4 <reg>, 0x0'（即 divKey=null）换成 pickIdleDivKey 取键 + 空则跳过"""
    i = s.find(inv)
    if i < 0 or s.count(inv) != 1:
        print('[FATAL] %s: invoke 锚点 %d 次' % (tag, s.count(inv)))
        sys.exit(1)
    head = s[:i]
    # 找紧邻的 const/4 reg, 0x0（中间只允许空行）
    m = re.search(r'\n    const/4 %s, 0x0\n\n\Z' % reg, head)
    if not m:
        print('[FATAL] %s: 找不到紧邻的 const/4 %s, 0x0' % (tag, reg))
        sys.exit(1)
    TYPEN = {1: 'BOMBER', 2: 'FIGHTER'}[type_ord]
    new = (u'\n    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->%s:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n\n' % TYPEN
           + u'    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey' + PICK_SIG + u'\n\n'
           + u'    move-result-object %s\n\n' % reg
           + u'    if-eqz %s, :%s\n' % (reg, blk_label))
    out = head[:m.start()] + new + s[i:]
    wr(AFM, out)
    print('[OK] %s（%s = pickIdleDivKey(ap, ordinal=%d)，空则跳 :%s）' % (tag, reg, type_ord, blk_label))
    return out


def main():
    print('=== r5c041_fix.py (P1c-5) %s ===' % TS)
    b = AFM + '.pre_r5c041'
    if not os.path.exists(b):
        shutil.copy2(AFM, b)
        print('[BK] %s' % b.split('/')[-1])
    s = rd(AFM)
    if 'pickIdleDivKey' in s and 'r5c041' in s:
        print('[FATAL] 已打过 r5c041')
        sys.exit(1)

    # 1) 两个派发点：传 divKey
    s = repl_key_before_invoke(s, BOMB_INV, 'v4', 1, 'p0_blk5', '轰炸分支 divKey')
    s = repl_key_before_invoke(s, PATROL_INV, 'v4', 2, 'p0_blk6', '巡逻分支 divKey')

    # 2) 追加两个"无师可用"的出口块（放在 :p0_blk4 之后、方法结尾之前）
    anchor = u'    :p0_blk4\n\n    const/4 v0, 0x4\n\n    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V\n\n    return-void\n'
    if s.count(anchor) != 1:
        print('[FATAL] :p0_blk4 锚点 %d 次' % s.count(anchor))
        sys.exit(1)
    new_blocks = anchor + (u'\n    :p0_blk5\n\n    const/4 v0, 0x5\n\n'
                           u'    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V\n\n    return-void\n'
                           u'\n    :p0_blk6\n\n    const/4 v0, 0x6\n\n'
                           u'    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V\n\n    return-void\n')
    s = s.replace(anchor, new_blocks, 1)
    print('[OK] 新增出口块 :p0_blk5(k=5 无轰炸师) / :p0_blk6(k=6 无巡逻师)')

    # 3) 删除 tagAirhqKey 的两处调用
    for call in (u'\n    const/4 v3, 0x1\n\n    invoke-static {v4, p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tagAirhqKey(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/Airport;I)V\n',
                 u'\n    const/4 v1, 0x2\n\n    invoke-static {v3, p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tagAirhqKey(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/Airport;I)V\n'):
        if s.count(call) != 1:
            print('[FATAL] tagAirhqKey 调用锚点 %d 次' % s.count(call))
            sys.exit(1)
        s = s.replace(call, u'\n', 1)
    print('[OK] 删除 tagAirhqKey 两处调用')

    # 4) 删除 tagAirhqKey 定义（EOF 追加的那段）
    m = re.search(r'\n\.method public static tagAirhqKey\([\s\S]*?^\.end method\n', s, re.M)
    if not m:
        print('[FATAL] 找不到 tagAirhqKey 定义')
        sys.exit(1)
    s = s[:m.start()] + '\n' + s[m.end():]
    print('[OK] 删除 tagAirhqKey 定义')

    wr(AFM, s)
    t = rd(AFM)
    assert 'tagAirhqKey' not in t
    body = re.search(r'^\.method private executeAIAssignmentForAirport\([\s\S]*?^\.end method', t, re.M).group(0)
    assert body.count('AirForceManager;->pickIdleDivKey(') == 2, body.count('AirForceManager;->pickIdleDivKey(')
    assert body.count(':p0_blk5') == 2 and body.count(':p0_blk6') == 2
    print('=== 自检通过 ===')
    print('DONE', TS)


if __name__ == '__main__':
    main()