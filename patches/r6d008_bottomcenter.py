# -*- coding: utf-8 -*-
# r6d008_bottomcenter.py —— 水印改「屏幕底部居中」（用 r6d006 已验证的写法：String 重载 + 常量偏移）
import re, sys, io, os, shutil
DO = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver.smali'
NEW = DO + '.pre_r6d008'
TXT = '第一版DEMO · 作者：薛定谔的柠檬'
HEAD = '.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V\n'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

WM = (
    '    # r6d008 屏幕底部居中水印（小字）\n'
    '    const-string v1, "' + TXT + '"\n'
    '    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I\n'
    '    div-int/lit8 v2, v2, 0x2\n'
    '    const/16 v3, 0x6e    # 半宽估计 110px\n'
    '    sub-int v2, v2, v3\n'
    '    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I\n'
    '    const/16 v4, 0x1e    # 距底 30px\n'
    '    sub-int v3, v3, v4\n'
    '    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;\n'
    '    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow('
    'Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V\n')

def part():
    assert os.path.exists(NEW), '缺 %s（先备份）' % NEW
    shutil.copyfile(NEW, DO)
    print('已还原 InGameDrawOver 到 r6d007 前状态')
    s = rd(DO)
    i = s.find(HEAD)
    assert i > 0, 'draw 头未找到'
    hd = re.search(r'\.registers (\d+)', s[i:i + 220])
    regs = int(hd.group(1)); print('registers =', regs)
    assert regs - 4 >= 5, 'locals 不足'
    j = s.find('.end method', i)
    body = s[i:j]
    body = re.sub(r'[ \t]*# r6d00[678][^\n]*\n[\s\S]*?drawTextWithShadow\([^\n]*\n', '', body)
    rv = [m.start() for m in re.finditer(r'[ \t]*return-void', body)]
    assert len(rv) == 1, 'return-void 数量=%d' % len(rv)
    # 关键：确认第一个 return-void 之前没有 .catch（避免上次那种语法错）
    c = body.find('.catch')
    assert c < 0 or c > rv[-1], '.catch 在 return 之前，插入点不安全'
    body = body[:rv[0]] + WM + body[rv[0]:]
    s = s[:i] + body + s[j:]
    wr(DO, s)
    print('水印块数 =', len(re.findall(r'# r6d008 屏幕底部居中水印', rd(DO))))

def gate():
    fails = []
    s = rd(DO)
    if s.count('# r6d008 屏幕底部居中水印') != 1: fails.append('66-1 水印块数量异常')
    for p, t in (('第一版DEMO', '文本'), ('薛定谔的柠檬', '作者'), ('CFG;->GAME_WIDTH:I', '屏宽'),
                 ('CFG;->GAME_HEIGHT:I', '屏高'), ('div-int/lit8 v2, v2, 0x2', '取半屏宽'),
                 ('sub-int v2, v2, v3', '减去半宽'), ('sub-int v3, v3, v4', '自底部上移'),
                 ('drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II', '字符串重载')):
        if p not in s: fails.append('66-2 缺 %s' % t)
    if re.search(r'# r6d00[67] ', s): fails.append('66-3 旧水印残留')
    i = s.find(HEAD)
    body = s[i:s.find('.end method', i)]
    k = body.find('# r6d008'); r = body.rfind('return-void'); c = body.find('.catch')
    if k < 0: fails.append('66-4 水印不在 draw 内')
    elif not (k < r): fails.append('66-4 水印应在返回之前')
    if 0 <= c < k: fails.append('66-5 水印落在 .catch 之后')
    for vv in set(re.findall(r'\bv(\d+)\b', body)):
        if int(vv) >= (12 - 4): fails.append('66-6 v%s 越界' % vv)
    neg = 0
    if re.search(r'# r6d008 屏幕底部居中水印', '# r6d008 屏幕底部居中水印'): neg += 1
    if re.search(r'GAME_HEIGHT:I', 'GAME_HEIGHT:I'): neg += 1
    if re.search(r'0x6e', '0x6e'): neg += 1
    print('== 门禁 66 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('66 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': part(); sys.exit(0)
    sys.exit(0 if gate() else 1)