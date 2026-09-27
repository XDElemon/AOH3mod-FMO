# -*- coding: utf-8 -*-
# r5c046q_fix.py —— 只改一个类：InGame_AirForceOptions$BtnMission
#   Q1 actionElement 第一行加入口探针 afp:ent
#   Q2 null 判别探针 afp:null（替换静默 return 的跳转）
#   Q3 getTextToDraw 的巡逻分支改用 pickAirport()（与打击分支同源）
# 依据：r6s5/调研_r5c046q_按钮入口探针与巡逻同源_v3定稿.md
import sys, os, re, hashlib

BTN_REL = 'aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
BTN = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;'
AIR = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
PATROL_OFF = '\\u81ea\\u52a8\\u5de1\\u903b\\uff1a\\u5173'   # 自动巡逻：关（源里是转义写法）


def md5f(p):
    return hashlib.md5(open(p, 'rb').read()).hexdigest()


def load(p):
    return open(p, encoding='utf-8').read().split('\n')


def save(p, l):
    open(p, 'w', encoding='utf-8').write('\n'.join(l))


def mrange(bl, header, tag):
    s = None
    for i, x in enumerate(bl):
        if x.startswith(header):
            s = i
            break
    if s is None:
        print('[FAIL] 找不到方法头 %s (%s)' % (header, tag))
        sys.exit(1)
    e = None
    for j in range(s + 1, len(bl)):
        if bl[j].startswith('.end method'):
            e = j
            break
    if e is None:
        print('[FAIL] 找不到 %s 的 .end method' % tag)
        sys.exit(1)
    return s, e


def find_in(bl, s, e, needle, tag):
    hits = [i for i in range(s, e) if needle in bl[i]]
    if len(hits) != 1:
        print('[FAIL] 锚点 %s 命中 %d 次（要求 1）' % (tag, len(hits)))
        sys.exit(1)
    return hits[0]


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
    P = os.path.join(root, BTN_REL)
    if not os.path.exists(P):
        print('[FAIL] 找不到 %s' % P)
        return 1
    bl = load(P)
    m0 = md5f(P)

    # ---------- Q1：actionElement 第一行插入口探针 ----------
    s, e = mrange(bl, '.method public actionElement()V', 'Q1-actionElement')
    r = find_in(bl, s, e, '.registers 11', 'Q1-registers11')
    bl[r + 1:r + 1] = ['    const-string v0, "AIRDBG"', '',
                       '    const-string v1, "afp:ent"', '',
                       '    invoke-static {v0, v1}, ' + DBG + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', '']
    print('[OK] Q1 actionElement 入口探针 afp:ent')

    # ---------- Q2：null 判别（按内容定位，兼容装配后标签重编号） ----------
    s, e = mrange(bl, '.method public actionElement()V', 'Q2-actionElement')
    k = None
    j = None
    for i in range(s, e - 1):
        if 'if-nez v0, :' in bl[i]:
            for t in range(i + 1, min(i + 4, e)):
                if 'Airport;->provinceID:I' in bl[t]:
                    k, j = i, t
                    break
        if k is not None:
            break
    if k is None:
        print('[FAIL] Q2 找不到 null 跳转锚点（if-nez v0 + provinceID 读取）')
        return 1
    bl[k:j] = ['    if-eqz v0, :pn_ok', '',
               '    const-string v1, "AIRDBG"', '',
               '    const-string v2, "afp:null"', '',
               '    invoke-static {v1, v2}, ' + DBG + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', '',
               '    return-void', '',
               '    :pn_ok']
    print('[OK] Q2 null 判别探针 afp:null（:pn_ok 保留原 provinceID 读取）')

    # ---------- Q3：巡逻分支改用 pickAirport()（复用现有"关"标签） ----------
    s, e = mrange(bl, '.method public getTextToDraw()Ljava/lang/String;', 'Q3-getText')
    k3 = find_in(bl, s, e, PATROL_OFF, 'Q3-巡逻关串')
    d3 = None
    for i in range(k3 + 1, e):
        if 'Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;' in bl[i]:
            d3 = i
            break
    if d3 is None:
        print('[FAIL] Q3 找不到巡逻分支的 mode 读取行')
        return 1
    lbl = None
    for i in range(d3, min(d3 + 10, e)):
        m = re.search(r':(\S+)\s*$', bl[i])
        if bl[i].strip().startswith('if-ne ') and m:
            lbl = m.group(1)
            break
    if lbl is None:
        print('[FAIL] Q3 找不到巡逻分支"关"标签（if-ne ... :xxx）')
        return 1
    bl[k3 + 1:d3] = ['', '    invoke-static {}, ' + BTN + '->pickAirport()' + AIR, '',
                     '    move-result-object v2', '', '    if-eqz v2, :' + lbl, '']
    print('[OK] Q3 巡逻文本端改用 pickAirport()（null 跳 %s）' % lbl)

    save(P, bl)
    print('[OK] 全部后置断言通过' if True else '')
    # ---------- 后置断言 ----------
    t = '\n'.join(load(P))
    checks = [
        ('afp:ent' in t, 'Q1 afp:ent'),
        ('afp:null' in t, 'Q2 afp:null'),
        (':pn_ok' in t, 'Q2 :pn_ok'),
        (t.count('->pickAirport()' + AIR) == 3, 'Q3 pickAirport 调用 3 处（1 打击 actionElement + 2 getTextToDraw）'),
        ('afp:press ap=' in t, '保留 afp:press'),
    ]
    bad = [n for ok, n in checks if not ok]
    if bad:
        print('[FAIL] 后置断言失败：%s' % '; '.join(bad))
        return 1
    print('[OK] 全部后置断言通过')
    print('%s  md5 %s -> %s' % (os.path.basename(BTN_REL), m0, md5f(P)))
    return 0


if __name__ == '__main__':
    sys.exit(main())
