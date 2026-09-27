# -*- coding: utf-8 -*-
# r6d021_cow.py —— 修复 ConcurrentModificationException：activeMissions 必须是线程安全容器
#   根因：r6d019 把 DebugMissionList（extends CopyOnWriteArrayList）换成 ArrayList ⇒ 拆掉写时复制保护
#        ⇒ 渲染线程(updateMissions 迭代) 与回合线程(增删) 并发 ⇒ java.util.ConcurrentModificationException
#   修法：直接 new java.util.concurrent.CopyOnWriteArrayList()（保留线程安全、去掉日志子类）
import re, sys, io
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
COW = 'Ljava/util/concurrent/CopyOnWriteArrayList;'
PATCHED = ('    new-instance v0, ' + COW + ' # r6d021：线程安全（写时复制）\n'
           '\n'
           '    invoke-direct {v0}, ' + COW + '-><init>()V\n')

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

BLOCK = re.compile(
    r'    new-instance (?P<r>v\d+), L(?P<cls>java/util/ArrayList|java/util/Vector|aoc/kingdoms/lukasz/map/battles/DebugMissionList);'
    r'(?:[^\n]*)\n\s*\n'
    r'    invoke-direct \{(?P=r)\}, L(?P=cls);-><init>\(\)V\n\s*\n'
    r'    iput-object (?P=r), (?P<who>[^,]+), [^\n]*->activeMissions:Ljava/util/List;')

def patch():
    s = rd(AFM)
    if 'r6d021' in s:
        print('[SKIP] 已修'); return
    m = list(BLOCK.finditer(s))
    assert len(m) == 1, 'activeMissions 构造块命中=%d（应为1）' % len(m)
    blk = m[0]
    new_block = ('    new-instance %s, %s # r6d021：线程安全（写时复制）\n\n'
                 '    invoke-direct {%s}, %s-><init>()V\n\n'
                 '    iput-object %s, %s, %s->activeMissions:Ljava/util/List;'
                 % (blk.group('r'), COW, blk.group('r'), COW, blk.group('r'), blk.group('who'),
                    'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'))
    s = s[:blk.start()] + new_block + s[blk.end():]
    wr(AFM, s)
    print('  [OK] activeMissions → CopyOnWriteArrayList（线程安全）')

def chk(src):
    fails = []
    if 'r6d021' not in src: fails.append('79-0 未修')
    if not re.search(r'new-instance v\d+, ' + re.escape(COW) + r'[^\n]*\n\s*\n\s*invoke-direct \{v\d+\}, ' +
                     re.escape(COW) + r'-><init>\(\)V[\s\S]{0,200}?->activeMissions:Ljava/util/List;', src):
        fails.append('79-1 activeMissions 不是 CopyOnWriteArrayList 构造')
    if BLOCK.search(src):
        fails.append('79-2 activeMissions 仍由非线程安全容器构造（%s）' % BLOCK.search(src).group('cls'))
    return fails

def gate():
    s = rd(AFM)
    fails = chk(s)
    neg = 0
    for repl, cls in [('Ljava/util/ArrayList;', 'java/util/ArrayList'),
                      ('Ljava/util/Vector;', 'java/util/Vector'),
                      ('Laoc/kingdoms/lukasz/map/battles/DebugMissionList;', 'aoc/kingdoms/lukasz/map/battles/DebugMissionList')]:
        mut = re.sub(r'new-instance (v\d+), ' + re.escape(COW) + r'[^\n]*\n(\s*\n)?\s*invoke-direct \{\1\}, ' + re.escape(COW) + r'-><init>\(\)V',
                     lambda mm: 'new-instance %s, %s\n\n    invoke-direct {%s}, %s-><init>()V' % (mm.group(1), repl, mm.group(1), repl), s, count=1)
        if mut != s and chk(mut): neg += 1
    print('== 门禁 79 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('79 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)