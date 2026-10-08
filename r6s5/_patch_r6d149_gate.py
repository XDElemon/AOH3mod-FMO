#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d149 修三件事（都在探针自身上）：

① ok(I)Z 采样闸"极性写反" ⇒ 改成【计数器取模】采样：每第 N 次调用放行一次。
   （时间比较容易写反，且文本门禁/静态检查都验不出来；改成纯算术后可进模拟器建模断言）
② up(I)V 里的"mapScale 判空守卫 + sc 字段"删掉：开局 mapScale 尚未初始化，
   守卫导致 nUPY 全程静默；H（队高）与偏移量才是这里要看的东西 ⇒ 去掉 sc，去掉守卫。
③ 调用点把 300(ms) 改成 60(次)。
"""
import re

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
t = open(P, encoding='utf-8').read()

# ---------- ① ok() 改成计数器取模 ----------
m = re.search(r'\.method public static ok\(I\)Z.*?\n\.end method', t, re.S)
assert m, '找不到 ok(I)Z'
NEW_OK = '''.method public static ok(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->cnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->cnt:I

    rem-int v1, v0, p0

    if-nez v1, :yes

    const/4 v2, 0x0

    return v2

    :yes

    const/4 v2, 0x1

    return v2
.end method'''
t = t.replace(m.group(0), NEW_OK, 1)
print('① ok() 已改为计数器取模采样')

# 字段：加 cnt
assert '.field private static cnt:I' not in t
t = t.replace('.field private static last:J',
              '.field private static last:J\n\n.field private static cnt:I', 1)
print('① 已加字段 cnt')

# ---------- ② up(I)V：去掉守卫与 sc ----------
m = re.search(r'\.method public static up\(I\)V.*?\n\.end method', t, re.S)
assert m, '找不到 up(I)V'
body = m.group(0)
# 去守卫
guard = '''    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v12, :safe

'''
assert guard in body, 'up 里没找到守卫'
b2 = body.replace(guard, '', 1)
# 去 sc 段（从 const-string " sc=" 到 append(F) 那一组）
sc_seg = re.search(r'    const-string v9, " sc=".*?append\(F\)Ljava/lang/StringBuilder;\n\n', b2, re.S)
assert sc_seg, 'up 里没找到 sc 段'
b2 = b2.replace(sc_seg.group(0), '', 1)
# 去 :safe 尾（已无引用）
b2 = b2.replace('    :safe\n\n    return-void\n', '    return-void\n', 1)
assert ':safe' not in b2, 'up 里仍残留 :safe'
t = t.replace(body, b2, 1)
print('② up() 已去掉 mapScale 守卫与 sc 字段')

open(P, 'w', encoding='utf-8').write(t)

# ---------- ③ 调用点 300 -> 60 ----------
PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
d = open(PDA, encoding='utf-8').read()
n = d.count('const/16 v2, 0x12c\n\n    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z')
assert n == 4, '调用点命中 %d（期望 4）' % n
d = d.replace('const/16 v2, 0x12c\n\n    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z',
              'const/16 v2, 0x3c\n\n    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z')
open(PDA, 'w', encoding='utf-8').write(d)
print('③ 4 个调用点已改为每 60 次采样一次')