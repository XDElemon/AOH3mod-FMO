# -*- coding: utf-8 -*-
# 自审：11 处探针是否插在 invoke-* 与其 move-result* 之间（会导致 ART VerifyError）
import io, re
TAGS = ['W0civ', 'W1path', 'W2h', 'W3main', 'W4dbg', 'W5ex',
        'R1main', 'R2dbg', 'R4civ', 'R4dto', 'L1hit', 'L3unit']
FILES = ['/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali',
         '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali']

def nb(L, i, step):
    j = i + step
    while 0 <= j < len(L) and L[j].strip() == '':
        j += step
    return j if 0 <= j < len(L) else None

for p in FILES:
    L = io.open(p, encoding='utf-8').read().split('\n')
    print('==', p.split('/')[-1])
    for t in TAGS:
        hits = [i for i, l in enumerate(L) if '"%s"' % t in l]
        for h in hits:
            prev = nb(L, h, -1)
            nxt = nb(L, h + 2, +1)
            bad = ''
            if prev is not None and L[prev].strip().startswith('invoke-'):
                bad = '!! 前一条是 invoke，探针插在 invoke/move-result 之间'
            if nxt is not None and L[nxt].strip().startswith('move-result'):
                bad = '!! 探针后面紧接 move-result（挪位/冲突）'
            print('   %-8s line %-6d prev=%-6s %s  next=%-6s %s' % (
                t, h + 1,
                str(prev + 1) if prev is not None else '-',
                L[prev].strip()[:38] if prev is not None else '',
                str(nxt + 1) if nxt is not None else '-',
                (L[nxt].strip()[:38] if nxt is not None else '') + ('   ' + bad if bad else '')))