# -*- coding: utf-8 -*-
# 工具修正（非游戏代码）：
#  1) check_branch.py：方向告警只对「引用型 iget」生效（iget-boolean 不是判空 ⇒消除假阳性）
#  2) reach.py：把 .catch 处理器标签当作 CFG 入口（消除"异常处理器被判为死代码"的假阳性）
import io, os, shutil
A = '/sdcard/GLG/历史23/toolchain/act/check_branch.py'
R = '/sdcard/GLG/历史23/reach.py'

def load(p):
    b = p + '.pre_r5c020b'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    return io.open(p, encoding='utf-8').read()

def rep1(t, old, new, tag):
    c = t.count(old)
    assert c == 1, '%s 锚点不唯一 (%d)' % (tag, c)
    print('  OK', tag)
    return t.replace(old, new)

# ---- 1) check_branch.py
t = load(A)
t = rep1(t, "            prev_load_ref = bool(re.match(r'^iget(-\\w+)?\\s', st))",
         "            # R5c020b: 仅引用型 iget 才算「判空」；iget-boolean 是布尔位，不适用该告警\n"
         "            prev_load_ref = bool(re.match(r'^iget-object\\s', st))",
         'check_branch 判空告警范围')
io.open(A, 'w', encoding='utf-8').write(t)

# ---- 2) reach.py：采集 .catch 标签 + 作为入口
t = load(R)
t = rep1(t, u'    ins = []          # (line_idx, text)\n    labels = {}       # label -> first ins index at/after label\n',
         u'    ins = []          # (line_idx, text)\n    labels = {}       # label -> first ins index at/after label\n'
         u'    catch_labs = set()  # R5c020b: 异常处理器标签（也是 CFG 入口）\n',
         'reach 新增 catch_labs')
t = rep1(t, u"        if not t or t.startswith('#') or t.startswith('.param') or t.startswith('.line') \\\n"
            u"           or t.startswith('.local') or t.startswith('.prologue') or t.startswith('.registers') \\\n"
            u"           or t.startswith('.annotation') or t.startswith('.end annotation') or t.startswith('.catch') \\\n",
         u"        if t.startswith('.catch'):\n"
         u"            _m = re.search(r'(:[\\w.$-]+)\\s*$', t)\n"
         u"            if _m:\n"
         u"                catch_labs.add(_m.group(1))\n"
         u"        if not t or t.startswith('#') or t.startswith('.param') or t.startswith('.line') \\\n"
         u"           or t.startswith('.local') or t.startswith('.prologue') or t.startswith('.registers') \\\n"
         u"           or t.startswith('.annotation') or t.startswith('.end annotation') or t.startswith('.catch') \\\n",
         'reach 采集 catch 标签')
t = rep1(t, u'    seen = [False] * n\n    q = deque([0]); seen[0] = True\n',
         u'    seen = [False] * n\n'
         u'    seeds = [0] + [labels[l] for l in sorted(catch_labs) if l in labels]  # R5c020b: catch 处理器也是入口\n'
         u'    q = deque()\n'
         u'    for _s in seeds:\n'
         u'        if not seen[_s]:\n'
         u'            seen[_s] = True; q.append(_s)\n',
         'reach catch 作为入口')
io.open(R, 'w', encoding='utf-8').write(t)
print('OK: 两个工具已修正')