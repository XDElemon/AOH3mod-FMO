# 人物"无限生命"（元首/顾问/将领）—— GV 调研 v1

> 状态：**仅调研，未改任何代码/资源**。日期：2026-09-24。对象包 `age.of.history3.qiamxi.zhiri`。

## 0. 一句话结论
人物**没有 HP 字段**，"无限生命"在本作里等于**免疫自然死亡（老死）**。
死亡有**唯一咽喉**：`RulersManager.characterDies(iCivID, iBornYear)Z`。
GV 值是 **apk 内的 JSON**（`assets/game/gameValues/GV_*.json`）⇒ **可以只改 JSON，不动 smali**。

## 1. GV 体系怎么读值
- `GameValues.init()`（`InitGame.smali:19569` 调用）逐个 `FileManager.loadFile("game/gameValues/GV_*.json")` → gdx `Json.fromJson(...)`；
- `GameValues.initGameValue()`（`AA_Game.smali:1662`）读 `GameValues.json`；
- ⚠️ **两个调用点都在"开局初始化"流程里 ⇒ 老存档是否重读 GV 未验证**（若不重读，改动只对新档生效）。**这条对 AI 空军项目同样重要**，列入待实测。

## 2. 人物三类与其字段（都只有出生年/年龄，无 HP）
| 实体 | 类 | 年龄字段 |
|---|---|---|
| 元首 | `aoc/kingdoms/lukasz/map/Ruler.smali` | `BornDay/BornMonth/BornYear:I` |
| 顾问 | `aoc/kingdoms/lukasz/map/advisors/Advisor.smali` | `iDayOfBirth/iMonthOfBirth/iYearOfBirth:I`、`iLevel:I` |
| 将领 | `aoc/kingdoms/lukasz/map/army/ArmyGeneral.smali` | `y:I`（年龄） |

## 3. 死亡链路（唯一咽喉 + 全部调用点）
```
周期检查  ← GameThread_Turns.updateDeathOf{Advisors_Administrative/Economic/Innovation/Military,
                                             AGenerals_NotAssigned/AGenerals_Assigned, Rulers}()
   │  （总闸门：if (TURN_ID > GAME_UPDATE_DEATH_RULER_MIN_TURN_ID) 才跑）
   ▼
RulersManager.characterDies(iCivID, iBornYear):Z        ← ★唯一咽喉
   年龄 → chanceID(0..10) → 在 GV_Advisors.CHANCE_OF_DEATH[] 插值出 chance(万分比)
   roll = Random.nextInt(10000)；roll < chance ⇒ 返回 true（死）
调用点（全部 7 处）：
  · RulersManager:4354              元首（update_ChanceOfDeathOfRuler）
  · AdvisorManager:3876/3932/3988/4044  四类顾问
  · GameThread_Turns:2157           已指派将领
  · Civilization:25275              未指派将领（update_ChanceOfGeneral_NotAssigned）★不在总闸门内
```

## 4. 关键 GV 现值（`assets/game/gameValues/GV_GameUpdate.json`）
```
GAME_UPDATE_DEATH_RULER_MIN_TURN_ID: 3985      ← 总闸门（TURN_ID 超过它才开始跑死亡更新）
GAME_UPDATE_DEATH_RULER_EVERY_X_DAYS: 1818
GAME_UPDATE_DEATH_ADVISOR_EVERY_X_DAYS: 772
GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS: 842
GAME_UPDATE_DEATH_GENERAL_EVERY_X_DAYS_NOT_ASSIGNED: 942
```
`GV_Advisors.json`：
```
CHANCE_OF_DEATH: [10,20,30,50,100,250,750,5000,50000,75000,90000,99000,100000,100000,100000]
```
⚠️ 这些 `EVERY_X_DAYS` 会被拿去做取模（`THREAD_TURN_ID % X`）⇒ **绝不可设 0**（除零异常被 catch 吞掉，逻辑崩坏）。

## 5. 三种改法（按"改动面/覆盖面/风险"排序）
| 方案 | 改什么 | 覆盖面 | 风险 |
|---|---|---|---|
| **① 概率表清零**（纯 JSON）| `GV_Advisors.json: CHANCE_OF_DEATH` 全 0 | **全部 7 个调用点**（含总闸门外的未指派将领）| 极低。零 smali。注意 `chanceID+1` 的数组越界问题：表长 15、chanceID≤10 ⇒ 安全 |
| **② 关总闸门**（纯 JSON）| `GV_GameUpdate.json: GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 设极大（如 999999999）| 只覆盖总闸门内的 6 处；**未指派将领仍会死** | 极低 |
| **③ 咽喉返 false**（1 行 smali）| `RulersManager.characterDies` 首行 `return false` | **全部**，且不依赖 GV | 需构建装机；语义最硬 |

**建议：①＋② 一起做（纯 JSON，零 smali）**；若日后发现仍有死亡路径，再上 ③ 兜底。
> 附带好处：改 JSON 不需要重新汇编 dex，只需在 `rebuild_v119fix.py` 里按现成机制注入这两个 JSON（脚本已有 `assets/game/RadarConfig.json` 等同类替换代码）。

## 6. 顺带的大发现（对 AI 空军项目直接有用，建议登记）
`GV_Air.json`（apk 内）**早就有 AI 空军旋钮**：
```
AIR_AI_BOMB_CHANCE_AT_WAR: 0.33      AIR_AI_PATROL_CHANCE_AT_WAR: 0.5
AIR_AI_AUTO_PATROL_CHANCE: 0.55      AIR_AI_INTERCEPT_FIRST_CHANCE: 0.7
AIR_BASE_CAPACITY_PER_LEVEL: 20      AIR_BUILD_QUEUE_LIMIT: 3
AIR_FUEL_CONSUMPTION_MULT: 1.0       AIR_DAMAGE_{ARMY,ECONOMY,POPULATION}_MULT: 0.05/0.1/1000
AIR_COMBAT_{HIT_BASE,HIT_PER_AGILITY,DMG_MULT,DEF_REDUCT}: 0.45/0.35/0.75/0.5
AIR_DETECTION_RADAR_BUILDING_RANGE: 550.0
```
⇒ **P1a 里我硬编码的 0.1 概率门，正确做法是读 `AIR_AI_BOMB_CHANCE_AT_WAR`**；P1b 的"容量/队列上限"也不用自己编（`AIR_BASE_CAPACITY_PER_LEVEL`/`AIR_BUILD_QUEUE_LIMIT` 现成）；
`GV_Difficulty.json` 有 6 档 `NAME: [VeryEasy..Legendary]` + `NORMAL_ID: 2` 与一堆按档位的数组 ⇒ **P4"难度接入"可以照它的数组风格扩展**。
