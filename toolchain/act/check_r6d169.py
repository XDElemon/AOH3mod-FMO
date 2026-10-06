#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d169 门禁 · AD-R0「只读诊断版」
==================================
结构断言 S1..S6 + 极性断言 P1..P6 + 负样本自检 --selftest（把每条极性反转后必须被抓）
判定：退出码 0 = 通过；非 0 = 失败（输出含 ❌）
"""
import re
import sys

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
DIAG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'

GAME_TYPES = ('Laoc/kingdoms/lukasz/map/battles/AirMission;',
              'Laoc/kingdoms/lukasz/map/province/Province;',
              'Laoc/kingdoms/lukasz/map/battles/AirForceManager;',
              'Laoc/kingdoms/lukasz/map/battles/Airport;',
              'Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;')


def section(text, sig):
    """取某个方法的方法域文本（从 .method 到对应 .end method）。"""
    i = text.index(sig)
    j = text.index('.end method', i)
    return text[i:j]


def checks(diag, afm):
    """返回失败列表（字符串）。空列表 = 全过。"""
    bad = []

    # ---------- 结构 ----------
    # S1 updateAll 方法域内 AirDefDiag = 1；全文件 = 1
    if afm.count('.method public updateAll()V') != 1:
        bad.append('S1 updateAll 定义数 ≠ 1')
    else:
        blk = section(afm, '.method public updateAll()V')
        if blk.count('AirDefDiag') != 1:
            bad.append('S1 updateAll 区块内 AirDefDiag = %d（要求 1）' % blk.count('AirDefDiag'))
        if afm.count('AirDefDiag') != 1:
            bad.append('S1 全文件 AirDefDiag = %d（要求 1）' % afm.count('AirDefDiag'))
        if '.registers 4' not in blk[:60]:
            bad.append('S1 updateAll .registers 已被改动（应为 4）')

    # S2 scanAll 唯一 + catch Throwable
    if diag.count('.method public static scanAll()V') != 1:
        bad.append('S2 scanAll 定义数 ≠ 1')
    else:
        sa = section(diag, '.method public static scanAll()V')
        if sa.count('.catch Ljava/lang/Throwable;') != 1:
            bad.append('S2 scanAll 无 catch Throwable（不得外抛）')

    # S3 方法齐全且各 1
    for m in ['private static run(I)V', 'private static trunc()V', 'private static mline(I)V',
              'private static pline(I)V', 'private static gline(I)V',
              'private static aline(Laoc/kingdoms/lukasz/map/province/Province;III)V',
              'private static inR(Laoc/kingdoms/lukasz/map/province/Province;I)I',
              'private static live(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z',
              'private static cnt(Laoc/kingdoms/lukasz/map/province/Province;I)I',
              'private static kv(Ljava/lang/StringBuilder;Ljava/lang/String;I)V',
              'private static logX(Ljava/lang/Throwable;)V']:
        c = diag.count('.method ' + m)
        if c != 1:
            bad.append('S3 方法 .method %s 定义数 = %d（要求 1）' % (m, c))

    # S4 只读：不得写游戏类字段
    for pat in ['iput', 'sput']:
        for t in GAME_TYPES:
            # 形如 iput vX, vY, L...;  ->  只看目标类型
            hits = [l for l in diag.splitlines() if l.strip().startswith(pat) and t in l]
            if hits:
                bad.append('S4 违反只读铁律：%s → %s（%d 处）' % (pat, t, len(hits)))
    # 允许写自己的静态字段
    for l in diag.splitlines():
        if l.strip().startswith(('iput', 'sput')) and 'AirDefDiag;->' not in l and ('iput' in l):
            bad.append('S4 出现非 AirDefDiag 的 iput：%s' % l.strip())

    # S5 通道
    if 'dKey' in diag:
        bad.append('S5 使用了 dKey（会被 debug:0 闸住）')
    if 'java/nio/file' in diag or 'Paths' in diag:
        bad.append('S5 使用了 java.nio.file（/storage 上必失败）')
    if diag.count('AirDbgLog;->dWrite(Ljava/lang/String;)V') < 4:
        bad.append('S5 dWrite 调用 < 4（日志出口不足）')

    # S6 上限常量存在
    if 'const/16 v1, 0x28' not in diag:
        bad.append('S6 缺少 nADA 行数上限常量 const/16 v1, 0x28（40）')

    # ---------- 极性（方法域内）----------
    if diag.count('.method private static run(I)V') == 1:
        run = section(diag, '.method private static run(I)V')
        if 'if-nez v0, :cond_boot' not in run:
            bad.append('P6 run 自证行极性错（应 if-nez v0, :cond_boot：boot≠0 才跳过写自证行）')

    if diag.count('.method private static trunc()V') == 1:
        tr = section(diag, '.method private static trunc()V')
        if 'if-lez v0, :cond_end' not in tr:
            bad.append('P7 trunc 极性错（应 if-lez：skip≤0 就结束）')

    if diag.count('.method private static live(') == 1:
        lv = section(diag, '.method private static live(')
        if 'if-lez v2, :cond_ret' not in lv:
            bad.append('P2 live 活飞机极性错（应 if-lez v2, :cond_ret：size≤0 就返回 false）')
        if 'if-eqz p0, :cond_ret' not in lv or 'if-eqz v1, :cond_ret' not in lv:
            bad.append('P2 live 判空极性错（应 if-eqz 才提前返回）')
        if lv.find('const/4 v0, 0x1') < lv.find('if-lez v2, :cond_ret'):
            bad.append('P2 live 结论顺序错（v0=1 必须在"有飞机"之后）')

    if diag.count('.method private static mline(I)V') == 1:
        ml = section(diag, '.method private static mline(I)V')
        if 'if-eqz v10, :cond_next' not in ml:
            bad.append('P2b mline 非活任务极性错（应 if-eqz v10, :cond_next）')
        if 'if-ltz v10, :cond_next' not in ml:
            bad.append('P3 mline 已部署极性错（应 if-ltz v10, :cond_next）')
        if ml.find('add-int/lit8 v4, v4, 0x1') > ml.find('add-int/lit8 v5, v5, 0x1'):
            bad.append('P3b mline 计数顺序错（alive 计数应在 dep 计数之前）')

    if diag.count('.method private static pline(I)V') == 1:
        pl = section(diag, '.method private static pline(I)V')
        for reg, lbl in [('v8', ':cond_skip_a'), ('v9', ':cond_skip_r'), ('v10', ':cond_skip_m')]:
            if ('if-ltz %s, %s' % (reg, lbl)) not in pl:
                bad.append('P8 pline 建筑 ID 极性错（应 if-ltz %s, %s：ID<0 才跳过）' % (reg, lbl))

    if diag.count('.method private static aline(') == 1:
        al = section(diag, '.method private static aline(')
        # P5 语义断言（血案 r6d169：文本断言挡住了但语义反了 ⇒ 必须查"截断块 vs 跳转标签"的先后）
        if 'if-lt v0, v1, :cond_write' not in al:
            bad.append('P5 aline 上限判据错（应 if-lt v0, v1, :cond_write：cap<40 才写行）')
        else:
            i_br = al.index('if-lt v0, v1, :cond_write')
            i_skip = al.index('sput v0, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->skip:I')
            m_lbl = re.search(r'(?m)^\s*:cond_write\s*$', al)
            if not m_lbl:
                bad.append('P5 aline 找不到 :cond_write 标签定义')
            elif not (i_br < i_skip < m_lbl.start()):
                bad.append('P5 aline 分支语义错（截断块必须落在"跳转标签之前"的落空路径上）')
        if 'if-ge v0, v1, :cond_write' in al:
            bad.append('P5 aline 出现 if-ge + :cond_write（极性反向，r6d169 血案形态）')

    if diag.count('.method private static inR(') == 1:
        ir = section(diag, '.method private static inR(')
        if 'if-eq v9, v5, :cond_count' not in ir:
            bad.append('P4 inR 同省极性错（应 if-eq v9, v5, :cond_count：同省必中才计数）')
        if 'if-gt v12, v13, :cond_next' not in ir:
            bad.append('P4 inR 距离极性错（应 if-gt v12, v13, :cond_next：d²>300² 才跳过）')
        if 'if-eq v12, v6, :cond_next' not in ir:
            bad.append('P4 inR 敌我极性错（应 if-eq v12, v6, :cond_next：==本省主人=友军才跳过）')
        if 'if-ne v12, v6, :cond_next' in ir:
            bad.append('P4 inR 出现 if-ne v12, v6（血案形态：会跳过敌人、只数友军）')
        if 'const v13, 0x15f90' not in ir:
            bad.append('P4 inR 缺少 300² 常量（0x15f90 = 90000）')

    if diag.count('.method private static cnt(') == 1:
        cn = section(diag, '.method private static cnt(')
        if 'if-ne v4, p1, :cond_next' not in cn:
            bad.append('P1 cnt 极性错（应 if-ne v4, p1, :cond_next：不等才跳过）')
        if 'if-eq v4, p1' in cn:
            bad.append('P1 cnt 出现了 if-eq v4, p1（极性反向）')

    return bad


def load():
    return open(DIAG, encoding='utf-8').read(), open(AFM, encoding='utf-8').read()


def main():
    args = sys.argv[1:]
    diag, afm = load()

    if '--selftest' in args:
        print('=== 负样本自检（把每条极性反转后必须被抓）===')
        muts = [
            ('N1 cnt 极性反转', 'if-ne v4, p1, :cond_next', 'if-eq v4, p1, :cond_next', 'P1'),
            ('N2 live 活飞机极性反转', 'if-lez v2, :cond_ret', 'if-gez v2, :cond_ret', 'P2'),
            ('N3 mline 已部署极性反转', 'if-ltz v10, :cond_next', 'if-gez v10, :cond_next', 'P3'),
            ('N4 inR 同省极性反转', 'if-eq v9, v5, :cond_count', 'if-ne v9, v5, :cond_count', 'P4'),
            ('N5 inR 距离极性反转', 'if-gt v12, v13, :cond_next', 'if-lt v12, v13, :cond_next', 'P4'),
            ('N6 aline 上限判据反转（r6d169 血案复原）', 'if-lt v0, v1, :cond_write', 'if-ge v0, v1, :cond_write', 'P5'),
            ('N7 run 自证极性反转', 'if-nez v0, :cond_boot', 'if-eqz v0, :cond_boot', 'P6'),
            ('N8 只读铁律破坏', '    return v5',
             '    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I\n\n    return v5', 'S4'),
        ]
        ok = True
        for name, src, dst, tag in muts:
            if src not in diag:
                print('  ⚠️ %-28s 突变源文本不存在，跳过（需人工核对）' % name)
                ok = False
                continue
            d2 = diag.replace(src, dst, 1)
            bad2 = checks(d2, afm)
            hit = any(tag in b for b in bad2)
            print('  %s %-28s 被抓=%s （%s）' % ('✅' if hit else '❌', name, hit, tag))
            if not hit:
                ok = False
        print('=== 自检结果：%s ===' % ('全部突变均被抓 ✅' if ok else '有突变漏抓 ❌'))
        return 0 if ok else 1

    bad = checks(diag, afm)
    print('=== r6d169 门禁 ===')
    if bad:
        for b in bad:
            print('  ❌', b)
        print('结果：FAIL（%d 项）' % len(bad))
        return 1
    print('  ✅ S1..S6 结构断言全过')
    print('  ✅ P1..P8 极性断言全过')
    print('结果：PASS')
    return 0


if __name__ == '__main__':
    sys.exit(main())