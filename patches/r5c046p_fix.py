# -*- coding: utf-8 -*-
# r5c046p_fix.py —— 撤销 o-B ＋ 目标解析改为 ①→④ 兜底（按钮永不哑）
#   依据《r6s5/调研_r5c046p_撤销B与自动打击重接活_v3定稿.md》
#   基线：**r5c046n** 的树（干净实现，不是在 o 上再抹 B）
#   A-1 AirDbgLog.p0Air 追加 " strike="
#   P-1 BtnMission 新增 pickAirport()（iActiveID → selectedAirportProvinceID → Game.iActiveProvince → list[0]）
#   P-2 actionElement：用 pickAirport() 取代钳位；打探针 afp:press ap=；尾加 :pn_end/return-void
#   P-3 getTextToDraw：用 pickAirport() 取代钳位（不再有「未选中机场」）
#
# 用法：python3 r5c046p_fix.py [smali 树根目录]   （默认 /tmp/w3a/smali）
import os, sys, hashlib

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
L = os.path.join(ROOT, 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali')
B = os.path.join(ROOT, 'aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali')
AIR = 'Laoc/kingdoms/lukasz/map/battles/'
DBGL = AIR + 'AirDbgLog;'
BTN = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;'
OPT = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;'
AFM = AIR + 'AirForceManager;'

def md5(p): return hashlib.md5(open(p, 'rb').read()).hexdigest()
def load(p): return open(p, encoding='utf-8').read().split('\n')
def save(p, lines): open(p, 'w', encoding='utf-8').write('\n'.join(lines))

def method_range(lines, header_frag, what):
    s = [i for i, x in enumerate(lines) if header_frag in x]
    if len(s) != 1:
        print('[FAIL] %s 方法头命中 %d 次' % (what, len(s))); sys.exit(1)
    s = s[0]
    for j in range(s + 1, len(lines)):
        if lines[j].strip() == '.end method':
            return s, j
    print('[FAIL] %s 找不到 .end method' % what); sys.exit(1)

def find_in(lines, lo, hi, frag, what):
    idx = [i for i in range(lo, hi) if frag in lines[i]]
    if len(idx) != 1:
        print('[FAIL] 锚点 %s 命中 %d 次（区间 %d-%d）：%s' % (what, len(idx), lo, hi, frag)); sys.exit(1)
    return idx[0]

PICK = '''# 目标机场解析：iActiveID -> selectedAirportProvinceID -> Game.iActiveProvince -> list[0]
.method public static pickAirport()''' + AIR + '''Airport;
    .registers 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :pn_null

    invoke-static {}, ''' + AFM + '''->getInstance()''' + AFM + '''
    move-result-object v1

    if-eqz v1, :pn_null

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v0}, ''' + AFM + '''->getAirportsForCiv(I)Ljava/util/List;
    move-result-object v0

    if-eqz v0, :pn_null

    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v2

    if-lez v2, :pn_null

    sget v3, ''' + OPT + '''->iActiveID:I

    if-ltz v3, :pn_fb2

    if-lt v3, v2, :pn_fb2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3

    check-cast v3, ''' + AIR + '''Airport;

    return-object v3

    :pn_fb2
    iget v3, v1, ''' + AFM + '''->selectedAirportProvinceID:I

    if-ltz v3, :pn_fb3

    invoke-virtual {v1, v3}, ''' + AFM + '''->getAirportByProvinceID(I)''' + AIR + '''Airport;
    move-result-object v4

    if-eqz v4, :pn_fb3

    const-string v5, "afp:tgt fb="

    const/4 v6, 0x2

    invoke-static {v5, v6}, ''' + DBGL + '''->e5i(Ljava/lang/String;I)V

    return-object v4

    :pn_fb3
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v3, :pn_fb4

    invoke-virtual {v1, v3}, ''' + AFM + '''->getAirportByProvinceID(I)''' + AIR + '''Airport;
    move-result-object v4

    if-eqz v4, :pn_fb4

    const-string v5, "afp:tgt fb="

    const/4 v6, 0x3

    invoke-static {v5, v6}, ''' + DBGL + '''->e5i(Ljava/lang/String;I)V

    return-object v4

    :pn_fb4
    const-string v5, "afp:tgt fb="

    const/4 v6, 0x4

    invoke-static {v5, v6}, ''' + DBGL + '''->e5i(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v3

    check-cast v3, ''' + AIR + '''Airport;

    return-object v3

    :pn_null
    const/4 v3, 0x0

    return-object v3
.end method'''

def main():
    l0, b0 = md5(L), md5(B)

    # ---------- A-1 ----------
    ll = load(L)
    s, e = method_range(ll, '.method public static p0Air(', 'A-p0Air')
    at = [i for i in range(s, e) if 'AirUnit$AirType;->ATTACKER:' in ll[i]]
    if len(at) != 1:
        print('[FAIL] A 的 at= 块命中 %d 次' % len(at)); return 1
    e5 = [i for i in range(at[0], e) if 'AirDbgLog;->e5i(Ljava/lang/String;I)V' in ll[i]]
    ins = e5[0] + 1
    ll[ins:ins] = ['', '    const-string v1, " strike="', '',
                   '    invoke-static {p1, v1}, ' + DBGL + '->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;', '',
                   '    move-result-object v0', '',
                   '    iget-boolean v2, p0, ' + AIR + 'Airport;->autoStrikeOff:Z', '',
                   '    invoke-static {v0, v2}, ' + DBGL + '->e5i(Ljava/lang/String;I)V']
    save(L, ll)
    print('[OK] A-1 p0Air 追加 strike=')

    # ---------- BtnMission ----------
    bl = load(B)

    # P-1 插入 pickAirport（放在 actionElement 之前）
    hdr = find_in(bl, 0, len(bl), '.method public actionElement()V', 'P-1-actionElement头')
    bl[hdr:hdr] = PICK.split('\n') + ['']
    print('[OK] P-1 新增 pickAirport()')

    # P-2 actionElement 主路径替换（用唯一的钳位分支行定位，再回退到其前的 sget iActiveID）
    s2, e2 = method_range(bl, '.method public actionElement()V', 'P-2-actionElement')
    j = find_in(bl, s2, e2, 'if-gez v1, :cond_1b', 'P-2-钳位行')
    a = None
    for k in range(j, s2, -1):
        if ('sget v1, ' + OPT + '->iActiveID:I') in bl[k]:
            a = k
            break
    if a is None:
        print('[FAIL] P-2 找不到 iActiveID 读取行'); return 1
    b = find_in(bl, s2, e2, 'check-cast v0, ' + AIR + 'Airport;', 'P-2-止(check-cast)')
    if b <= a:
        print('[FAIL] P-2 锚点顺序异常'); return 1
    bl[a:b + 1] = ['    invoke-static {}, ' + BTN + '->pickAirport()' + AIR + 'Airport;', '',
                   '    move-result-object v0', '',
                   '    if-nez v0, :pn_end', '',
                   '    iget v1, v0, ' + AIR + 'Airport;->provinceID:I', '',
                   '    const-string v2, "afp:press ap="', '',
                   '    invoke-static {v2, v1}, ' + DBGL + '->e5i(Ljava/lang/String;I)V']
    e2b = method_range(bl, '.method public actionElement()V', 'P-2b-actionElement')[1]
    bl[e2b:e2b] = ['    :pn_end', '    return-void', '']
    print('[OK] P-2 actionElement 目标解析 + 探针 + :pn_end')

    # P-3 getTextToDraw：锚点同时匹配「原文 / \uXXXX 转义」，终点用唯一的 autoStrikeOff 读取行
    s3, e3 = method_range(bl, '.method public getTextToDraw()Ljava/lang/String;', 'P-3-getText')
    TGT = '\u81ea\u52a8\u6253\u51fb\uff1a\u5173'          # 自动打击：关
    ESC = ''.join('\\u%04x' % ord(c) for c in TGT)
    kk = None
    for k in range(s3, e3):
        if (TGT in bl[k]) or (ESC in bl[k]):
            kk = k
            break
    if kk is None:
        print('[FAIL] P-3 找不到「自动打击：关」行'); return 1
    d = find_in(bl, kk, e3, 'Airport;->autoStrikeOff:Z', 'P-3-止(autoStrikeOff)')
    if d <= kk:
        print('[FAIL] P-3 锚点顺序异常'); return 1
    bl[kk + 1:d] = ['', '    invoke-static {}, ' + BTN + '->pickAirport()' + AIR + 'Airport;', '',
                    '    move-result-object v2', '',
                    '    if-eqz v2, :cond_3d', '']
    save(B, bl)
    print('[OK] P-3 getTextToDraw 目标解析（保留原 if-eqz v2, :cond_3d 作 null 守卫）')

    # ---------- 后置断言 ----------
    bt = '\n'.join(bl)
    checks = [
        ('.method public static pickAirport()' in bt, 'P-1 pickAirport 存在'),
        ('getAirportByProvinceID(I)' in bt, 'P-1 省反查被使用'),
        ('afp:press ap=' in bt, 'P-2 按键探针'),
        (':pn_end' in bt and ':pn_fb4' in bt, 'P-2/P-1 标签齐全'),
        ('未选中机场' not in bt and '请先选择机场' not in bt and 'afp:noSel' not in bt, 'B 已彻底移除（无未选中字样）'),
        ('if-gez v1, :cond_1b' not in bt and 'if-gez v3, :cond_2b' not in bt, '旧钳位已替换'),
    ]
    for ok, tag in checks:
        if not ok:
            print('[FAIL] 后置断言未通过：%s' % tag); return 1
    print('[OK] 全部后置断言通过')
    print('AirDbgLog.smali  md5 %s -> %s' % (l0[:12], md5(L)[:12]))
    print('BtnMission.smali md5 %s -> %s' % (b0[:12], md5(B)[:12]))
    return 0

if __name__ == '__main__':
    sys.exit(main())