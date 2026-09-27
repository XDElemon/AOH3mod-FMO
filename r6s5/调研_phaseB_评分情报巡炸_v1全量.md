> 生成 2026-09-27 03:46 ｜ 对象：**玩家侧自动打击 Phase B**（评分/档位 · 情报门 · 巡炸 · 配置驱动）
> 现装版：**r5c046z4**（apk `dfff2043…` / dex `b36a6345…`）｜ Phase A 已验收（飞机会起飞：`nAS`=10，攻机/轰机皆有）

# 调研（第一轮 · 全量）：Phase B 是什么、素材在哪、能逐字复原多少

## 0. 目标界定：Phase A 已有什么、Phase B 补什么

| 环节 | Phase A（现装） | Phase B（本轮调研对象） |
|---|---|---|
| 入口/闸门 | ✅ `updateOffensivesP`（玩家文明门 + 总闸 `autoStrikeOff` + 80% 掷骰） | — |
| 派发 | ✅ `tryStrikeForAirportP`（空闲师 + 防重复 + 白名单 ATTACKER/BOMBER） | — |
| 选靶 | ⚠️ **只按"距离最近"** | **评分/档位**：机场省 > 军事省 > 经济省（轰炸机）；攻机保持纯距离 |
| 情报门 | ❌ 无（轰机只看交战+航程） | **情报门**：`bomberIntelOk` / `hasMilitaryBuilding` / `milRaw` 记忆 / `provinceHasAirport` |
| 巡炸 | ❌ 无 | **rove 巡炸**：`mode=rove` 时按"最久没炸"补盲（`roveTick/rovePickTarget/roveDispatchOnce/roveReset/roveWarmScan`） |
| 配置 | ❌ 硬编码 0.2f 等 | **配置驱动**：`loadStrikeConfig` / `cfgReadText` / `cfgReadAsset`（读 `assets/strike_config.json`） |

> B3-A1 最终版＝**R4c192~R4c205「自动打击十三批」**那一刻的状态；Phase A 只复原了"能起飞、按最近目标派机"，其余（评分/情报/巡炸/配置）都在 Phase B。

## 1. 素材映射表（`/tmp/docpack`，124 件；均含**逐字 smali 方法体**）

| 件 | 来源脚本 | 逐字可用性 | 关键内容 |
|---|---|---|---|
| 军事判据（事件驱动） | `r4c185_event.py` | ✅ 方法体 + 钩子 | `afMilReal:HashSet` 登记表；在 `Province` 的 **4 个**建筑增删方法末尾挂钩：`addNewBuilding` / `addNewBuilding_LoadScenario` / `destroyBuilding` / `destroyBuilding_ScenarioEditor` |
| 机场判据（登记表） | `r4c188_airreg.py`、`r4c184_airport.py` | ✅ | `afAirportProv:HashSet`；`provinceHasAirport = 登记表 ∨ 实时扫描（命中回写，自愈）` |
| 军事建筑扫描/粘性 | `r4c183_sticky.py`、`r4c183b_fix.py` | ✅ | `hasMilitaryBuilding(pid)` = 登记表 ∨ `milRaw` 缓存 ∨ 机场表；`milRaw` = 遍历 `buildings` 判军事组 |
| 机场省登记补丁 | `r4c189_airfix.py` | ✅ | `noteAirportProvince` / `registerAirport`（**撞名：现树 `registerAirport` 已存在2处 ⇒ 必须改名**） |
| 情报门（轰炸机） | `r4c180_ik.py`、`r4c181_ikfix.py`、`r4c182_probe.py`、`r4c193_cfg.py` | ✅ | `bomberIntelOk(...)` 多代实现（含 `bomberIntelOkLegacy`、`hasWatchBuilding`）；探针 `ikState/ikLog` |
| 评分/档位 | `r4c186_tier.py` | ✅ 全文 | `strikeScore(pid, airport, mode)`（见 §2 原文） |
| 候选/选择探针 | `r4c187_cand.py`、`r4c191_minsel.py` | ✅ | `dbgCand(II)` 打印候选通行链；`dbgSel(IF)` 打印选中；**选择方向**：保留"最小分" |
| 巡炸 | `r4c197_rove.py` | ✅ 10 个方法体 | `roveTick/rovePickTarget/roveDispatchOnce/roveReset/roveWarmScan` + `updateOffensives` 的 mode 分支；字段 `cfgTick/roveTurn`；记忆修复（会话重置/预热扫描/脏 pid 剔除） |
| 配置驱动 | `r4c193_cfg.py`、`r4c193b_cfg.py`、`r4c194_probe2.py` | ✅ | `loadStrikeConfig` / `cfgReadText` / `cfgParseIntSet` / `cfgExtractInt(Set)` |
| 资产配置加载 | `r4c202_asset.py`、`r4c203_assetdiag.py`、`r4c204_loader.py` | ✅ | `cfgReadAsset`（从 APK `assets/` 读 `strike_config.json`；设备上确有此文件，122 B） |
| 早期选靶原型 | `r4c180_ik.py`、`r4c192_fix.py` | ✅ | 原 `pickStrikeTarget`（我们的 P 线是它的简化重写） |

