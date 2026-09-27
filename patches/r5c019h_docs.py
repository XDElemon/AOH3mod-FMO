# -*- coding: utf-8 -*-
# §H.7 补记：选项②（连轰炸线一起关）的门锚点已查实
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
LINE_OLD = u'**H.7.6 开工前只剩一个待拍板**：H.7.2 的开关范围（①/②/③）。\n'
LINE_NEW = (u'**H.7.6 开工前只剩一个拍板项**：H.7.2 的开关范围（①/②/③）。\n\n'
            u'**H.7.7 门锚点（两条线都已就绪，选谁都不用再调研）**\n'
            u'- `a1bScan`（攻击机线）：机场循环 `:bs_ap`（AFM:6865-6877），`check-cast v2, Airport` 之后插门；\n'
            u'  该方法只用 `v0 v1 v2 v7 v9 v10 v11 v12 v13` ⇒ **v3–v6/v8 空闲**，直接用 v3 作临时寄存器，**不需要动 `.registers`**。\n'
            u'- `a1Scan`（轰炸线）：同样有"按机场"的循环 `:sc_ap`（AFM:6168-6177，循环体对每个机场取 `getProvincesInRange(airport, BOMBER)`）；\n'
            u'  该方法 `.registers 16` 且 **v0–v14 全部在用**（无空闲）⇒ 门插在 `check-cast`（6173）与 `sget v3, AirType->BOMBER`（6179 前一条）之间，**借用 v3**（随后立即被 BOMBER 赋值覆盖，语义安全）。\n'
            u'⇒ 两条线都是"每机场一个循环"⇒ 与"每机场粒度开关"天然一致；选②＝两处各插同样的 3 条指令。\n')
t = io.open(P, encoding='utf-8').read()
if u'**H.7.7 门锚点' in t:
    print('已存在，跳过')
elif LINE_OLD in t:
    B = P + '.pre_r5c019h'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    io.open(P, 'w', encoding='utf-8').write(t.replace(LINE_OLD, LINE_NEW))
    print('OK 已补记 H.7.7；备份 %s' % os.path.basename(B))
else:
    print('锚点未命中（%r）' % LINE_OLD[:24])