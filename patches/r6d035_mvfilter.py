# -*- coding: utf-8 -*-
# r6d035_mvfilter.py —— 修 mvSeg 过滤器：把 `dur<=0`（换省门永远不成立的病例）纳入记录
#   原: gap=dur-anim; if (gap < 3000) return;      → dur=0 时 gap=-anim，被排掉
#   新: if (dur <= 0) goto 记录; 否则 if (gap < 3000) return;
import re, sys, io
DLG = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
DLGC = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
SB = 'Ljava/lang/StringBuilder;'

OLD = ('    sub-int v6, v5, v4\n'
       '\n'
       '    const/16 v1, 0xbb8\n'
       '\n'
       '    if-lt v6, v1, :mv_ret\n'
       '\n'
       '    new-instance v0, ' + SB + '\n')
NEW = ('    sub-int v6, v5, v4\n'
       '\n'
       '    # r6d035：dur<=0 是"换省门永不成立"的病例，必须记录\n'
       '    if-lez v5, :mv_log\n'
       '\n'
       '    const/16 v1, 0xbb8\n'
       '\n'
       '    if-lt v6, v1, :mv_ret\n'
       '\n'
       '    :mv_log\n'
       '    new-instance v0, ' + SB + '\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG)
    if 'r6d035' in d: print('[SKIP]'); return
    i = d.find('.method public static mvSeg('); j = d.find('.end method', i)
    body = d[i:j]
    assert body.count(OLD) == 1, 'mvSeg 过滤锚点=%d' % body.count(OLD)
    wr(DLG, d[:i] + body.replace(OLD, NEW, 1) + d[j:])
    print('  [OK] mvSeg: dur<=0 也记录（新增 :mv_log）')

def sim(anim, dur_, at, tg):
    """修正后的判读模拟器"""
    if at == tg: return 'SKIP_EQUAL'
    if dur_ <= 0: return 'DUR_ZERO'          # 换省门永不成立！
    gap = dur_ - anim
    if gap < 3000: return 'NORMAL'
    if anim <= 0: return 'ANIM_FROZEN'
    if dur_ > 60000: return 'DUR_HUGE'
    return 'LAGGING'

def chk():
    f = []
    d = rd(DLG)
    b = d[d.find('.method public static mvSeg('):]; b = b[:b.find('.end method')]
    if 'if-lez v5, :mv_log' not in b: f.append('95-1 未把 dur<=0 纳入记录')
    if not re.search(r':mv_log\n\s*new-instance v0, ' + re.escape(SB), b):
        f.append('95-1 :mv_log 标签位置错误（应紧邻 new-instance）')
    if 'if-lt v6, v1, :mv_ret' not in b: f.append('95-1 正常过滤条件丢失')
    if b.count(':mv_log') != 2: f.append('95-1 :mv_log 标签数异常')
    if sim(0, 0, 100, 200) != 'DUR_ZERO': f.append('95A dur=0 未判为换省门失效')
    if sim(5000, 6000, 100, 200) != 'NORMAL': f.append('95A 正常段误报')
    if sim(0, 20000, 100, 200) != 'ANIM_FROZEN': f.append('95A 时间轴冻结判读错')
    if sim(100, 90000, 100, 200) != 'DUR_HUGE': f.append('95A 段时长异常判读错')
    m = int(re.search(r'\.registers (\d+)', b).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', b)) if x >= m - 1)
    if bad: f.append('95-2 寄存器越界 v%s' % bad)
    return f

def gate():
    fails = chk(); neg = 0
    o = rd(DLG)
    b = o[o.find('.method public static mvSeg('):]; seg = b[:b.find('.end method')]
    wr(DLG, o.replace(seg, seg.replace('    if-lez v5, :mv_log\n\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, o.replace(seg, seg.replace('    const/16 v1, 0xbb8\n\n    if-lt v6, v1, :mv_ret\n', '', 1), 1))
    if chk(): neg += 1
    wr(DLG, o.replace(seg, seg.replace('    :mv_log\n    new-instance v0, ' + SB + '\n', '    new-instance v0, ' + SB + '\n', 1), 1))
    if chk(): neg += 1
    wr(DLG, o)
    print('== 门禁 95 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('95 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过（含 dur=0 病例模拟）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)