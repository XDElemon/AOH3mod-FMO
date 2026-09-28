# -*- coding: utf-8 -*-
# r6d038_airguard.py v2 —— 栏杆：飞机（airhq_）不得通过"陆军招募/重组"获得
#   插入方式：定位方法头 → 在"其后首次出现的指定指令"之前插入（对空行不敏感）
import re, sys, io
S1 = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitSameType$1.smali'
S2 = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$3.smali'
C1 = 'Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitSameType$1;'
C2 = 'Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;'
ADC = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
STR = 'Ljava/lang/String;'
M1 = '.method public actionElement()V'
M2 = '.method public actionElement()V'
I1 = '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n'
I2 = '    sget-object v0, ' + C2 + '->armyLeft:' + ADC + '\n'

def guard_read(src, tag):
    return ('    # r6d038 栏杆：airhq_ 师不得通过陆军途径获得/复制\n'
            + src +
            '    if-eqz v0, :' + tag + '\n'
            '\n'
            '    const-string v1, "airhq_"\n'
            '\n'
            '    invoke-virtual {v0, v1}, ' + STR + '->startsWith(' + STR + ')Z\n'
            '\n'
            '    move-result v0\n'
            '\n'
            '    if-nez v0, :' + tag + '\n'
            '\n'
            '    return-void\n'
            '\n'
            '    :' + tag + '\n')

G1 = guard_read('    iget-object v0, p0, ' + C1 + '->key:' + STR + '\n\n', 'rk_ok')
G2 = (guard_read('    sget-object v0, ' + C2 + '->armyLeft:' + ADC + '\n\n    iget-object v0, v0, ' + ADC + '->key:' + STR + '\n\n', 'rg_1')
      + '\n'
      + guard_read('    sget-object v0, ' + C2 + '->armyRight:' + ADC + '\n\n    iget-object v0, v0, ' + ADC + '->key:' + STR + '\n\n', 'rg_ok'))

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def insert_before(text, method, instr, block):
    i = text.find(method)
    assert i >= 0, '找不到方法头 ' + method
    j = text.find(instr, i)
    assert j > 0, '方法内找不到锚指令'
    return text[:j] + block + '\n' + text[j:]

def patch():
    s = rd(S1)
    if 'r6d038' not in s:
        s2 = insert_before(s, M1, I1, G1)
        wr(S1, s2); print('  [OK] 站点1 招募同型：+airhq_ 栏杆')
    t = rd(S2)
    if 'r6d038' not in t:
        t2 = insert_before(t, M2, I2, G2)
        wr(S2, t2); print('  [OK] 站点2 陆军重组：+airhq_ 栏杆(left/right)')

def guarded(key):
    return key is not None and key.startswith('airhq_')

def chk():
    f = []
    s = rd(S1)
    if 'r6d038' not in s: f.append('98-1 站点1 缺栏杆')
    m = s[s.find(M1):]; m = m[:m.find('.end method')]
    if '->key:Ljava/lang/String;' not in m: f.append('98-1 站点1 未读 key')
    if '"airhq_"' not in m or 'startsWith' not in m: f.append('98-1 站点1 未做 airhq_ 判定')
    if not re.search(r'if-nez v0, :rk_ok[\s\S]{0,60}?return-void', m): f.append('98-1 站点1 极性/出口错')
    if 'sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player' not in m: f.append('98-3 站点1 原首指令丢失')
    if m.count(':rk_ok') != 3: f.append('98-1 站点1 标签数异常')
    t = rd(S2)
    if 'r6d038' not in t: f.append('98-2 站点2 缺栏杆')
    n = t[t.find(M2):]; n = n[:n.find('.end method')]
    if n.count('"airhq_"') != 2: f.append('98-2 站点2 应检查 left/right 两次')
    if n.count('return-void') < 2: f.append('98-2 站点2 缺 return-void')
    if ':rg_1' not in n or ':rg_ok' not in n: f.append('98-2 站点2 标签缺失')
    if not re.search(r'if-nez v0, :rg_1[\s\S]{0,60}?return-void', n): f.append('98-2 left 分支极性错')
    if t.count('sget-object v0, ' + C2 + '->armyLeft') < 2: f.append('98-3 站点2 原首指令丢失')
    for k, exp in ((None, False), ('airhq_1', True), ('airhq_x', True), ('a1', False), ('Airhq_1', False)):
        if guarded(k) != exp: f.append('98A 栏杆模拟器错：%r' % (k,))
    return f

def gate():
    fails = chk(); neg = 0
    o1, o2 = rd(S1), rd(S2)
    wr(S1, o1.replace('    if-nez v0, :rk_ok\n', '    if-eqz v0, :rk_ok\n', 1))
    if chk(): neg += 1
    wr(S1, o1)
    wr(S2, o2.replace('    sget-object v0, ' + C2 + '->armyRight:' + ADC + '\n\n    iget-object v0, v0, ' + ADC + '->key:' + STR + '\n', '', 1))
    if chk(): neg += 1
    wr(S2, o2)
    wr(S1, o1.replace('    const-string v1, "airhq_"\n', '    const-string v1, "xairhq"\n', 1))
    if chk(): neg += 1
    wr(S1, o1)
    print('== 门禁 98 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('98 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过（含栏杆模拟器）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)