# -*- coding: utf-8 -*-
# R5c001（docs-only）：把「第③步B 攻击机追部队」的第二轮调研 + 雷清单 + 分批结论 写入计划书
#  1) §2.3 的 O2 视野门极性订正（加注）
#  2) 追加「附-11」：议题定案 / 引擎事实 / 雷清单 / 复杂度与分批 / 落点
# 不改任何 smali，不产出 apk。

import io, re, shutil, os

DOC = '/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
BAK = DOC + '.pre_r5c001.bak'

shutil.copyfile(DOC, BAK)
s = io.open(DOC, encoding='utf-8').read()
orig_len = len(s)

bad = 0

# ---------- 1) §2.3 极性订正（只加注，不改原句）----------
OLD_O2 = '- **★O2 视野门（本轮新增约束）**：'
NEW_O2 = ('- ⚠️**（极性订正 2026-09-22：本条结论写反了 —— 实为 `getFogDrawArmy()==true` ＝【可见】；'
          '订正依据见 附-11.1）**\n'
          '- **★O2 视野门（本轮新增约束）**：')
n = s.count(OLD_O2)
print('§2.3 O2 锚点命中: ' + str(n))
if n != 1:
    bad += 1
else:
    s = s.replace(OLD_O2, NEW_O2, 1)

# ---------- 2) 追加 附-11 ----------
SEC = io.open('/sdcard/GLG/历史23/r5c001_sec.md', encoding='utf-8').read()
MARK = '## 附-11 · 第③步B「攻击机追部队」第二轮调研与定稿'
if MARK in s:
    print('附-11 已存在，跳过追加')
else:
    if not s.endswith('\n'):
        s += '\n'
    s += '\n' + SEC
    print('附-11 已追加，长度 ' + str(len(SEC)))

io.open(DOC, 'w', encoding='utf-8').write(s)

print('原文长度 ' + str(orig_len) + ' -> 新长度 ' + str(len(s)))
for k in [MARK, '附-11.1', '附-11.2', '附-11.3', '附-11.4', '附-11.5', '极性订正 2026-09-22']:
    ok = k in s
    print((' OK ' if ok else ' XX ') + '标记 ' + k)
    bad += 0 if ok else 1

assert bad == 0
print('OK: r5c001 文档写入完成（备份 ' + BAK + '）')
