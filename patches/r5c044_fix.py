# -*- coding: utf-8 -*-
# r5c044_fix.py —— 修"活猎手"去重门（极性反写，自 r4c166d 起从未生效）+ 成对修 FOW 门 + 加判读探针
# 依据（证据链）：
#   ① 设计文档 `r6s5/漏网轰炸机_拦截再派发_调研v1.md` §四/§七 明写：命中 = civ==防守方 ∧ INTERCEPT ∧ targetMissionID==敌ID ∧
#      state∈{EN_ROUTE,EXECUTING}；两链判定统一为 "已侦测 ∧ 有猎手 ⇒ 跳过"。
#   ② 三个调用点（AFM:dispatchAutoIntercept / AFM:updateAIAutoIntercept / FOW:detectEnemyMissions）传的都是"我方/防守方"文明。
#   ③ 历代备份（pre_r4c167p … pre_r5c043）该判据一直是 if-eq ⇒ 从未生效（=我们的 if-eq 与文档相反）。
#   ④ AI 链两条门都是 if-eqz（skip ⇔ 已侦测 ∧ 有猎手）⇒ FOW 链第一条门(if-nez)是唯一的异类。
import io, os, shutil, sys

AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
FOW = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
BATCH = 'r5c044'

# --- 锚点 ---
HAC_OLD = '    if-eq v5, v11, :hac_next\n'
HAC_NEW = ('    # r5c044: 命中条件 = 该任务的 civ == 传入 civ(防守方)；旧版写成 if-eq(相等⇒跳过)\n'
           '    #         ⇒ 只认"别的文明"的拦截 ⇒ "活猎手"去重门自 r4c166d 起从未生效\n'
           '    if-ne v5, v11, :hac_next\n')

RC_OLD = ('    move-result v5\n'
          '    if-eqz v5, :rc_nc\n'
          '    goto :dsp_ret\n')
RC_NEW = ('    move-result v5\n'
          '    if-eqz v5, :rc_nc\n'
          '    # r5c044: 活猎手门命中计数（我方已有拦截机在追 ⇒ 不重派）\n'
          '    const-string v8, "nHAC"\n'
          '    const/4 v9, 0x1\n'
          '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
          '    goto :dsp_ret\n')

FOW_OLD = ('    if-nez v5, :rr_p1\n'
           '    iget-wide v8, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J\n'
           '    invoke-static {v8, v9, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z\n')
FOW_NEW = ('    # r5c044: 配对门（成对修改，铁律【60】）= 已侦测?\n'
           '    #         与 hasActiveChaser(我方猎手) 合成 skip ⇔ 已侦测 ∧ 有猎手（与 AI 链一致）\n'
           '    if-eqz v5, :rr_p1\n'
           '    iget-wide v8, v4, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J\n'
           '    invoke-static {v8, v9, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->hasActiveChaser(JI)Z\n')


def main():
    for p in (AF, FOW):
        if not os.path.exists(p):
            print('[ERR] 缺文件 %s' % p)
            return 2
        bak = p + '.pre_' + BATCH
        if os.path.exists(bak):
            print('[ERR] 已存在备份 %s ⇒ 本批可能已应用，拒绝重复' % bak)
            return 2

    a = io.open(AF, encoding='utf-8').read()
    f = io.open(FOW, encoding='utf-8').read()

    # 前置断言：锚点唯一
    checks = [('AFM:hac判据', a.count(HAC_OLD), 1), ('AFM:rc门块', a.count(RC_OLD), 1),
              ('FOW:配对门块', f.count(FOW_OLD), 1)]
    for name, got, want in checks:
        if got != want:
            print('[ERR] 锚点 %s 命中 %d 次（期望 %d）⇒ 拒绝动手' % (name, got, want))
            return 2
    if 'nHAC' in a:
        print('[ERR] AFM 已含 nHAC 探针 ⇒ 拒绝重复插入')
        return 2

    # 备份
    for p in (AF, FOW):
        shutil.copy2(p, p + '.pre_' + BATCH)

    # 应用
    a2 = a.replace(HAC_OLD, HAC_NEW, 1)
    # 探针插入必须落在方法体内（铁律㉜）：dispatchAutoIntercept 范围内唯一
    st = a2.find('.method public static dispatchAutoIntercept(')
    en = a2.find('\n.end method', st)
    seg = a2[st:en]
    if seg.count(RC_OLD) != 1:
        print('[ERR] dispatchAutoIntercept 内 rc 门块命中 %d 次 ⇒ 拒绝' % seg.count(RC_OLD))
        return 2
    a2 = a2[:st] + seg.replace(RC_OLD, RC_NEW, 1) + a2[en:]
    f2 = f.replace(FOW_OLD, FOW_NEW, 1)

    io.open(AF, 'w', encoding='utf-8').write(a2)
    io.open(FOW, 'w', encoding='utf-8').write(f2)

    # 后置断言
    a3 = io.open(AF, encoding='utf-8').read()
    f3 = io.open(FOW, encoding='utf-8').read()
    post = [
        ('helper 已改 if-ne', '    if-ne v5, v11, :hac_next\n' in a3),
        ('helper 无残留 if-eq', 'if-eq v5, v11, :hac_next' not in a3),
        ('nHAC 探针已加', a3.count('const-string v8, "nHAC"') == 1 and a3.count('->e5i(') >= 1),
        ('FOW 配对门已改 if-eqz', '    if-eqz v5, :rr_p1\n' in f3),
        ('FOW 无残留 if-nez', 'if-nez v5, :rr_p1' not in f3),
        ('invoke 计数 AFM', a3.count('    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V') == a.count(
            '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V') + 1),
    ]
    bad = [n for n, ok in post if not ok]
    if bad:
        print('[ERR] 后置断言失败: %s' % bad)
        return 2
    # invoke 行数对账（铁律【68】：SIG 只当哨兵，行数要实点）
    ia, ia2 = a.count('    invoke-'), a3.count('    invoke-')
    if_, if2 = f.count('    invoke-'), f3.count('    invoke-')
    print('AFM invoke 行: %d -> %d (+%d)' % (ia, ia2, ia2 - ia))
    print('FOW invoke 行: %d -> %d (+%d)' % (if_, if2, if2 - if_))
    print('AFM 行数: %d -> %d' % (a.count('\n'), a3.count('\n')))
    print('FOW 行数: %d -> %d' % (f.count('\n'), f3.count('\n')))
    print('[OK] r5c044 已应用（备份: *.pre_r5c044）')
    return 0


if __name__ == '__main__':
    sys.exit(main())