# -*- coding: utf-8 -*-
# r5c046v_patch2.py —— 按行定位交换 pickAirport 内的两个候选块（不依赖空行）
import sys, re, hashlib
BT='/tmp/revs/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'

def main():
    lines=open(BT,encoding='utf-8').read().split('\n')
    # 定位 pickAirport 方法范围
    s=[i for i,l in enumerate(lines) if l.startswith('.method public static pickAirport(I)')]
    if len(s)!=1: print('[FAIL] pickAirport 定义 %d 处'%len(s)); return 1
    s=s[0]
    e=next(i for i in range(s,len(lines)) if lines[i].startswith('.end method'))
    i0=[i for i in range(s,e) if lines[i].strip()==':cond_26']
    if len(i0)!=1: print('[FAIL] :cond_26 命中 %d'%len(i0)); return 1
    i0=i0[0]
    g=[i for i in range(i0,e) if lines[i].strip()=='goto :goto_48']
    if len(g)<2: print('[FAIL] goto 目标不足'); return 1
    j1,j2=g[0],g[1]
    blk1=lines[i0:j1+1]                 # :cond_26 …（selectedAirportProvinceID 块）… goto
    mid=lines[j1+1:j2+1]                # 空行 + :cond_32 +（iActiveProvince 块）… goto
    # 去掉 mid 的标签行，取出“第一块内容”
    k=[i for i,x in enumerate(mid) if x.strip()==':cond_32']
    if len(k)!=1: print('[FAIL] :cond_32 命中 %d'%len(k)); return 1
    k=k[0]
    B=mid[:k]+mid[k+1:]                 # iActiveProvince 块（含前后空行，不含标签）
    A=blk1[1:]                          # selectedAirportProvinceID 块（含首尾空行，不含 :cond_26）
    # 在两块内交换 :cond_32 <-> :cond_3e 的引用
    def sw(seq):
        return [x.replace(':cond_32',':TMP9').replace(':cond_3e',':cond_32').replace(':TMP9',':cond_3e') for x in seq]
    new = [':cond_26',''] + sw(B) + [':cond_32',''] + sw(A)
    out = lines[:i0] + new + lines[j2+1:]
    src='\n'.join(out)
    before=hashlib.md5(open(BT,'rb').read()).hexdigest()[:12]
    open(BT,'w',encoding='utf-8').write(src)
    print('BtnMission md5 %s -> %s (%d B)'%(before,hashlib.md5(src.encode()).hexdigest()[:12],len(src)))
    return 0

if __name__=='__main__':
    sys.exit(main())