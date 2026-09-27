# -*- coding: utf-8 -*-
# r5c025_analyze.py —— 解析 P0 探针对账
import io, re, collections

S = '/sdcard/GLG/历史23/r6s5/cur_r5c025.txt'
t = io.open(S, encoding='utf-8', errors='ignore').read()
TAGS = ['nA1e', 'nA2m', 'nA3b', 'nA4d', 'nA4f', 'nA5t', 'nA6c', 'nA9r']

# 收集： tag -> key -> [values]（按出现顺序）
data = collections.defaultdict(lambda: collections.defaultdict(list))
for m in re.finditer(r'nE5 (nA\w+) ?([a-zA-Z0-9_]+)= a=(-?\d+)', t):
    data[m.group(1)][m.group(2)].append(int(m.group(3)))

print('===== 行数总览 =====')
for tg in TAGS:
    if tg in data:
        print('  %s : %d 条日志, keys=%s' % (tg, len(data[tg].get('civ', [])), ','.join(sorted(data[tg].keys()))))
    else:
        print('  %s : 0（未触发）' % tg)

print('')
print('===== A. 玩家 civ / 难度 =====')
print('  nA1e 出现的 civ 去重: %s' % sorted(set(data['nA1e'].get('civ', []))))
print('  nA1e pl 去重: %s   diff 去重: %s' % (sorted(set(data['nA1e'].get('pl', []))), sorted(set(data['nA1e'].get('diff', [])))))
print('  每 civ 的 apts（机场数）:')
z = list(zip(data['nA1e'].get('civ', []), data['nA1e'].get('apts', [])))
print('   ' + ', '.join('%d:%d' % kv for kv in sorted(set(z))))

print('')
print('===== B. nA9r：registerAirport 送机实证（civ, tot, it, ft, bm, at, mode）=====')
civ = data['nA9r'].get('civ', []); tot = data['nA9r'].get('tot', [])
it = data['nA9r'].get('it', []); ft = data['nA9r'].get('ft', [])
bm = data['nA9r'].get('bm', []); at = data['nA9r'].get('at', [])
md = data['nA9r'].get('mode', [])
rows = set()
for i in range(min(len(civ), len(tot), len(it), len(ft), len(bm), len(at), len(md))):
    rows.add((civ[i], tot[i], it[i], ft[i], bm[i], at[i], md[i]))
for r in sorted(rows):
    lab = 'AI' if r[0] != 226 else 'PLAYER'
    print('  civ=%-4d %-6s tot=%d it=%d ft=%d bm=%d at=%d mode=%d' % (r[0], lab, r[1], r[2], r[3], r[4], r[5], r[6]))

print('')
print('===== C. nA2m：各 civ 机场数 / mode 分布 / 机型 =====')
civ = data['nA2m'].get('civ', []); md = data['nA2m'].get('mode', [])
q = data['nA2m'].get('q', []); tot = data['nA2m'].get('tot', [])
it = data['nA2m'].get('it', []); ft = data['nA2m'].get('ft', [])
bm = data['nA2m'].get('bm', []); at = data['nA2m'].get('at', [])
print('  mode 取值分布: %s   （Airport$Mode: 0=AI, 1=OFFENSIVE, 2=PATROL）' % sorted(set(md)))
rows = set()
for i in range(min(len(civ), len(md), len(q), len(tot), len(it), len(ft), len(bm), len(at))):
    rows.add((civ[i], md[i], q[i], tot[i], it[i], ft[i], bm[i], at[i]))
for r in sorted(rows)[:40]:
    lab = 'AI' if r[0] != 226 else 'PLAYER'
    print('  civ=%-4d %-6s mode=%d q=%d tot=%d it=%d ft=%d bm=%d at=%d' % (r[0], lab, r[1], r[2], r[3], r[4], r[5], r[6], r[7]))

print('')
print('===== D. nA3b：updateBuild 里看到的队列/机型（找那 3 架轰炸机）=====')
civ = data['nA3b'].get('civ', []); q = data['nA3b'].get('q', []); rem = data['nA3b'].get('rem', [])
tot = data['nA3b'].get('tot', []); it = data['nA3b'].get('it', []); ft = data['nA3b'].get('ft', [])
bm = data['nA3b'].get('bm', []); at = data['nA3b'].get('at', [])
rows = set()
for i in range(min(len(civ), len(q), len(rem), len(tot), len(it), len(ft), len(bm), len(at))):
    rows.add((civ[i], q[i], rem[i], tot[i], it[i], ft[i], bm[i], at[i]))
for r in sorted(rows)[:40]:
    lab = 'AI' if r[0] != 226 else 'PLAYER'
    print('  civ=%-4d %-6s q=%d rem=%d tot=%d it=%d ft=%d bm=%d at=%d' % (r[0], lab, r[1], r[2], r[3], r[4], r[5], r[6], r[7]))

print('')
print('===== E. nA5t：strikeTick_A1 被哪些 civ 调用（关键：是否只跑玩家）=====')
print('  civ 去重: %s' % sorted(set(data['nA5t'].get('civ', []))))
print('  pl 去重: %s' % sorted(set(data['nA5t'].get('pl', []))))
print('  ms 去重: %s' % sorted(set(data['nA5t'].get('ms', []))))

print('')
print('===== F. nA4d / nA4f：AI 派发分支是否被触发 =====')
if 'nA4d' in data:
    civ = data['nA4d'].get('civ', []); war = data['nA4d'].get('war', []); ms = data['nA4d'].get('ms', [])
    rows = set(zip(civ, war, ms))
    for r in sorted(rows):
        print('  nA4d civ=%d war=%d ms=%d' % r)
else:
    print('  nA4d 未触发（⇒ 没有任何机场处于 Mode.AI，派发分支从未进入）')
print('  nA4f empty 取值: %s' % sorted(set(data['nA4f'].get('empty', []))))

print('')
print('===== G. nA6c：空战 tick 参与（civ / type）=====')
civ = data['nA6c'].get('civ', []); ty = data['nA6c'].get('type', []); tgt = data['nA6c'].get('tgt', [])
rows = set(zip(civ, ty, tgt))
for r in sorted(rows)[:20]:
    lab = 'AI' if r[0] != 226 else 'PLAYER'
    print('  civ=%-4d %-6s type=%d tgt=%d' % (r[0], lab, r[1], r[2]))
if not rows:
    print('  （无记录）')