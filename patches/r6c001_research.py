# -*- coding: utf-8 -*-
# r6c001_research.py —— Phase B（路线A）三轮调研落盘 + B1 逐字件补齐
import os, re, time
D = '/sdcard/GLG/历史23/r6s5/'
V2 = D + 'phaseB_verbatim2/'
TS = time.strftime('%Y-%m-%d %H:%M')

# ---------- ① 补齐 isMilIdx / milRaw / noteProvinceBuildings 尾段 ----------
extra = {}
for f in sorted(os.listdir('/tmp/docpack')):
    if not f.endswith('.py'): continue
    s = open('/tmp/docpack/' + f, encoding='utf-8', errors='replace').read()
    for m in re.finditer(r"('''|\"\"\")([\s\S]*?)\1", s):
        blk = m.group(2)
        for mm in re.finditer(r'\.method[^\n]*\n[\s\S]*?\.end method', blk):
            body = mm.group(0)
            head = body.split('\n', 1)[0]
            g = re.search(r'->([A-Za-z0-9_$]+)\(', head) or re.search(r'\s([A-Za-z0-9_$]+)\(', head)
            if g and g.group(1) in ('isMilIdx', 'milRaw'):
                extra.setdefault(g.group(1), []).append((f, body))
for nm, lst in extra.items():
    for f, body in lst:
        open(V2 + '%s__%s.txt' % (nm, f.replace('.py', '')), 'w', encoding='utf-8').write(body)
    print('补齐 %-12s 来源: %s' % (nm, ', '.join(f for f, _ in lst)))

HEAD = ('> Phase B（**路线 A**：挂到现有 P 线）｜生成 ' + TS + ' ｜现装 r5c046z4 ｜ B1＝评分+情报门\n\n')

R1 = HEAD + '''# Phase B · 第一轮（全量调研）：能复原多少 / 依赖面

## 1. 复原可行性（实验定案，见 `调研_phaseB_复原可行性_v2全量.md`）
- **可逐字复原**：54~55 个方法体已导出（`r6s5/phaseB_verbatim2/`，干净版；`_b1bodies.txt` 拼装）。
- **不可逐字**：三个骨架方法（`updateOffensives`/`pickStrikeTarget`/`tryStrikeForAirport`）源码已丢（重放 27 个补丁 27/27 失败）。
  ⇒ 路线 A 不重建它们，改为把 Phase B 件挂到我们的 P 线（`updateOffensivesP`/`pickStrikeTargetP`/`tryStrikeForAirportP`）。

## 2. 逐字件与寄存器预算（B1 相关）
| 件 | `.registers` | 依赖 API | 备注 |
|---|---|---|---|
| `milRaw(I)Z` | 8 | `Game.getProvince` / `Province.buildings` / `isMilIdx` | 原始扫描 |
| `isMilIdx(I)Z` | ? | — | 军事组判定（`noteProvinceBuildings` 调用） |
| `hasMilitaryBuilding(I)Z` | 6（r4c185 事件版） | 登记表 ∨ `milRaw` ∨ 机场表 | **取 r4c185 版** |
| `provinceHasAirport(I)Z` | 8（r4c188 版） | `allAirports` + 登记表自愈 | **取 r4c188/189 版** |
| `noteProvinceBuildings(Province)V` | 8 | `Province.getProvinceID/buildings` + `isMilIdx` | 由 Province 4 方法钩子调用 |
| `strikeScore(I Airport I)F` | 12 | `provinceDistance` / `provinceHasAirport` / `hasMilitaryBuilding` / `Province.getEconomy` / `Game.oR` | 三档 + 距离钳位 1000（r4c186+r4c190） |
| `bomberIntelOk(...)` | 8~9 | `hasMilitaryBuilding` / `provinceHasAirport` / 迷雾 | 取 r4c193 版 |
| `dbgCand(II)V` / `dbgSel(IF)V` | 12 / 6 | 只读探针 | 诊断 |

## 3. 现有树依赖核对（全部通过）
`Province.getEconomy/getCivID/getArmySize/getFogDrawArmy/getBuildings/getProvinceID` ✅；
`Province` 的 4 个钩子方法（`addNewBuilding` / `addNewBuilding_LoadScenario` / `destroyBuilding` / `destroyBuilding_ScenarioEditor`）✅；
`BuildingsManager.AIRPORT_BUILDING_ID` ✅（`aoc/kingdoms/lukasz/map/BuildingsManager`，默认 -0x1）；
`Game.oR:Random` ✅；`FileManager.loadFile(String)FileHandle` ✅（cfg 用）；
`AFM.provinceDistance` ✅；`AFM.registerAirport` 撞名 ⇒ Phase B 若用同名需改 `a1RegisterAirport`。
**AFM 无 `<clinit>`** ⇒ 登记表用**惰性初始化**（`if-nez … new-instance`），不新增 clinit。

## 4. 与 P 线的接口（路线 A 的落点）
| Phase B | 挂到 | 具体动作 |
|---|---|---|
| 双登记表 + `Province` 4 钩子 | 新增（AFM 静态字段 + 4 处 `invoke-static {p0}` 钩子） | 事件驱动维护 |
| `strikeScore` | `pickStrikeTargetP` | 把"纯距离 v9"换成"评分"（**保留最小分**方向不变，钳位 1000 在 `strikeScore` 内） |
| `bomberIntelOk` | `pickStrikeTargetP` 的候选门（仅 BOMBER） | 加一道门 |
| `rove*`（B2） | `updateOffensivesP` | 内部巡炸分支 |
| `cfg*`（B3） | `loadStrikeConfig` 首次调用 | 读 `files/strike_config.json`（设备上已有） |
'''

