# -*- coding: utf-8 -*-
# phaseB_survey2.py —— Phase B 复原可行性实验报告 + 施工蓝图（落盘 + 计划书 §108）
import os, time
D = '/sdcard/GLG/历史23/r6s5/'
TS = time.strftime('%Y-%m-%d %H:%M')
HEAD = ('> 生成 ' + TS + ' ｜ 对象：**Phase B 原样复原的可行性实验 + 施工蓝图**\n'
        '> 现装版 r5c046z4（诊断批）｜ Phase A 已验证可起飞（`nAS`=10）\n\n')

DOC = HEAD + '''# 调研（第二轮 · 全量）：Phase B 能不能"原样复原"——实验结论与施工蓝图

## 0. 三条复原路径的实验结果

| 路径 | 做法 | 结果 |
|---|---|---|
| **① 重放补丁链** | 取底座 `w3a_smali_20260918.tar.gz`（＝R4c176b，5520 smali）解到 `/tmp/b3a1`，把 docpack 的 **27 个补丁脚本**改路径后按批序重放 | ❌ **27/27 全部失败**（`AssertionError: anchor count=0`）⇒ 它们依赖 **r4c177/r4c178 那几批先落地**；而那几批的脚本**不在素材里** |
| **② 逐字素材** | 从 docpack 提取 `.method … .end method` 原文 | ✅ **55 个方法体**导出到 `r6s5/phaseB_verbatim/`（评分/情报门/登记表/巡炸/配置 全套） |
| **③ 归档 APK 反汇编** | 反汇编任一 r4c186~r4c205 时期的 APK | ⚠️ **本机没有**（`/sdcard` 全盘只有 w/z1..z4 六个归档）；**电脑端可能有**（见 §4 清单） |

**结论（精确表述）**：
- **能逐字复原**：Phase B 的 55 个方法体（`strikeScore`/`bomberIntelOk`/`hasMilitaryBuilding`/`milRaw`/`provinceHasAirport`/`noteProvinceBuildings`/`noteAirportProvince`/`rove*`/`cfg*`/`dbgCand`/`dbgSel`/`hasWatchBuilding` 等）＋ 4 个 `Province` 建筑钩子 ＋ 静态字段 ＋ 资产配置。
- **不能逐字复原（源码已丢）**：B3-A1 的**三个"骨架"方法** `updateOffensives` / `pickStrikeTarget` / `tryStrikeForAirport`。
  但这三个**我们有等价物**（Phase A 的 `updateOffensivesP` / `pickStrikeTargetP` / `tryStrikeForAirportP`，已验收会起飞），
  且**设计档给了完整门序与真值表**（见 §2）⇒ 可"按规格做到行为一致"，而不是逐字。

## 1. B3-A1 全批次台账（交接文档 v2 原文摘录 —— 重建规格来源）

| 批次 | 内容（一句话） | dex / apk |
|---|---|---|
| r4c178 | 轰炸机目标优先级（军事组→经济高）＋随机分散＋同省最多 2 架：`hasMilitaryBuilding`/`strikeScore`/`isBomberSlotFull` | `02f5a126…`/`bc51ef33…` |
| r4c179 | **关键修复** `strikeScore` 军事档分支极性写反（`if-nez`→`if-eqz v1,:ss_econ`）＝"轰炸机只挑最近省"的真因 | `12b6be3c…`/`f423d8c6…` |
| r4c180 | 【新功能·方案B】轰炸机情报门 `bomberIntelOk` = 记忆 `afMilKnown` 门；覆盖＝雷达网∨飞机航线∨玩家可见；实时无军事建筑→立即遗忘 | `96da980b…`/`e6a63fc2…` |
| r4c181 | **关键修复** 情报门极性写反（`if-eqz v5,:my`→`if-nez v5,:del`）＝"专打无军事省"的真因；新增 `nIKM` | `a823361c…`/`7ffb5cc8…` |
| r4c182 | 【诊断】`nIKS`（mil/bsz/b0/mem/rps/pls/fog） | `29027f65…`/`4fb81c9e…` |
| r4c184 | 军事判据改 `milRaw ∨ provinceHasAirport`（空军基地＝军事组 idx34） | `edd2b511…`/`abbd97f7…` |
| r4c185 | 军事判据改**事件驱动登记表** `afMilReal`；`Province` 4 个建筑增删方法挂 **8 处**钩子 | `d6b9911f…`/`727fbfe1…` |
| r4c186 | `strikeScore` 改三档：机场(d×f) > 其他军事(100000+d×f) > 经济(200000+…) | `cb7921e6…`/`dd3c3d48…` |
| r4c187 | 【诊断】候选层探针 `nSC p= c= oc= war= inf= air= mil= rps= pls= fog=` | `00c6ee6d…`/`8d91a43e…` |
| r4c188 | 机场判据改登记表 `afAirportProv`（复用建筑钩子 + `AIRPORT_BUILDING_ID`）；`provinceHasAirport`＝登记表 ∨ 实时扫描 | `3acf061b…`/`f7aba75a…` |
| r4c189 | **修复** `AIRPORT_BUILDING_ID` 默认 -1 ⇒ 机场登记污染（84 省全判有机场）⇒ 改挂游戏 `registerAirport`（带 p0≥0 守卫） | `300a377d…`/`8c9d529c…` |
| r4c190 | **修复** 档间距 10 万 < 距离尺度 ⇒ 算分距离**钳位 1000**，保证 tier1<tier2<tier3 绝对分离 | `75461dff…`/`2c922688…` |
| r4c191 | **关键修复** 选择方向反了（实际保留**最大**分 ⇒ tier1 永远最后）⇒ 对调 `cmpg` 操作数保留最小分；新增 `nSV` | `d9364f7f…`/`5c…` |
| r4c193 | 配置驱动 + 新语义（"证实才盯打"） | — |
| r4c194~204 | 配置链强化：`cfgReadAsset`（改从 APK `assets/strike_config.json` 读，外部文件仅可选覆盖）、异常留痕 `nRAXA`、`FileManager.loadFile` 本地→内部资产 | — |
| r4c195/197/198/199 | 候选池探针 `nPK`；**巡炸模式 `mode=rove`** + 记忆系统修复；巡炸全路径探针；修 `v0<0` 时 `getProvince(-1)` 越界 | — |

> 注：r4c177（含 a…x 子批）＝B3-A1 的"骨架批"，创建了 `updateOffensives` / `pickStrikeTarget` / `tryStrikeForAirport` / `getHostileProvincesInRange` / `hasStrikeInFlight` / `isBomberSlotFull` / `trackGroundTarget` 等。**它的脚本与树都不在素材里**（唯一缺口）。

## 2. 三个"骨架方法"的规格（从设计档真值表逐条抄回，用于重建）

**`tryStrikeForAirport(airport, rnd, type)`** —— 设计档原文："仅①一处错（其余 player/mode/0.2 门/空闲师/在飞/`if-ltz 目标<0`/`if-eq ATTACKER` 均正确）"
⇒ 门序：① 玩家文明一致 ② `mode` 门 ③ `0.2f` 概率门 ④ 空闲师 `pickIdleDivKey` ⑤ `hasActivePatrol` 防重复 ⑥ 选靶 `≥0` ⑦ `if-eq p3, ATTACKER` 分派（ATTACKER→`createAttackArmy`，否则 `createStrategicBombing`）。

**`pickStrikeTarget(airport, type)`** —— 设计档原文："✅（被占省直通／isAtWar／攻机驻军门／迷雾门／去重调用／最近优先 `cmpg-float`+`if-gez`）"
⇒ 候选循环门序：省存在 → **被占省直通**（占领者）→ `isAtWar` → （仅攻机）驻军门 → **迷雾门**（修后：`if-eqz v7` 才继续＝可见才收）→ 去重（`hasStrikeInFlight`）→ **最近优先**（`cmpg(score,best)` 保留最小，距离**钳位 1000**）→ 返回 pid。

**`updateOffensives(civ)`** —— 设计档原文："✅（逐机场 ATTACKER/BOMB…）"
⇒ 每回合每文明：遍历该文明机场 → 每机场对 ATTACKER、BOMBER 各调一次 `tryStrikeForAirport`；由 r4c197 增设 `mode=rove` 分支（巡炸）。

## 3. 施工蓝图（两条路线，二选一）

### 路线 A（推荐）：**把 Phase B 挂到现有 P 线**（行为等价、风险最低）
| Phase B 件 | 挂接点 |
|---|---|
| `strikeScore` + 双登记表 + `Province` 4 钩子 | `pickStrikeTargetP` 里把"纯距离"换成"评分（最小）"；登记表/钩子独立新增 |
| `bomberIntelOk`（记忆门） | `pickStrikeTargetP` 的候选门里（仅 BOMBER） |
| `rove*` | `updateOffensivesP` 内加 mode 分支（总闸开 ⇒ 周期巡炸） |
| `cfg*` + `assets/strike_config.json` | `loadStrikeConfig` 在首次使用时执行；资产打进 APK |
| 探针 `dbgCand/dbgSel` | 各自挂到候选循环与选择处（只加日志） |
> 优点：Phase A 已验收的派发/选靶链不动；Phase B 只加"判据与节奏"。缺点：方法名与 B3-A1 不完全同名（行为一致）。

### 路线 B（"原样"）：重建原名三件、删除 P 线
> 需要：重建 `updateOffensives`/`pickStrikeTarget`/`tryStrikeForAirport`（按 §2 规格）＋ 迁移 `update(civ)` 调用 ＋ 删 5 个 P 线方法 ＋ 全部重跑门禁与装机验收。工作量与风险约 2~3 倍。

## 4. 请电脑端协助检索的清单（若能找到 ⇒ 可走"逐字复原"）
按台账 md5 找**任意一个**（文件名模式 `dbg_signed77_v119_r4c*.apk`，或旧树 `/tmp/w3a_bak_r4c205/smali_full/`）：
```
r4c186 cb7921e6…/dd3c3d48…   r4c188 3acf061b…/f7aba75a…   r4c190 75461dff…/2c922688…
r4c191 d9364f7f…/5c…         r4c193 …                     r4c197 …
r4c205（最终态，任何形式都行：apk / smali 树 / tar）
```
> 若找到 r4c205 的**任何**快照，我就能把三个骨架方法也逐字复原（不必走重建）。

## 5. 风险与门禁（Phase B 版，写码前先立）
| 风险 | 门禁 |
|---|---|
| 评分选择方向（最大/最小） | 断言 `cmpg` 操作数顺序 + 保留最小分 |
| 情报门极性（r4c181 血案） | 门极性与"遗忘/拒绝"路径的方向断言 |
| 档间分离（r4c190 血案） | 断言距离**钳位 1000** 且 tier 常量 ≥10 万 |
| 登记表生命周期（r4c185） | 断言 `Province` 4 方法钩子齐备 + 实时兜底自愈 |
| `AIRPORT_BUILDING_ID` 默认 -1（r4c189 血案） | 断言登记前有 `if-ltz` 守卫 |
| HashSet 初始化 | 断言 `<clinit>` new + 钩子内 null 守卫 |
| 配置缺省（r4c203） | 断言读不到资产时走默认值且留痕 |
| AI 隔离 | 断言 Phase B 只被 P 线调用 |
'''
p = D + '调研_phaseB_复原可行性_v2全量.md'
open(p, 'w', encoding='utf-8').write(DOC)
print('[OK] %s (%d B)' % (p, os.path.getsize(p)))

