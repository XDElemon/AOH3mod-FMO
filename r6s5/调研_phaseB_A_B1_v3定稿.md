> Phase B（**路线 A**：挂到现有 P 线）｜生成 2026-09-27 06:10 ｜现装 r5c046z4 ｜ B1＝评分+情报门

# Phase B · 第三轮（定稿）：B1 施工清单（锚点/寄存器/门禁/验收）

## 1. 施工项（B1 = 评分 + 情报门）
| # | 动作 | 位置 | 锚点 |
|---|---|---|---|
| 1 | 新增静态字段 `afMilReal:HashSet`、`afAirportProv:HashSet` | AFM 类字段区 | 现有 `.field public static afSuspended:` 之后 |
| 2 | 新增方法 `milRaw(I)Z`、`isMilIdx(I)Z`、`hasMilitaryBuilding(I)Z`、`provinceHasAirport(I)Z`、`noteProvinceBuildings(Province)V`、`strikeScore(I Airport I)F`、`dbgCand(II)V`、`dbgSel(IF)V` | AFM 类尾（追加） | 逐字件 `r6s5/phaseB_verbatim2/` |
| 3 | `Province` 4 个方法末尾插钩子 `invoke-static {p0}, AFM->noteProvinceBuildings(Province;)V`（每个 `return-void` 前） | `Province.smali` | 4 个方法各 1~N 处 return-void |
| 4 | `pickStrikeTargetP` 里把"距离"换成"评分"（`move-result v9` 处改为 `strikeScore(...)F` 的返回值；**保持"保留最小"方向**） | AFM `pickStrikeTargetP` | `cmpg-float v8, v9, v3` 前的 v9 赋值 |
| 5 | BOMBER 候选加情报门（`bomberIntelOk`） | 同上候选循环 | `:pst_noatt` 段之后 |

## 2. 寄存器分配（不改 `.registers` 上限 16）
- 新方法按逐字件自带 `.registers`（milRaw 8 / hasMilitaryBuilding 6 / provinceHasAirport 8 / noteProvinceBuildings 8 / strikeScore 12 / dbgCand 12 / dbgSel 6）。
- `pickStrikeTargetP` 现 14；换评分只需复用 v9（float）⇒ **不新增寄存器**。

## 3. 门禁（新增 53/54）
- **53**（评分方向）：断言 `strikeScore` 里"军事档"分支＝`hasMilitaryBuilding` 为真 → tier2；断言钳位 1000 存在（`:ss_noclamp` + `0x447a0000`）；断言 tier2/tier3 常量 ≥100000。
- **54**（情报门方向 + 登记表）：断言 `hasMilitaryBuilding` 为"登记表 ∨ milRaw ∨ 机场表"（三个来源齐全）；断言 `noteProvinceBuildings` 只在 Province 钩子里被调用；断言 `provinceHasAirport` 有自愈回写；断言登记前有 `if-ltz` 守卫（`AIRPORT_BUILDING_ID` 默认 -1）。
- 回归：㉙/㊽/㊾/㊿/51/52 + arity + invoke-target。

## 4. 验收（可证伪）
| 看什么 | 通过 | 不通过 |
|---|---|---|
| 探针 `nSV p= s=` | 出现，且**机场省分数 < 军事省分数 < 经济省分数** | 分数随机或方向反 |
| `nSC`（候选层） | 候选通行链里 `air=/mil=` 与实际相符 | 与实际不符（登记表错） |
| `nAS`（派发） | 目标省集中在机场/军事省 | 仍"就近随便打" |
| 稳定性 | 无崩溃（登记表/钩子不 NPE） | 崩溃 |
