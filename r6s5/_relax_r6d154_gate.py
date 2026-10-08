#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""放宽 check_r6d154.py：pap 调用已被 r6d172 摘除（形态被取代），并换一个等效负样本"""
P = '/sdcard/GLG/历史23/toolchain/act/check_r6d154.py'
s = open(P, encoding='utf-8').read()
orig = s

# 1) PROBE_CALLS 里去掉 pap 条目（该调用已被 r6d172 摘除）
old_entry = "    ('AM', 'AirPosProbe;->pap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V'),\n"
if old_entry in s:
    s = s.replace(old_entry, "    # pap 调用已被 r6d172 摘除（旧探针崩溃回归）⇒ 此条不再断言\n", 1)
    print('✅ 已移除 PROBE_CALLS 的 pap 条目')
else:
    print('⚠️ 未找到 pap 条目（可能已改）')

# 2) a3 里去掉 'pap(' 的位置断言
old_chk = "    if pb is None or 'pap(' not in pb:\n        return False, 'pap 不在 placeAirDivision 内'\n"
new_chk = "    if pb is None:\n        return False, 'placeAirDivision 方法未找到'\n"
if old_chk in s:
    s = s.replace(old_chk, new_chk, 1)
    print('✅ 已放宽 a3 的 pap 位置断言')
else:
    print('⚠️ 未找到 a3 的 pap 位置断言')

# 3) 负样本 N2 改成"删掉 adp 调用"（等效且仍有效）
i = s.find('    # N2：删掉 pap 探针调用')
j = s.find("neg.append(('N2 缺 pap 调用', o is False))")
if i > 0 and j > i:
    new_n2 = ('''    # N2：删掉 adp 调用（替代原"删 pap"，因为 pap 已被 r6d172 摘除）
    ov = {'PD1': load()['PD1'].replace('adp(', 'adpX(', 1)}
    o, _ = run(ov)
    neg.append(('N2 缺 adp 调用', o is False))
''')
    s = s[:i] + new_n2 + s[j + len("neg.append(('N2 缺 pap 调用', o is False))"):]
    print('✅ 已替换负样本 N2')
else:
    print('⚠️ 未找到 N2 段落')

if s != orig:
    open(P, 'w', encoding='utf-8').write(s)
    print('已写盘：', P)
else:
    print('无改动')