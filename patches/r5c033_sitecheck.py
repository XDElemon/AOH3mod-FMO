# -*- coding: utf-8 -*-
# r5c033_sitecheck.py —— P1b 定点门禁（语义级/寄存器级，不依赖标签名）
#   断言对象：AI 造机 hook、扣钱挂点、成本取值、可负担阶梯、探针
#   用法: python3 r5c033_sitecheck.py <classes.dex> [dump_dir]；退出码 = 失败点数
import io, os, re, subprocess, sys

LIB = '/sdcard/GLG/历史23/toolchain/lib'
CP = ':'.join([LIB + '/' + j for j in ('baksmali-2.5.2.jar', 'dexlib2-2.5.2.jar', 'guava.jar')] +
              ['/usr/share/java/smali-util-2.5.2.git2771eae.jar'])
B = 'aoc/kingdoms/lukasz/map/battles/'
TGT = {'ap': B + 'Airport.smali', 'af': B + 'AirForceManager.smali', 'lg': B + 'AirDbgLog.smali'}


def dump(dex, out):
    if os.path.isdir(out) and os.path.exists(os.path.join(out, TGT['ap'])):
        print('[dump] 复用: %s' % out)
        return out
    if os.path.isdir(out):
        subprocess.call(['rm', '-rf', out])
    if subprocess.call(['java', '-cp', CP, 'org.jf.baksmali.Main', 'd', dex, '-o', out]) != 0 \
            or not os.path.exists(os.path.join(out, TGT['ap'])):
        raise SystemExit('[dump] baksmali 失败: %s' % dex)
    print('[dump] OK -> %s' % out)
    return out


def body(text, sig):
    m = re.search(r'^\.method[^\n]*%s\s*$' % re.escape(sig), text, re.M)
    if not m:
        return None
    e = text.find('\n.end method', m.start())
    raw = text[m.start():e if e > 0 else len(text)]
    return [l.strip() for l in raw.split('\n') if l.strip() and not l.strip().startswith('#')]


def seq(ls, a, b):
    """断言 a 之后（≤span 内）出现 b；返回 (ok, 文本)"""
    for i, t in enumerate(ls):
        if a in t:
            for j in range(i + 1, min(i + 4, len(ls))):
                if b in ls[j]:
                    return True, ls[j]
            return False, (ls[i + 1] if i + 1 < len(ls) else '')
    return False, 'NOT FOUND: ' + a


