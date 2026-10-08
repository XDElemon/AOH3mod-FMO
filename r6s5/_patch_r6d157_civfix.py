#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d157 —— 取证 + 修正：飞机国别改用"任务/飞机自己的 civ"（不再只依赖 key）

背景：r6d156 实测 nMK s=1/3 各 21680 行（取图链在跑），但 artD 0 行
      ⇒ 只有一种解释：airImgForKey 收到的 key 为 null（artD 第一行即返回），
        于是 civ 兜底成 2（RU）→ 玩家看到"中国空军变俄罗斯"。

本批：
  F1  ProvinceDrawArmy 加静态字段 artCiv:I
  F2  drawAirDivisionAsPlane 在 :goto_aa 处把 v5（= 任务 civID 或 key 里的 civ）
      存进 artCiv —— 这是"飞机自己的国家"的上位来源
  F3  airImgForKey 重写：优先 artCiv → 其次 getKeyCiv(key) → 最后 2(RU)
      ＋ 每次调用写一行 nAIF（key 是否 null、civ 来源、最终组、图 id），
        取证用（不再有"看不见的早退"）
"""
import os, shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d157'
REVX = '/tmp/revx/'
PD = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def backup(p):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)


def rep_once(s, old, new, tag):
    n = s.count(old)
    assert n == 1, '[%s] 锚点命中 %d != 1: %r' % (tag, n, old[:160])
    return s.replace(old, new)


FIELD = '.field public static artCiv:I\n\n'

A2 = '''    :goto_aa
    if-ne v10, v11, :cond_be'''
N2 = '''    :goto_aa
    sput v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I

    if-ne v10, v11, :cond_be'''

A3 = '''.method public static airImgForKey(ILjava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-eqz p1, :go

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :use

    goto :go

    :use
    move v1, v0

    :go
    invoke-static {v1, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I

    move-result v2

    invoke-static {p1, v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->artD(Ljava/lang/String;IIII)V

    return v2
.end method'''

N3 = '''.method public static airImgForKey(ILjava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I

    const/4 v4, 0x1

    if-ltz v3, :use

    const/4 v4, 0x0

    if-eqz p1, :go

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getKeyCiv(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :use2

    goto :go

    :use2
    move v3, v0

    const/4 v4, 0x2

    goto :use

    :go
    move v3, v1

    :use
    invoke-static {v3, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForCiv(II)I

    move-result v2

    invoke-static {p1, v4, v3, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->aif(Ljava/lang/String;IIII)V

    invoke-static {p1, v0, v3, p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->artD(Ljava/lang/String;IIII)V

    return v2
.end method'''


AIF = '''

.method public static aif(Ljava/lang/String;IIII)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz p1, :c1

    const/4 v0, 0x1

    goto :log

    :c1
    const/16 v0, 0x10

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    :log
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nAIF src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " civ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " k="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method
'''

PP = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'


def main():
    s = rd(PD)
    if 'artCiv' in s:
        print('  [F1-F3] 已应用')
        return
    backup(PD)
    # F1：字段（插在第一个 .method 之前）
    i = s.find('\n.method ')
    assert i > 0, 'F1 找不到类级方法起始点'
    s = s[:i + 1] + FIELD + s[i + 1:]
    # F2：:goto_aa 处存 civ
    s = rep_once(s, A2, N2, 'F2')
    # F3：重写 airImgForKey
    s = rep_once(s, A3, N3, 'F3')
    wr(PD, s)
    # F4：追加 aif 探针
    q = rd(PP)
    if '.method public static aif(' in q:
        print('  [F4] 已应用')
    else:
        backup(PP)
        q = q.rstrip('\n') + '\n' + AIF
        wr(PP, q)
        print('  F4 aif 探针已追加')
    print('✅ r6d157 补丁落地：')
    print('   F1 字段 artCiv:I')
    print('   F2 :goto_aa 处 sput artCiv')
    print('   F3 airImgForKey 改为 artCiv→key→RU 三级来源 + aif/artD 取证行')


if __name__ == '__main__':
    main()