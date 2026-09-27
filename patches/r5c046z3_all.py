# -*- coding: utf-8 -*-
# r5c046z3_all.py —— 批 r5c046z3：①P0 闪退修复（Float.POSITIVE_INFINITY 误当对象读）
#                                  ②「串机场」真修：点行记忆链（a1MemIdx）
#   用法: python3 r5c046z3_all.py survey | patch | gate
#
# 证据链：
#  ① 11:14 崩溃原文：java.lang.NoSuchFieldError: No static field POSITIVE_INFINITY of type
#     Ljava/lang/Float; in class Ljava/lang/Float;  ⇒ 该字段实际是 static final float(F)，
#     而 pickStrikeTargetP 用 sget-object 按对象读（校验器按声明类型放过，运行时解析失败）。
#     修复：+Inf 走 float 渠道 = Float.intBitsToFloat(0x7f800000)。
#  ② 按钮「串机场」：样本 r5c046z2_s1.txt 中 7 次按键**全部** afp:src a=14（兜底 list[0]），
#     ProvinceDraw 每帧探针 afp:st: sel=-1 恒为 -1 ⇒ 本入口流下 iActiveID 始终无效：
#        · MenuManager.setVisibleInGame_AirForce(false) 会写 iActiveID=-1（隐藏时重置）
#        · 行点击 BtnAirport.actionElement 写 iActiveID 后立刻调 setVisible(true)
#      ⇒ 面板侧「当前机场」没有可靠记忆，每次按键落到同一个机场 ⇒ 所有机场看起来一起变。
#     修复：新增静态记忆字段 a1MemIdx（点行时写入行下标，clinit 初值 -1），
#           pickAirport 优先用「iActiveID → a1MemIdx → selectedAirportProvinceID → iActiveProvince → list[0]」；
#           BtnAirport 在 setVisible 之后再断言一次 iActiveID（恢复引擎"点行即进该机场选项屏"的本意）。
import re, sys, os

AFM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BTN = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
OPT = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions.smali'
BAR = '/tmp/revx/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport.smali'

def rd(p): return open(p, encoding='utf-8').read()
def wr(p, s): open(p, 'w', encoding='utf-8').write(s)

def blast(src, sig):
    m = re.search(r'[ \t]*\.method[^\n]*' + sig + r'[^\n]*\n', src)
    if not m: return None, None
    e = src.find('.end method', m.end())
    return m.start(), (e + len('.end method')) if e > 0 else None

def pinch(path, sig, pattern, repl, tag, already=None, expect=1):
    s = rd(path)
    if sig:
        a, b = blast(s, sig)
        if a is None:
            print('  [FAIL] %s：方法 %s 未找到' % (tag, sig)); return False
        body = s[a:b]
    else:
        a, b = 0, len(s); body = s
    if already and re.search(already, body):
        print('  [SKIP] %s：已是目标形态' % tag); return True
    n = len(re.findall(pattern, body))
    if n != expect:
        print('  [FAIL] %s 锚点命中 %d（期望 %d）' % (tag, n, expect)); return False
    newbody = re.sub(pattern, repl, body, count=expect)
    wr(path, (s[:a] + newbody + s[b:]) if sig else newbody)
    print('  [OK] %s（命中 %d）' % (tag, n)); return True

SIG_TGT = r'pickStrikeTargetP'
SIG_PICK = r'pickAirport\(I\)'
SIG_ACT = r'actionElement'

def survey():
    s = rd(AFM); t = s[blast(s, SIG_TGT)[0]:blast(s, SIG_TGT)[1]]
    print('① AFM +Inf 现状 :', 'POSITIVE_INFINITY(对象读=会崩)' if 'POSITIVE_INFINITY' in t else
          ('intBitsToFloat(已修)' if 'intBitsToFloat' in t else '未找到'))
    o = rd(OPT); b = rd(BAR); k = rd(BTN)
    print('② a1MemIdx 字段    :', '已在' if 'a1MemIdx' in o else '缺失')
    print('③ BtnAirport 记忆  :', '已在' if 'a1MemIdx' in b else '缺失')
    print('④ pickAirport 记忆 :', '已在' if 'a1MemIdx' in k else '缺失')