## 2. 逐件设计意图（**原文摘录**，来自脚本头注释）

**① 评分/档位（`r4c186_tier.py` 头注释原文）**
```
# R4c186：strikeScore 改分档（越小越优先）
#   攻机(mode!=1)：纯距离（不变）
#   轰炸机：(tier1) 有空军基地 → d×f
#           (tier2) 其他军事建筑 → 100000 + d×f
#           (tier3) 都不是 → 200000 + 1000/(1+eco)×f      f = 0.5 + rnd*0.6
#   目的：机场省（如缅甸首都 5693）不再被“更近的军事省”压过去
```
逐字实现（关键部分）：先 `provinceDistance(airport.provinceID, pid)` 得 `d`；`if-ne v11(模式), 1 → 直接返回 d`（攻机纯距离）；否则 `f = nextFloat()*0.6+0.5`；
`provinceHasAirport(pid)` 真 ⇒ `d*f`；否则 `hasMilitaryBuilding(pid)` 真 ⇒ `100000 + d*f`；否则 `200000 + 1000/(1+Province.getEconomy())*f`。

**② 情报门（`r4c185_event.py` 头注释原文）**
```
#   ☆ 登记表 afMilReal：provinceID 集合，表示"该省当前有军事建筑"
#   ☆ 写入/否证都发生在**游戏自己改建筑的那一刻**：在 Province 的 4 个建筑增删方法末尾挂钩子
#   ☆ hasMilitaryBuilding = 登记表命中 ∨ milRaw命中(命中即登记，稳定化) ∨ 机场表（空军基地=军事组 idx34）
```
> 动机（原文）：`Province.buildings` 会被游戏反复清空/装载 ⇒ 瞬时读数闪烁 ⇒ 评分抖动（r4c184 现象："时而是军事省、时而不是"）。

**③ 机场判据（`r4c188_airreg.py` 头注释原文）**
```
#   根因：allAirports 会被重建（瞬时），打分时读到空 ⇒ 机场省落到 tier2 ⇒ 被更近的军事省压掉
#   做法：① 新字段 afAirportProv:HashSet ② noteProvinceBuildings 里顺带判定机场（AIRPORT_BUILDING_ID）
#         ③ provinceHasAirport = 登记表命中 ∨ 实时扫描（实时命中时回写登记表，自愈）
```

**④ 巡炸（`r4c197_rove.py` 头注释原文）**
```
# R4c197：巡炸模式（mode=rove）+ 记忆系统修复（会话重置 / 起步预热扫描 / 越界脏pid剔除）
```

**⑤ 选择方向（`r4c191_minsel.py` 头注释原文）**
```
#   现状：cmpg-float v9, v7(score), v8(best) + if-gez v9, :cond_51
#         ⇒ v9≤0（score≤best）就跳过更新 ⇒ 实际保留“最大分” ⇒ tier1(机场)永远最后一名
#   修法：对调操作数 ⇒ cmpg-float v9, v8(best), v7(score) ⇒ 保留“最小分”
```
> ★这条与我们 r5c046z2 的 E1 是**同族错**（比较方向），Phase B 落地时必须用门禁把方向钉死。

## 3. 当前树缺口清单（碰撞检查已做，全部 0 命中）

