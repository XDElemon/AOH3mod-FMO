import re
import re, sys
# 静态检查：pN 是否超出参数个数；vN 是否超出局部寄存器数
p=sys.argv[1]
t=open(p,encoding='utf-8').read()
# r6d185：先去掉行内注释，防止注释里出现 p2/v15 造成假报
t='\n'.join(re.sub(r'#.*$','',ln) for ln in t.split('\n'))

bad=0
parts=re.split(r'(\.method [^\n]*\n)', t)
for i in range(1,len(parts),2):
    header=parts[i]; body=parts[i+1]
    mm=re.search(r'\(([^)]*)\)', header)
    rg=re.search(r'\.registers (\d+)', body)
    if not (mm and rg): continue
    inside=mm.group(1); cnt=0
    for tok in re.findall(r'\[|L[^;]*;|[IJFDZBSCV]', inside):
        if tok=='[' : cnt+=1
        elif tok=='J' or tok=='D': cnt+=2
        else: cnt+=1
    # r6d162：实例方法（非 static）第 1 个参数是 this，check_params 以前漏算 ⇒ p0 假阳性
    if 'static' not in header:
        cnt += 1
    regs=int(rg.group(1)); locals_=regs-cnt
    name=header.split()[-1]
    for pn in set(int(x) for x in re.findall(r'\bp(\d+)\b', body)):
        if pn>=cnt:
            print('  ❌ %s%s：使用了 p%d，但只有 %d 个参数（实例方法已含 this）' % (name, mm.group(0), pn, cnt)); bad+=1
    for vn in set(int(x) for x in re.findall(r'\bv(\d+)\b', body)):
        if vn>=locals_:
            print('  ❌ %s%s：使用了 v%d，但局部只有 v0..v%d（.registers %d）' % (name, mm.group(0), vn, locals_-1, regs)); bad+=1
print('  ' + ('✅ 参数/寄存器编号检查通过' if bad==0 else '❌ 共 %d 处越界' % bad))
sys.exit(1 if bad else 0)
