#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d174 门禁 + 行为级模拟器（eligible → inRange）
=================================================
断言（解释执行真实 smali 控制流，游戏 API 假值打桩）：
  E1 敌方 + 已部署 + 有飞机 + 同省           ⇒ true
  E2 敌方 + 已部署 + 有飞机 + 200px          ⇒ true
  E3 敌方 + 已部署 + 有飞机 + 500px（>300）  ⇒ false
  E4 友军（civ == 省主人）                    ⇒ false
  E5 未部署（apid = -1）                      ⇒ false
  E6 无活飞机（aliveAircraft 空/ null）        ⇒ false
结构断言：eligible 用 if-eq v1,p1,:no；inRange 用 if-eq v2,v3,:yes；旧形态不得出现。
负样本：把两处 if-eq 反转回 if-ne ⇒ 必须变红。
"""
import math
import re
import sys

AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'

PROV = {10: {'civ': 73, 'x': 100, 'y': 100},
        11: {'civ': 99, 'x': 300, 'y': 100},     # 距 10 号 200px
        12: {'civ': 99, 'x': 600, 'y': 100}}     # 距 10 号 500px
SIZE = 13892


def method_block(name_sig, text=None):
    s = text if text is not None else open(AD, encoding='utf-8').read()
    i = s.index(name_sig)
    j = s.index('.end method', i)
    return [l.strip() for l in s[i:j].splitlines()
            if l.strip() and not l.strip().startswith(('.method', '.registers', '.param', '.line', '.catch'))]


def labels_of(ins):
    lab = {}
    seq = []
    for t in ins:
        if re.match(r'^:[\w]+$', t):
            lab[t] = len(seq)
        else:
            seq.append(t)
    return seq, lab


def run_body(tag, prov_id, mission, depth=0):
    sec = BLOCKS[tag]
    seq, lab = labels_of(sec)
    r = {'p0': mission, 'p1': 0, 'p2': 0}
    if tag == 'eligible':
        r['p1'] = PROV[prov_id]['civ']          # civID
        r['p2'] = dict(PROV[prov_id], pid=prov_id)
    else:
        r['p1'] = dict(PROV[prov_id], pid=prov_id)   # inRange(p0=任务, p1=省)
    pc, pending, steps = 0, None, 0
    while 0 <= pc < len(seq):
        steps += 1
        if steps > 4000:
            raise RuntimeError('死循环 ' + tag)
        t = seq[pc]
        if t.startswith('const/4') or t.startswith('const/16') or t.startswith('const '):
            m = re.match(r'const(?:/4|/16)? ([vp]\d+), (-?0x[0-9a-fA-F]+|-?\d+)', t)
            r[m.group(1)] = int(m.group(2), 0)
            pc += 1
        elif t.startswith(('move-object', 'move-result-object', 'move-result', 'move ')):
            m = re.match(r'move(?:-result|-object|-result-object)? ([vp]\d+)(?:, ([vp]\d+))?', t)
            if m.group(2):
                r[m.group(1)] = r.get(m.group(2))
            else:
                r[m.group(1)] = pending
            pc += 1
        elif t.startswith('iget'):
            m = re.match(r'iget(?:-object)? ([vp]\d+), ([vp]\d+), \S+;->(\w+):', t)
            o, fld = r[m.group(2)], m.group(3)
            r[m.group(1)] = o.get({'airDivisionAtProvinceID': 'apid', 'aliveAircraft': 'alive',
                                  'civID': 'civ', 'buildings': 'buildings'}.get(fld, fld))
            pc += 1
        elif t.startswith('sget'):
            m = re.match(r'sget(?:-object)? ([vp]\d+), \S+;->(\w+):', t)
            r[m.group(1)] = SIZE if m.group(2) == 'iProvincesSize' else [0] * SIZE
            pc += 1
        elif t.startswith('invoke-interface'):
            m = re.match(r'invoke-interface \{([vp]\d+)', t)
            recv = r.get(m.group(1)) if m else None
            if 'size()I' in t:
                pending = len(recv) if isinstance(recv, (list, dict)) else 0
            elif 'get(I)' in t:
                idxs = re.findall(r'[vp]\d+', t.split('}')[0])
                pending = recv[idxs[1]] if isinstance(recv, list) and len(idxs) > 1 else None
            pc += 1
        elif t.startswith('invoke-static') and 'AirDefense;->inRange(' in t:
            if depth > 3:
                pending = False
            else:
                pending = run_body('inRange', prov_id, mission, depth + 1)
            pc += 1
        elif t.startswith('invoke-virtual') and 'getProvinceID()I' in t:
            if 'p2' in t:
                pending = r['p2'].get('pid')
            elif 'p1' in t:
                pending = r['p1'].get('pid')
            else:
                pending = r['p0'].get('pid')
            pc += 1
        elif t.startswith('invoke-virtual') and ('getCenterX_Real' in t or 'getCenterY_Real' in t):
            o = r['p1'] if 'p1' in t else (r['v6'] if 'v6' in t else r['p0'])
            pending = o['x'] if 'getCenterX_Real' in t else o['y']
            pc += 1
        elif t.startswith('invoke-static') and 'Game;->getProvince(I)' in t:
            mreg = re.search(r'\{([vp]\d+)\}', t)
            apid = r.get(mreg.group(1)) if mreg else None
            pending = dict(PROV[apid]) if isinstance(apid, int) and apid in PROV else None
            if pending:
                pending['pid'] = apid
            r['v6'] = pending
            pc += 1
        elif t.startswith('check-cast') or t.startswith('nop'):
            pc += 1
        elif t.startswith('sub-int') or t.startswith('mul-int') or t.startswith('add-int'):
            m = re.match(r'(\S+) ([vp]\d+), ([vp]\d+)(?:, ([vp]\d+))?', t)
            op, d1, s1, s2 = m.group(1), m.group(2), m.group(3), m.group(4)
            b = r.get(s2) if s2 else r.get(s1)
            a = r.get(s1) if s2 else r.get(d1)
            if op.startswith('sub-int'):
                r[d1] = a - b
            elif op.startswith('mul-int'):
                r[d1] = a * b
            else:
                r[d1] = a + b
            pc += 1
        elif t.startswith('if-'):
            m = re.match(r'if-(\w+) ([vp]\d+)(?:, ([vp]\d+))?, (:\w+)', t)
            cond, r1, r2, lbl = m.groups()
            a_ = r.get(r1)
            b_ = r.get(r2) if r2 else None

            def iszero(x):
                return (x is None) or (isinstance(x, int) and x == 0)
            num = lambda x: 0 if x is None else x
            if cond == 'eq':
                take = (a_ == b_) if r2 else iszero(a_)
            elif cond == 'ne':
                take = (a_ != b_) if r2 else (not iszero(a_))
            elif cond in ('eqz', 'nez'):
                take = iszero(a_) if cond == 'eqz' else (not iszero(a_))
            elif cond == 'ltz':
                take = num(a_) < 0
            elif cond == 'gez':
                take = num(a_) >= 0
            elif cond == 'gtz':
                take = num(a_) > 0
            elif cond == 'lez':
                take = num(a_) <= 0
            elif cond == 'lt':
                take = num(a_) < num(b_)
            elif cond == 'ge':
                take = num(a_) >= num(b_)
            elif cond == 'gt':
                take = num(a_) > num(b_)
            elif cond == 'le':
                take = num(a_) <= num(b_)
            else:
                raise RuntimeError('未知条件 ' + cond)
            pc = lab[lbl] if take else pc + 1
        elif t.startswith('goto'):
            pc = lab[t.split()[1]]
        elif t.startswith('return '):
            return (r[re.match(r'return ([vp]\d+)', t).group(1)] == 1)
        elif t.startswith('return-void'):
            return None
        else:
            pc += 1
    return None


BLOCKS = {'eligible': method_block('.method public static eligible('),
          'inRange': method_block('.method public static inRange(')}


def checks(text):
    bad = []
    el = text[text.index('.method public static eligible('):]
    el = el[:el.index('.end method')]
    ir = text[text.index('.method public static inRange('):]
    ir = ir[:ir.index('.end method')]
    if 'if-eq v1, p1, :no' not in el:
        bad.append('eligible 敌我极性错（应 if-eq v1, p1, :no：==省主人才跳过）')
    if 'if-ne v1, p1, :no' in el:
        bad.append('eligible 出现 if-ne 血案形态（只打友军）')
    if 'if-eq v2, v3, :yes' not in ir:
        bad.append('inRange 同省极性错（应 if-eq v2, v3, :yes）')
    if 'if-ne v2, v3, :yes' in ir:
        bad.append('inRange 出现 if-ne 血案形态（不同省也算在射程内）')
    if 'const v13, 0x15f90' not in ir:
        bad.append('inRange 缺 300² 常量')
    return bad


def main():
    text = open(AD, encoding='utf-8').read()
    if '--selftest' in sys.argv:
        muts = [('N1 eligible 反转', text.replace('if-eq v1, p1, :no', 'if-ne v1, p1, :no', 1), 'eligible'),
                ('N2 inRange 反转', text.replace('if-eq v2, v3, :yes', 'if-ne v2, v3, :yes', 1), 'inRange')]
        ok = True
        for name, t2, tag in muts:
            hit = any(tag in b for b in checks(t2))
            print('  %s %-20s 被抓=%s' % ('✅' if hit else '❌', name, hit))
            ok &= hit
        print('=== 自检结果：%s ===' % ('全部被抓 ✅' if ok else '有漏抓 ❌'))
        return 0 if ok else 1

    bad = checks(text)
    print('=== r6d174 门禁 ===')
    for b in bad:
        print('  ❌', b)
    if bad:
        print('结果：FAIL')
        return 1
    print('  ✅ 结构断言全过')

    print()
    print('=== 行为级模拟器（解释执行 eligible → inRange）===')
    cases = [
        ('E1 敌+已部署+有飞机+同省', {'civ': 99, 'apid': 10, 'alive': [1]}, True),
        ('E2 同上但 200px', {'civ': 99, 'apid': 11, 'alive': [1]}, True),
        ('E3 同上但 500px(>300)', {'civ': 99, 'apid': 12, 'alive': [1]}, False),
        ('E4 友军', {'civ': 73, 'apid': 10, 'alive': [1]}, False),
        ('E5 未部署', {'civ': 99, 'apid': -1, 'alive': [1]}, False),
        ('E6 无活飞机', {'civ': 99, 'apid': 10, 'alive': []}, False),
    ]
    ok = True
    for name, m, exp in cases:
        got = run_body('eligible', 10, m)
        good = (got == exp)
        ok &= good
        print('  %s %-26s ⇒ %s（期望 %s）' % ('✅' if good else '❌', name, got, exp))

    print()
    print('=== 反转敏感性自检 ===')
    mut = text.replace('if-eq v1, p1, :no', 'if-ne v1, p1, :no', 1)
    BLOCKS['eligible'] = method_block('.method public static eligible(', text=mut)
    got = run_body('eligible', 10, {'civ': 99, 'apid': 10, 'alive': [1]})
    print('  %s 反转 eligible 后 E1 ⇒ %s（正确应 True）' % ('✅' if got is not True else '❌', got))
    ok &= (got is not True)
    BLOCKS['eligible'] = method_block('.method public static eligible(', text=text)
    print()
    print('=== 结果：%s ===' % ('全过 ✅' if ok else '不通过 ❌'))
    return 0 if ok else 1


if __name__ == '__main__':
    sys.exit(main())