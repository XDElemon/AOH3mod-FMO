import re, sys, os
# 静态检查：pN 超参数个数；vN 超局部寄存器数；wide 写跨界覆盖参数槽（含“其后复用”过滤）。
# r6d257修复①：补回 vN 检查丢失的缩进（原来只检查文件最后一个方法）。
# r6d257修复②：新增 wide 写跨界检查（vN==locals-1 时宽对覆盖 p0 槽）。
# r6d257c（审计加强）：
#   ③ 数组参数槽位计数修正（描述符 walker：'[Ljava/lang/String;' 计 1 槽，不再虚报 locals 缺口）；
#      支持 .locals 声明的文件；
#   ④ 覆盖扩至 long/double 全族（含 /2addr）；跨界仅当“参数槽其后仍被引用”时报红
#      （游戏自身存在合法的“死参复用”，如 AirForceManager.canReach）。
# 用法：
#   python3 check_params.py <file.smali>          # 严格模式（全量报红）
#   python3 check_params.py --gate <file.smali>   # 增量门禁：仅当命中数 > 基线（check_params_baseline.tsv）才失败
ACT = os.path.dirname(os.path.abspath(__file__))
BASE = os.path.join(ACT, 'check_params_baseline.tsv')

def count_slots(inner):
    n=0; i=0
    while i<len(inner):
        c=inner[i]
        if c=='[':
            i+=1
            if i<len(inner) and inner[i]=='L':
                i=inner.index(';',i)+1
            else:
                i+=1
            n+=1
        elif c=='L':
            i=inner.index(';',i)+1; n+=1
        else:
            if c=='J' or c=='D': n+=2
            elif c=='V': pass
            else: n+=1
            i+=1
    return n

WIDE_FORMS=('const-wide/16','const-wide/32','const-wide/high16','const-wide',
'move-result-wide','iget-wide','sget-wide',
'move-wide/from16','move-wide/16','move-wide',
'int-to-long','int-to-double','long-to-double','double-to-long','float-to-double',
'neg-long','not-long','neg-double',
'add-long','sub-long','mul-long','div-long','rem-long','and-long','or-long','xor-long','shl-long','shr-long','ushr-long',
'add-long/2addr','sub-long/2addr','mul-long/2addr','div-long/2addr','rem-long/2addr','and-long/2addr','or-long/2addr','xor-long/2addr','shl-long/2addr','shr-long/2addr','ushr-long/2addr',
'add-double','sub-double','mul-double','div-double','rem-double',
'add-double/2addr','sub-double/2addr','mul-double/2addr','div-double/2addr','rem-double/2addr')

def analyze(path):
    t=open(path,encoding='utf-8').read()
    t='\n'.join(re.sub(r'"[^"]*"','""',re.sub(r'#.*$','',ln)) for ln in t.split('\n'))
    hits=[]
    bad=0
    parts=re.split(r'(\.method [^\n]*\n)', t)
    for i in range(1,len(parts),2):
        header=parts[i]; body=parts[i+1]
        mm=re.search(r'\(([^)]*)\)', header)
        rg=re.search(r'\.registers (\d+)', body)
        rl=re.search(r'\.locals (\d+)', body)
        if not mm or not (rg or rl): continue
        cnt=count_slots(mm.group(1))
        if 'static' not in header:
            cnt += 1
        name=header.split()[-1]
        if rl:
            locals_=int(rl.group(1))
        else:
            regs=int(rg.group(1)); locals_=regs-cnt
        for pn in set(int(x) for x in re.findall(r'(?<![A-Za-z0-9_$])p(\d+)\b', body)):
            if pn>=cnt:
                hits.append('%s%s：p%d 超参数（共 %d 个参数槽）' % (name, mm.group(0), pn, cnt)); bad+=1
        for vn in set(int(x) for x in re.findall(r'(?<![A-Za-z0-9_$])v(\d+)\b', body)):
            if vn>=locals_:
                hits.append('%s%s：v%d 超局部（只有 v0..v%d）' % (name, mm.group(0), vn, locals_-1)); bad+=1
        if locals_>=1:
            lines_=[l.strip() for l in body.split('\n')]
            rv=re.compile(r'(?<![A-Za-z0-9_$])v%d\b' % locals_)
            rp=re.compile(r'(?<![A-Za-z0-9_$])p0\b')
            for idx, ln in enumerate(lines_):
                mw=re.match(r'(%s)\s+v(\d+)\b' % '|'.join(re.escape(w) for w in WIDE_FORMS), ln)
                if mw and int(mw.group(2))==locals_-1 and any(rv.search(x) or rp.search(x) for x in lines_[idx+1:]):
                    hits.append('%s%s：wide 写 v%d 跨界覆盖参数槽且其后被复用' % (name, mm.group(0), locals_-1)); bad+=1
    return hits

def load_base():
    d={}
    if os.path.exists(BASE):
        for ln in open(BASE,encoding='utf-8'):
            ln=ln.rstrip('\n')
            if '\t' in ln:
                k,v=ln.rsplit('\t',1)
                try: d[k]=int(v)
                except: pass
    return d

def save_base(d):
    items=sorted(d.items())
    with open(BASE,'w',encoding='utf-8') as f:
        for k,v in items:
            f.write('%s\t%d\n' % (k,v))

if len(sys.argv)>=3 and sys.argv[1]=='--gate':
    path=sys.argv[2]; mode='gate'
else:
    path=sys.argv[1]; mode='strict'

hits=analyze(path)
bad=len(hits)
for h in hits[:40]:
    print('  ❌', h)
if bad>40: print('  ...(共 %d 处)' % bad)

if mode=='strict':
    print('  ' + ('✅ 参数/寄存器编号检查通过' if bad==0 else '❌ 共 %d 处越界' % bad))
    sys.exit(1 if bad else 0)

d=load_base()
base=d.get(path)
if base is None:
    d[path]=bad; save_base(d)
    print('  ⚠️ 首见文件：写入基线 %d（本次 %d 处）' % (bad, bad))
    sys.exit(0)
if bad>base:
    print('  ❌ 增量门禁失败：本次 %d 处 > 基线 %d 处（新增 %d）' % (bad, base, bad-base))
    sys.exit(1)
if bad<base:
    d[path]=bad; save_base(d)
    print('  ✅ 通过（基线收敛：%d → %d）' % (base, bad))
else:
    print('  ✅ 通过（命中 %d = 基线 %d）' % (bad, base))
sys.exit(0)