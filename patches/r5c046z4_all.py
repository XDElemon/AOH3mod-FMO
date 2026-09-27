# -*- coding: utf-8 -*-
# r5c046z4_all.py —— 诊断批：钉死「按键时面板侧是不是选了机场」
#   · BtnAirport.actionElement 记 `afp:row i=<行下标>`（证明“点行选机场”是否发生）
#   · pickAirport 入口（按键路径）记 `afp:Hi a=<iActiveID>` 与 `afp:Hm a=<a1MemIdx>`（按键那一刻的真实值）
#   本批**不改行为**，只加日志。
import re, sys, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
BAR = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport.smali'
def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)
LOG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'

def blast(src, sig):
    m = re.search(r'[ \t]*\.method[^\n]*' + sig + r'[^\n]*\n', src)
    if not m: return None, None
    e = src.find('.end method', m.end())
    return m.start(), (e + len('.end method')) if e > 0 else None

def pinch(path, sig, pattern, repl, tag, already=None):
    s = rd(path); a, b = blast(s, sig)
    if a is None:
        print('  [FAIL] %s：方法未找到' % tag); return False
    body = s[a:b]
    if already and re.search(already, body):
        print('  [SKIP] %s：已在' % tag); return True
    if not re.search(pattern, body):
        print('  [FAIL] %s：锚点缺失' % tag); return False
    wr(path, s[:a] + re.sub(pattern, repl, body, count=1) + s[b:])
    print('  [OK] %s' % tag); return True

def patch():
    ok = []
    print('== ① BtnAirport.actionElement 记 afp:row ==')
    ok.append(pinch(BAR, r'actionElement',
        r'(sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I\n)',
        r'\1    # r5c046z4 诊断：证明“点行选机场”是否发生\n'
        r'    const-string v1, "afp:row"\n'
        r'    invoke-static {v1, v0}, ' + LOG + r'->e5i(Ljava/lang/String;I)V\n',
        '① afp:row', already=r'afp:row'))
    print('== ② pickAirport 入口（按键路径）记 iActiveID / a1MemIdx ==')
    probe = ('    # r5c046z4 诊断：按键那一刻的面板侧取值\n'
             '    const/4 v0, 0x1\n'
             '    if-ne p0, v0, :z_hp1\n'
             '    goto :z_hp2\n'
             '    :z_hp1\n'
             '    sget v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I\n'
             '    const-string v1, "afp:Hi"\n'
             '    invoke-static {v1, v0}, ' + LOG + '->e5i(Ljava/lang/String;I)V\n'
             '    sget v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I\n'
             '    const-string v1, "afp:Hm"\n'
             '    invoke-static {v1, v0}, ' + LOG + '->e5i(Ljava/lang/String;I)V\n'
             '    :z_hp2\n'
             '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n')
    ok.append(pinch(BTN, r'pickAirport\(I\)',
        r'([ \t]*sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n)',
        probe, '② afp:Hi/Hm', already=r'afp:Hi'))
    print('  -> %s' % ('全部成功' if all(ok) else '有失败'))
    return all(ok)

def gate():
    fails = []
    b = rd(BAR); k = rd(BTN)
    if 'afp:row' not in b: fails.append('① afp:row 缺失')
    for tag in ('afp:Hi', 'afp:Hm', ':z_hp1', ':z_hp2'):
        if tag not in k: fails.append('② %s 缺失' % tag)
    m = re.search(r'\.method public static pickAirport\(I\)[^\n]*\n\s*\.registers (\d+)', k)
    if m and int(m.group(1)) < 9: fails.append('③ pickAirport .registers < 9')
    # 行为不变：不得新增 write 到 iActiveID/a1MemIdx/autoStrikeOff
    if len(re.findall(r'sput[^\n]*->(iActiveID|a1MemIdx):I', k)) > 3:
        fails.append('③ pickAirport 里对 iActiveID 的写入次数异常（疑似改行为）')
    if fails:
        print('  门禁 52 X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  门禁 52 OK（探针齐备、未改行为）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': sys.exit(0 if patch() else 1)
    elif mode == 'gate': sys.exit(0 if gate() else 1)