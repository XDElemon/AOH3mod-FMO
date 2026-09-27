# -*- coding: utf-8 -*-
# r5c044_verdict2.py —— 抓样判读（二）：真飞证据 / 拦截派发细节 / 节流分布
import io, re, collections

S = '/sdcard/GLG/历史23/r6s5/'
K = io.open(S + 'cur_r5c044.txt', encoding='utf-8', errors='replace').read()
T = io.open(S + 'cur_r5c044_tick.txt', encoding='utf-8', errors='replace').read()

print('=== [1] 真飞证据：um_mv0 的 hq= 分布（tick）===')
c = collections.Counter(re.findall(r'um_mv0:[^\n]*?hq=(-?\d+)', T))
print('   hq= ->', dict(c))
print('   um_mv0 总条数 =', len(re.findall(r'um_mv0:', T)))

print()
print('=== [2] 真飞证据：飞行推进（st= 与 fp= 范围）===')
st = collections.Counter(re.findall(r'um_mv0:st=(\d+)', T))
print('   st 分布 =', dict(st))
fps = [float(x) for x in re.findall(r'fp=([0-9.]+)', T)]
if fps:
    print('   fp 条数=%d  min=%.2f max=%.2f' % (len(fps), min(fps), max(fps)))

print()
print('=== [3] 自动拦截派发细节（key）===')
ok = re.findall(r'nDR_DSPT ok k=(\S+)', K)
print('   nDR_DSPT ok 次数=%d  键=%s' % (len(ok), collections.Counter(ok)))
aid = re.findall(r'nDR_AID ok k=(\S+) civ=(\d+)', K)
print('   nDR_AID  ok 次数=%d  %s' % (len(aid), collections.Counter(aid)))
ap8 = re.findall(r'nDSPT8 ap=(\d+) ta=(\d+) dp=(\d+)', K)
print('   nDSPT8 次数=%d  (ap,ta,dp) 去重=%s' % (len(ap8), collections.Counter(ap8)))
ap4 = re.findall(r'nDSPT4 ta=(\d+) dp=(\d+)', K)
print('   nDSPT4 次数=%d  (ta,dp) TOP8=%s' % (len(ap4), collections.Counter(ap4).most_common(8)))

print()
print('=== [4] 各出口计数（key）===')
for t in ('nDR_DSPT no-airport', 'nDR_DSPT no-divkey', 'nDR_DSPT create-null', 'nDR_DSPT no-aircraft',
          'nDSPT2', 'nDSPT3', 'nDSPT0', 'nDR_DET', 'nAC', 'nAH', 'nRH', 'nHAC'):
    print('   %-24s %6d' % (t, K.count(t)))

print()
print('=== [5] 雷达/侦测：nDR_DET 的样例（前 6，去重）===')
seen = set()
for m in re.findall(r'nDR_DET[^\n]{0,80}', K):
    s = re.sub(r'\d+', '#', m)
    if s not in seen:
        seen.add(s)
        print('    %s' % m.strip())
    if len(seen) >= 6:
        break

print()
print('=== [6] nDSPT3 / nDSPT0 样例 ===')
for tag in ('nDSPT3', 'nDSPT0'):
    seen = set()
    out = []
    for m in re.findall(r'%s[^\n]{0,80}' % tag, K):
        s = re.sub(r'\d+', '#', m)
        if s not in seen:
            seen.add(s)
            out.append(m.strip())
        if len(out) >= 4:
            break
    print('  --- %s ---' % tag)
    for x in out:
        print('    %s' % x)