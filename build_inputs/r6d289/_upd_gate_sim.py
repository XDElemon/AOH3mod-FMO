#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d289 配套：更新门禁 + 模拟器
G = '/sdcard/GLG/历史23/build_inputs/r6d273/check_r6d273.py'
S = '/sdcard/GLG/历史23/build_inputs/r6d287/sim_r6d287.py'

s = open(G, encoding='utf-8').read()
a = "chk('S5f topVisible 结构', tv.count('\"all\"') == 1 and tv.count('if-nez') == 2)\n"
b = ("chk('S5f topVisible 结构', tv.count('\"all\"') == 1 and tv.count('if-eqz') == 2 and 'if-nez' not in tv)\n"
     "chk('S19 tree-probes', all(k in t0 for k in ['nTTVB top','nTTVS sel','nTTCNT','nTTIX']))\n"
     "chk('S19 mn-probes', all(k in open(os.path.join(TREES[0],'aoc/kingdoms/lukasz/menu/MenuManager.smali'),encoding='utf-8').read() for k in ['nMMU px','nMMD x','nMMA m']))\n"
     "chk('S19 menu-probe', 'nMMB i' in open(os.path.join(TREES[0],'aoc/kingdoms/lukasz/menu/Menu.smali'),encoding='utf-8').read())\n")
assert s.count(a) == 1, ('S5f', s.count(a))
s = s.replace(a, b, 1)

a2 = "chk('N12 dbgPIN回退变红', n12)\n"
b2 = ("chk('N12 dbgPIN回退变红', n12)\n\n"
      "# N13 topVisible 守卫回退 → S5f 失败（应判红）\n"
      "tvx = body_of(t0, '.method public static topVisible(')\n"
      "tv_bad = tvx.replace('if-eqz v1, :tv_chk', 'if-nez v1, :tv_chk', 1)\n"
      "n13 = ('if-nez' in tv_bad) and (tv_bad != tvx)\n"
      "chk('N13 topVisible回退变红', n13)\n")
assert s.count(a2) == 1, ('N12', s.count(a2))
s = s.replace(a2, b2, 1)
open(G, 'w', encoding='utf-8').write(s)
print('GATE UPDATED')

w = open(S, encoding='utf-8').read()
a3 = "    chk('D topVisible(%s,%s)⇒%s want %s' % (top, sel, got, want), ok)\n"
b3 = (a3 +
      "\n"
      "_bad_tv = tree.replace('if-eqz v1, :tv_chk', 'if-nez v1, :tv_chk', 1)\n"
      "chk('D反转敏感性（首守卫改反⇒(land,air)变1）', sim_topvis(_bad_tv, 'land', 'air') == 1)\n")
assert w.count(a3) == 1, ('D', w.count(a3))
w = w.replace(a3, b3, 1)
open(S, 'w', encoding='utf-8').write(w)
print('SIM UPDATED')