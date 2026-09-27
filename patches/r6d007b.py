# -*- coding: utf-8 -*-
# r6d007b.py —— 水印「屏幕底部居中」，插在 draw 方法体开头（避开 .catch 区）
import re, sys, io, os, shutil
DO = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver.smali'
PRE = DO + '.pre_r6d007'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
HEAD = '.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V\n'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def build_wm(s):
    m = re.search(r'Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText\((.*?)\)V', s)
    sig = m.group(1) if m else 'Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;'
    return (
        '    # r6d007 屏幕底部居中水印（小字）\n'
        '    const-string v1, "' + TXT + '"\n'
        '    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;\n'
        '    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
        '    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
        '    move-result-object v2\n'
        '    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;\n'
        '    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;\n'
        '    invoke-virtual {v3, v2, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(' + sig + ')V\n'
        '    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F\n'
        '    float-to-int v4, v4\n'
        '    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I\n'
        '    div-int/lit8 v5, v5, 0x2\n'
        '    div-int/lit8 v4, v4, 0x2\n'
        '    sub-int v5, v5, v4\n'
        '    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n'
        '    const/16 v7, 0x18      # 距底 24px\n'
        '    sub-int v6, v6, v7\n'
        '    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\n'
        '    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I\n'
        '    invoke-static {p1, v3, v1, v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow('
        'Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V\n')

def part():
    assert os.path.exists(PRE), '缺 %s' % PRE
    shutil.copyfile(PRE, DO)
    print('已还原 InGameDrawOver（清掉上次插错位置的块）')
    s = rd(DO)
    i = s.find(HEAD)
    assert i > 0, 'draw 头未找到'
    hd = re.search(r'\.registers (\d+)', s[i:i + 220])
    regs = int(hd.group(1))
    assert regs - 4 >= 8, 'locals 不足（需 v0..v7，实际 %d）' % (regs - 4)
    j = s.find('.end method', i)
    body = s[i:j]
    body = re.sub(r'[ \t]*# r6d00[67][^\n]*\n[\s\S]*?drawTextWithShadow\([^\n]*\n', '', body)  # 去旧水印
    # 找方法体第一条真指令
    lines = body.split('\n')
    ins = 0
    for k, l in enumerate(lines):
        t = l.strip()
        if k == 0: continue
        if not t or t.startswith('.') or t.startswith('#') or t.endswith(':'):
            ins = k + 1
            continue
        ins = k
        break
    lines = lines[:ins] + build_wm(s).split('\n') + lines[ins:]
    body = '\n'.join(lines)
    s = s[:i] + body + s[j:]
    wr(DO, s)
    print('水印块数 =', len(re.findall(r'# r6d007 屏幕底部居中水印', rd(DO))))

def gate():
    fails = []
    s = rd(DO)
    if s.count('# r6d007 屏幕底部居中水印') != 1: fails.append('65-1 水印块数量异常')
    for p, t in (('第一版DEMO', '文本'), ('薛定谔的柠檬', '作者'), ('CFG;->GAME_WIDTH:I', '屏宽'),
                 ('CFG;->GAME_HEIGHT:I', '屏高'), ('GlyphLayout_Game;->setText', '量宽'),
                 ('div-int/lit8 v5, v5, 0x2', '水平居中'), ('sub-int v5, v5, v4', '减半宽'),
                 ('FONT_REGULAR_SMALL:I', '小字字体'), ('drawTextWithShadow', '绘制调用')):
        if p not in s: fails.append('65-2 缺 %s' % t)
    if 'r6d006 屏幕水印' in s: fails.append('65-3 旧水印残留')
    i = s.find(HEAD)
    body = s[i:s.find('.end method', i)]
    k = body.find('# r6d007')
    if k < 0: fails.append('65-4 水印不在 draw 内')
    else:
        # 必须在第一条 .catch 之前
        c = body.find('.catch')
        if 0 <= c < k: fails.append('65-4 水印落在 .catch 之后（会导致汇编失败）')
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= 8: fails.append('65-5 v%s 越界' % vv)
    n = len(re.findall(r'[ \t]*return-void', body))
    if n == 0: fails.append('65-6 找不到 return-void')
    neg = 0
    if re.search(r'# r6d007 屏幕底部居中水印', '# r6d007 屏幕底部居中水印'): neg += 1
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