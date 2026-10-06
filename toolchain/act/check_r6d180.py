#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d180.py —— pickTarget 索引极性门禁
import io, re, sys
AD='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
def rd(): return io.open(AD,encoding='utf-8').read()
def checks(t):
    out=[]
    out.append(('S1 pickTarget 用 if-eq v1,p2,:found', 'if-eq v1, p2, :found' in t, ''))
    out.append(('S2 禁止 if-ne v1,p2,:found（血案形态）', 'if-ne v1, p2, :found' not in t, ''))
    out.append(('S3 :found 块 return-object v6', re.search(r':found\s*\n\s*return-object v6', t) is not None, ''))
    out.append(('S4 countTargets 保持 if-eqz v6,:next + 计数自增', ('if-eqz v6, :next' in t) and ('add-int/lit8 v1, v1, 0x1' in t), ''))
    out.append(('S5 fireProvince 仍先 pickTarget 再判空', ('AirDefense;->pickTarget' in t) and ('if-eqz v5, :snext' in t), ''))
    out.append(('S6 nADH 探针仍在（cmpl→logHit→if-gez）', 'AirDefense;->logHit(IFFI)V' in t, ''))
    return out
def run(label,t,expect_fail):
    print('=== '+label+' ===')
    bad=0
    for nm,ok,ex in checks(t):
        print(('  \u2705 ' if ok else '  \u274c ')+nm+(('  '+ex) if ex else ''))
        if not ok: bad+=1
    print('  -> 失败项=%d'%bad)
    if expect_fail:
        print('  \u2705 负样本按预期变红' if bad>0 else '  \u274c 负样本未变红')
        return bad>0
    return bad==0
T=rd()
ok=run('正检',T,False)
b1=T.replace('if-eq v1, p2, :found','if-ne v1, p2, :found',1)
ok&=run('N1 把索引判定改回血案形态(if-ne)',b1,True)
b2=re.sub(r':found\s*\n\s*return-object v6', '', T, count=1)
ok&=run('N2 删掉 :found 的返回（目标消失）',b2,True)
print()
print('\u2705 门禁全部通过（含负样本）' if ok else '\u274c 门禁失败')
sys.exit(0 if ok else 1)
