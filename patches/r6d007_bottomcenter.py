# -*- coding: utf-8 -*-
# r6d007_bottomcenter.py —— 水印改「屏幕底部居中」
#   用游戏自身范式：x = GAME_WIDTH/2 - textWidth/2 ；y = GAME_HEIGHT - 24
#   文字宽度用 Renderer.glyphLayout（GlyphLayout_Game）量，字体与绘制用同一个（FONT_REGULAR_SMALL）
import re, sys, io, os
DO = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver.smali'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
HEAD = '.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V\n'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def part():
    s = rd(DO)
    # 找 setText 的真实签名
    m = re.search(r'Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText\((.*?)\)V', s)
    settext_sig = m.group(1) if m else 'Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;'
    wm = (
        '    # r6d007 屏幕底部居中水印（小字）\n'
        '    const-string v1, "' + TXT + '"\n'
        '    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;\n'
        '    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
        '    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
        '    move-result-object v2\n'
        '    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;\n'
        '    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;\n'
        '    invoke-virtual {v3, v2, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(' + settext_sig + ')V\n'
        '    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F\n'
        '    float-to-int v4, v4\n'
        '    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I\n'
        '    div-int/lit8 v5, v5, 0x2\n'
        '    div-int/lit8 v4, v4, 0x2\n'
        '    sub-int v5, v5, v4\n'
        '    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n'
        '    const/16 v7, 0x18      # 距底 24\n'
        '    sub-int v6, v6, v7\n'
        '    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\n'
        '    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
        '    invoke-static {p1, v3, v1, v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow('
        'Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V\n'
    )
    i = s.find(HEAD)
    assert i > 0, 'draw 头未找到'
    hd = re.search(r'\.registers (\d+)', s[i:i + 200])
    regs = int(hd.group(1))
    assert regs - 4 >= 8, 'locals 不足（需要 v0..v7，实际 locals=%d）' % (regs - 4)
    j = s.find('.end method', i)
    body = s[i:j]
    # 移除旧水印（r6d006 或 r6d007）
    body = re.sub(r'[ \t]*# r6d00[67][^\n]*\n[\s\S]*?drawTextWithShadow\([^\n]*\n', '', body)
    rv = [m.start() for m in re.finditer(r'[ \t]*return-void', body)]
    assert len(rv) == 1, 'return-void 数量=%d' % len(rv)
    body = body[:rv[0]] + wm + body[rv[0]:]
    s = s[:i] + body + s[j:]
    wr(DO, s)
    print('水印块数 =', len(re.findall(r'# r6d007 屏幕底部居中水印', rd(DO))))
    print('setText 签名 =', settext_sig)

def gate():
    fails = []
    s = rd(DO)
    if s.count('# r6d007 屏幕底部居中水印') != 1: fails.append('65-1 水印块数量异常')
    for p, t in (('第一版DEMO', '文本'), ('薛定谔的柠檬', '作者'), ('CFG;->GAME_WIDTH:I', '屏宽'),
                 ('CFG;->GAME_HEIGHT:I', '屏高'), ('GlyphLayout_Game;->setText', '量宽'),
                 ('div-int/lit8 v5, v5, 0x2', '水平居中'), ('sub-int v5, v5, v4', '减去半宽'),
                 ('FONT_REGULAR_SMALL:I', '小字字体')):
        if p not in s: fails.append('65-2 缺 %s' % t)
    if 'r6d006 屏幕水印' in s: fails.append('65-3 旧水印残留')
    i = s.find(HEAD)
    body = s[i:s.find('.end method', i)]
    k = body.find('# r6d007'); r = body.rfind('return-void')
    if not (0 <= k < r): fails.append('65-4 位置不对（应在返回之前）')
    # 寄存器越界快检（本方法）
    bad = []
    for vv in re.findall(r'\bv(\d+)\b', body):
        if int(vv) >= 8: bad.append(vv)
    if bad: fails.append('65-5 v 越界：%s' % sorted(set(bad)))
    neg = 0
    if re.search(r'# r6d007 屏幕底部居中水印', 'x'): neg += 1
    if re.search(r'GAME_WIDTH:I', 'GAME_WIDTH:I'): neg += 1
    if re.search(r'0x18', '0x18'): neg += 1
    print('== 门禁 65 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('65 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': part(); sys.exit(0)
    sys.exit(0 if gate() else 1)