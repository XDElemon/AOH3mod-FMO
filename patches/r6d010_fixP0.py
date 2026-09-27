# -*- coding: utf-8 -*-
# r6d010_fixP0.py —— 修外部审查 E2/E1/E3/E5（配置读取反、ai_cap 反、探针位置、prob 钳位）
import re, sys, io, os
AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(AFM)
    if 'r6d010' in s:
        print('[SKIP] 已打'); return
    # F1（E2, P0）：配置读取极性
    old = '    if-nez v0, :dg_end\n'
    assert s.count(old) == 1, 'F1 锚点=%d' % s.count(old)
    s = s.replace(old, '    if-eqz v0, :dg_end   # r6d010：v0==null 才跳过解析（原写反 ⇒ 读到内容反而跳过）\n', 1)
    print('  [OK] F1 配置读取极性 if-nez → if-eqz（E2 修复）')
    # F2（E1, P0）：ai_cap 闸 + 早退块挪到方法尾
    old2 = ('    if-ge v8, v9, :aib_go\n'
            '    :aib_off\n'
            '    return-void\n'
            '    :aib_go\n')
    assert s.count(old2) == 1, 'F2 锚点=%d' % s.count(old2)
    s = s.replace(old2, '    if-ge v8, v9, :aib_off   # r6d010：已达/超上限 ⇒ 不造（原跳到 :aib_go = 反）\n', 1)
    # 把 :aib_off / return-void 追加到 updateAIBuildUp 末尾
    m = re.search(r'(\.method private updateAIBuildUp\(Laoc/kingdoms/lukasz/map/battles/Airport;\)V\n)', s)
    assert m, 'F2 方法头'
    j = s.find('\n.end method', m.end())
    assert j > 0, 'F2 方法尾'
    s = s[:j] + '\n    :aib_off   # r6d010：三闸早退出口\n    return-void' + s[j:]
    print('  [OK] F2 ai_cap 极性 + :aib_off 移到方法尾（E1 修复）')
    # F3（E3, P1）：探针只在成功分支
    probe_re = re.compile(r'[ \t]*# r6d009 探针：AI 排产成功（机型 ordinal）\n'
                          r'(?:\s*const-string v8, "aiBldS"\n)'
                          r'(?:\s*invoke-virtual \{v6\}, [^\n]*->ordinal\(\)I\n)'
                          r'(?:\s*move-result v9\n)'
                          r'(?:\s*invoke-static \{v8, v9\}, [^\n]*->e5i\([^\n]*\n)')
    mp = probe_re.search(s)
    assert mp, 'F3 探针锚点'
    probe = mp.group(0)
    s = s[:mp.start()] + s[mp.end():]
    # 找 startBuild 成功判定（if-eqz v7, :xxx）之后插回
    m3 = re.search(r'(invoke-virtual \{p1, v6\}, [^\n]*Airport;->startBuild\([^\n]*\)Z\n\s*move-result v7\n[\s\S]{0,400}?)(\s*if-eqz v7, :\w+\n)', s)
    assert m3, 'F3 成功判定锚点'
    s = s[:m3.end(2)] + probe + s[m3.end(2):]
    print('  [OK] F3 探针移到 startBuild 成功分支（E3 修复）')
    # F4（E5, P2）：dgProb 钳 [0,100]
    anc4 = ('    const-string v1, "prob"\n'
            '    const/16 v2, 0x50\n'
            '    invoke-static {v0, v1, v2}, ' + CLS + '->cfgExtractInt(Ljava/lang/String;Ljava/lang/String;I)I\n'
            '    move-result v2\n')
    assert s.count(anc4) == 1, 'F4 锚点=%d' % s.count(anc4)
    clamp = ('    # r6d010：prob 钳到 [0,100]\n'
             '    if-ltz v2, :dg_p_lo\n'
             '    const/4 v2, 0x0\n'
             '    :dg_p_lo\n'
             '    const/16 v3, 0x64\n'
             '    if-le v2, v3, :dg_p_hi\n'
             '    const/16 v2, 0x64\n'
             '    :dg_p_hi\n')
    s = s.replace(anc4, anc4 + clamp, 1)
    print('  [OK] F4 dgProb 钳位（E5 修复）')
    wr(AFM, s)

def gate():
    fails = []
    s = rd(AFM)
    if 'if-nez v0, :dg_end' in s: fails.append('68-1 配置读取仍是反转的 if-nez')
    if 'if-eqz v0, :dg_end' not in s: fails.append('68-1 缺 if-eqz v0, :dg_end')
    if re.search(r'if-ge v8, v9, :aib_go', s): fails.append('68-2 ai_cap 仍跳 :aib_go（反）')
    if 'if-ge v8, v9, :aib_off' not in s: fails.append('68-2 缺 if-ge v8, v9, :aib_off')
    # 早退块必须在方法尾（其后紧跟 .end method）
    i = s.find('.method private updateAIBuildUp')
    j = s.find('.end method', i)
    body = s[i:j]
    if not body.rstrip().endswith('return-void'): fails.append('68-2 早退块不在方法尾')
    if ':aib_off' not in body: fails.append('68-2 缺 :aib_off')
    # 探针位置：必须在 if-eqz v7 之后
    k = body.find('aiBldS'); k2 = body.find('startBuild')
    k3 = body.find('if-eqz v7,')
    if k < 0: fails.append('68-3 探针丢失')
    elif not (k2 < k3 < k): fails.append('68-3 探针不在成功判定之后')
    # prob 钳位
    if 'prob 钳到 [0,100]' not in s: fails.append('68-4 缺 prob 钳位')
    if s.count('const/16 v3, 0x64') < 1: fails.append('68-4 缺 100 常量')
    # 寄存器越界（两个方法）
    for hd, pcount in ((r'\.method private updateAIBuildUp\(Laoc/kingdoms/lukasz/map/battles/Airport;\)V', 2),
                       (r'\.method public static demoLoadCfg\(\)V', 0)):
        m = re.search(hd + r'\n\s*\.registers (\d+)', s)
        if not m: fails.append('68-5 找不到 %s' % hd[:40]); continue
        regs = int(m.group(1)); i2 = m.start(); j2 = s.find('.end method', i2)
        b = s[i2:j2]
        for vv in set(re.findall(r'\bv(\d+)\b', b)):
            if int(vv) >= regs - pcount: fails.append('68-5 v%s 越界（%s regs=%d）' % (vv, hd[:24], regs))
    neg = 0
    if re.search(r'if-nez v0, :dg_end', 'if-nez v0, :dg_end'): neg += 1
    if re.search(r'if-ge v8, v9, :aib_go', 'if-ge v8, v9, :aib_go'): neg += 1
    if re.search(r'prob 钳到 \[0,100\]', 'prob 钳到 [0,100]'): neg += 1
    print('== 门禁 68 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('68 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)