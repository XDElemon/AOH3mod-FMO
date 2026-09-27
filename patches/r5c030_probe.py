# -*- coding: utf-8 -*-
# r5c030_probe.py —— 纯诊断批：问清 executeAIAssignment(I)V 到底走到哪一步
#   探针（全部无分支；全部插在 move-result 之后 / 条件跳转之前）：
#     nA2v 方法头 build stamp(30)   nA2w isEmpty() 结果
#     nA2x 循环内 size()            nA2y 循环索引
#     nA2b 循环体入口标记           nA2r 正常出口标记
#     nA2e .catchall 捕获后打印异常类名（新 helper AirDbgLog.p0Exc）
#   注：本批带 catchall ⇒ 若真有异常，行为由"回合中断"变为"吞掉继续"（诊断期临时）
#   所有替换都在"方法体子串"内进行，保证锚点唯一。
import io, os, shutil, sys

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
L = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
BAKF, BAKL = F + '.pre_r5c030', L + '.pre_r5c030'
E5I = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V'
HDR = '.method public executeAIAssignment(I)V\n'


def probe(tag, reg, comment):
    return ('\n    # r5c030 %s\n    const-string v3, "%s"\n\n    invoke-static {v3, %s}, %s\n'
            % (comment, tag, reg, E5I))


def const_probe(tag, val, comment):
    return ('\n    # r5c030 %s\n    const-string v3, "%s"\n\n    const/16 v4, 0x%x\n\n'
            '    invoke-static {v3, v4}, %s\n' % (comment, tag, val, E5I))


def main():
    t = io.open(F, encoding='utf-8').read()
    a = io.open(L, encoding='utf-8').read()
    if 'r5c030 P1' in t:
        print('r5c030 已应用（幂等退出）')
        return 0
    for keep in ('if-ltz v4, :cond_20', 'if-gez v0, :p0_blk1', 'if-ltz v3, :p0_blk3'):
        assert keep in t, 'r5c029 修正不见了: %s' % keep

    if not os.path.exists(BAKF):
        shutil.copy2(F, BAKF); print('backup ->', BAKF)
    if not os.path.exists(BAKL):
        shutil.copy2(L, BAKL); print('backup ->', BAKL)

    # ---- 取方法体子串 ----
    s = t.index(HDR)
    e = t.index('\n.end method', s) + len('\n.end method')
    m = t[s:e]
    assert m.count(HDR) == 1

    EDITS = [
        # P1 build stamp（p0Civ 之后）
        ('    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V\n',
         '    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V\n'
         + const_probe('nA2v', 0x1e, 'P1 build stamp'), 'P1 stamp'),
        # P2 isEmpty 结果
        ('    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z\n\n    move-result v1\n',
         '    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z\n\n    move-result v1\n'
         + probe('nA2w', 'v1', 'P2 isEmpty 结果'), 'P2 isEmpty'),
        # P3 循环内 size()
        ('    :goto_b\n    invoke-interface {v0}, Ljava/util/List;->size()I\n\n    move-result v2\n',
         '    :goto_b\n    invoke-interface {v0}, Ljava/util/List;->size()I\n\n    move-result v2\n'
         + probe('nA2x', 'v2', 'P3 循环内 size'), 'P3 size'),
        # P4 循环索引（if-ge 之前）
        ('    if-ge v1, v2, :cond_23\n',
         probe('nA2y', 'v1', 'P4 循环索引') + '\n    if-ge v1, v2, :cond_23\n', 'P4 index'),
        # P5 循环体入口（check-cast 之后）
        ('    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n',
         '    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
         + const_probe('nA2b', 0x1, 'P5 循环体入口'), 'P5 body-entry'),
        # P6+P7 尾部：try_end / 出口探针 / return / catch 处理 / catchall 指令
        ('    :cond_23\n    return-void\n.end method',
         '    :try_end_p030\n\n    :cond_23\n'
         + const_probe('nA2r', 0x1, 'P6 正常出口') + '\n    return-void\n\n'
           '    :probe_catch_p030\n    move-exception v5\n\n'
           '    # r5c030 P7: 捕获异常并打印类名\n    const-string v3, "nA2e"\n\n'
           '    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Exc(Ljava/lang/Throwable;Ljava/lang/String;)V\n\n'
           '    return-void\n\n'
           '    .catchall {:try_start_p030 .. :try_end_p030} :probe_catch_p030\n.end method', 'P6+P7 tail'),
        # P7 方法头 try_start
        ('.method public executeAIAssignment(I)V\n    .registers 7\n',
         '.method public executeAIAssignment(I)V\n    .registers 7\n\n    :try_start_p030\n', 'P7 try_start'),
    ]
    for old, new, tag in EDITS:
        n = m.count(old)
        assert n == 1, '%s 锚点在方法体内不唯一/缺失 (%d)' % (tag, n)
        m = m.replace(old, new, 1)
        print('  %-16s OK' % tag)

    for keep in ('if-ltz v4, :cond_20', 'if-ne v3, v4, :p0_disp', 'if-eq v3, v4, :p0_disp'):
        assert m.count(keep) == 1, '受保护指令被动过(本方法): %r (%d)' % (keep, m.count(keep))
    # 另一方法（AIA-p）里的三条不在本子串内，在全文核对
    for keep in ('if-gez v0, :p0_blk1', 'if-ltz v3, :p0_blk3', 'if-nez v5, :p0_blk4'):
        assert t.count(keep) == 1 and m.count(keep) == 0, '受保护指令状态异常: %r' % keep

    io.open(F, 'w', encoding='utf-8').write(t[:s] + m + t[e:])

    if 'p0Exc' not in a:
        a += ('\n.method public static p0Exc(Ljava/lang/Throwable;Ljava/lang/String;)V\n'
              '    .registers 4\n\n'
              '    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;\n\n'
              '    move-result-object v0\n\n'
              '    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;\n\n'
              '    move-result-object v0\n\n'
              '    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\n\n'
              '    move-result-object v1\n\n'
              '    const-string v2, "AIRDBG"\n\n'
              '    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n\n'
              '    return-void\n.end method\n')
        io.open(L, 'w', encoding='utf-8').write(a)
        print('  AirDbgLog.p0Exc 已追加')
    print('r5c030 诊断探针批完成（7 探针 + catchall）')
    return 0


if __name__ == '__main__':
    sys.exit(main())