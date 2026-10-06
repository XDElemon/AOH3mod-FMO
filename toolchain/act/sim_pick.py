#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# sim_pick.py —— 行为级模拟器：解释 pickTarget 的“第 idx 个合格目标”判定极性
# 血案 r6d179→r6d180：if-ne v1,p2,:found （v1==p2 时不返回）⇒ 永远取不到第0个 ⇒ 一发都不打
import io, re, sys
AD='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
MSIG=re.compile(r'\.method[^\n]*?(\w+)\(([^)]*)\)([^\n]*)\n(.*?)\.end method', re.S)
def body(txt, sig):
    m=MSIG.search(txt)
    for m in MSIG.finditer(txt):
        if m.group(1)==sig: return m.group(4)
    raise SystemExit('no method '+sig)
def find_branch(b):
    for ln in b.splitlines():
        ln=ln.strip()
        m=re.match(r'(if-[a-z]+)\s+([vp]\d+),\s*([vp]\d+),\s*:(\w+)', ln)
        if m and m.group(4)=='found':
            return m.group(1), m.group(2), m.group(3)
    return None
ZERO={'if-eqz':lambda a,b:a==0,'if-nez':lambda a,b:a!=0,'if-ltz':lambda a,b:a<0,'if-gez':lambda a,b:a>=0,
      'if-lez':lambda a,b:a<=0,'if-gtz':lambda a,b:a>0,
      'if-eq':lambda a,b:a==b,'if-ne':lambda a,b:a!=b,'if-lt':lambda a,b:a<b,'if-ge':lambda a,b:a>=b,
      'if-le':lambda a,b:a<=b,'if-gt':lambda a,b:a>b}
def jump(mn,a,b): return ZERO[mn](a,b)
def main():
    b=body(io.open(AD,encoding='utf-8').read(),'pickTarget')
    fb=find_branch(b)
    ok=True
    def chk(n,c,ex=''):
        nonlocal ok
        print(('  \u2705 ' if c else '  \u274c ')+n+(('  '+ex) if ex else ''))
        if not c: ok=False
    print('=== pickTarget 的 :found 分支 ===')
    chk('找到 :found 分支', fb is not None, str(fb))
    mn,a,c=fb
    chk('助记符为 if-eq（语义：vA==vB 则返回）', mn=='if-eq', mn)
    chk('操作数为 v1, p2（计数器 vs 请求下标）', a=='v1' and c=='p2', '%s,%s'%(a,c))
    print('=== 语义真值表（v1=已计数, p2=请求下标）===')
    chk('v1=0,p2=0 ⇒ 返回（第1个）', jump(mn,0,0)==True)
    chk('v1=1,p2=0 ⇒ 不返回', jump(mn,1,0)==False)
    chk('v1=0,p2=1 ⇒ 不返回', jump(mn,0,1)==False)
    chk('v1=1,p2=1 ⇒ 返回（第2个）', jump(mn,1,1)==True)
    print('=== 反转敏感性（改回 if-ne 必须失败）===')
    bad=jump('if-ne',0,0)
    chk('把助记符改回 if-ne 后 v1=0,p2=0 不再返回', bad==False, 'jump=%s'%bad)
    print()
    print('\u2705 模拟器全部通过' if ok else '\u274c 有失败项')
    sys.exit(0 if ok else 1)
main()
