# -*- coding: utf-8 -*-
# check_r5c046z_gate.py —— ㊽  Phase A 修正版门禁（含“int 常量↔float 混用”检查，补 ㉙ 盲区）
# 用法: python3 check_r5c046z_gate.py <AirForceManager.smali> [<旧版同文件用于 .registers 对比>]
import sys, re

FLOAT_OPS = ('cmpg-float','cmpl-float','add-float','sub-float','mul-float','div-float','neg-float',
             'move-result')  # move-result 需上下文，单独处理
NEW_METHODS = ['pickStrikeTargetP','updateOffensivesP','hasStrikeInFlightP']

def method_body(src, name):
    m = re.search(r'\.method[^\n]*' + re.escape(name) + r'\(.*?\n.*?\.end method', src, re.S)
    return m.group(0) if m else ''

def regs_of(line):
    return re.findall(r'\bv\d+\b', line)

def main():
    if len(sys.argv) < 2:
        print('usage: check_r5c046z_gate.py <AirForceManager.smali> [old.smali]'); return 2
    src = open(sys.argv[1], encoding='utf-8').read()
    old = open(sys.argv[2], encoding='utf-8').read() if len(sys.argv) > 2 else None
    bad = []

    # 1) pickStrikeTargetP：不得用 int 常量当 float；必须用 float 渠道
    b = method_body(src, 'pickStrikeTargetP')
    if not b: bad.append('㊽ pickStrikeTargetP 缺失')
    else:
        if 'const/high16 v3' in b or 'const v3' in b:
            bad.append('㊽ pickStrikeTargetP 仍有 const→v3（int 常量当 float 用）')
        if 'floatValue()F' not in b and 'intBitsToFloat(I)F' not in b:
            bad.append('㊽ pickStrikeTargetP 未用 float 渠道初始化 bestDist（应 floatValue()F 或 intBitsToFloat(I)F）')
        # 盲区检查：本方法内 const* 写过的寄存器，不得再作为任何 *-float 指令的操作数
        const_regs = set()
        for l in b.split('\n'):
            s = l.strip()
            if s.startswith('const/4 ') or s.startswith('const/16 ') or s.startswith('const ') or s.startswith('const/high16 '):
                const_regs |= set(regs_of(s))
        for l in b.split('\n'):
            s = l.strip()
            if s.split(' ')[0] in FLOAT_OPS and s.split(' ')[0].endswith('-float'):
                operands = regs_of(s)[1:]
                hit = const_regs & set(operands)
                if hit: bad.append('㊽ %s 把 const 寄存器 %s 当 float 用' % (s.split(' ')[0], ','.join(sorted(hit))))

    # 2) tryStrikeForAirportP：两处门极性
    t = method_body(src, 'tryStrikeForAirportP')
    if not t: bad.append('㊽ tryStrikeForAirportP 缺失')
    else:
        if 'if-nez v3, :cond_51' not in t: bad.append('㊽ 关2 未修正（应 if-nez v3, :cond_51）')
        if re.search(r'autoStrikeOff:Z\s*\n\s*if-eqz v3, :cond_51', t): bad.append('㊽ 关2 仍是反向写法')
        # 关3 概率门口径：80% 尝试（rnd<0.2 才跳过）⇒ 必须 if-ltz；该口径在 r5c046z2/E5 定稿，㊿-5 亦看此
        if 'if-ltz v4, :cond_51' not in t: bad.append('㊽ 关3 口径错（80% 尝试 ⇒ 应 if-ltz v4, :cond_51）')
        if 'if-gez v4, :cond_51' in t: bad.append('㊽ 关3 仍是 20% 旧口径（应 if-ltz）')

    # 3) updateOffensivesP：总闸 + 被 update(civ) 调用
    u = method_body(src, 'updateOffensivesP')
    if not u: bad.append('㊽ updateOffensivesP 缺失')
    else:
        if 'if-nez v7, :os_loop' not in u: bad.append('㊽ updateOffensivesP 总闸写反（应 if-nez）')
        if 'tryStrikeForAirportP' not in u: bad.append('㊽ updateOffensivesP 未调用 tryStrikeForAirportP')
    if 'updatePatrols(I)V' not in src or 'updateOffensivesP(I)V' not in src:
        bad.append('㊽ update(civ) 未接 updateOffensivesP')
    has_call = bool(re.search(r'updatePatrols\(I\)V\s*\n\s*(invoke-virtual \{p0, p1\}, [^\n]*updateOffensivesP\(I\)V)', src))
    if not has_call: bad.append('㊽ updateOffensivesP 未紧跟 updatePatrols 调用')

    # 4) E2：自定义标签短路，禁止跳既有 :cond_ad
    if ':z_war_go' not in src: bad.append('㊽ E2 短路标签缺失')
    if re.search(r'if-eq v6, v5, :cond_ad', src): bad.append('㊽ E2 仍跳既有 :cond_ad（猜标签）')

    # 5) 既有方法 .registers 不得变动
    if old:
        def regs_of_method(s, name):
            mm = re.search(r'(\.method[^\n]*' + re.escape(name) + r'\([^\n]*\n)(\s*\.registers\s+\d+)', s)
            return mm.group(2).strip() if mm else None
        for name in ('executeAIAssignmentForAirport', 'executeAIAssignment', 'update', 'a1Scan', 'a1bScan'):
            a, c = regs_of_method(old, name), regs_of_method(src, name)
            if a and c and a != c:
                bad.append('㊽ 既有方法 %s 的 .registers 被改动（%s -> %s）' % (name, a, c))
    for x in bad: print('FAIL %s' % x)
    print('㊽ r5c046z: %d 处可疑' % len(bad))
    return 1 if bad else 0

if __name__ == '__main__':
    sys.exit(main())