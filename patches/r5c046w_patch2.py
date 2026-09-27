# -*- coding: utf-8 -*-
# r5c046w_patch2.py —— 按行定位替换 F5 门（不依赖空行）
import sys, hashlib
AFM='/tmp/revs/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
NEW=[
 '    # r5c046w F6: 两个按钮互不干扰 —— 战时一律继续（轰炸由「自动打击」外层门管）；和平仅 mode==PATROL 才巡逻',
 '    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;',
 '    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;',
 '    if-eqz v0, :t_go',
 '    if-ne v2, v3, :t_go',
 '    return-void',
 '    :t_go',
]
def main():
    lines=open(AFM,encoding='utf-8').read().split('\n')
    s=[i for i,l in enumerate(lines) if l.startswith('.method private executeAIAssignmentForAirport')]
    if len(s)!=1: print('[FAIL] 方法定义 %d'%len(s)); return 1
    s=s[0]
    e=next(i for i in range(s,len(lines)) if lines[i].startswith('.end method'))
    i0=[i for i in range(s,e) if 'r5c046t F5' in lines[i]]
    if len(i0)!=1: print('[FAIL] 注释锚点 %d'%len(i0)); return 1
    i0=i0[0]
    j=[i for i in range(i0,e) if lines[i].strip()==':t_go']
    if not j: print('[FAIL] 找不到 :t_go'); return 1
    j=j[0]
    old_block=[x.strip() for x in lines[i0:j+1] if x.strip()]
    need=['if-ne v2, v3, :t_pat','if-eqz v0, :t_go',':t_pat','if-nez v0, :t_go',':t_go']
    for k in need:
        if not any(k in x for x in old_block): print('[FAIL] 旧块缺少 %r'%k); return 1
    before=hashlib.md5(open(AFM,'rb').read()).hexdigest()[:12]
    out=lines[:i0]+NEW+lines[j+1:]
    open(AFM,'w',encoding='utf-8').write('\n'.join(out))
    print('AFM md5 %s -> %s'%(before,hashlib.md5(open(AFM,'rb').read()).hexdigest()[:12]))
    return 0
if __name__=='__main__':
    sys.exit(main())