# -*- coding: utf-8 -*-
# r5c025_analyze2.py —— 精修：mode 分布 / pl 时间线 / 机场归属
import io, re, collections
S = '/sdcard/GLG/历史23/r6s5/cur_r5c025.txt'
t = io.open(S, encoding='utf-8', errors='ignore').read()
seq = []
for m in re.finditer(r'nE5 (nA\w+) ?([a-zA-Z0-9_]+)= a=(-?\d+)', t):
    seq.append((m.group(1), m.group(2), int(m.group(3))))
print('总探针记录 = %d' % (len(seq) // 1))

print('')
print('===== 1) nA1e 组合（每回合每文明一条；civ/apts/pl/diff）=====')
civ = [v for (tg, k, v) in seq if tg == 'nA1e' and k == 'civ']
apts = [v for (tg, k, v) in seq if tg == 'nA1e' and k == 'apts']
pl = [v for (tg, k, v) in seq if tg == 'nA1e' and k == 'pl']
diff = [v for (tg, k, v) in seq if tg == 'nA1e' and k == 'diff']
print('  civ 去重      : %s' % sorted(set(civ)))
print('  (civ,apts) 去重: %s' % sorted(set(zip(civ, apts))))
print('  pl 出现序列   : %s' % pl[:40])
print('  diff 去重     : %s' % sorted(set(diff)))

print('')
print('===== 2) nA3b 的 mode 分布（Airport$Mode: 0=AI 1=OFFENSIVE 2=PATROL）=====')
md = [v for (tg, k, v) in seq if tg == 'nA3b' and k == 'mode']
print('  mode 计数: %s' % dict(collections.Counter(md)).__str__())

print('')
print('===== 3) nA3b 出现的 civ / 省份（机场归属）=====')
c3 = [v for (tg, k, v) in seq if tg == 'nA3b' and k == 'civ']
a3 = [v for (tg, k, v) in seq if tg == 'nA3b' and k == 'ap']
print('  civ 去重: %s' % sorted(set(c3)))
print('  (civ,ap) 去重: %s' % sorted(set(zip(c3, a3))))

print('')
print('===== 4) nA3b 各机场的机型峰值（找那 3 架轰炸机 / 谁有飞机）=====')
keys = ['it', 'ft', 'bm', 'at', 'tot', 'q']
cols = {}
for kk in keys:
    cols[kk] = [v for (tg, k, v) in seq if tg == 'nA3b' and k == kk]
n = min(len(cols['it']), len(cols['ft']), len(cols['bm']), len(cols['at']), len(cols['tot']), len(cols['q']))
mx = {}
for i in range(n):
    key = (c3[i], a3[i])
    d = mx.setdefault(key, {k2: 0 for k2 in keys})
    for kk in keys:
        d[kk] = max(d[kk], cols[kk][i])
for key, d in sorted(mx.items()):
    print('  civ=%d ap=%d  max it=%d ft=%d bm=%d at=%d tot=%d q=%d' % (key[0], key[1], d['it'], d['ft'], d['bm'], d['at'], d['tot'], d['q']))

print('')
print('===== 5) nA5t（strikeTick_A1）与 pl 的关系 =====')
c5 = [v for (tg, k, v) in seq if tg == 'nA5t' and k == 'civ']
p5 = [v for (tg, k, v) in seq if tg == 'nA5t' and k == 'pl']
m5 = [v for (tg, k, v) in seq if tg == 'nA5t' and k == 'ms']
print('  civ 去重: %s   pl 去重: %s   ms 去重: %s' % (sorted(set(c5)), sorted(set(p5)), sorted(set(m5))))
print('  (civ,pl) 组合: %s' % sorted(set(zip(c5, p5))))

print('')
print('===== 6) nA9r（登记送机）全部记录 =====')
keys = ['civ', 'ap', 'mode', 'tot', 'it', 'ft', 'bm', 'at']
cols = {kk: [v for (tg, k, v) in seq if tg == 'nA9r' and k == kk] for kk in keys}
n = min(len(v) for v in cols.values()) if all(cols.values()) else 0
for i in range(n):
    print('  ' + ' '.join('%s=%d' % (kk, cols[kk][i]) for kk in keys))