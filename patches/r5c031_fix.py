# -*- coding: utf-8 -*-
# r5c031_fix.py —— P1a FIX-4：executeAIAssignment 的 isEmpty 判据极性（原版 bug）
#   原: if-eqz v1, :cond_23   ⇒ isEmpty()==false（列表非空）就 return ⇒ 循环永不执行
#   改: if-nez v1, :cond_23   ⇒ isEmpty()==true（空表）才 return ⇒ 非空时进入循环
# 同时撤掉 r5c030 的 try/catch（诊断期临时件），其余探针保留。
import io, os, shutil, sys

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = F + '.pre_r5c031'
HDR = '.method public executeAIAssignment(I)V\n'


def main():
    t = io.open(F, encoding='utf-8').read()
    if 'r5c031 FIX-4' in t:
        print('r5c031 已应用（幂等退出）')
        return 0
    assert 'r5c030 P6 正常出口' in t, '工作树不是 r5c030 状态，先核对'

    if not os.path.exists(BAK):
        shutil.copy2(F, BAK); print('backup ->', BAK)

    s = t.index(HDR)
    e = t.index('\n.end method', s) + len('\n.end method')
    m = t[s:e]

    # --- 1) 极性修正 ---
    old = '    if-eqz v1, :cond_23\n'
    new = ('    # r5c031 FIX-4: isEmpty 判据极性（原 if-eqz ⇒ 非空即 return ⇒ 循环永不执行）\n'
           '    if-nez v1, :cond_23\n')
    assert m.count(old) == 1, 'isEmpty 判据锚点不唯一 (%d)' % m.count(old)
    m = m.replace(old, new, 1)
    print('  FIX-4 isEmpty 判据 if-eqz -> if-nez  OK')

    # --- 2) 撤掉诊断期 try/catch ---
    assert m.count('    :try_start_p030\n') == 1 and m.count('    :try_end_p030\n') == 1
    m = m.replace('    :try_start_p030\n\n', '', 1)
    m = m.replace('    :try_end_p030\n\n', '', 1)
    i = m.index('    :probe_catch_p030\n')
    j = m.index('    .catchall {:try_start_p030 .. :try_end_p030} :probe_catch_p030\n')
    m = m[:i] + m[j + len('    .catchall {:try_start_p030 .. :try_end_p030} :probe_catch_p030\n'):]
    assert 'catchall' not in m and 'try_start' not in m, 'try/catch 未清干净'
    print('  catchall/try 标签已移除  OK')

    # --- 3) 保护断言 ---
    for keep, cnt in (('if-ltz v4, :cond_20', 1), ('if-ne v3, v4, :p0_disp', 1),
                      ('if-eq v3, v4, :p0_disp', 1), ('if-ge v1, v2, :cond_23', 1)):
        assert m.count(keep) == cnt, '受保护指令异常: %r (%d)' % (keep, m.count(keep))
    for keep in ('if-gez v0, :p0_blk1', 'if-ltz v3, :p0_blk3', 'if-nez v5, :p0_blk4'):
        assert t.count(keep) == 1, 'AIA-p 侧指令异常: %r' % keep

    io.open(F, 'w', encoding='utf-8').write(t[:s] + m + t[e:])
    print('r5c031 完成（FIX-4 极性 + 撤诊断 catchall；探针全保留）')
    return 0


if __name__ == '__main__':
    sys.exit(main())