def patch():
    ok = []
    print('== ① P0：+Inf 改走 float 渠道（intBitsToFloat）==')
    ok.append(pinch(AFM, SIG_TGT,
        r'[ \t]*sget-object v3, Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;\s*\n\s*invoke-virtual \{v3\}, Ljava/lang/Float;->floatValue\(\)F\s*\n\s*move-result v3',
        '    # r5c046z3: +Inf 必须走 float 渠道（POSITIVE_INFINITY 是 static final float，不能当对象读）\n'
        '    const v10, 0x7f800000\n'
        '    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F\n'
        '    move-result v3',
        '① +Inf', already=r'intBitsToFloat'))
    print('== ② 新增记忆字段 a1MemIdx（初值 -1）==')
    ok.append(pinch(OPT, None,
        r'(\.field public static iActiveID:I\n)',
        r'\1.field public static a1MemIdx:I\n', '②a 字段声明',
        already=r'\.field public static a1MemIdx:I'))
    ok.append(pinch(OPT, None,
        r'(sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I\n)',
        r'\1    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I\n',
        '②b clinit 初值', already=r'->a1MemIdx:I'))
    print('== ③ 点行即记忆 + 之后再断言 iActiveID ==')
    ok.append(pinch(BAR, SIG_ACT,
        r'(sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I\n)',
        r'\1    # r5c046z3: 记忆用户点选的机场下标（面板重建后仍有效）\n'
        r'    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I\n',
        '③a 记忆写入', already=r'->a1MemIdx:I'))
    ok.append(pinch(BAR, SIG_ACT,
        r'(invoke-virtual \{v0, v1\}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AirForce\(Z\)V\n)',
        r'\1    # r5c046z3: setVisible 内部按 iActiveID 决定显示哪一屏，之后再断言一次\n'
        r'    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForce$BtnAirport;->airportIndex:I\n'
        r'    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I\n',
        '③b 断言 iActiveID', already=r'setVisibleInGame_AirForce\(Z\)V\s*\n\s*iget v0, p0[^\n]*airportIndex:I'))
    print('== ④ pickAirport：优先用「点行记忆」==')
    ok.append(pinch(BTN, SIG_PICK,
        r'([ \t]*:cond_26\n[ \t]*sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I)',
        '    # r5c046z3: 面板记忆（点行选中的机场下标），优先于"当前省"等兜底\n'
        '    sget v4, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I\n'
        '    if-ltz v4, :cond_26\n'
        '    if-ge v4, v2, :cond_26\n'
        '    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
        '    move-result-object v5\n'
        '    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
        '    const/4 v6, 0x5\n'
        '    goto :goto_48\n'
        '    :cond_26\n'
        '    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I',
        '④ 记忆分支', already=r'a1MemIdx'))
    print('  -> 结果：%s' % ('全部成功' if all(ok) else '有失败项(%d/%d)' % (sum(ok), len(ok))))
    return all(ok)

def gate():
    fails = []
    s = rd(AFM); t = s[blast(s, SIG_TGT)[0]:blast(s, SIG_TGT)[1]]
    o = rd(OPT); b = rd(BAR); k = rd(BTN)
    kb = k[blast(k, SIG_PICK)[0]:blast(k, SIG_PICK)[1]]
    bb = b[blast(b, SIG_ACT)[0]:blast(b, SIG_ACT)[1]]
    # 51-1 崩溃点
    if re.search(r'sget-object[^\n]*Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;', t):
        fails.append('51-1 仍按对象读 Float.POSITIVE_INFINITY（会 NoSuchFieldError）')
    m = re.search(r'const v10, 0x7f800000\s*\n\s*invoke-static \{v10\}, Ljava/lang/Float;->intBitsToFloat\(I\)F\s*\n\s*move-result v3', t)
    if not m: fails.append('51-1 缺少 intBitsToFloat(0x7f800000) → v3 的 float 渠道')
    # 51-2 字段与初值
    if not re.search(r'\.field public static a1MemIdx:I', o): fails.append('51-2 未声明 a1MemIdx')
    if not re.search(r'const/4 v0, -0x1\s*\n\s*sput v0,[^\n]*->iActiveID:I\s*\n\s*sput v0,[^\n]*->a1MemIdx:I', o):
        fails.append('51-2 clinit 未把 a1MemIdx 初始化成 -1')
    # 51-3 记忆写入 + setVisible 之后的断言
    if not re.search(r'sput v0,[^\n]*->a1MemIdx:I', bb): fails.append('51-3 BtnAirport 未写 a1MemIdx')
    i_vis = bb.find('setVisibleInGame_AirForce(Z)V')
    i_after = bb.find('->iActiveID:I', i_vis + 1) if i_vis >= 0 else -1
    if i_vis < 0 or i_after < 0:
        fails.append('51-3 setVisible 之后缺少 iActiveID 再断言（顺序性断言）')
    # 51-4 解析分支须在 :cond_26 之前
    i_mem = kb.find('a1MemIdx')
    i_prov = kb.find('Game;->iActiveProvince:I')
    if i_mem < 0: fails.append('51-4 pickAirport 未接 a1MemIdx')
    elif i_prov >= 0 and i_mem > i_prov:
        fails.append('51-4 a1MemIdx 分支被放在"当前省兜底"之后（顺序错：记忆必须优先于省兜底）')
    if 'const/4 v6, 0x5' not in kb: fails.append('51-4 缺少 src=5 标记')
    # 51-5 不得出现"对象读 Float"
    for p_, src in ((AFM, s), (BTN, k), (BAR, b), (OPT, o)):
        if re.search(r'sget-object[^\n]*Ljava/lang/Float;->[A-Z_]+:Ljava/lang/Float;', src):
            if p_ == AFM: fails.append('51-5 %s 仍有"对象读 Float"写法' % os.path.basename(p_))
    # 负样本：三条方向/顺序检查必须能抓出反向写法
    neg = 0
    if re.search(r'sget-object[^\n]*POSITIVE_INFINITY[^\n]*Ljava/lang/Float;',
                 '    sget-object v3, Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;'): neg += 1
    if re.search(r'setVisibleInGame_AirForce\(Z\)V\s*\n\s*return-void', 'invoke-virtual {v0, v1}, X;->setVisibleInGame_AirForce(Z)V\n    return-void'): neg += 1
    if re.search(r':cond_26[\s\S]*a1MemIdx', ':cond_26\n a1MemIdx'): neg += 1
    print('== 门禁 51 ==')
    print('  负样本捕获：%d/3（期望 3）' % neg)
    if neg != 3: fails.append('51 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过（%d 项）：' % len(fails))
        for f in fails: print('    - ' + f)
        return False
    print('  OK 5 项全过（0 fail）')
    return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'survey'
    if mode == 'survey': survey()
    elif mode == 'patch': patch()
    elif mode == 'gate': sys.exit(0 if gate() else 1)