# -*- coding: utf-8 -*-
# R4c199：
#  ① 修崩溃：tryStrikeForAirport 里 r4c177t 探针在 v0<0 时调 Game.getProvince(-1) → IndexOutOfBounds（每回合）
#  ② 修配置加载：cfgStamp 只允许在“解析成功”后写入（现在写在 :lc_proceed，失败一次就永远 skip）
#  ③ 修探针极性：mode 判定 if-ne → if-eq
#  ④ 新增 k=9：roveTick 的 catch 里打印异常，不再静默
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

def rep1(old, new, tag):
    global src
    n = src.count(old)
    assert n == 1, 'anchor[%s] count=%d' % (tag, n)
    src = src.replace(old, new, 1)
    print('OK %s' % tag)

# ---------------------------------------------------------------- ① 崩漏
rep1('''    # R4c177t探针：选靶时的目标省驻军数（nv k=64 v=<tgt> v2=<army>）
    # 真值表意图：v1==null 才跳过（防 NPE）；否则打印，不改任何分支
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
''',
     '''    # R4c199：v0<0 时绝不能调 getProvince（否则 IndexOutOfBounds 每回合崩）
    if-ltz v0, :r4c199_probe
    goto :r4c177t_skip
    :r4c199_probe
    # R4c177t探针：选靶时的目标省驻军数（nv k=64 v=<tgt> v2=<army>）
    # 真值表意图：v1==null 才跳过（防 NPE）；否则打印，不改任何分支
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
''', 'fix getProvince(-1)')

# ---------------------------------------------------------------- ② cfgStamp 延后到解析成功
rep1('''    :lc_proceed
    sput-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgStamp:J
''',
     '''    :lc_proceed
''', 'move stamp write (a)')

rep1('''    :lc_done
    const-string v12, "AIRDBG"
''',
     '''    :lc_done
    sput-wide v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgStamp:J
    const-string v12, "AIRDBG"
''', 'move stamp write (b)')

# ---------------------------------------------------------------- ③ mode 判定极性
rep1('''    const/4 v6, 0x3
    if-ne v5, v6, :rt_mode_ok
''',
     '''    const/4 v6, 0x3
    if-eq v5, v6, :rt_mode_ok
''', 'fix mode branch')

# ---------------------------------------------------------------- ④ catch 探针
rep1('''    :rt_catch
    move-exception v10
    goto :rt_ret
''',
     '''    :rt_catch
    move-exception v10
    const/16 v4, 0x9
    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->rtLog(I)V
    goto :rt_ret
''', 'catch probe')

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))