def main():
    if len(sys.argv) < 2:
        print('usage: r5c033_sitecheck.py <classes.dex> [dump_dir]')
        return 2
    dex = sys.argv[1]
    out = sys.argv[2] if len(sys.argv) > 2 else '/tmp/bk_' + os.path.basename(dex).replace('.dex', '')
    print('=== r5c033 P1b 定点门禁 ===\ndex = %s' % dex)
    dump(dex, out)
    AP = io.open(os.path.join(out, TGT['ap']), encoding='utf-8').read()
    AF = io.open(os.path.join(out, TGT['af']), encoding='utf-8').read()
    LG = io.open(os.path.join(out, TGT['lg']), encoding='utf-8').read()
    fails = []

    def chk(ok, tag, detail=''):
        print('  [%s] %-52s %s' % ('PASS' if ok else 'FAIL', tag, detail))
        if not ok:
            fails.append(tag)

    # ---------- 1) AI hook 存在且被 update(I) 调用 ----------
    U = body(AF, 'update(I)V')
    if U is None:
        chk(False, '① update(I) 存在')
    else:
        n = sum(1 for t in U if 'updateAIBuildUp' in t)
        ok, after = seq(U, 'Airport;->updateBuild()V', 'updateAIBuildUp')
        chk(n == 1 and ok, '① update(I) 内调用 updateAIBuildUp（恰 1 处，紧跟 updateBuild 之后）',
            'calls=%d after_ok=%s' % (n, ok))

    I = body(AF, 'updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V')
    if I is None:
        chk(False, '② updateAIBuildUp 方法存在')
    else:
        chk(True, '② updateAIBuildUp 方法存在')
        s = '\n'.join(I)
        # D1 观战保护
        ok, nx = seq(I, 'Game;->player:', 'if-eqz v0,')
        chk(ok, 'D1 无玩家 ⇒ 跳过（if-eqz，==null 才跳）', nx)
        # D2 只处理 AI（相等才跳）
        ok, nx = seq(I, 'Player;->iCivID:I', 'if-eq v1, v2,')
        chk(ok, 'D2 玩家自己的机场 ⇒ 跳过（if-eq，相等才跳）', nx)
        # D3 正在建造 ⇒ 跳过（非空才跳）
        ok, nx = seq(I, 'Airport;->buildingType:', 'if-nez v3,')
        chk(ok, 'D3 正在建造 ⇒ 跳过（if-nez，非空才跳）', nx)
        # D4 队列非空 ⇒ 跳过
        ok, nx = seq(I, 'Ljava/util/List;->size()I', 'if-gtz v3,')
        chk(ok, 'D4 队列非空 ⇒ 跳过（if-gtz，>0 才跳）', nx)
        # D5 轰炸机占比
        ok, nx = seq(I, 'mul-int/lit8 v4, v4, 0x2', 'if-lt v4, v5,')
        bad = 'if-ge v4, v5,' in s
        chk(ok and not bad, 'D5 轰炸机占比<50% ⇒ 选 BOMBER（if-lt；禁止 if-ge）', nx)
        # D6/D7 选型为 null ⇒ 跳过；startBuild 失败 ⇒ 跳过
        ok, nx = seq(I, 'p1bPickAffordable', 'if-nez v6,')
        chk(ok, 'D6 买不起（返回 null）⇒ 跳过（if-nez）', nx)
        ok, nx = seq(I, 'Airport;->startBuild(', 'if-eqz v7,')
        chk(ok, 'D7 入队失败 ⇒ 跳过探针（if-eqz, ==false 才跳）', nx)

    # ---------- 2) 扣钱挂点顺序 ----------
    SB = body(AP, 'startBuild(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z')
    if SB is None:
        chk(False, '③ startBuild 存在')
    else:
        idx = [i for i, t in enumerate(SB) if t.startswith('if-lt v0, v1,')]
        ci = [i for i, t in enumerate(SB) if 'p1bChargeForBuild' in t]
        ai = [i for i, t in enumerate(SB) if 'List;->add(Ljava/lang/Object;)Z' in t]
        ok = (len(idx) == 2 and len(ci) == 1 and len(ai) == 1 and ci[0] > idx[1] and ci[0] < ai[0])
        chk(ok, '③ 扣钱在两道 guard 之后、入队之前',
            'guards=%s charge=%s add=%s' % (idx, ci, ai))

    # ---------- 3) 取值/扣钱/阶梯 ----------
    C = body(AP, 'p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I')
    chk(C is not None and any('array-length' in t for t in C) and
        any('CostGold:I' in t for t in C) and sum(1 for t in C if t.startswith('return v0')) == 2,
        '④ p1bCost 有守卫（null/越界）并返回 CostGold；缺省 -1')

    CH = body(AP, 'p1bChargeForBuild(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V')
    if CH is None:
        chk(False, '⑤ p1bChargeForBuild 存在')
    else:
        s = '\n'.join(CH)
        ok, nx = seq(CH, 'p1bCost', 'if-lez v0,')
        ok2 = ('neg-float' in s) and ('addGold(F)V' in s) and ('int-to-float' in s)
        chk(ok and ok2, '⑤ 扣钱：成本<=0 不扣（if-lez）+ neg-float + int-to-float + addGold',
            'guard=%s parts=%s' % (ok, ok2))

    P = body(AP, 'p1bPickAffordable(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;')
    if P is None:
        chk(False, '⑥ p1bPickAffordable 存在')
    else:
        s = '\n'.join(P)
        ok, nx = seq(P, 'cmpg-float', 'if-ltz v4,')
        bad = 'if-gez v4,' in s
        ok2 = any('if-lez v4,' in t for t in P) and sum(1 for t in P if t.startswith('return-object')) == 2
        chk(ok and not bad and ok2,
            '⑥ 阶梯：gold<cost ⇒ 下一档（if-ltz；禁止 if-gez）+ 成本<=0 跳过 + 两个 return-object',
            '%s | parts=%s' % (nx, ok2))

    # ---------- 4) 探针 ----------
    G = body(LG, 'p0Gold(ILjava/lang/String;)V')
    chk(G is not None and any('float-to-int' in t for t in G) and any('e5i(' in t for t in G),
        '⑦ p0Gold 探针（float-to-int + e5i）')

    # ---------- 4b) 寄存器约定（实例/静态方法的 p0/p1）----------
    if I is not None:
        s = '\n'.join(I)
        bad = ', p0, Laoc/kingdoms/lukasz/map/battles/Airport;->' in s
        has1 = 'p1, Laoc/kingdoms/lukasz/map/battles/Airport;->' in s
        chk((has1 and not bad), '⑨ 寄存器约定：实例方法里机场必须是 p1（禁止 p0）',
            'forbidden_p0=%s has_p1=%s' % (bad, has1))
    if P is not None:
        s = '\n'.join(P)
        ok = 'p0, Laoc/kingdoms/lukasz/map/battles/Airport;->' in s
        chk(ok, '⑨b 寄存器约定：静态方法里机场必须是 p0', 'has_p0=%s' % ok)

    # ---------- 5) P1a 判据未回退 ----------
    EA = body(AF, 'executeAIAssignment(I)V')
    ok = EA is not None and any(t.startswith('if-nez v1,') for t in EA) and \
        any(t.startswith('if-ltz v4,') for t in EA) and any(t.startswith('if-ne v3, v4,') for t in EA)
    chk(ok, '⑧ P1a 三条判据仍在（if-nez 守卫 / if-ltz 无玩家 / if-ne 文明比较）')

    print('=== 失败点 = %d %s ===' % (len(fails), ('[' + ', '.join(fails) + ']') if fails else ''))
    return len(fails)


if __name__ == '__main__':
    sys.exit(main())