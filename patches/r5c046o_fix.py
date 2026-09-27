# -*- coding: utf-8 -*-
# r5c046o_fix.py —— A：机场 dump 加 strike=；B：面板未选中机场不再静默落到第 0 个
#   依据《r6s5/调研_r5c046o_开关可观测与UI选项纠错_v3定稿.md》
#   A-1 AirDbgLog.p0Air 追加 " strike="（= Airport->autoStrikeOff）
#   B-1 BtnMission.actionElement：iActiveID 无效 ⇒ :nosel（不再钳到 0）
#   B-2 机场解析后补探针 afp:press ap=<provinceID>
#   B-3 BtnMission.getTextToDraw：iActiveID 无效 ⇒ :noselTxt
#   B-4 actionElement 末尾追加 :nosel 块（Toast + afp:noSel + return）
#   B-5 getTextToDraw 末尾追加 :noselTxt（「未选中机场」）
#
# 用法：python3 r5c046o_fix.py [smali 树根目录]        （默认 /tmp/w3a/smali）
# 约定：锚点必须命中 1 次，否则**拒绝写入**；写入后逐项后置断言；任何一步失败立即中止（不改其它内容）
import os, sys, hashlib

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
L = os.path.join(ROOT, 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali')
B = os.path.join(ROOT, 'aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali')
B_CLS = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;'
B_BTN = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;'
AIR = 'Laoc/kingdoms/lukasz/map/battles/'
DBGL = AIR + 'AirDbgLog;'

def md5(p): return hashlib.md5(open(p, 'rb').read()).hexdigest()

def load(p): return open(p, encoding='utf-8').read().split('\n')

def save(p, lines): open(p, 'w', encoding='utf-8').write('\n'.join(lines))

def find_one(lines, frag, what):
    idx = [i for i, s in enumerate(lines) if frag in s]
    if len(idx) != 1:
        print('[FAIL] 锚点 %s 命中 %d 次（要求 1）：%s' % (what, len(idx), frag)); sys.exit(1)
    return idx[0]

def find_method_end(lines, header_frag, what):
    s = find_one(lines, header_frag, what + '-方法头')
    for j in range(s + 1, len(lines)):
        if lines[j].strip() == '.end method':
            return j
    print('[FAIL] 找不到 %s 的 .end method' % what); sys.exit(1)

def main():
    if not (os.path.exists(L) and os.path.exists(B)):
        print('[FAIL] 输入不存在：%s / %s' % (L, B)); return 1
    l0, b0 = md5(L), md5(B)

    # ---------- A-1：p0Air 追加 strike= ----------
    ll = load(L)
    s = find_one(ll, '.method public static p0Air(', 'A-p0Air头')
    e = find_method_end(ll, '.method public static p0Air(', 'A-p0Air')
    at = [i for i in range(s, e) if 'AirUnit$AirType;->ATTACKER:' in ll[i]]
    if len(at) != 1:
        print('[FAIL] A 锚点 at= 块命中 %d 次' % len(at)); return 1
    e5 = [i for i in range(at[0], e) if 'AirDbgLog;->e5i(Ljava/lang/String;I)V' in ll[i]]
    if not e5:
        print('[FAIL] A 找不到 at= 的 e5i'); return 1
    ins = e5[0] + 1
    add = ['', '    const-string v1, " strike="', '',
           '    invoke-static {p1, v1}, ' + DBGL + '->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;', '',
           '    move-result-object v0', '',
           '    iget-boolean v2, p0, ' + AIR + 'Airport;->autoStrikeOff:Z', '',
           '    invoke-static {v0, v2}, ' + DBGL + '->e5i(Ljava/lang/String;I)V']
    ll[ins:ins] = add
    save(L, ll)
    print('[OK] A-1 p0Air 追加 strike=（+%d 行）' % len(add))

    # ---------- B ----------
    bl = load(B)
    # B-1：钳位 → :nosel
    i1 = find_one(bl, 'if-gez v1, :cond_1b', 'B1-未选中分支')
    i2 = find_one(bl, 'if-lt v1, v2, :cond_22', 'B1-越界分支')
    bl[i1] = bl[i1].replace(':cond_1b', ':nosel')
    bl[i2] = bl[i2].replace(':cond_22', ':nosel')
    # 删掉两处钳位用的 const/4 v1, 0x0（紧邻其后）
    dels = []
    for i in (i1, i2):
        j = i + 1
        while j < len(bl) and bl[j].strip() == '':
            j += 1
        if j < len(bl) and bl[j].strip() == 'const/4 v1, 0x0':
            dels.append(j)
    if len(dels) != 2:
        print('[FAIL] B1 只找到 %d 处 const/4 v1, 0x0（要求 2）' % len(dels)); return 1
    for j in sorted(dels, reverse=True):
        del bl[j]
    print('[OK] B-1 钳位改为 :nosel（删 2 条 const/4）')

    # B-2：afp:press ap= 探针
    ic = find_one(bl, 'check-cast v0, ' + AIR + 'Airport;', 'B2-机场 check-cast')
    add2 = ['', '    iget v1, v0, ' + AIR + 'Airport;->provinceID:I', '',
            '    const-string v2, "afp:press ap="', '',
            '    invoke-static {v2, v1}, ' + DBGL + '->e5i(Ljava/lang/String;I)V']
    bl[ic + 1:ic + 1] = add2
    print('[OK] B-2 探针 afp:press ap=（+%d 行）' % len(add2))

    # B-3：显示端钳位 → :noselTxt
    j1 = find_one(bl, 'if-gez v3, :cond_2b', 'B3-未选中分支')
    j2 = find_one(bl, 'if-lt v3, v4, :cond_2e', 'B3-越界分支')
    bl[j1] = bl[j1].replace(':cond_2b', ':noselTxt')
    bl[j2] = bl[j2].replace(':cond_2e', ':noselTxt')
    dels = []
    for j in (j1, j2):
        k = j + 1
        while k < len(bl) and bl[k].strip() == '':
            k += 1
        if k < len(bl) and bl[k].strip() == 'const/4 v3, 0x0':
            dels.append(k)
    if len(dels) != 2:
        print('[FAIL] B3 只找到 %d 处 const/4 v3, 0x0（要求 2）' % len(dels)); return 1
    for j in sorted(dels, reverse=True):
        del bl[j]
    print('[OK] B-3 显示端钳位改为 :noselTxt（删 2 条 const/4）')

    # B-5：显示端末尾追加 :noselTxt（先做，避免后续行号偏移：位置由方法头重新定位）
    e2 = find_method_end(bl, '.method public getTextToDraw()Ljava/lang/String;', 'B5-getTextToDraw')
    bl[e2:e2] = ['    :noselTxt', '    const-string v1, "\u672a\u9009\u4e2d\u673a\u573a"', '',
                  '    return-object v1', '']
    print('[OK] B-5 getTextToDraw 追加 :noselTxt')

    # B-4：actionElement 末尾追加 :nosel 块
    e1 = find_method_end(bl, '.method public actionElement()V', 'B4-actionElement')
    bl[e1:e1] = ['    :nosel', '    const-string v1, "\u8bf7\u5148\u9009\u62e9\u673a\u573a"', '',
                 '    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;', '',
                 '    if-eqz v2, :nosel2', '',
                 '    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V', '',
                 '    :nosel2', '    const-string v1, "afp:noSel"', '',
                 '    const/4 v2, 0x1', '',
                 '    invoke-static {v1, v2}, ' + DBGL + '->e5i(Ljava/lang/String;I)V', '',
                 '    return-void', '']
    print('[OK] B-4 actionElement 追加 :nosel 块')

    # ---------- 后置断言 ----------
    lt = '\n'.join(bl)
    checks = [
        (':nosel' in lt and ':nosel2' in lt, 'B1/B4 :nosel/:nosel2 存在'),
        ('afp:noSel' in lt, 'B4 探针 afp:noSel'),
        ('\u8bf7\u5148\u9009\u62e9\u673a\u573a' in lt, 'B4 Toast 文本'),
        (':noselTxt' in lt and '\u672a\u9009\u4e2d\u673a\u573a' in lt, 'B3/B5 未选中机场文本'),
        ('afp:press ap=' in lt, 'B2 探针'),
        ('if-gez v1, :cond_1b' not in lt and 'if-lt v1, v2, :cond_22' not in lt, 'B1 旧钳位已改'),
        ('if-gez v3, :cond_2b' not in lt and 'if-lt v3, v4, :cond_2e' not in lt, 'B3 旧钳位已改'),
    ]
    for ok, tag in checks:
        if not ok:
            print('[FAIL] 后置断言未通过：%s' % tag); return 1
    save(B, bl)
    print('[OK] 全部后置断言通过')
    print('AirDbgLog.smali     md5 %s -> %s' % (l0[:12], md5(L)[:12]))
    print('BtnMission.smali    md5 %s -> %s' % (b0[:12], md5(B)[:12]))
    return 0

if __name__ == '__main__':
    sys.exit(main())