# -*- coding: utf-8 -*-
# 精确自审：只有「前一条 invoke 返回非 void」且「探针后紧接 move-result」才是真错
import io
TAGS = ['W0civ', 'W1path', 'W2h', 'W3main', 'W4dbg', 'W5ex',
        'R1main', 'R2dbg', 'R4civ', 'R4dto', 'L1hit', 'L3unit']
FILES = ['/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali',
         '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali']

def nb(L, i, step):
    j = i + step
    while 0 <= j < len(L) and L[j].strip() == '':
        j += step
    return j if 0 <= j < len(L) else None

def ret_nonvoid(s):
    # 取签名结尾 )X 判断
    k = s.rfind(')')
    return k != -1 and not s[k:k + 2].endswith(')V')

bad_total = 0
for p in FILES:
    L = io.open(p, encoding='utf-8').read().split('\n')
    print('==', p.split('/')[-1])
    for t in TAGS:
        for h in [i for i, l in enumerate(L) if '"%s"' % t in l]:
            prev = nb(L, h, -1)
            nxt = nb(L, h + 2, +1)
            ps = L[prev].strip() if prev is not None else ''
            ns = L[nxt].strip() if nxt is not None else ''
            if ps.startswith('invoke-') and ret_nonvoid(ps) and ns.startswith('move-result'):
                print('   !! %s line %d 真错：前一条是带返回值 invoke，后一条是 move-result' % (t, h + 1))
                bad_total += 1
print('真错合计 =', bad_total)