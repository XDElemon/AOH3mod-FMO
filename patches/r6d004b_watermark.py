# -*- coding: utf-8 -*-
# r6d004b_watermark.py —— 修正：把水印从 drawBiggestCitiesLines_Just 迁到 drawProvinces 内
import re, sys, io, os
PD = '/tmp/revx/aoc/kingdoms/lukasz/map/province/ProvinceDraw.smali'
BC = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/BuildConfig.smali'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
HEAD = '.method public static final drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V\n'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

WM = (
    '    # r6d004 DEMO 水印（小字，锁定屏幕左上角）\n'
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
    '    invoke-virtual {v1, p0, v6, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/Layout_Placeholder;\n'
    '    :wm_skip\n'
).replace('Lcom/badlogic/gdx/graphics/g2d/Layout_Placeholder;', 'Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;')

def patch():
    s = rd(PD)
    # 1) 摘掉任何已存在的错位块
    n = len(re.findall(r'# r6d004 DEMO 水印', s))
    if n:
        s = re.sub(r'[ \t]*# r6d004 DEMO 水印[^\n]*\n[\s\S]*?[ \t]*:wm_skip\n', '', s)
        print('  [OK] 已摘除错位块 ×%d' % n)
    # 2) 确认 drawProvinces 的 registers
    i = s.find(HEAD)
    assert i > 0, 'drawProvinces 头未找到'
    hd = re.search(r'\.registers (\d+)', s[i:i + 200])
    assert hd, 'registers 未找到'
    if int(hd.group(1)) < 12:
        s = s[:i] + HEAD + '    .registers 12   # r6d004：水印需要 v0..v9\n' + s[i + len(HEAD):]
        print('  [OK] .registers → 12')
    else:
        print('  [OK] .registers 已足够：%s' % hd.group(1))
    # 3) 限定在方法体内插入
    i = s.find(HEAD)
    j = s.find('.end method', i)
    body = s[i:j]
    t = re.search(r'[ \t]*:cond_56[ \t]*\n\s*[ \t]*sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE', body)
    assert t, '方法体内末尾 setColor 锚点'
    body = body[:t.start()] + WM + body[t.start():]
    s = s[:i] + body + s[j:]
    wr(PD, s)
    print('  [OK] 水印已插入 drawProvinces 末尾 setColor 之前')
    # 4) demo 版号
    b = rd(BC)
    if 'DEMO' in b:
        print('  [SKIP] 版本号已改')
    else:
        o = '.field public static final VERSION_NAME:Ljava/lang/String; = "1.035"'
        assert b.count(o) == 1, 'VERSION_NAME 锚点'
        wr(BC, b.replace(o, '.field public static final VERSION_NAME:Ljava/lang/String; = "1.035-DEMO.1"', 1))
        print('  [OK] VERSION_NAME → 1.035-DEMO.1')

def scan_mr(path):
    bad, prev = [], None
    for i, l in enumerate(rd(path).split('\n')):
        t = l.strip()
        if not t or t.startswith('#') or t.startswith('.') or t.endswith(':'): continue
        op = t.split(' ')[0].split('/')[0]
        if op.startswith('move-result') and not (prev and prev.startswith('invoke')): bad.append(i + 1)
        prev = op
    return bad

def gate():
    fails = []
    s = rd(PD)
    ns = len(re.findall(r'# r6d004 DEMO 水印', s))
    if ns != 1: fails.append('62-1 水印块数量=%d（应为1）' % ns)
    i = s.find(HEAD)
    if i < 0: fails.append('62-1 drawProvinces 头未找到')
    else:
        hd = re.search(r'\.registers (\d+)', s[i:i + 200])
        if not hd or int(hd.group(1)) != 12: fails.append('62-1 .registers 不是 12')
        j = s.find('.end method', i)
        body = s[i:j]
        for probe, tag in (('Renderer;->camera', 'camera'), ('Renderer;->fontMain', 'fontMain'),
                           ('CFG;->FONT_REGULAR_SMALL:I', '小字字体'), ('第一版DEMO', '水印文本'),
                           ('薛定谔的柠檬', '作者名'),
                           ('BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)', '绘制调用'),
                           (':wm_skip', '空指针守卫')):
            if probe not in body: fails.append('62-2 drawProvinces 内缺 %s' % tag)
        k = body.find('# r6d004 DEMO 水印'); k2 = body.rfind('Color;->WHITE')
        if not (0 <= k < k2): fails.append('62-3 水印不在方法末尾 setColor 之前')
        if body.count(':wm_skip') != 1: fails.append('62-3 :wm_skip 数量异常')
    if 'DEMO' not in rd(BC): fails.append('62-4 版本号未标 DEMO')
    bad = scan_mr(PD)
    if bad: fails.append('62-5 move-result 未紧跟 invoke：%s' % bad[:2])
    neg = 0
    for frag, tag in (('sget v0, LFoo;->x:I\n\nmove-result v0\n', 'A'),
                      ('return-void\n\nmove-result v0\n', 'B'),
                      ('invoke-static {}, LFoo;->z()V\n\nnop\n\nmove-result v0\n', 'C')):
        p = '/tmp/_mrneg3_%s.smali' % tag
        io.open(p, 'w', encoding='utf-8').write('.method m()V\n    .registers 2\n' + frag + '    return-void\n.end method\n')
        if scan_mr(p): neg += 1
        os.remove(p)
    print('== 门禁 62 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('62 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)