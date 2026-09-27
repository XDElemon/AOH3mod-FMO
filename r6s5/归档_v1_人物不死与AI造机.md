# 归档 v1 —— 人物不死 / AI 造机（已验收、已归档）

> 用户确认：**人物不死通过**、**AI 会造飞机通过** ⇒ 本节起两项进入**归档**状态（不再改动，除非后续回归）。
> 归档时间：2026-09-25。现役设备版本：**r5c037**（dex `3c61b45d8e49b6a7ac13302d4f81037d` / apk `d07a85f3578db65b83484a91def00126`）。

## A. 人物不死（元首 / 顾问 / 将领）
| 项 | 内容 |
|---|---|
| 方案 | **纯 GV（JSON）**，不改代码 |
| 生效机制 | ① 总闸门 `GAME_UPDATE_DEATH_RULER_MIN_TURN_ID = 999999999`（覆盖元首/顾问/将领在闸门内的全部调用点）；② `GV_Advisors.CHANCE_OF_DEATH = [0 ×15]`（顾问死亡概率归零） |
| 注意 | `GAME_UPDATE_DEATH_*_EVERY_X_DAYS` **保持原值**（1818/772/842/942），**绝不能设 0**（参与取模） |
| 验收 | **行为验收通过**（用户实测：连推回合后元首/顾问/将领均未老死）；**不插探针**（用户指定） |
| 归档产物 | 注入脚本 `r5c033_gv.py`；apk 内 `assets/game/gameValues/GV_GameUpdate.json`、`GV_Advisors.json` |

## B. AI 造机（P1b）
| 项 | 内容 |
|---|---|
| 代码 | `Airport.p1bCost` / `p1bPickAffordable` / `p1bChargeForBuild` / `p1bStat`；`AFM.updateAIBuildUp`（每 AI 机场每回合最多补 1 架） |
| 关键修复 | r5c034 `p0→p1` 寄存器；r5c035a 回退可负担极性；**r5c037 `if-nez v6 → if-eqz v6`（真凶）** |
| 抓样证据（r5c037） | `p1bZ`785 ／ `p1bW=1`×60 ／ `p1bS`60 ／ `p1b a=` 金 1,000,123 → 996k~999k ／ `p1bT`→20 ／ `p1bM`=10 ／ `p1bA`=10 |
| 行为 | AI 与玩家**共用 `startBuild` 扣钱路径**（玩家也扣钱）；容量上限 `maxCapacity=20`（level×20）生效；占比阶梯（轰炸机/攻击机）生效 |
| 归档产物 | 现役 dex `3c61b45d…`；归档 apk `build_apk/dbg_signed77_v119_r5c037.apk` |
| 门禁 | `r5c029_sitecheck.py` 含 ⑩ 可负担极性 / ⑪ 探针 B 语义 / ⑫ 跨类可见性 / **⑬ 选机型判空极性**；每项均有负样本证据 |

## C. 同批已完成（P1a 派发，一并归档）
| 项 | 内容 |
|---|---|
| 证据 | `nA4e k=0`×41（首次成功派发）／`nA4v cand=477 vis=50` ／ `nATK`41 ／ `nAH`44（陆军 15%）／**用户确认被炸省均为其属地** |
| 伤害模型 | 轰炸机分支：经济−10% ／ 人口−payload×1000 ／ 陆军−15%(cap) ／ 战报 `emitStrikeReport` |

## D. 遗留（下一步）
1. **P1c 新 bug「AI 出动不可见」**（见计划书 §27）：① `airDivisionAtProvinceID` 死字段 ⇒ 侦测永不成功（`nDE_ENTER`1047 / `nDR_DET`0）；② 渲染层 `isMyMission()` 只画己方任务。位置＝**P1b 之后、P2 之前**。
2. P2（去重/频率上限）→ P3（空战对称/自动拦截，依赖 P1c 的 C1）→ P4（难度）→ P5（清探针）。