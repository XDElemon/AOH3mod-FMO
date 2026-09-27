# -*- coding: utf-8 -*-
# r6d006_screenwm.py —— 水印改挂「屏幕层」InGameDrawOver.draw(SpriteBatch, I, I)
#   ① 还原 ProvinceDraw（撤掉地图空间的旧水印）
#   ② 在 InGameDrawOver.draw 末尾插：Renderer.drawTextWithShadow(oSB, "第一版DEMO · 作者：薛定谔的柠檬", 8, 20, Color.WHITE)
#   ③ 门禁 64（含寄存器越界扫描）
import re, sys, io, os, shutil
PD = '/tmp/revx/aoc/kingdoms/lukasz/map/province/ProvinceDraw.smali'
PD_PRE = PD + '.pre_r6d004'
DO = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver.smali'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
HEAD = '.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V\n'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

WM = (
    '    # r6d006 屏幕水印（小字，固定屏幕左上角；y 向下）\n'
    '    const-string v1, "' + TXT + '"\n'
    '    const/16 v2, 0x8      # x = 8\n'
    '    const/16 v3, 0x14     # y = 20\n'
    '    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\n'
    '    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow('
    'Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V\n'
)

def patch():
    # ① 撤掉地图层水印
    if os.path.exists(PD_PRE):
        cur = rd(PD)
        if 'r6d004 DEMO 水印' in cur:
            shutil.copyfile(PD_PRE, PD)
            print('  [OK] 已还原 ProvinceDraw（撤掉地图空间水印）')
        else:
            print('  [SKIP] ProvinceDraw 已无水印')
    else:
        print('  [WARN] 缺 %s' % PD_PRE)
    # ② 屏幕层插入
    s = rd(DO)
    n = len(re.findall(r'# r6d006 屏幕水印', s))
    if n:
        s = re.sub(r'[ \t]*# r6d006 屏幕水印[^\n]*\n[\s\S]*?Renderer;->drawTextWithShadow\([^\n]*\n', '', s)
        print('  [OK] 摘除旧屏幕水印 ×%d' % n)
    i = s.find(HEAD)
    assert i > 0, 'InGameDrawOver.draw 头未找到'
    hd = re.search(r'\.registers (\d+)', s[i:i + 200])
    assert hd, 'registers 未找到'
    regs = int(hd.group(1))
    print('  draw 的 .registers =', regs)
    assert regs - 4 >= 5, 'locals 不足（需 ≥5，实际 %d）' % (regs - 4)
    j = s.find('.end method', i)
    body = s[i:j]
    rv = [m.start() for m in re.finditer(r'[ \t]*return-void', body)]
    assert len(rv) == 1, 'draw 里的 return-void 数量 =%d（预期 1）' % len(rv)
    body = body[:rv[0]] + WM + body[rv[0]:]
    s = s[:i] + body + s[j:]
    wr(DO, s)
    print('  [OK] 屏幕水印已插入 draw 末尾返回之前')
    print('  水印块数 =', len(re.findall(r'# r6d006 屏幕水印', rd(DO))))

def slots(desc):
    m = re.search(r'\((.*?)\)', desc)
    if not m: return 0, False
    a, n, i = m.group(1), 0, 0
    while i < len(a):
        c = a[i]
        if c == '[':
            i += 1; continue
        if c == 'L':
            i = a.index(';', i) + 1; n += 1; continue
        n += 2 if c in 'JD' else 1
        i += 1
    return n, (' static ' in desc)

def check_regs(path, label=''):
    lines = rd(path).split('\n'); bad = []; i = 0
    while i < len(lines):
        if lines[i].startswith('.method'):
            desc = lines[i]; regs = loc = None; j = i + 1
            while j < len(lines):
                t = lines[j].strip()
                if t.startswith('.method') or t.startswith('.end method'): break
                m = re.match(r'\.registers (\d+)', t)
                if m: regs = int(m.group(1)); break
                m = re.match(r'\.locals (\d+)', t)
                if m: loc = int(m.group(1)); break
                j += 1
            if regs is not None or loc is not None:
                np_, st = slots(desc); pc = np_ + (0 if st else 1)
                nl = loc if loc is not None else max(0, regs - pc)
                k = i; body = []
                while k < len(lines) and not lines[k].strip().startswith('.end method'):
                    body.append(lines[k]); k += 1
                for bi, bl in enumerate(body):
                    for vv in re.findall(r'\bv(\d+)\b', bl):
                        if int(vv) >= nl: bad.append((label, lines[i].strip()[:60], 'v' + vv, nl, i + bi + 1))
                    for pp in re.findall(r'\bp(\d+)\b', bl):
                        if int(pp) >= pc: bad.append((label, lines[i].strip()[:60], 'p' + pp, pc, i + bi + 1))
            i = j
        i += 1
    return bad

def gate():
    fails = []
    do = rd(DO); pd = rd(PD)
    if '# r6d006 屏幕水印' not in do: fails.append('64-1 屏幕水印缺失')
    if do.count('# r6d006 屏幕水印') != 1: fails.append('64-1 水印块数量异常')
    if '第一版DEMO' not in do or '薛定谔的柠檬' not in do: fails.append('64-2 文本/作者名缺失')
    if 'drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V' not in do:
        fails.append('64-3 绘制调用签名不对（应走屏幕空间重载）')
    if 'r6d004 DEMO 水印' in pd: fails.append('64-4 地图层旧水印仍在')
    i = do.find(HEAD)
    if i < 0: fails.append('64-5 draw 头未找到')
    else:
        body = do[i:do.find('.end method', i)]
        k = body.find('# r6d006 屏幕水印'); r = body.rfind('return-void')
        if not (0 <= k < r): fails.append('64-6 水印不在方法末尾返回之前')
    bad = check_regs(DO, 'InGameDrawOver') + check_regs(PD, 'ProvinceDraw')
    if bad: fails.append('64-7 寄存器越界：%s' % bad[:2])
    neg = 0
    if re.search(r'drawTextWithShadow\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;II', 'drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;II'): neg += 1
    if re.search(r'# r6d006 屏幕水印', '# r6d006 屏幕水印'): neg += 1
    if re.search(r'第一版DEMO', '第一版DEMO'): neg += 1
    print('== 门禁 64 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('64 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)