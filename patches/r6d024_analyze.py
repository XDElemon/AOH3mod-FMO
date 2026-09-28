# -*- coding: utf-8 -*-
# r6d024_analyze.py —— 卡机判读：MissionState 序号核对 + 停滞任务 + 结算门实况
import re, sys, io, collections
LOG = '/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt'
SM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirMission$MissionState.smali'
raw = io.open(LOG, encoding='utf-8', errors='replace').read()
lines = raw.splitlines()
print('日志行数=%d  字节=%d' % (len(lines), len(raw.encode('utf-8'))))

# ① 状态枚举顺序（别再说错 ordinal）
try:
    s = io.open(SM, encoding='utf-8', errors='replace').read()
    cl = s[s.find('.method static constructor <clinit>'):]
    vals = re.findall(r'sput-object v\d+, L[^\n]*->(\w+):L', cl)
    print('MissionState 顺序: ' + ' '.join('%d=%s' % (i, v) for i, v in enumerate(vals)))
except Exception as e:
    print('读枚举失败: %s' % e)

# ② 标签计数（谁在结算）
lab = collections.Counter(m.group(1) for m in re.finditer(r'AIRDBG: (\w+)', raw))
print('标签 Top: ' + ', '.join('%s=%d' % (k, v) for k, v in lab.most_common(12)))

# ③ MS 快照解析
pat = re.compile(r'MS mid=(-?\d+) c=(-?\d+) s=(-?\d+) at=(-?\d+) tg=(-?\d+)')
seq = collections.OrderedDict()
for ln in lines:
    m = pat.search(ln)
    if m:
        mid, c, s, at, tg = (int(x) for x in m.groups())
        seq.setdefault(mid, []).append((c, s, at, tg))
print('快照任务数=%d  快照行数=%d' % (len(seq), sum(len(v) for v in seq.values())))

# ④ 停滞判定：连续 >=3 次 (s,at) 完全相同 且 s in (1,2)
stuck = []
for mid, v in seq.items():
    best, run = 1, 1
    for i in range(1, len(v)):
        run = run + 1 if v[i][1:] == v[i - 1][1:] else 1
        best = max(best, run)
    if best >= 3 and v[-1][1] in (1, 2):
        stuck.append((best, mid, v[-1]))
stuck.sort(reverse=True)
print('停滞候选（连续>=3次不变 且仍处 1/2 态）= %d 条' % len(stuck))
for run, mid, (c, s, at, tg) in stuck[:12]:
    print('  mid=%-7d c=%-3d s=%d at=%-5d tg=%-5d 连续%d次不变  样本%d' % (mid, c, s, at, tg, run, len(seq[mid])))

# ⑤ 按 civ 汇总（谁的任务多、谁停）
per = collections.Counter()
for mid, v in seq.items():
    per[v[-1][0]] += 1
print('末次快照按 civ: ' + ', '.join('c%d=%d' % (k, n) for k, n in per.most_common(10)))
print('s 分布: ' + ', '.join('%d=%d' % (s, n) for s, n in
                             collections.Counter(v[-1][1] for v in seq.values()).most_common()))
print('at==tg 的任务数=%d' % sum(1 for v in seq.values() if v[-1][2] == v[-1][3]))