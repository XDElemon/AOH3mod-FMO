#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d242_pacingfix.py
r6d242：①去掉“16px 吸附跟随”（骑飞机元凶）；②延迟按现实速度换算
- 标定：US-MX 走廊 1px ≈ 2.05 km（达拉斯/休斯顿/新拉雷多/蒙特雷/墨西哥城 多对合成）
- 现实防空导弹取 Mach4 ≈ 4900 km/h ⇒ 速度 = 4900/2.05 ≈ 2390 px/小时（原 50 px/小时 ≈ 100km/h，慢 24 倍）
- 例：尤瓦尔迪→乌尼翁镇 ≈71px≈150km，Mach4 现实用时≈1.8 分钟
- 游戏钟最小粒度=1 小时 ⇒ 常规交战延迟取 1 小时（≈8.5 秒画面；原 2 小时≈17 秒）
"""
import re, sys, os

W = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
PDA = W + "/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
PAD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefense.smali"

# ---------- ① 撤吸附块 ----------
s = open(PDA, encoding='utf-8').read()
i0 = s.index(".method private static adFxStep")
i1 = s.index(".end method", i0)
seg = s[i0:i1]
pat = re.compile(r'    const v5, 0x43800000[^\n]*\n(?:[ \t]*\n)*    cmpl-float v6, v4, v5\n(?:[ \t]*\n)*    if-gez v6, :cond_3c\n(?:(?!:cond_3c).)*?return-void\n(?:[ \t]*\n)*', re.S)
c = len(pat.findall(seg)); assert c == 1, ("snap", c)
seg = pat.sub('', seg, count=1)
assert '0x43800000' not in seg, "残留阈值"
s = s[:i0] + seg + s[i1:]
print("① OK: 吸附跟随块已移除（纯配速）")
open(PDA, 'w', encoding='utf-8').write(s)

# ---------- ② 延迟换算 ----------
s = open(PAD, encoding='utf-8').read()
old1 = "    const/16 v9, 0x32    # 速度 50 px/小时（addmg.expected 行4）"
assert s.count(old1) == 1, ("div", s.count(old1))
s = s.replace(old1, "    const/16 v9, 0x992    # 速度 2450 px/小时（Mach4≈4900km/h ÷ 2km/px，r6d242）", 1)
old2 = re.compile(r'    const/16 v2, 0x2\n(?:[ \t]*\n)*(    if-lt v1, v2, :dl_min)')
c = len(old2.findall(s)); assert c == 1, ("clamp1", c)
s = old2.sub(r'    const/16 v2, 0x1\n\n\1', s, count=1)
old3 = re.compile(r'(:dl_min\n)(?:[ \t]*\n)*(    const/16 v1, 0x2\n)')
c = len(old3.findall(s)); assert c == 1, ("clamp2", c)
s = old3.sub(r'\g<1>\n    const/16 v1, 0x1\n', s, count=1)
open(PAD, 'w', encoding='utf-8').write(s)
print("② OK: 速度50→2450 px/时；延迟下限2h→1h")

# ---------- 参数文件同步（若存在） ----------
for ep in ("/sdcard/GLG/历史23/toolchain/act/addmg.expected",):
    if os.path.exists(ep):
        L = open(ep, encoding='utf-8').read().split('\n')
        if len(L) >= 4:
            print("addmg.expected 行4:", L[3][:60], "→ 改为 2450")
            L[3] = "2450"
            open(ep, 'w', encoding='utf-8').write('\n'.join(L))

# ---------- ③ 自证串 ----------
PDD = W + "/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali"
d = open(PDD, encoding='utf-8').read()
d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d242', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print("③ OK: nABOOT v=r6d242")