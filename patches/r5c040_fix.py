# -*- coding: utf-8 -*-
# r5c040_fix.py —— P1c-4
#   [A] 修"飞机没真飞/拦不住"：给 AI 任务补 airhqKey（dedupAirhqDivision 第一道门就要它）
#       AFM 新增 public static tagAirhqKey(AirMission,Airport,I)，在 AI 派发的两条分支（轰炸/巡逻）各调一次
#   [B] 探针换通道：detectEnemyMissions 内 6 个 logOnce 探针 → e5i（dKey 缓冲，无 500ms 全局节流）
import io, os, re, sys, shutil, time

T = '/tmp/w3a/smali'
FOW = T + '/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
AFM = T + '/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS = time.strftime('%Y-%m-%d %H:%M')

NEW_TAG = u'''
.method public static tagAirhqKey(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/Airport;I)V
    .registers 6

    if-eqz p0, :tag_ret

    if-eqz p1, :tag_ret

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    if-nez v0, :tag_ret

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    if-ltz v1, :tag_ret

    invoke-static {v0, v1, p2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airhqKey(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airhqKey:Ljava/lang/String;

    :tag_ret
    return-void
.end method
'''


def rd(p):
    return io.open(p, encoding='utf-8').read()


def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)


def insert_after_invoke_result(path, invoke_needle, block, tag):
    """在包含 invoke_needle 的 invoke 之后、其 move-result 之后插入 block"""
    s = rd(path)
    i = s.find(invoke_needle)
    if i < 0 or s.count(invoke_needle) != 1:
        print('[FATAL] %s: %s 出现 %d 次' % (tag, invoke_needle[:40], s.count(invoke_needle)))
        sys.exit(1)
    m = re.search(r'\n[^\n]*move-result[^\n]*\n', s[i:])
    if not m:
        print('[FATAL] %s: 找不到 move-result' % tag)
        sys.exit(1)
    j = i + m.end()
    wr(path, s[:j] + block + s[j:])
    print('[OK] %s' % tag)


def main():
    print('=== r5c040_fix.py (P1c-4) %s ===' % TS)
    for p in (FOW, AFM):
        b = p + '.pre_r5c040'
        if not os.path.exists(b):
            shutil.copy2(p, b)
            print('[BK] %s' % b.split('/')[-1])
    if 'tagAirhqKey' in rd(AFM):
        print('[FATAL] 已打过 r5c040')
        sys.exit(1)

    # ── [A1] 新增 tagAirhqKey
    a = rd(AFM)
    if not a.endswith('\n'):
        a += '\n'
    wr(AFM, a + NEW_TAG)
    print('[OK] AFM.tagAirhqKey（EOF 追加）')

    # ── [A2] 轰炸分支（BOMBER 序号 = 1）
    insert_after_invoke_result(AFM,
        u'invoke-static {p1, v3, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createStrategicBombing(',
        u'\n    const/4 v3, 0x1\n\n    invoke-static {v4, p1, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tagAirhqKey(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/Airport;I)V\n',
        'A2 AI 轰炸任务补 airhqKey(type=BOMBER=1)')

    # ── [A3] 巡逻分支（FIGHTER 序号 = 2）
    insert_after_invoke_result(AFM,
        u'invoke-static {p1, v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirMission;->createPatrol(',
        u'\n    const/4 v1, 0x2\n\n    invoke-static {v3, p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->tagAirhqKey(Laoc/kingdoms/lukasz/map/battles/AirMission;Laoc/kingdoms/lukasz/map/battles/Airport;I)V\n',
        'A3 AI 巡逻任务补 airhqKey(type=FIGHTER=2)')

    # ── [B] 探针换通道：logOnce → e5i
    f = rd(FOW)
    for key in ('inDE_A', 'inDE_B', 'inDE_C', 'inDE_D', 'inDE_E', 'inDE_F'):
        pat = re.compile(
            r'    const-string v12, "AIRDBG"\n\n'
            r'    const-string (v13|v5), "%s"\n\n'
            r'    invoke-static \{v12, \1\}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce\(Ljava/lang/String;Ljava/lang/String;\)I\n' % key)
        m = pat.search(f)
        if not m:
            print('[FATAL] 探针 %s 未匹配' % key)
            sys.exit(1)
        reg = m.group(1)
        new = ('    const-string v12, "%s"\n\n'
               '    const/4 %s, 0x1\n\n'
               '    invoke-static {v12, %s}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n' % (key, reg, reg))
        f = pat.sub(new, f, count=1)
        print('[OK] 探针 %s → e5i（无节流通道）' % key)
    wr(FOW, f)

    # 自检
    a, f = rd(AFM), rd(FOW)
    assert a.count('.method public static tagAirhqKey(') == 1
    assert a.count('->tagAirhqKey(') == 3, a.count('->tagAirhqKey(')
    assert f.count('->e5i(Ljava/lang/String;I)V') == 6, f.count('->e5i(Ljava/lang/String;I)V')
    assert 'inDE_F' in f and 'logOnce' in f
    print('=== 自检通过 ===')
    print('DONE', TS)


if __name__ == '__main__':
    main()