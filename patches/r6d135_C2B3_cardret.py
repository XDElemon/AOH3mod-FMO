#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d135：加"返回值探针" cardRet(II)V —— 打印 原始编号与算出的新编号
输出：CARDRET o=<原始ImageID> r=<最终返回编号>
"""
import io, shutil

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = io.open(P, encoding='utf-8').read()
shutil.copyfile(P, P + '.pre_r6d135')

# 在 armyCardImgFor 的 "return v6" 前插入探针调用
old = '''    add-int/2addr v6, v0

    return v6'''
new = '''    add-int/2addr v6, v0

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cardRet(II)V

    return v6'''
assert s.count(old) == 1, ('anchor miss', s.count(old))
s = s.replace(old, new, 1)

AUX = '''

.method public static cardRet(II)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CARDRET o="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method
'''
s = s + AUX
io.open(P, 'w', encoding='utf-8').write(s)
print('r6d135: cardRet 探针已加')