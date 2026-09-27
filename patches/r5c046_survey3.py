# -*- coding: utf-8 -*-
# r5c046_survey3.py —— 第三轮：难度系统调研 + 频率旋钮设计（落盘）
#   ① r6s5/调研_r5c046难度与频率_v3.md
#   ② 计划书 §57
#   ③ build_inputs/r5c046/INCR.md（追加）
# 未改一行 smali。
import os, time

BASE = '/sdcard/GLG/历史23'
R6S5 = os.path.join(BASE, 'r6s5')
PLAN = os.path.join(R6S5, 'AI打击接入_调研与计划书v1.md')
DOC = os.path.join(R6S5, '调研_r5c046难度与频率_v3.md')
INCR = os.path.join(BASE, 'build_inputs', 'r5c046', 'INCR.md')

TS = time.strftime('%Y-%m-%d %H:%M')

DOC_TXT = r'''# r5c046 第三轮调研：难度系统 + 派机频率旋钮
时间：''' + TS + r''' ｜ 性质：**只读调研，未改一行 smali**
触发：用户口径「**派机频率随难度增加而增加**」＋「轰炸线算分**现在就叠加人口**」

---

## 一、难度系统全貌（已取证）

| 项 | 取证 |
|---|---|
| 全局字段 | `Game.difficultyID:I`（`Game.smali:144`）——**静态、随时可读** |
| 默认值 | `difficultyID = GameValues.difficulty.NORMAL_ID`（`GameValues.smali:3026-3030`，载入时） |
| 数据表 | `GameValues.difficulty:GameValues$GameValue_Difficulty`（`GameValues.smali:118`） |
| 表载入 | `GameValues.smali:1016-1030`（`const-class GameValue_Difficulty` → cast → sput） |
| 数据文件 | `assets/game/gameValues/GV_Difficulty.json` |
| 写点 | 新游戏：`NewGame_Settings$2/$3/$4`；读档：`LoadSavedGameManager:11241`；存档：`SaveGameManager:134` |
| 读点（既有范式） | `AI_Manager:1250-1254`、`AI_Player:521-525`、`CoalitionManager:789-795`、`AirDbgLog:1136`（我们自己的） |

**档位与实值**（`GV_Difficulty.json`，6 档；`NORMAL_ID = 2`）：

| id | NAME | MONTHLY_INCOME | INCOME_PRODUCTION | MANPOWER | LEGACY | CONSTRUCTION_COST | RECRUIT_ARMY_COST | RECRUIT_ARMY_TIME | REGIMENTS_LIMIT |
|---|---|---|---|---|---|---|---|---|---|
| 0 | VeryEasy | 10.0 | 100 | 3.5 | 2.5 | -0.75 | -75 | -75 | 50 |
| 1 | Easy | 1.8 | 10 | 0.25 | 0.25 | -0.25 | -25 | -50 | 16 |
| 2 | **Normal** | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| 3 | Hard | -0.4 | -10 | -0.20 | -0.1 | 0.15 | 15 | 25 | -4 |
| 4 | VeryHard | -0.8 | -25 | -0.30 | -0.25 | 0.25 | 50 | 50 | -8 |
| 5 | Legendary | -1.1 | -50 | -0.50 | -0.5 | 0.5 | 100 | 100 | -12 |

**引擎既有语义**（三处范式一致）：`if (difficultyID >= NORMAL_ID) ⇒ AI 做更凶的事`：
- `AI_Manager:1250`：难度≥Normal 且月收入超阈值 ⇒ 升级首都建筑；
- `AI_Player:521`：难度≥Normal 且未开战 ⇒ 对玩家施压（比较 `iRegiments`）；
- `CoalitionManager:789`：难度≥Normal 且 AE 超阈值 ⇒ 对玩家组围剿。
⇒ 我们的「**难度↑ ⇒ AI 空军频率↑**」与引擎既有设计语言**完全一致**。

**可用读法（smali 层面，零依赖）**：
```
sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I      # 0..5，默认 2
sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->difficulty:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Difficulty;
iget v1, v1, ...->NORMAL_ID:I                                      # 基准档 = 2
```

---

## 二、意外收获：游戏自带「空军数值表」，且**全部已加载但零消费**

- 文件：`assets/game/gameValues/GV_Air.json`（499 B）；类：`GameValues$GameValue_Air`（15 字段，`GameValues.smali:337-341` 装载、`1016-1030` 由 JSON 覆盖）。
- **grep 结论**：这些键**只在类自身出现，没有任何玩法代码读取** ⇒ 现成但闲置的「设计者意图箱」。

| 键 | 值 | 我们可能的用途 |
|---|---|---|
| `AIR_AI_BOMB_CHANCE_AT_WAR` | **0.33** | **线 S 的"频率基准"**（本批候选） |
| `AIR_AI_PATROL_CHANCE_AT_WAR` | 0.5 | 巡逻（不在本批） |
| `AIR_AI_AUTO_PATROL_CHANCE` | 0.55 | 自动巡逻（不在本批） |
| `AIR_AI_INTERCEPT_FIRST_CHANCE` | 0.7 | 拦截（P3a 候选） |
| `AIR_DAMAGE_ECONOMY_MULT` | 0.1 | 伤害（P3/P4） |
| `AIR_DAMAGE_POPULATION_MULT` | 1000.0 | 伤害（P3/P4） |
| `AIR_DAMAGE_ARMY_MULT` | 0.05 | 伤害（P3/P4） |
| `AIR_COMBAT_HIT_BASE / _PER_AGILITY / DMG_MULT / DEF_REDUCT` | 0.45 / 0.35 / 0.75 / 0.5 | 空战（P3+） |
| `AIR_BASE_CAPACITY_PER_LEVEL` | 20 | 容量（P3+） |
| `AIR_BUILD_QUEUE_LIMIT` | 3 | 建造队列（P3+） |
| `AIR_FUEL_CONSUMPTION_MULT` | 1.0 | 油耗（P3+） |
| `AIR_DETECTION_RADAR_BUILDING_RANGE` | 550.0 | 视野（**实际代码用的是 `Airport.radarRange:F`/`AirUnit.radarRange:F`，非此键**） |

⚠️ **兜底要求**：`GameValue_Air` 的构造器**不写默认值** ⇒ 若 JSON 缺失/载入失败，字段全为 `0.0`
⇒ 任何读取都必须配「`<= 0` 则回退到编译期常量」的兜底。

---

## 三、派机频率旋钮：设计（等用户选型）

已确认的结构：**每机场每回合"择优选靶"一次**（AI 文明解绑后默认启用）；**K=3 并发上限不变**（上轮定案）。

### 方案 A（计数式，推荐主用）
`FRQ[difficulty] = 每文明每回合允许新增的轰炸任务数`
| 难度 | VeryEasy | Easy | Normal | Hard | VeryHard | Legendary |
|---|---|---|---|---|---|---|
| FRQ | 1 | 1 | 1 | 2 | 2 | 3 |

- 优点：**可证伪**（探针数出"每回合新增 ≤ FRQ"）；与「派机频率随难度增加」字面一致；实现最简（一次 `sget difficultyID` + 查表 + 计数器）。
- 与 K 的关系：FRQ 是**每回合新增**上限、K 是**并发在飞**上限 ⇒ 两者独立；`FRQ ≤ K=3` ⇒ 不会一回合堆出超过 K 的任务（天然防齐射）。

### 方案 B（概率式）
`P = GameValues.air.AIR_AI_BOMB_CHANCE_AT_WAR(0.33) × MULT[difficulty]`
| 难度 | VeryEasy | Easy | Normal | Hard | VeryHard | Legendary |
|---|---|---|---|---|---|---|
| MULT | 0.5 | 0.75 | 1.0 | 1.25 | 1.5 | 2.0 |
| P | 0.17 | 0.25 | **0.33** | 0.41 | 0.50 | 0.66 |

- 优点：复用游戏自带旋钮（可见 JSON 调参）；不是"每回合固定次数"那种生硬感。
- 缺点：随机 ⇒ 验收要靠统计量；且依赖 JSON 载入成功（需兜底）。

### 方案 C（组合，我的建议）
**FRQ 当天花板、P 当摇骰**：每文明每回合新增 ≤ `FRQ[difficulty]`，且每机场以 `P[difficulty]` 概率摇一次。
⇒ 难度↑ 同时抬高"概率"与"上限"，且被 K=3 兜住并发。实现上只多一条 `nextFloat() < P` 判断。

---

## 四、探针（新增，随选定方案）
`nP2dif`（当前难度档，抓样时必须能读出）｜`nP2frq`（本回合新增数 / 被 FRQ 拦的次数）｜`nP2cap`（被 K=3 拦）｜`nP2mil`（军建档命中）｜`nP2s`（候选数与选中档）。

---

## 五、待用户确认
1. 频率方案选 **A / B / C**（我建议 **C**）；表格数值是否照上表（可改）。
2. 轰炸线算分**叠加人口**（已定）：`score = 经济 + 人口` 的**权重**：建议先「**经济 1 : 人口 1**（各取整后相加）」，
   或「经济 1 : 人口 0.5」——需要你一句话定权重（也可先 1:1，P4 难度表时再调）。
'''

