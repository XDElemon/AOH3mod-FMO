# -*- coding: utf-8 -*-
# r6d004_watermark.py —— 常驻水印（第一版DEMO · 作者：薛定谔的柠檬）+ demo 专属版本号
#   ① ProvinceDraw.drawProvinces(SpriteBatch)：每帧在屏幕左上角小字画水印
#      - .registers 4 → 12（该方法是叶子绘制方法，寄存器空间足够，不触碰别的类）
#      - 位置：camera.position ± viewport半宽高，换算成"屏幕左上角 + 内边距"，随镜头锁定屏幕
#   ② BuildConfig.VERSION_NAME：1.035 → 1.035-DEMO.1
#   ③ 门禁 62
import re, sys, io, os
PD = '/tmp/revx/aoc/kingdoms/lukasz/map/province/ProvinceDraw.smali'
BC = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/BuildConfig.smali'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(PD)
    if 'r6d004' in s:
        print('  [SKIP] ProvinceDraw 已改')
    else:
        m = re.search(r'(\.method public static final drawProvinces\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;\)V\n    \.registers )4\n', s)
        assert m, 'drawProvinces 头锚点'
        s = s[:m.start()] + m.group(1) + '12   # r6d004：为水印腾出寄存器空间（v0..v9）\n' + s[m.end():]
        print('  [OK] drawProvinces .registers 4 → 12')
        # 插入水印：在方法末尾的 setColor(WHITE) 之前
        tail = re.search(r'([ \t]*:cond_56\s*\n)?[ \t]*sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\s*\n(?=\s*invoke-virtual \{p0, v0\}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor)', s)
        assert tail, '末尾 setColor 锚点'
        wm = (
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
            '    const-string v6, "TXT_PLACEHOLDER"\n'
            '    invoke-virtual {v1, p0, v6, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;\n'
            '    :wm_skip\n'
        ).replace('TXT_PLACEHOLDER', TXT)
        s = s[:tail.start()] + wm + s[tail.start():]
        print('  [OK] 水印已插入（末尾 setColor 之前）')
        wr(PD, s)
    # ② demo 版号
    b = rd(BC)
    if 'DEMO' in b:
        print('  [SKIP] 版本号已改')
    else:
        o = '.field public static final VERSION_NAME:Ljava/lang/String; = "1.035"'
        assert b.count(o) == 1, 'VERSION_NAME 锚点'
        b = b.replace(o, '.field public static final VERSION_NAME:Ljava/lang/String; = "1.035-DEMO.1"', 1)
        wr(BC, b)
        print('  [OK] VERSION_NAME → 1.035-DEMO.1')

def scan_moveresult(path):
    bad = []
    lines = rd(path).split('\n')
    prev = None
    for i, l in enumerate(lines):
        t = l.strip()
        if not t or t.startswith('#') or t.startswith('.') or t.endswith(':'):
            continue
        op = t.split(' ')[0].split('/')[0]
        if op.startswith('move-result') and not (prev and prev.startswith('invoke')):
            bad.append(i + 1)
        prev = op
    return bad

def gate():
    fails = []
    s = rd(PD); b = rd(BC)
    m = re.search(r'\.method public static final drawProvinces\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;\)V\n    \.registers (\d+)', s)
    if not m or int(m.group(1)) != 12: fails.append('62-1 drawProvinces .registers 不是 12')
    body = s[m.start():s.find('.end method', m.start())]
    for probe, tag in (('Renderer;->camera', 'camera'), ('Renderer;->fontMain', 'fontMain'),
                       ('CFG;->FONT_REGULAR_SMALL:I', '小字字体'),
                       ('第一版DEMO', '水印文本'), ('薛定谔的柠檬', '作者名'),
                       ('BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)', '绘制调用'),
                       (':wm_skip', '空指针守卫')):
        if probe not in body: fails.append('62-2 缺 %s' % tag)
    i_wm = body.find('# r6d004 DEMO 水印')
    i_setc = body.rfind('Color;->WHITE')
    if not (0 <= i_wm < i_setc): fails.append('62-3 水印位置不在末尾 setColor 之前')
    if 'VERSION_NAME' not in b or 'DEMO' not in b: fails.append('62-4 版本号未标 DEMO')
    bad = scan_moveresult(PD)
    if bad: fails.append('62-5 ProvinceDraw 有 move-result 未紧跟 invoke：%s' % bad[:2])
    neg = 0
    for frag, tag in (('sget v0, LFoo;->x:I\n\nmove-result v0\n', 'A'),
                      ('return-void\n\nmove-result v0\n', 'B'),
                      ('invoke-static {}, LFoo;->z()V\n\nnop\n\nmove-result v0\n', 'C')):
        p = '/tmp/_mrneg2_%s.smali' % tag
        io.open(p, 'w', encoding='utf-8').write('.method m()V\n    .registers 2\n' + frag + '    return-void\n.end method\n')
        if scan_moveresult(p): neg += 1
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