#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d179.py —— 自证 + 计数器门禁
import io, re, sys
AD='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
DG='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
MSIG=re.compile(r'\.method[^\n]*?(\w+)\(([^)]*)\)([^\n]*)\n(.*?)\.end method', re.S)
def bodies(t):
    return dict((m.group(1), m.group(4)) for m in MSIG.finditer(t))
def checks(a, d):
    ba=bodies(a); bd=bodies(d); out=[]
    out.append(('S1 启动自证=nABOOT v=r6d179', 'nABOOT v=r6d179' in d, ''))
    lh=ba.get('logHit','')
    out.append(('S2 hitSeen 字段存在', a.count('.field public static hitSeen:I')==1, ''))
    out.append(('S2b logHit 计数器(sget/add/sput)', ('sget v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I' in lh) and ('sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I' in lh) and ('add-int/lit8 v0, v0, 0x1' in lh), ''))
    out.append(('S2c 首次调用标记 nADH0 first（带守卫）', ('nADH0 first' in lh) and ('if-ne v0, v1, :seen_last' in lh), ''))
    ml=bd.get('mline','')
    out.append(('S3 nADM 行追加 h1=计数器', ('"h1"' in ml) and ('sget v11, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I' in ml), ''))
    fp=ba.get('fireProvince','')
    i0=fp.find('cmpl-float v9, v7, v8'); i1=fp.find('AirDefense;->logHit(IFFI)V'); i2=fp.find('if-gez v9, :snext')
    out.append(('S4 探针位置 cmpl→logHit→if-gez', i0>=0 and i1>i0 and i2>i1, 'i=%d/%d/%d'%(i0,i1,i2)))
    return out
def run(label, a, d, expect_fail):
    print('=== '+label+' ===')
    bad=0
    for nm,ok,ex in checks(a,d):
        print(('  \u2705 ' if ok else '  \u274c ')+nm+(('  '+ex) if ex else ''))
        if not ok: bad+=1
    print('  -> 失败项=%d'%bad)
    if expect_fail:
        print('  \u2705 负样本按预期变红' if bad>0 else '  \u274c 负样本未变红')
        return bad>0
    return bad==0
A=io.open(AD,encoding='utf-8').read(); D=io.open(DG,encoding='utf-8').read()
ok=run('正检', A, D, False)
bad1=A.replace('    add-int/lit8 v0, v0, 0x1\n\n    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I\n\n','',1)
ok&=run('N1 抽掉计数器自增', bad1, D, True)
bad2=D.replace('nABOOT v=r6d179','nABOOT v=r6d169',1)
ok&=run('N2 自证版本号改回旧值', A, bad2, True)
bad3=D.replace('    const-string v1, "h1"\n\n    sget v11, Laoc/kingdoms/lukasz/map/battles/AirDefense;->hitSeen:I\n\n    invoke-static {v0, v1, v11}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V\n\n','',1)
ok&=run('N3 抽掉 nADM 的 h1', A, bad3, True)
print()
print('\u2705 门禁全部通过（含负样本）' if ok else '\u274c 门禁失败')
sys.exit(0 if ok else 1)
