# -*- coding: utf-8 -*-
# r6d046_b2hide.py —— B-2 显示层早退：招募面板里不再绘制飞机行
#   ① AirDbgLog 新增 isAirUnitButton(ButtonUnit3_3;)Z（薄封装 isAirUnitID）
#   ② ButtonUnit3_3.draw() 首行早退（.registers 6→7）
# 用法: python3 r6d046_b2hide.py patch|gate
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
BTN = R + 'aoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3.smali'
BTN_T = 'Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'

A_OLD = '''    :au_no
    const/4 v2, 0x0

    return v2
.end method
'''
A_NEW = A_OLD + '''
.method public static isAirUnitButton(%s)Z
    .registers 2
    # r6d046 B-2：招募面板行按钮若绑定航空兵种 ⇒ 不可显示
    iget v0, p0, %s->unitTypeID:I

    invoke-static {v0}, %s->isAirUnitID(I)Z

    move-result v0
    return v0
.end method
''' % (BTN_T, BTN_T, DLG_T)

B_SIG = '.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V\n    .registers 6\n'
B_SIG_NEW = '.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V\n    .registers 7\n'
B_PARAM = '    .param p5, "scrollableY"    # Z\n'
B_INJ = (B_PARAM +
         '    # r6d046 B-2：航空兵种的行不绘制（飞机不再出现在陆军部队面板）\n'
         '    invoke-static {p0}, %s->isAirUnitButton(%s)Z\n\n'
         '    move-result v0\n'
         '    if-eqz v0, :b2_ok\n'
         '    return-void\n'
         '    :b2_ok\n' % (DLG_T, BTN_T))

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); b = rd(BTN)
    assert d.count(A_OLD) == 1, '锚点A命中 %d' % d.count(A_OLD)
    assert d.count('isAirUnitButton') == 0, '已打过 A'
    wr(DLG, d.replace(A_OLD, A_NEW))
    assert b.count(B_SIG) == 1, '锚点B命中 %d' % b.count(B_SIG)
    assert b.count('.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V') == 1, 'draw 签名不唯一'
    assert b.count(B_PARAM) >= 1, '锚点B2 未命中'
    b = b.replace(B_SIG, B_SIG_NEW, 1)
    b = b.replace(B_PARAM, B_INJ, 1)
    wr(BTN, b)
    print('patch OK')

def gate():
    f = []
    d = rd(DLG); b = rd(BTN)
    # 1
    sig = '.method public static isAirUnitButton(%s)Z' % BTN_T
    if d.count(sig) != 1: f.append('106-1 方法签名缺失/重复')
    blk = d.split(sig)[-1].split('.end method')[0] if sig in d else ''
    if '.registers 2' not in blk: f.append('106-1b 寄存器应为 2')
    if ('iget v0, p0, %s->unitTypeID:I' % BTN_T) not in blk: f.append('106-1c 未读 unitTypeID')
    if ('invoke-static {v0}, %s->isAirUnitID(I)Z' % DLG_T) not in blk: f.append('106-1d 未复用 isAirUnitID')
    # 2
    if '.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V\n    .registers 7\n' not in b:
        f.append('106-2 draw 未上调寄存器到 7')
    # 3 紧邻性
    inv = 'invoke-static {p0}, %s->isAirUnitButton(%s)Z' % (DLG_T, BTN_T)
    if b.count(inv) != 1:
        f.append('106-3 draw 内未见早退 invoke')
    else:
        tail = b.split(inv, 1)[1].lstrip('\n').lstrip()
        if not tail.startswith('move-result v0'):
            f.append('106-3b move-result 不紧邻 invoke（r6d039 血案）')
    # 4 顺序
    seq = 'move-result v0\n    if-eqz v0, :b2_ok\n    return-void\n    :b2_ok'
    if seq not in b.replace('\n\n', '\n'): f.append('106-4 早退序列不完整')
    # 5 负样本
    def red(dd, bb):
        r = []
        if '.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V\n    .registers 7\n' not in bb: r.append('n1')
        tail = bb.split(inv, 1)[1].lstrip('\n').lstrip() if inv in bb else ''
        if not tail.startswith('move-result v0'): r.append('n2')
        if ('.method public static isAirUnitButton(%s)Z' % BTN_T) not in dd: r.append('n3')
        return r
    n_ok = 0
    d1, b1 = d, b.replace('    move-result v0\n    if-eqz v0, :b2_ok', '    if-eqz v0, :b2_ok', 1)
    if 'n2' in red(d1, b1): n_ok += 1
    d2, b2 = d, b.replace('.registers 7', '.registers 6', 1)
    if 'n1' in red(d2, b2): n_ok += 1
    d3, b3 = d.replace(BTN_T, 'Laoc/kingdoms/lukasz/menu_element/button/Foo;', 1), b
    if 'n3' in red(d3, b3): n_ok += 1
    # 6 模拟器（未来机型前缀）
    names = ['AirInterceptor', 'AirFighter', 'AirBomber', 'AirAttacker', 'AirFighter_T3', 'AirXxx', 'Warior', 'Canon']
    got = [n.startswith('Air') for n in names]
    exp = [True, True, True, True, True, True, False, False]
    if got != exp: f.append('106-6 前缀模拟器失败: %s' % got)
    print('== 门禁 106 ==  负样本 %d/3' % n_ok)
    if n_ok < 3: f.append('106 负样本 %d/3' % n_ok)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)
