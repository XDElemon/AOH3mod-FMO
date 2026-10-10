# -*- coding: utf-8 -*-
# r6d259: re-baseline five drifted gates (subject code evolved after those batches).
# Applies to BOTH act copies (repo + sdcard working copy).
from pathlib import Path

DIRS = ['/root/history23_repo/toolchain/act', '/sdcard/GLG/历史23/toolchain/act']
FILES = ['check_r6t001.py', 'check_r6d255.py', 'check_r6d257.py', 'check_r6d169.py', 'check_r6d174.py']

def rep(t, old, new, cnt, tag):
    c = t.count(old)
    assert c == cnt, (tag, 'count', c)
    return t.replace(old, new)

for d in DIRS:
    for fn in FILES:
        p = Path(d) / fn
        t = p.read_text(encoding='utf-8')
        if fn == 'check_r6t001.py':
            t = rep(t, "nTNO1 v=r6t001 assets=7", "nTNO1 v=r6t003 assets=13", 2, 'r6t001.probe')
            t = rep(t, "if ig.count('Images;->tno') != 7:", "if ig.count('Images;->tno') != 13:", 1, 'r6t001.s2')
            t = rep(t, "if im.count('.field public static tno') != 7:", "if im.count('.field public static tno') != 13:", 1, 'r6t001.s4')
            t = rep(t, "if seg.count('move-result v0') != 7:", "if seg.count('move-result v0') != 13:", 1, 'r6t001.s5a')
            t = rep(t, "if seg.count('const-string v0') != 8:", "if seg.count('const-string v0') != 14:", 1, 'r6t001.s5b')
            t = rep(t, "if seg.count('invoke-static {v0}') != 8:", "if seg.count('invoke-static {v0}') != 14:", 1, 'r6t001.s5c')
            t = rep(t, 'PROBE = ', '# r6d259 re-baseline: 后续批次演进（assets=13 / 探针串 r6t003；旧基线 7/8/8 停用）\nPROBE = ', 1, 'r6t001.note')
        elif fn == 'check_r6d255.py':
            t = rep(t, "S6 nABOOT r6d255', (dg.count('nABOOT v=r6d255') == 1) and (dg.count('r6d254') == 0)",
                    "# r6d259 re-baseline: nABOOT 已前滚至 r6d258\nok('S6 nABOOT r6d258', (dg.count('nABOOT v=r6d258') == 1) and (dg.count('v=r6d255') == 0)",
                    1, 'r6d255.s6')
            t = t.replace("ok(', '# r6d259", "ok('# r6d259")  # no-op guard
        elif fn == 'check_r6d257.py':
            t = rep(t, "v=r6d257\"') != 1", "v=r6d258\"') != 1", 1, 'r6d257.s5a')
            t = rep(t, "if 'v=r6d256' in t_pdd", "if 'v=r6d257' in t_pdd", 1, 'r6d257.s5b')
        elif fn == 'check_r6d169.py':
            olda = ("        if 'if-gt v12, v13, :cond_next' not in ir:\n"
                    "            bad.append('P4 inR 距离极性错（应 if-gt v12, v13, :cond_next：d²>300² 才跳过）')\n")
            newa = ("        # r6d259 re-baseline: r6d182 起距离判定改用 AirLat.hit（R=100/130）\n"
                    "        if 'AirLat;->hit(IIII)Z' not in ir:\n"
                    "            bad.append('P4 inR 缺少 AirLat 半径判定调用')\n"
                    "        if 'if-eqz v12, :cond_next' not in ir:\n"
                    "            bad.append('P4 inR AirLat 结果极性错（应 if-eqz v12, :cond_next：未命中才跳过）')\n"
                    "        if 'if-nez v12, :cond_next' in ir:\n"
                    "            bad.append('P4 inR 出现 if-nez v12, :cond_next（血案形态）')\n"
                    "        if 'const/16 v15, 0x64' not in ir or 'const/16 v15, 0x82' not in ir:\n"
                    "            bad.append('P4 inR 缺少 R 基数常量 0x64/0x82')\n")
            t = rep(t, olda, newa, 1, 'r6d169.p4a')
            oldb = ("        if 'const v13, 0x15f90' not in ir:\n"
                    "            bad.append('P4 inR 缺少 300² 常量（0x15f90 = 90000）')\n")
            t = rep(t, oldb, "", 1, 'r6d169.p4b')
            oldc = "            ('N5 inR 距离极性反转', 'if-gt v12, v13, :cond_next', 'if-lt v12, v13, :cond_next', 'P4'),"
            newc = "            ('N5 inR AirLat 调用名破坏', 'AirLat;->hit(IIII)Z', 'AirLat;->hitx(IIII)Z', 'P4'),"
            t = rep(t, oldc, newc, 1, 'r6d169.n5')
        elif fn == 'check_r6d174.py':
            old = ("    if 'const v13, 0x15f90' not in ir:\n"
                   "        bad.append('inRange 缺 300² 常量')\n")
            new = ("    # r6d259 re-baseline: r6d182 起距离判定改用 AirLat.hit（R=100/130）\n"
                   "    if 'AirLat;->hit(IIII)Z' not in ir:\n"
                   "        bad.append('inRange 缺 AirLat 半径判定')\n"
                   "    if 'const/16 v13, 0x64' not in ir or 'const/16 v13, 0x82' not in ir:\n"
                   "        bad.append('inRange 缺 R 基数常量 0x64/0x82')\n")
            t = rep(t, old, new, 1, 'r6d174.inrange')
        p.write_text(t, encoding='utf-8')
        print('patched', fn, '@', d)
print('ALL DONE')