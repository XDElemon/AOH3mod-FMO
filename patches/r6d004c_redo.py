# -*- coding: utf-8 -*-
# r6d004c_redo.py —— 彻底重来：还原 ProvinceDraw → 只在 drawProvinces 内插水印 → 通用寄存器越界扫描
import re, sys, io, os, shutil
PD = '/tmp/revx/aoc/kingdoms/lukasz/map/province/ProvinceDraw.smali'
PRE = PD + '.pre_r6d004'
HEAD = '.method public static final drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
ANCH = ('    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;->draw('
        'Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n')
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

WM = (
    '    # r6d004 DEMO 水印（小字，锁定屏幕左上角；画在地图之后）\n'
    '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;\n'
    '    if-eqz v0, :wm_skip\n'
    '    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;\n'
    '    if-eqz v1, :wm_skip\n'
    '    iget-object v3, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;\n'
    '    if-eqz v3, :wm_skip\n'
    '    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
    '    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
    '    move-result-object v1\n'
    '    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;\n'
    '    if-eqz v1, :wm_skip\n'
    '    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->x:F\n'
    '    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F\n'
    '    iget v6, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F\n'
    '    iget v7, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F\n'
    '    const/high16 v8, 0x3f000000    # 0.5f\n'
    '    mul-float/2addr v6, v8\n'
    '    mul-float/2addr v7, v8\n'
    '    sub-float/2addr v4, v6\n'
    '    add-float/2addr v5, v7\n'
    '    const/high16 v6, 0x41400000    # 12.0f\n'
    '    add-float/2addr v4, v6\n'
    '    sub-float/2addr v5, v6\n'
    '    const-string v6, "' + TXT + '"\n'
    '    invoke-virtual {v1, p0, v6, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;\n'
    '    :wm_skip\n'
)

def slots(desc):
    """返回 (参数槽数, 是否静态)"""
    m = re.search(r'\((.*?)\)', desc)
    if not m: return 0, False
    a, n = m.group(1), 0
    i = 0
    while i < len(a):
        c = a[i]
        if c == '[':
            i += 1
            continue
        if c == 'L':
            i = a.index(';', i) + 1
            n += 1
            continue
        n += 2 if c in 'JD' else 1
        i += 1
    return n, (' static ' in desc or desc.strip().split()[0].endswith('static'))

def check_regs(path, label=''):
    """通用：每个方法里 vK 必须 K < locals，pK 必须 K < params（含 this）"""
    lines = rd(path).split('\n')
    bad, i = [], 0
    while i < len(lines):
        l = lines[i]
        if l.startswith('.method'):
            desc = l
            regs = loc = None
            j = i + 1
            while j < len(lines):
                t = lines[j].strip()
                if t.startswith('.method') or t.startswith('.end method'): break
                m = re.match(r'\.registers (\d+)', t)
                if m: regs = int(m.group(1)); break
                m = re.match(r'\.locals (\d+)', t)
                if m: loc = int(m.group(1)); break
                j += 1
            if regs is not None or loc is not None:
                np_, st = slots(desc)
                pcount = np_ + (0 if st else 1)
                nlocals = loc if loc is not None else max(0, regs - pcount)
                body = []
                k = i
                while k < len(lines) and not lines[k].strip().startswith('.end method'):
                    body.append(lines[k]); k += 1
                for bi, bl in enumerate(body):
                    for vv in re.findall(r'\bv(\d+)\b', bl):
                        if int(vv) >= nlocals:
                            bad.append((label, lines[i].strip()[:70], 'v' + vv, nlocals, i + bi + 1))
                    for pp in re.findall(r'\bp(\d+)\b', bl):
                        if int(pp) >= pcount:
                            bad.append((label, lines[i].strip()[:70], 'p' + pp, pcount, i + bi + 1))
            i = j
        i += 1
    return bad

def patch():
    assert os.path.exists(PRE), '缺少 %s' % PRE
    shutil.copyfile(PRE, PD)
    print('已还原 ProvinceDraw（清除所有水印残留）')
    s = rd(PD)
    i = s.find(HEAD)
    assert i > 0, 'drawProvinces 头未找到'
    hd = re.search(r'\.registers (\d+)', s[i:i + 200])
    if int(hd.group(1)) < 12:
        s = s[:i] + HEAD + re.sub(r'[ \t]*\.registers \d+[^\n]*\n',
                                  '    .registers 12   # r6d004：水印需要 v0..v8\n',
                                  s[i + len(HEAD):], count=1)
        print('.registers 4 → 12（替换，不新增）')
    i = s.find(HEAD)
    j = s.find('.end method', i)
    body = s[i:j]
    k = body.find(ANCH)
    assert k > 0, '省份绘制锚点未找到'
    body = body[:k + len(ANCH)] + WM + body[k + len(ANCH):]
    s = s[:i] + body + s[j:]
    wr(PD, s)
    print('水印已插入 drawProvinces（省份绘制之后）')
    print('水印块数 =', len(re.findall(r'# r6d004 DEMO 水印', rd(PD))))

if __name__ == '__main__':
    if len(sys.argv) > 1 and sys.argv[1] == 'gate':
        bad = check_regs(PD, 'ProvinceDraw')
        print('== 门禁 63（寄存器越界扫描）==')
        if bad:
            print('  X %d 处越界：' % len(bad))
            for b in bad[:6]: print('   ', b)
            sys.exit(1)
        print('  OK 无越界')
        sys.exit(0)
    patch()