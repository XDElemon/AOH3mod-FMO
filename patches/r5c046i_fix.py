# -*- coding: utf-8 -*-
# r5c046i_fix.py（v2，锚点含空行，逐字对齐实际文件）
#   A) a1Scan   : if-gez v14, :p2s_first  -> if-ltz   （best 未设(-1)才采纳首个候选）
#   B) a1Scan   : 同档分数比较目标对调（d<0 丢弃 / d==0 蓄水池随机）
#   C) a1bPick  : if-ltz v12, :p2d_ge     -> if-gez   （cmp>=0 才继续评估）
#   D) 探针      : nP2set = 航程集合大小
import os, sys, hashlib
SM='/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK='/tmp/AFM_bad_r5c046g.smali'

def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()

EDITS = [
# A)
("sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I\n\n    if-gez v14, :p2s_first",
 "sget v14, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1PkTier:I\n\n    if-ltz v14, :p2s_first    # r5c046i A: best<0(未设) ⇒ 采纳首个候选"),
# B)
(":p2s_le\n    if-ltz v14, :p2s_eq\n\n    goto :sc_in_next",
 ":p2s_le\n    if-ltz v14, :sc_in_next    # r5c046i B: d<0（新分更低）⇒ 丢弃\n\n    goto :p2s_eq               # d==0 ⇒ 蓄水池随机"),
# C)
("a1bDivCmp(II)I\n    move-result v12\n    if-ltz v12, :p2d_ge",
 "a1bDivCmp(II)I\n    move-result v12\n    if-gez v12, :p2d_ge    # r5c046i C: cmp>=0（师数不少于当前最优）才继续"),
# D)
("    move-result-object v4\n\n    if-eqz v4, :sc_ap_next\n\n    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;",
 "    move-result-object v4\n\n    if-eqz v4, :sc_ap_next\n\n    invoke-interface {v4}, Ljava/util/Set;->size()I    # r5c046i D: 航程集合大小探针\n\n    move-result v14\n\n    const-string v5, \"nP2set\"\n\n    invoke-static {v5, v14}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n\n    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;"),
]

def main():
    src = open(SM, encoding='utf-8').read()
    before = md5(SM)
    if not os.path.exists(BAK):
        open(BAK,'w',encoding='utf-8').write(src); print('[BAK]', BAK)
    for i,(old,new) in enumerate(EDITS,1):
        n = src.count(old)
        if n != 1:
            print('[FAIL] 编辑 %d 命中 %d 次' % (i,n)); return 1
        src = src.replace(old,new,1); print('[OK] 编辑 %d' % i)
    open(SM,'w',encoding='utf-8').write(src)
    print('修前 md5:', before, '\n修后 md5:', md5(SM), ' 大小:', os.path.getsize(SM))
    return 0

if __name__ == '__main__':
    sys.exit(main())