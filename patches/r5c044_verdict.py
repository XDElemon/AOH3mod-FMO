# -*- coding: utf-8 -*-
# r5c044_verdict.py —— 抓样判读（r5c044）：先看拦截相关条目的原始格式
import io, re, collections

S = '/sdcard/GLG/历史23/r6s5/'
K = io.open(S + 'cur_r5c044.txt', encoding='utf-8', errors='replace').read()
T = io.open(S + 'cur_r5c044_tick.txt', encoding='utf-8', errors='replace').read()

print('key 行数=%d  tick 行数=%d' % (K.count('\n'), T.count('\n')))

PATS = ['nHAC', 'nDR_DSPT', 'nDR_AID', 'nDSPT8', 'nDSPT4', 'nDSPT2', 'nDSPT3', 'nDSPT0',
        'nDR_DET', 'nRT seg', 'nA4e', 'nAH', 'nRH', 'nATK', 'nGA', 'nAC']
print()
print('=== [1] 各标签在 key 文件中的出现次数 ===')
for p in PATS:
    print('  %-10s %6d' % (p, K.count(p)))
print()
print('=== [2] tick 文件里 ===')
for p in ('nDE_ENTER', 'inDE_A', 'inDE_B', 'inDE_C', 'inDE_D', 'inDE_E', 'inDE_F', 'nDR_DET'):
    print('  %-10s %6d' % (p, T.count(p)))
print()
print('=== [3] 各类条目的原始样例（去重，各取 6 条）===')
for tag in ('nHAC', 'nDR_DSPT', 'nDR_AID', 'nDSPT8', 'nDSPT0', 'nHRT', 'nRT seg'):
    seen, out = set(), []
    for m in re.findall(r'[^\n]*%s[^\n]*' % re.escape(tag), K):
        s = re.sub(r'\d+', '#', m.strip())
        if s not in seen:
            seen.add(s)
            out.append(m.strip())
        if len(out) >= 6:
            break
    if out:
        print('--- %s ---' % tag)
        for x in out:
            print('    %s' % x[:150])
print()
print('=== [4] key 文件里所有"消息形状"TOP40（数字归一化）===')
c = collections.Counter()
for ln in K.split('\n'):
    if not ln.strip():
        continue
    msg = ln.split('AIRDBG:', 1)[-1].strip() if 'AIRDBG:' in ln else ln.strip()
    c[re.sub(r'-?\d+', '#', msg)[:60]] += 1
for msg, n in c.most_common(40):
    print('  %7d  %s' % (n, msg))