PLAN = D + 'AI打击接入_调研与计划书v1.md'
open(PLAN, 'a', encoding='utf-8').write('''

## 108. Phase B 复原可行性实验（第二轮全量）（2026-09-27）

**实验**：①重放补丁链：底座 `w3a_smali_20260918.tar.gz`（R4c176b）解到 `/tmp/b3a1`，27 个补丁脚本改路径按批序重放 ⇒ **27/27 失败**（锚点缺失，依赖 r4c177/r4c178 那几批；其脚本不在素材里）。
②逐字素材：导出 **55 个方法体** 到 `r6s5/phaseB_verbatim/`（评分/情报门/双登记表/巡炸/配置全套）。
③归档 APK：**本机无任何 r4c1xx/r4c2xx 归档**（全盘只有 w/z1..z4），电脑端可能有。

**结论**：Phase B 的 **55 个方法体可逐字复原**；三个"骨架"方法（`updateOffensives`/`pickStrikeTarget`/`tryStrikeForAirport`）**源码已丢**，但有 ①等价物（Phase A 的 P 线三件，已验收可飞）②设计档完整门序真值表（见调研档 §2）⇒ 可"按规格行为一致"复原。

**台账**：交接文档 v2 的 16 行 B3-A1 批次台账（含每批 md5 与职责）已摘入调研档 §1，作为重建规格。

**两条路线**：A（推荐）把 Phase B 挂到现有 P 线；B（更"原样"）重建原名三件并删除 P 线（工作量/风险约 2~3 倍）。

**待电脑端检索**：任意 r4c186~r4c205 的 apk / r4c205 旧树（`/tmp/w3a_bak_r4c205/smali_full/`）⇒ 若找到可改走"逐字复原"。
''')
print('[OK] 计划书 §108 (%d B)' % os.path.getsize(PLAN))