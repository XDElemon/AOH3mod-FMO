# -*- coding: utf-8 -*-
# check_loopexit.py v3 —— 抓「迭代器循环被写成"最多只跑一次"」这类 bug（E5 真凶就是它）
# 判据：
#   对每个 `…iterator()` + `move-result-object vX`：
#     找到它的 `hasNext()Z` + `move-result vX` 测试点 h，以及 h 后的出口目标 T；
#     循环头区域 = [创建点 i, h+1] 内出现过的标签；
#        若有任何跳转（goto/if）指向那个区域的标签 ⇒ 循环可回边（正常）
#        若没有                              ⇒ 该迭代器循环永远回不到头 ⇒ 最多跑一次 ⇒ 报可疑
#   E5 真凶正是此形：v5 的机场迭代器创建@367、hasNext@371，全方法没有任何跳转指回头区域
#   ⇒ 每个文明只处理第一个机场（其余机场与飞机不写入存档）。
import io, os, re, sys

ITER_CREATE = re.compile(r'invoke-[a-z/]+ \{[^}]*\},\s*(\S+)->iterator\(\)')
HASNEXT = re.compile(r'invoke-interface \{[^}]*\},\s*(\S+)->hasNext\(\)Z')
ANYJMP = re.compile(r'\s*(?:goto(?:/16|/32)?\s+:(?P<g>[\w$]+)|if-[a-z]+\s+v\d+,\s*:(?P<i>[\w$]+))')
LABEL = re.compile(r'\s*(:[\w$]+)\s*$')
MOVER = re.compile(r'\s*move-result\s+(v\d+|p\d+)')
MOVE = re.compile(r'\s*move-result-object\s+(v\d+|p\d+)')


def analyze(path, out, limit=400):
    try:
        L = io.open(path, encoding='utf-8', errors='replace').read().split('\n')
    except Exception:
        return
    lab = {}
    for i, l in enumerate(L):
        m = LABEL.match(l)
        if m:
            lab.setdefault(m.group(1), i)
    n = len(L)
    for i, l in enumerate(L):
        if not ITER_CREATE.search(l):
            continue
        reg = None
        for t in range(i + 1, min(i + 4, n)):
            mm = MOVE.match(L[t])
            if mm:
                reg = mm.group(1)
                break
        if reg is None:
            continue
        h = None
        for t in range(i + 1, min(i + 8, n)):        # 按邻近配对（更稳，不依赖寄存器名）
            if HASNEXT.search(L[t]):
                h = t
                break
        if h is None:
            continue
        tgt = None
        for t in range(h + 1, min(h + 5, n)):
            mm = ANYJMP.match(L[t])
            if mm:
                tgt = mm.group('g') or mm.group('i')
                break
        # 循环头区域 = [创建点 i, hasNext h] 内出现过的标签
        head_labels = dict((k, v) for k, v in lab.items() if i <= v <= h)
        if not head_labels:
            out.append((path, i + 1, h + 1, reg, tgt, '无循环头标签'))
            continue
        found = False
        for t in range(h + 1, min(n, i + limit)):          # 回边必须在 hasNext 之后
            mm = ANYJMP.match(L[t])
            if not mm:
                continue
            tt = mm.group('g') or mm.group('i')
            if ':' + tt in head_labels:
                found = True
                break
        if not found:
            out.append((path, i + 1, h + 1, reg, tgt, '无回边(最多跑一次)'))


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else '.'
    out = []
    cnt = 0
    for dp, dn, fn in os.walk(root):
        for f in fn:
            if f.endswith('.smali'):
                cnt += 1
                analyze(os.path.join(dp, f), out)
    print('扫描文件数 =', cnt)
    print('可疑「迭代器循环最多跑一次」点数 =', len(out))
    for p, cl, hl, reg, tgt, why in out[:60]:
        print('  %s  create@%d hasNext@%d (%s) 出口=%s  %s' % (
            p.replace(root + '/', ''), cl, hl, reg, tgt, why))


if __name__ == '__main__':
    main()