R2 = HEAD + '''# Phase B · 第二轮（拓展调研）：三个"骨架"方法的规格（用于行为对齐）

> 源码已丢，以下规格来自设计档真值表与批次台账，作为"行为对齐"的验收依据。

**`tryStrikeForAirport(airport, rnd, type)`** —— 门序：① 玩家文明一致 ② `mode` 门 ③ `0.2f` 概率门（＝80% 尝试）
④ 空闲师 `pickIdleDivKey` ⑤ `hasActivePatrol` 防重复 ⑥ 选靶 `≥0` ⑦ `if-eq p3, ATTACKER` 分派（ATTACKER→`createAttackArmy`，否则 `createStrategicBombing`）。
⇒ 与我们的 `tryStrikeForAirportP` **一致**（z1/z2 已把极性修正）；差异：Phase B 多"机型白名单"（我们已有）。

**`pickStrikeTarget(airport, type)`** —— 候选循环门序：省存在 → 被占省直通 → `isAtWar` →（仅攻机）驻军门 →（仅攻机）迷雾门（`if-eqz v7` 才收＝可见才收）→ 去重 → **最近/评分优先**（`cmpg(best,score)` 保留最小；**距离钳位 1000**）。
⇒ 我们的 `pickStrikeTargetP` 已有：`isAtWar`、攻机驻军门、攻机迷雾门（`getFogDrawArmy`）、去重、保留最小；**缺**：评分（B1）、情报门（B1）、被占省直通（可选）。

**`updateOffensives(civ)`** —— 每文明遍历机场 → 每机场对 ATTACKER/BOMBER 各调一次；r4c197 增设 `mode=rove` 巡炸分支。
⇒ 我们的 `updateOffensivesP` 已同构（玩家文明门 + 总闸 + 80% 掷骰 + 两机型）；**缺** rove（B2）。

## 血案清单（B1 必须用门禁钉死的方向）
| 批次 | 血案 | 方向 |
|---|---|---|
| r4c179 | `strikeScore` 军事档分支极性 | `hasMilitaryBuilding` 为**真**时走 tier2，不是 tier3 |
| r4c181 | 情报门极性 | 记忆命中=**允许**打；实时无军事→**遗忘**（炸光不派） |
| r4c189 | `AIRPORT_BUILDING_ID` 默认 -1 | 登记前必须有 `if-ltz` 守卫 |
| r4c190 | 档间分离 | 打分距离**钳位 1000** ⇒ tier1 ≤1100 < tier2 < tier3 |
| r4c191 | 选择方向 | 保留**最小**分 |
| r4c185 | 登记表生命周期 | 否证只发生在 Province 钩子内（列表已装载） |
'''

R3 = HEAD + '''# Phase B · 第三轮（定稿）：B1 施工清单（锚点/寄存器/门禁/验收）

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
'''

for f, txt in (('调研_phaseB_A_B1_v1全量.md', R1), ('调研_phaseB_A_B1_v2拓展.md', R2), ('调研_phaseB_A_B1_v3定稿.md', R3)):
    p = D + f
    open(p, 'w', encoding='utf-8').write(txt)
    print('[OK] %s (%d B)' % (p, os.path.getsize(p)))

PLAN = D + 'AI打击接入_调研与计划书v1.md'
open(PLAN, 'a', encoding='utf-8').write('''

## 109. Phase B（路线 A）三轮调研落盘 + B1 施工定稿（2026-09-27）

**决策**：用户选 **路线 A**（挂到现有 P 线，电脑端不可用、找不到归档）⇒ 不重建三个骨架方法。
**第一轮**：依赖核对全通过 —— `Province` 4 钩子/`BuildingsManager.AIRPORT_BUILDING_ID`（`aoc/kingdoms/lukasz/map`，默认 -0x1）/`Game.oR`/`FileManager.loadFile`/`AFM.provinceDistance` 均在；**AFM 无 `<clinit>`** ⇒ 登记表惰性初始化；`registerAirport` 撞名需改 `a1RegisterAirport`。
**第二轮**：三骨架行为规格（门序）从设计档抄回，作为"行为对齐"验收依据；6 条血案方向清单（r4c179/181/185/189/190/191）。
**第三轮定稿**：B1 施工项 5 条 + 寄存器（不新增）+ 门禁 **53/54** + 验收（`nSV`/`nSC`/`nAS`）。
**逐字件**：`r6s5/phaseB_verbatim2/`（54 件干净方法体）+ `_b1bodies.txt`（B1 拼装）。
''')
print('[OK] 计划书 §109')