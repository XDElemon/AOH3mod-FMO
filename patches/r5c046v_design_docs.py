# -*- coding: utf-8 -*-
# r5c046v_design_docs.py —— 设计逻辑 r5c046v + 计划书 §94 + INCR §38
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DESIGN=os.path.join(R6S5,'设计逻辑_r5c046v.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

DESIGN_TXT = '''# 设计逻辑 · r5c046v（机场面板解析顺序：开关不再"串机场"）
> 交付 ''' + TS + ''' ｜ dex `7655ac90…` ／ apk `385373f8…` ｜ 装机独立核验通过 ｜ 基线 1224112857
> 三轮调研：《调研_r5c046v_机场解析顺序_v1全量.md》→ `_v2拓展.md` → `_v3定稿.md`

## 1) 版本 + 一句话定位
修"机场面板解析到了**陈旧的那座机场**"——于是你在 A 机场按的开关，实际写进了很久以前选中的那座机场，而每座机场的面板又都显示它 ⇒ 看起来"所有机场一起变"。

## 2) 设计目标
按钮（写入）与按钮文本（显示）必须**跟随你正在看的那座机场**；每座机场的 `autoStrikeOff` / `mode` 互相独立。

## 3) 规则与判定顺序（修后）
`BtnMission.pickAirport(mode)` 依次尝试，第一个成功者胜出：
1. **`InGame_AirForceOptions.iActiveID`**（`0 ≤ id < 列表长度`）⇒ `getAirportsForCiv(playerCiv).get(iActiveID)`　← 从**机场列表**进入面板时最权威（游戏本体 `InGame_AirForceOptions` 也是这么取机场的）
2. **`Game.iActiveProvince`** ⇒ `getAirportByProvinceID(province)`　← **当前打开的省份（实时）**
3. `AFM.selectedAirportProvinceID` ⇒ `getAirportByProvinceID(province)`　← "被选中的机场"标记（**会陈旧**，降级为兜底）
4. `list.get(0)`　← 最后兜底；全失败返回 null（日志 `afp:n`）
来源码（仅日志）：`afp:src = mode*10 + 来源码`，来源码 2＝③、3＝②、4＝④（`iActiveID` 成功时不打日志）。

## 4) 参数与阈值表
| 名称 | 值/来源 | 含义 | 备注 |
|---|---|---|---|
| `mode` 形参 | 写入路径传 `1`、显示路径（`getTextToDraw`）传 `2` | **只用于日志**，不参与选择 | — |
| `iActiveID` | `InGame_AirForce$BtnAirport.actionElement` 写（＝`airportIndex`）；关闭面板时 `MenuManager` 置 −1 | 机场列表面板的下标 | 权威但常在 −1 |
| `Game.iActiveProvince` | `MapTouchManager`（点地图）/快速栏等写 | 当前打开的省份 | **实时** |
| `AFM.selectedAirportProvinceID` | 快速栏/地图选择写 | 被选中的机场（画高亮用） | **会陈旧** |

## 5) 状态与生命周期
- 玩家点开的机场 → 游戏设置 `Game.iActiveProvince`（省份）或 `iActiveID`（列表）→ 打开 `IN_GAME_AIRFORCE_OPTIONS`；
- 按钮 `actionElement`：`pickAirport(1)` → 对**该机场**切 `mode`（巡逻键）或 `autoStrikeOff`（打击键，并强制 `mode=OFFENSIVE` + `stopAirportPatrols`）；
- 显示 `getTextToDraw`：`pickAirport(2)` → 读**同一机场**的 `mode` / `autoStrikeOff` 生成"开/关"。

## 6) 边界与不变量
- `iActiveID` 仍**最优先**（不变）；`list[0]` 仍在最后（不变）；解析失败仍返回 null（不变）。
- `selectedAirportProvinceID` 的其它用途（地图高亮等）**不受影响**（我们只改解析顺序）。
- 不新增静态字段；不提高 `.registers`（本批仅块内指令换位，`regtype` 高危数保持 4 处不变）。

## 7) 玩家可感知的表现
- 在机场 A 把「自动打击」切成"开"，再打开机场 B 的面板 ⇒ **B 显示的是 B 自己的状态**（默认"关"）；
- 在 B 上按一次 ⇒ **只有 B 变化**；回到 A ⇒ A 保持你设的"开"；
- 巡逻键同理（`mode` 也是逐机场的）。

## 8) 失败与回退
| 现象 | 原因/处置 |
|---|---|
| 仍"串机场" | 又退回陈旧来源 ⇒ 门禁㊻ 拦（负样本＝r5c046u 树，报 1 处） |
| 打开某机场面板却解析到别的省 | `Game.iActiveProvince` 与该面板不一致 ⇒ 下一次实测据此再定（例如把 `iActiveID` 提到最前已是最优） |
| 解析到 null | 日志 `afp:n`；本次样本 0 次 |
| 回滚 | `BtnMission.smali.pre_r5c046v` ＋ 归档 apk（上一版 u） |

## 9) 验收标准（可证伪）
| 观测 | 通过 | 不通过 |
|---|---|---|
| A 上切换后打开 B | B 显示自身状态（不自带 A 的状态） | B 跟着 A 变 ⇒ 顺序不对 |
| 在 B 按键 | 只有 B 的开关变 | A 也跟着变 ⇒ 仍指向陈旧机场 |
| `afp:src` | 以 **a=13（来源 3＝`Game.iActiveProvince`）** 为主 | 仍以 a=12 为主 ⇒ 还是走了旧标记 |
| 门禁 | ㊻ 0 处；arity BAD 0；invoke-target OK | 任一不通过 |

## 10) 变更清单摘要
| # | 位置 | 变更 |
|---|---|---|
| **H1** | `InGame_AirForceOptions$BtnMission.pickAirport(I)` | 把"当前省份（实时）"块与"被选中机场（陈旧）"块**互换**，`v6` 来源码语义不变（2↔被选中机场、3↔当前省份） |

## 11) 修 bug 三问
- **错误规则**：解析链把 `AFM.selectedAirportProvinceID`（"被选中的机场"标记）排在 `Game.iActiveProvince`（当前打开的省份）**之前** ⇒ 按键/显示落在**陈旧机场**上。
- **正确规则**：优先"当前打开的省份（实时）"，旧标记降为兜底。
- **为什么之前会错**：r 批重写四级兜底时，按"哪个更像用户意图"排序（把"被选中的机场"当成用户意图），而没按**新鲜度**排序；样本证据：按键时 `afp:src a=12`（＝来源 2 陈旧标记）5 次、`a=13` 仅 2 次。
- **症状↔修复**：你看到的"在一个机场切换、别的机场也跟着变"＝写入/显示都落在同一座陈旧机场 ⇒ 本批重排后，写入与显示各自跟随当前面板。
'''

PLAN_SEC = '''

---

## 94. 【施工·已装机】r5c046v 产物与待办
### 94.1 产物
dex `7655ac9083f6216237b3d1c60ed50e5c`；apk `385373f88d158eb4ea48a224b0b0953d`（Earth3 18510）；装机三对齐通过；基线 `1224112857`。
门禁：新增 **㊻（pickAirport 顺序）**，负样本 1 → 修后 0；regtype BtnMission 4（不变）；arity BAD 0；invoke-target OK。
### 94.2 待验收（用户实测）
①在 A 上切换开关后打开 B ⇒ B 显示自身状态；②在 B 按键只影响 B；③`afp:src` 以 `a=13` 为主。
### 94.3 用户第二个问题（"轰炸机和攻击机还是不会出动"）——待确认口径
本轮样本证据：
| 线 | 成功建任务 | 失败原因分布 |
|---|---|---|
| 玩家老线（`nA4e k=`） | **k=0 ×10**（轰炸机出击成功） | k=1 ×139（10% 骰未过）｜**k=5 ×4（该机场无闲置轰炸师）** |
| AI 轰炸线（`nA1`） | **k=0 ×36** | k=4 ×138（任务建了但 `assignedAircraft` 空）｜k=3 ×1（无可打目标） |
| AI 攻击线（`nA1b`） | **k=0 ×41** | k=4 ×64｜k=3 ×5｜k=9/11–16（前置筛选） |
⇒ **两条线的"轰炸机"都能出击**；需要用户指明"是哪一侧、哪种机、完全不出去还是很少"。
另：**玩家侧的"攻击机"目前没有任何自动出击路径**（老线只有 ①战时轰炸机 ②和平巡逻机）——若要让玩家的攻击机也自动出动，属**新功能**，需另行设计与调研。
'''

INCR_ADD = '''
## 38. 设计逻辑·已装机 r5c046v（机场解析顺序）
- **症状**：在机场 A 切换自动打击开关，换到 B 后面板/状态也跟着变（"串机场"）。
- **根因**：`pickAirport(I)` 把 `AFM.selectedAirportProvinceID`（陈旧标记）排在 `Game.iActiveProvince`（实时省份）之前；样本：按键 `afp:src a=12`（来源 2）5 次、`a=13` 2 次。
- **修法**：两候选块互换 ⇒ `iActiveID → Game.iActiveProvince → selectedAirportProvinceID → list[0]`；来源码语义不变。
- **门禁**：新增 ㊻（顺序断言）；负样本 1 → 修后 0；regtype 4（不变）；arity BAD 0；invoke-target OK。
- 产物：dex `7655ac90…`／apk `385373f8…`；装机三对齐；基线 `1224112857`。
- 待确认：用户"轰炸机和攻击机不出动"的口径（玩家侧/AI 侧；样本显示玩家轰炸机建任务成功 10 次、AI 两线分别 36/41 次）；**玩家侧攻击机目前无自动出击路径（可能要做新功能）**。
'''

def main():
    open(DESIGN,'w',encoding='utf-8').write(DESIGN_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] design=%d plan=%d incr=%d' % (os.path.getsize(DESIGN), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()