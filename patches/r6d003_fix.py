# -*- coding: utf-8 -*-
# r6d003_fix.py（v2）—— 修 r6d001/r6d002 的两处 VerifyError + 门禁 61
#   ① tryStrikeForAirportP：补回 move-result v4（锚定在 dgProb 注释前）
#   ② pickStrikeTargetP ：dgPin 块移到 move-result v9 整行之后
#   ③ 门禁 61：全量扫「move-result 必须紧跟 invoke」（通用，永久）
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch_afm():
    s = rd(AFM)
    # ① 补回 move-result v4
    m = re.search(r'(invoke-virtual \{p2\}, Ljava/util/Random;->nextFloat\(\)F\n)'
                  r'([\s\S]{0,300}?)([ \t]*#[^\n]*出击概率来自配置)', s)
    if not m:
        print('  [SKIP] ① 锚点未命中（可能已修）')
    elif 'move-result v4' in m.group(2):
        print('  [SKIP] ① 已有 move-result v4')
    else:
        s = s[:m.end(1)] + '    move-result v4   # r6d003：补回（r6d001 误删 → VerifyError）\n' + s[m.end(1):]
        print('  [OK] ① 补回 move-result v4')
    # ② pin 块移到 move-result v9 整行之后
    mb = re.search(r'[ \t]*# r6d001 DEMO：钉住的省[^\n]*\n'
                   r'(?:\s*sget v10, [^\n]*->dgPin:I\n)'
                   r'(?:\s*if-ne v7, v10, :dg_nopin\n)'
                   r'(?:\s*const v9, 0xbf800000[^\n]*\n)'
                   r'(?:\s*invoke-static \{v9\}, Ljava/lang/Float;->intBitsToFloat\(I\)F\n)'
                   r'(?:\s*move-result v9\n)'
                   r'(?:\s*:dg_nopin\n)', s)
    if not mb:
        print('  [SKIP] ② 锚点未命中（可能已修）')
    else:
        block = mb.group(0)
        s = s[:mb.start()] + s[mb.end():]
        m2 = re.search(r'(move-result v9\n)(\s*)(cmpg-float v8, v9, v3)', s)
        assert m2, '② move-result v9 + cmpg 锚点'
        s = s[:m2.start()] + m2.group(1) + block + m2.group(2) + m2.group(3) + s[m2.end():]
        print('  [OK] ② pin 块移到 move-result v9 之后')
    wr(AFM, s)

def scan_moveresult(path):
    bad = []
    lines = io.open(path, encoding='utf-8').read().split('\n')
    prev = None
    for i, l in enumerate(lines):
        t = l.strip()
        if not t or t.startswith('#') or t.startswith('.') or t.endswith(':'):
            continue
        op = t.split(' ')[0].split('/')[0]
        if op.startswith('move-result'):
            if not (prev and prev.startswith('invoke')):
                bad.append((i + 1, t, prev))
        prev = op
    return bad

NEG = (('sget v0, LFoo;->x:I\n\nmove-result v0\n', 'A'),
       ('return-void\n\nmove-result v0\n', 'B'),
       ('invoke-static {}, LFoo;->z()V\n\nnop\n\nmove-result v0\n', 'C'))

def gate():
    fails = []
    s = rd(AFM)
    if not re.search(r'invoke-virtual \{p2\}, Ljava/util/Random;->nextFloat\(\)F\n\s*move-result v4[^\n]*\n', s):
        fails.append('61-1 nextFloat 后缺 move-result v4')
    if 'dgProb:I\n    int-to-float v5, v5' not in s: fails.append('61-1 概率门未用 dgProb')
    i_pin = s.find('# r6d001 DEMO：钉住的省')
    i_mr9 = s.find('move-result v9\n', s.find('strikeScore(Laoc'))
    i_cmp = s.find('cmpg-float v8, v9, v3')
    if i_pin < 0: fails.append('61-2 pin 块丢失')
    elif not (i_mr9 < i_pin < i_cmp): fails.append('61-2 pin 块次序错')
    for f in (AFM, BTN):
        bad = scan_moveresult(f)
        if bad: fails.append('61-3 %s 有 %d 处 move-result 未紧跟 invoke：%s' % (os.path.basename(f), len(bad), bad[:2]))
    neg = 0
    for frag, tag in NEG:
        p = '/tmp/_mrneg_%s.smali' % tag
        io.open(p, 'w', encoding='utf-8').write('.method m()V\n    .registers 2\n' + frag + '    return-void\n.end method\n')
        if scan_moveresult(p): neg += 1
        os.remove(p)
    print('== 门禁 61 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('61 负样本 %d/3（扫描器失效）' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch_afm(); sys.exit(0)
    sys.exit(0 if gate() else 1)