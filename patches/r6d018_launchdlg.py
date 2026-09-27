# -*- coding: utf-8 -*-
# r6d018_launchdlg.py —— 给我们的 DEMO 包加「启动说明弹窗」（原生 AlertDialog）
#   参照 MD.jakowski.lukasz 的同款实现；只插入、不替换既有指令（除 .registers 数值）
import re, sys, io

F = '/tmp/revx/aoc/kingdoms/lukasz/jakowski/AndroidLauncher.smali'
SIG = 'Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V'
ANCHOR = '    invoke-super {p0, p1}, ' + SIG + '\n'
TITLE = 'AI 空军 DEMO ｜ 作者：薛定谔的柠檬'
MSG = ('第一版 DEMO（BuildConfig 1.035-DEMO.1）\\n\\n'
       '· 新增：AI 也会建造空军 —— 战斗机 / 截击机 / 攻击机 / 轰炸机 混编出厂\\n'
       '· 玩家侧：机场「自动打击」「自动巡逻」可用，可指定目标省\\n'
       '· 参数可在 files/strike_config.json 调整（概率 / 上限 / 机型权重）\\n'
       '· 本版为测试版，数值可能不平衡，欢迎反馈\\n\\n'
       '交流群：1095433326\\n作者：薛定谔的柠檬')

BLOCK = (
    '    # r6d018 DEMO 启动说明弹窗（原生 AlertDialog；点外部即关）\n'
    '    new-instance v0, Landroid/app/AlertDialog$Builder;\n'
    '\n'
    '    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V\n'
    '\n'
    '    const-string v1, "' + TITLE + '"\n'
    '\n'
    '    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;\n'
    '\n'
    '    move-result-object v0\n'
    '\n'
    '    const-string v1, "' + MSG + '"\n'
    '\n'
    '    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;\n'
    '\n'
    '    move-result-object v0\n'
    '\n'
    '    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;\n'
    '\n'
    '    move-result-object v0\n'
    '\n'
    '    const/4 v1, 0x1\n'
    '\n'
    '    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V\n'
    '\n'
    '    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V\n'
    '\n'
)

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(F)
    if 'r6d018' in s:
        print('[SKIP] 已打'); return
    assert s.count('    .registers 3\n') == 1, '提栈锚点=%d' % s.count('    .registers 3\n')
    assert s.count(ANCHOR) == 1, '插入锚点=%d' % s.count(ANCHOR)
    s = s.replace('    .registers 3\n', '    .registers 6\n', 1)
    s = s.replace(ANCHOR, ANCHOR + '\n' + BLOCK, 1)
    wr(F, s)
    print('  [OK] .registers 3 → 6；弹窗块已插到 invoke-super 之后')

def method_body(s):
    i = s.find('.method protected onCreate(')
    j = s.find('.end method', i)
    return s[i:j], i, j

def check(src):
    fails = []
    if 'r6d018' not in src: fails.append('76-0 补丁未打')
    body, i, j = method_body(src)
    if '    .registers 6\n' not in body: fails.append('76-1 .registers 未提到 6')
    # 76-2 插入位置：紧跟 invoke-super
    if not re.search(r'invoke-super \{p0, p1\}, [^\n]*AndroidApplication;->onCreate\(Landroid/os/Bundle;\)V\n\s*\n\s*# r6d018', body):
        fails.append('76-2 弹窗块未紧跟 invoke-super')
    # 76-3 六个调用
    for need in ['AlertDialog$Builder;-><init>(Landroid/content/Context;)V',
                 'AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)',
                 'AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)',
                 'AlertDialog$Builder;->create()Landroid/app/AlertDialog;',
                 'AlertDialog;->setCancelable(Z)V',
                 'AlertDialog;->show()V']:
        if need not in body: fails.append('76-3 缺调用 ' + need.split(';->')[-1])
    # 76-4 move-result-object 紧邻 invoke（插入块内相邻两条 invoke-virtual）
    for inv in ['AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;',
                'AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;']:
        pat = re.compile(re.escape(inv) + r'\n\s*\n?\s*move-result-object v0\n')
        if not pat.search(body): fails.append('76-4 move-result-object 未紧跟 ' + inv.split(';->')[-1])
    # 76-5 文案
    for k in ['1095433326', '薛定谔的柠檬', 'AI 也会建造空军', '1.035-DEMO.1']:
        if k not in body: fails.append('76-5 文案缺 ' + k)
    # 76-6 寄存器越界（locals = 6 - 2 = 4 ⇒ v0..v3）
    regs6 = int(re.search(r'\.registers (\d+)', body).group(1))
    locals_n = regs6 - 2
    used = set(int(m.group(1)) for m in re.finditer(r'\bv(\d+)\b', body))
    bad = sorted(x for x in used if x >= locals_n)
    if bad: fails.append('76-6 寄存器越界 v%s (locals=%d)' % (bad, locals_n))
    # 76-7 结构位置
    if body.find('# r6d018') < body.find('.registers'):
        fails.append('76-7 插入点落在 .method 与 .registers 之间')
    if body.count('return-void') < 1: fails.append('76-7 方法体缺 return-void')
    return fails

def gate():
    src = rd(F)
    fails = check(src)
    # 负样本 3
    neg = 0
    m1 = src.replace('    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V\n', '', 1)
    if check(m1): neg += 1
    m2 = src.replace('1095433326', '0000000000', 1)
    if check(m2): neg += 1
    m3 = src.replace('    const/4 v1, 0x1\n', '    const/4 v5, 0x1\n', 1)
    if check(m3): neg += 1
    print('== 门禁 76 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('76 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)