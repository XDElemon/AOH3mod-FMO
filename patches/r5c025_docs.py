# -*- coding: utf-8 -*-
# r5c025_docs.py —— 交接文档登记 r5c025（P0 诊断批）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
t = io.open(P, encoding='utf-8').read()
if u'r5c025' in t:
    print('已登记，跳过'); raise SystemExit
KEY = u'r5c024'
i = t.find(KEY)
if i < 0:
    print('未找到 r5c024 行，跳过'); raise SystemExit
# 定位该行行尾
j = t.find(u'\n', i)
row = u'\n| r5c025 | P0「AI 空军」只读诊断探针批（8 组：nA1e/nA2m/nA3b/nA4d/nA4f/nA5t/nA6c/nA9r，走 e5i 通道）| `7a3b0828…` / `c6928c1d…` | 09-24 14:35 | ✅ 已抓样判读（见《AI打击接入_调研与计划书v1》§14）|'
if u'| r5c024' in t[:j]:
    B = P + '.pre_r5c025doc'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t[:j] + row + t[j:]
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK 交接文档已登记 r5c025')
else:
    print('r5c024 行格式不符，跳过')