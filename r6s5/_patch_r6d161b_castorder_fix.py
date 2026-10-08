#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d161b 修正补丁 —— 把「空军判定块」从 check-cast **之前** 挪到 **之后**。

崩溃证据（r6d161 装机后开局闪退）：
  java.lang.VerifyError: Province.updateArmyPosY() [0x25]
  cannot access instance field ArmyDivision.key from object of type Reference: java.lang.Object
原因：我插入的锚点是 `check-cast v2, ArmyDivision; ... getArmyHeight ...`，
      而 AIR 块是 **前置** 拼接（AIR + F_OLD）⇒ 判定块跑到了 check-cast 前面，
      此时 v2 由 `lArmies.get(i)` 得到，静态类型是 Object ⇒ 访问 ArmyDivision.key 被 ART 拒绝（整类被拒）。

修法：把整块从 "move-result-object v2 之后 / check-cast 之前" 移到 "check-cast 之后 / getArmyHeight 之前"。
"""
import os
import shutil
import sys

PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
REVX = '/tmp/revx/'
BATCH = 'r6d161b'

BLOCK = '''    # === r6d161：空军师与陆军错开（空军用自己的槽位计数 v5）===
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v3, :r6d161_ground

    const-string v4, "airhq_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :r6d161_ground

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    mul-int v3, v3, v5

    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-static {p0, v2, v0, v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :r6d161_ground
    # === r6d161 end ===
'''

CAST = '    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;\n'


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


s = rd(PROV)

# 现状（错误）： BLOCK + CAST   —— 块在 check-cast 之前
bad_form = BLOCK + CAST
# 目标（正确）： CAST + BLANK + BLOCK —— 块在 check-cast 之后
good_form = CAST + '\n' + BLOCK

if s.count(good_form) >= 1 and s.count(bad_form) == 0:
    print('已修正（块在 check-cast 之后）')
elif s.count(bad_form) == 1:
    if not os.path.exists(PROV + '.pre_' + BATCH):
        shutil.copy2(PROV, PROV + '.pre_' + BATCH)
        print('  备份 ->', PROV + '.pre_' + BATCH)
    wr(PROV, s.replace(bad_form, good_form, 1))
    print('✅ 已把判定块挪到 check-cast 之后')
else:
    print('❌ 现状不匹配：bad=%d good=%d' % (s.count(bad_form), s.count(good_form)))
    sys.exit(1)

# 校验
s = rd(PROV)
i_cast = s.index(CAST, s.index('.method public final updateArmyPosY()V'))
i_block = s.index('r6d161_ground', i_cast)
i_oldbad = s.find('move-result-object v2\n\n    # === r6d161')
print('  位置校验：check-cast 在 %d，判定块在 %d（块必须在后）' % (i_cast, i_block))
print('  是否有“块在 check-cast 之前”残留：', i_oldbad != -1 or s.count(bad_form) > 0)
os.makedirs(REVX, exist_ok=True)
shutil.copy2(PROV, REVX + 'Province.smali.pre_' + BATCH)
print('  备份 ->', REVX + 'Province.smali.pre_' + BATCH)
print('✅ r6d161b 修正完成')