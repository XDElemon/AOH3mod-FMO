# -*- coding: utf-8 -*-
# §H 第三次调研收尾：锚点/寄存器定稿 + 取消逐机场探针（改以既有派发探针的缺失验证）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
t = io.open(P, encoding='utf-8').read()
B = P + '.pre_r5c019j'
C = []

def rep(old, new, tag):
    global t
    if old not in t:
        print('  未命中:', tag); return
    t = t.replace(old, new, 1); C.append(tag); print('  OK', tag)

# 1) 探针条目：改为“不加探针，用既有探针的缺失验证”
rep(u'| 9 | 探针 | 两条线各打一次：`nAS ln=1 st=<0/1>`（攻击机线）／`nAS ln=2 st=<0/1>`（轰炸线），逐机场；可选 `nAS sk=<省>` | 走 `a1bLog`/`dKey` 通道，无分支拼接 |',
    u'| 9 | 探针 | **不加新探针**（原计划的逐机场 `nAS ln=… st=…` 会每 tick × 每机场刷日志，`a1bLog` 通道已有 380MB 量级）⇒ 改用**既有派发探针的缺失**验证：关掉某机场后，`nAS pk …`（轰炸线）与 `nA1b ap=<该机场省>`（攻击机线）不再新增；状态本身由按钮文案"自动打击：开/关"呈现 |',
    u'清单 9 改为不加探针')

# 2) 补记：三次调研定稿的锚点与寄存器（含 a1Scan 暂存寄存器选择）
ANK = u"""
### H.8 第三次调研定稿（锚点 + 寄存器余量，可直接照此施工）

| # | 文件:行 | 改动 | 寄存器/极性要点 |
|---|---|---|---|
| 1 | `Airport.smali` 字段区尾（`totalLost:I` 之后） | 新增 `.field public autoStrikeOff:Z` | 反向语义：false＝开 |
| 2 | `Airport.smali` 构造器：`iput v0, …->prefPayload:I`（147 行）之后 | 追加 `iput-boolean v0, p0, …->autoStrikeOff:Z` | 该处 **v0 已是 0**（141 行 `const/4 v0,0x0`）⇒ 零额外指令、零寄存器变化 |
| 3a | `a1bScan`：`if-eqz v2, :bs_ap_next`（6870）之后 | `iget-boolean v3, v2, …->autoStrikeOff:Z` ＋ `if-nez v3, :bs_ap_next` | v3 自由（该方法只用 v0 v1 v2 v7 v9 v10 v11 v12 v13）；**`if-nez`＝≠0 才跳** ⇒ 关掉时跳过该机场 |
| 3b | `a1Scan`：`if-eqz v2, :sc_ap_next`（6177）与 `invoke-virtual {v0,v2,v3} getProvincesInRange`（6179）之间 | 同款两条：`iget-boolean v4, v2, …` ＋ `if-nez v4, :sc_ap_next` | **v3 不能用**（它在 6160 行被赋 `AirType->BOMBER` 并跨迭代持有，6179 要用）；**v4 可用**（6181 立即被覆盖） |
| 4 | `SaveGameManager$Save_Airport` 字段尾（`totalLost:I`） | 新增同名字段 `autoStrikeOff:Z` | Json 按名存取；DTO 有无参构造器 |
| 5 | `SaveGameManager`：`iput v8, v7, …Save_Airport->prefPayload:I`（427）之后 | `iget-boolean v8, v6, Airport->autoStrikeOff:Z` ＋ `iput-boolean v8, v7, …Save_Airport->autoStrikeOff:Z` | v6=源 Airport、v7=DTO、v8=临时 ⇒ 沿用 |
| 6 | `LoadSavedGameManager`：`iput v12, v11, Airport->prefPayload:I`（4157）之后 | `iget-boolean v12, v7, …Save_Airport->autoStrikeOff:Z` ＋ `iput-boolean v12, v11, Airport->autoStrikeOff:Z` | v7=DTO、v11=Airport、v12=临时 ⇒ 沿用 |
| 7 | `BtnMission.actionElement()` `missionType==1` 分支（132-134） | 用 **`iget-boolean v2` → `xor-int/lit8 v2, v2, 0x1` → `iput-boolean v2`** 取代"`mode=OFFENSIVE`"；保留后续 `stopAirportPatrols` 与 `rebuildInGame_AirForce()` | `.registers 11`，实占 v0–v7 ⇒ v2 为临时，可放心翻转 |
| 8 | `BtnMission.getTextToDraw()`（368-374 的 else 路径） | 插入"`missionType==1`"分支：默认 `自动打击：关`，查到当前机场且 `autoStrikeOff==0` 时改 `自动打击：开`，直接 `return-object` | `.registers 8`，实占 v0–v4 ⇒ 用 v5 作 const 临时、v2/v3/v4 复用 type0 的同款查表写法；**不得破坏既有 `:cond_9`（巡逻块）与 `:cond_37`** |

**极性真值表（开工前逐条照抄）**
```
autoStrikeOff == 0  ⇒ 自动打击 = 开（默认；旧档/新机场）
autoStrikeOff != 0  ⇒ 自动打击 = 关（玩家点按钮后）
if-nez  vX, :skip   ⇒  vX != 0 时跳走  ⇒ 用于"关掉则跳过该机场"
if-eqz  vX, :label  ⇒  vX == 0 时跳走
xor-int/lit8 v2, v2, 0x1  ⇒ 0/1 翻转（iget-boolean 得到 0 或 1）
```

**验收（不新增探针的前提下）**
1. 文案：`自动打击：开` ⇄ `自动打击：关` 可切换、重建面板后不回退；
2. 关掉某机场后：攻击机线 `nA1b ap=<该机场省>` 不再新增、轰炸线 `nAS pk …` 不再新增；**其它机场照常**；
3. 存读档：关掉→存档→读档仍为"关"；未动过的机场仍为"开"；
4. 回归：`nGA fire` 等弹药机制不变。
"""
rep(u'**H.7.7 门锚点（两条线都已就绪，选谁都不用再调研）**', ANK + u'\n**H.7.7（下条为旧记录，保留）**', u'新增 H.8 定稿表')

if C:
    if not os.path.exists(B):
        shutil.copy2(P, B)
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §H 更新（%d 处）；备份 %s' % (len(C), os.path.basename(B)))
else:
    print('无改动')