PLAN_SEC = r'''

---

## 57. 【调研 3】难度系统 + 派机频率旋钮（''' + TS + r'''）
> 全文：**`r6s5/调研_r5c046难度与频率_v3.md`**；未改一行 smali。
### 57.1 难度系统（可用）
- `Game.difficultyID:I`（静态，`Game.smali:144`），默认＝`GameValues.difficulty.NORMAL_ID`（`GameValues:3026-3030`）；
  表＝`GameValues.difficulty:GameValue_Difficulty`，文件＝`assets/game/gameValues/GV_Difficulty.json`；
  新游戏写点 `NewGame_Settings$2/$3/$4`、读档 `LoadSavedGameManager:11241`。
- **6 档**：0 VeryEasy / 1 Easy / **2 Normal（NORMAL_ID）** / 3 Hard / 4 VeryHard / 5 Legendary。
- 引擎既有语义＝`difficultyID >= NORMAL_ID ⇒ AI 更凶`（`AI_Manager:1250`、`AI_Player:521`、`CoalitionManager:789`）⇒ 与本批"难度↑⇒频率↑"一致。
### 57.2 意外收获：`GV_Air.json` ＋ `GameValues$GameValue_Air` **已加载但零消费**
- 含 `AIR_AI_BOMB_CHANCE_AT_WAR=0.33`、`AIR_AI_PATROL_CHANCE_AT_WAR=0.5`、`AIR_AI_AUTO_PATROL_CHANCE=0.55`、
  `AIR_AI_INTERCEPT_FIRST_CHANCE=0.7`、`AIR_DAMAGE_ECONOMY/POPULATION/ARMY_MULT`、`AIR_COMBAT_*`、`AIR_BASE_CAPACITY_PER_LEVEL=20` 等 15 项。
- 全部键**无消费端**（grep 只在类自身出现）⇒ 现成"设计者意图箱"，可作 P3/P4 的旋钮来源。
- ⚠ `GameValue_Air` 构造器无默认值 ⇒ 读取必须兜底（`<=0` 回退常量）。
### 57.3 频率旋钮（待选型）
- **A 计数式（推荐主用）**：`FRQ=[1,1,1,2,2,3]`（VeryEasy..Legendary）＝每文明每回合新增轰炸上限；`FRQ ≤ K=3` ⇒ 天然防齐射。
- **B 概率式**：`P = 0.33 × MULT[0.5,0.75,1,1.25,1.5,2.0]`＝{0.17,0.25,0.33,0.41,0.50,0.66}（复用 GV_Air 旋钮）。
- **C 组合（建议）**：FRQ 当天花板 ＋ P 当摇骰 ＋ K=3 兜并发。
### 57.4 探针
`nP2dif` / `nP2frq` / `nP2cap` / `nP2mil` / `nP2s`。
### 57.5 待确认
①频率方案 A/B/C ②轰炸线"经济:人口"权重（建议先 1:1，P4 再调）。
'''