**新增方法**：`strikeScore`、`bomberIntelOk`、`provinceHasAirport`、`hasMilitaryBuilding`、`milRaw`、`noteProvinceBuildings`、`noteAirportProvince`、
`roveTick`、`rovePickTarget`、`roveDispatchOnce`、`roveReset`、`roveWarmScan`、`loadStrikeConfig`、`cfgReadText`、`cfgParseIntSet`、`cfgExtractInt`、`cfgExtractIntSet`、`cfgReadAsset`、`dbgCand`、`dbgSel`、`hasWatchBuilding`
**新增字段**：`afMilReal:HashSet`、`afAirportProv:HashSet`、`cfgTick:I`、`roveTurn:I`（+ 可能的 `roveLast:HashMap` 类记忆）
**必须改名**：`registerAirport` → 建议 `a1RegisterAirport`（现树已有同名 2 处）
**外部钩子**：`Province` 的 4 个方法末尾插 `noteProvinceBuildings(this)`（addNewBuilding / addNewBuilding_LoadScenario / destroyBuilding / destroyBuilding_ScenarioEditor）
**现有前提已具备**：`provinceDistance(II)F`、`getAirportsForCiv`、`pickIdleDivKey`、`hasActivePatrol`、`AirMission.createAttackArmy/createStrategicBombing`、`Game.oR:Random`、`Province.getEconomy()`、`AirDbgLog`（`e5i/e5ii/dKey/p0Air/p0Civ` 等重载齐备）

## 4. 风险与门禁需求（写码前必须先立）

| 风险 | 说明 | 需要的门禁 |
|---|---|---|
| **比较方向** | r4c191 血案 = 保留最大分；r5c046z2 E1 = 更近反被跳过 | 方向断言（`cmpg` 操作数顺序 + 紧跟跳转条件） |
| **登记表生命周期** | `Province.buildings` 会被重建 ⇒ 必须事件驱动 + 实时兜底自愈 | 断言"钩子4处齐备 + 有自愈回写" |
| **HashSet 初始化** | 静态集合若为 null 会 NPE（`<clinit>` 必须 new） | 断言 `<clinit>` 里 new + 钩子内 null 守卫 |
| **评分尺度** | tier2/tier3 的 100000/200000 必须**远大于** `d*f`（否则档位失效） | 断言常量存在且 ≥10 万 |
| **改名冲突** | `registerAirport` 撞名 | 断言新名 `a1RegisterAirport` 唯一 |
| **配置项缺省** | `cfgReadAsset` 读不到资产时不得崩（要有默认值） | 断言有 null/异常回退分支 |
| **寄存器上限** | 工具链硬上限 16；`strikeScore` 需 12、`dbgCand` 需 12 | 每个新方法登记 `.registers`；复用现有"借死寄存器"画像 |
| **AI 隔离** | Phase B 只允许服务玩家 P 线 | 断言新方法只被 `updateOffensivesP/tryStrikeForAirportP/pickStrikeTargetP` 调用 |

## 5. 待你拍板（3 项，定了我就按三轮调研开工）

1. **配置驱动要不要**？
   - 要：可热改阈值（概率、档位权重、rove 频度），但要复原 `cfgReadAsset`（读 APK 资产）+ `strike_config.json` 解析，工作量最大、崩溃面最广。
   - 不要（推荐）：阈值先写成常量并集中注释，**行为与 B3-A1 一致**，风险最低；将来要配置再加。
2. **巡炸 `rove` 的入口形态**：B3-A1 是 `mode=rove`（机场模式）第三态。你要的是：
   - (a) 保留"总闸/巡逻"两个按钮 + 内部自动巡炸（不改 UI）；还是
   - (b) 再加第三个按钮/模式？（涉及 UI，你说过不做）
   建议 (a)。
3. **评分档位是否照原样**（tier1 机场省 d×f ／ tier2 军事省 100000+d×f ／ tier3 经济 200000+1000/(1+eco)×f）？
   建议照原样，先跑通再调参。

## 6. 建议分批（每批都可独立验收）

| 批次 | 内容 | 验收判据（探针） |
|---|---|---|
| **B1** | 情报门 + 评分/档位（`afMilReal`/`afAirportProv` 登记表 + `Province` 4 钩子 + `strikeScore` + 选择方向） | `nSC/nSV` 显示"机场省优先"，`nAS` 目标省稳定落在机场/军事省 |
| **B2** | `rove` 巡炸（记忆 + 预热扫描 + 脏 pid 剔除 + 每小时/回合节奏） | `nRV` 探针出现；被炸省集合收敛；不再重复炸同省 |
| **B3** | （若拍板"要"）配置驱动 `cfg*` + `assets/strike_config.json` | `cfg:` 探针打印读到的阈值；改资产即改行为 |
