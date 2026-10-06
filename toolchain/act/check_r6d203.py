#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d203.py —— 防空导弹"飞行时间"（镜像飞机导弹）+ 红圈只显示自己
用法: python3 check_r6d203.py [smali树] [--selftest]
"""
import os, re, sys
HERE=os.path.dirname(os.path.abspath(__file__))
AM="aoc/kingdoms/lukasz/map/battles/AirMission.smali"
AD="aoc/kingdoms/lukasz/map/battles/AirDefense.smali"
RB="aoc/kingdoms/lukasz/map/province/RadarBitmap.smali"

def rd(t,r):
    p=os.path.join(t,r)
    return open(p,encoding='utf-8').read() if os.path.isfile(p) else ''
def body(s,sig):
    m=re.search(r'^\.method[^\n]*%s[^\n]*\n(.*?)^\.end method'%re.escape(sig), s, re.S|re.M)
    return m.group(1) if m else ''

def check(tree, am=None, ad=None, rb=None):
    am = am if am is not None else rd(tree,AM)
    ad = ad if ad is not None else rd(tree,AD)
    rb = rb if rb is not None else rd(tree,RB)
    sch=body(ad,'scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V')
    tkh=body(ad,'tickHits()V')
    fp =body(ad,'fireProvince(III)I')
    tt =body(ad,'tickTurn()V')
    ra =body(rb,'refreshAd()V')
    res=[]
    def A(n,c,x=''): res.append((n,bool(c),x))
    A('S1 AirMission 在途字段', ('.field public adHitAt:I' in am) and ('.field public adHitDmg:F' in am))
    A('S2 scheduleHit/tickHits 在类级别', ('.method public static scheduleHit' in ad) and ('.method public static tickHits()V' in ad))
    A('S3 fireProvince 只登记不结算', (fp.count('scheduleHit')==1) and (fp.count('applyMdDamage')==0))
    A('S4 tickHits 到期结算', (tkh.count('applyMdDamage')==1) and ('adHitAt' in tkh) and ('if-lt' in tkh))
    A('S5 镜像口径（TURN_ID+HOUR+HOURS_PER_TURN）', ('Game_Calendar;->TURN_ID' in sch) and ('Game_Calendar;->HOUR' in sch) and ('Game;->HOURS_PER_TURN' in sch))
    A('S6 tickTurn 先跑 tickHits', (tt.count('tickHits()V')==1) and (tt.find('tickHits')<tt.find('tickAll')))
    A('S7 红圈只画自己的省', ('Player;->iCivID' in ra) and ('getCivID' in ra) and ('if-ne v10, v11, :notmine' in ra) and ('goto/16 :loop' in ra))
    return res

def main():
    args=[a for a in sys.argv[1:] if not a.startswith('--')]
    tree=args[0] if args else '/tmp/w3a/smali'
    am,ad,rb=rd(tree,AM),rd(tree,AD),rd(tree,RB)
    res=check(tree,am,ad,rb)
    print('=== 正检 ===')
    for n,ok,x in res: print('  [%s] %-34s %s'%('PASS' if ok else 'FAIL',n,x))
    ok_all=all(o for _,o,_ in res)
    print('  正检 %d/%d %s'%(sum(1 for _,o,_ in res if o),len(res),'PASS' if ok_all else 'FAIL'))
    if '--selftest' in sys.argv:
        print('=== 负样本自检 ===')
        NEG=[('N1 删掉红圈过滤（破坏 if-ne）', rb, 'if-ne v10, v11, :notmine', 'nop'),
             ('N2 fireProvince 改回立即结算', ad, 'invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V', 'invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->applyMdDamage(Laoc/kingdoms/lukasz/map/battles/AirMission;F)I'),
             ('N3 tickTurn 去掉 tickHits', ad, '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickHits()V\n', ''),
             ('N4 tickHits 去掉到达判定', ad, 'if-lt v0, v8, :notyet', 'nop')]
        bad=0
        for name,src,old,new in NEG:
            if old not in src:
                print('  [SKIP] %-24s 注入点不存在'%name); bad+=1; continue
            am2,ad2,rb2=am,ad,rb
            if src is ad: ad2=ad.replace(old,new,1)
            elif src is rb: rb2=rb.replace(old,new,1)
            else: am2=am.replace(old,new,1)
            r=check(tree,am2,ad2,rb2)
            failed=not all(o for _,o,_ in r)
            print('  [%s] %-24s %s'%('OK' if failed else '!!',name,'已变红' if failed else '没变红'))
            if not failed: bad+=1
        print('  负样本 %d/%d %s'%(len(NEG)-bad,len(NEG),'OK' if bad==0 else '有问题'))
        sys.exit(0 if (ok_all and bad==0) else 1)
    sys.exit(0 if ok_all else 1)

if __name__=='__main__': main()