INCR_ADD = r'''
## 7. 第三轮追加（难度与频率）
- 难度：`Game.difficultyID`（0..5，默认 2=Normal，`NORMAL_ID`），表在 `GameValues.difficulty` / `GV_Difficulty.json`；
  引擎范式 `>= NORMAL_ID ⇒ AI 更凶`（`AI_Manager:1250`/`AI_Player:521`/`CoalitionManager:789`）。
- `GV_Air.json`（`GameValues$GameValue_Air`）**已加载但零消费** ⇒ P3/P4 旋钮来源；读取需兜底（构造器无默认值）。
- 频率旋钮三方案：A 计数式 `[1,1,1,2,2,3]`｜B 概率式 `0.33×[0.5..2.0]`｜C 组合（建议）。
- 探针：`nP2dif`/`nP2frq`/`nP2cap`/`nP2mil`/`nP2s`。
- 待确认：①方案 A/B/C ②轰炸线 经济:人口 权重（建议先 1:1）。
- 文档：`r6s5/调研_r5c046难度与频率_v3.md`；计划书 §57。
'''

def main():
    with open(DOC, 'w', encoding='utf-8') as f:
        f.write(DOC_TXT)
    with open(PLAN, 'a', encoding='utf-8') as f:
        f.write(PLAN_SEC)
    with open(INCR, 'a', encoding='utf-8') as f:
        f.write(INCR_ADD)
    print('[OK] doc  :', DOC, os.path.getsize(DOC), 'B')
    print('[OK] plan :', PLAN, os.path.getsize(PLAN), 'B')
    print('[OK] incr :', INCR, os.path.getsize(INCR), 'B')

if __name__ == '__main__':
    main()