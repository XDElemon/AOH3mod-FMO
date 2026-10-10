# 调研 · B3 R2c：显示链与树 UI 复核（第二遍）

> 2026-10-10｜只读复核｜结论：显示链**全数据驱动、无硬编码**；树 UI **会画连线**（req & req2），"3代包"结构需按此设计。

## 1) 显示链三处（实证）
- **单位名**：JSON 里存"键"；`ArmyManager.loadArmies()` 启动时对每条记录做 `lang.get(Name)` 再写回（@~955-991）⇒ 之后所有界面直接用**已本地化**字符串。语言表 3 份（EN / 简 / 繁）需为每条新记录补键。
- **招募面板**（InGame_RecruitArmy_NewArmy）：按 `Data_UnitTypes.Line` 分页（空军四型 Line=1 → Flank 页）；逐型扫描，仅显示 `isUnitBest(type,record)=true` 的**一张卡**（=该型最优档）。按钮：文字=记录已本地化 Name、图标=记录 ImageID、数值=记录字段。
- **兵牌/军队信息**（ButtonUnit 等）：读同一 `Data_Army` ⇒ 名/图/数值同源。
- **AI**：AI_RecruitArmy / AI_Army_Composition 读 `unitsBest_*`（自动跟最优档）；AI 研究选点走 `getAvailableToResearch`。
- **无任何硬编码 "AirFighter" 等字样**（全树 grep = 空）⇒ 全部数据驱动 ✔。

## 2) 树 UI：会画连线（TechLine）
- `InGame_TechnologyTree$TechLine`：每个科技为其 `RequiredTech` 与 `RequiredTech2` 各生成一条连线（含 `researched` 状态样式）。
- ⇒ "3代包"的 req 结构**会被画出来**：设计＝每国一个"**X国三代空军**"包节点 S ＋ 四个 3 代机型节点的**内部小树**（S.req=A、S.req2=B；A.req2=C；B.req2=D），且**整体不向远古区拉长线**（不直连 root），连线只在本国区块内。
- 接受度列入验收观察项（纯数据，易微调）。

## 3) 两条顺序/规则备忘
- 初始化顺序：`loadUnits → loadArmies`（含名字本地化）**先于** `buildTechnologiesNames`（科技名回填）⇒ 科技名=已本地化的单位名 ✔。
- 科技名回填：解锁单位非空 → 名=**首个登记单位**名；登记顺序=Units.json 类型序（**截7 → 战8 → 轰9 → 攻10**）⇒ 多类合并节点显示名取"最先登记类型"的版本（如 F-22 节点会显示为"F-22截击机"；如需改读法＝微调命名，R3 确认）。
- 选档：`unitsBest`=每型最高 UnitLevel（并列取先登记）；升级按钮走 `getUpgradeMaxArmyID`（记录索引从高往低找已研究 req）。
- 可研究闸门 `getAvailableToResearch` 全逻辑=仅四项：已研究&&非 Repeatable→false；req 未研究→false；req2 未研究→false；否则 true（无其它隐藏条件）→ B3b 在此外挂国别条件。

## 4) 边角更新
- 中局新生文明无起始包（边角；R3 评估）。
- 旧 4 条通用记录处理（删除 or 就地改造为某国首条）：R3 定；不变量＝每型最终 16 条。
- 地图/战斗用的飞机贴图链（AirUnitlmages/Gen*、ProvinceDrawArmy 用通用图）＝另一条链，本批不动（已声明）。

## 5) 下一步：R3 定稿（第三遍）
43 节点布局与连线、成本/AI、数值表（4 代缩放）、全量命名表（64 记录 ×3 语言）、剧本发放规格（955 条）、生成器规格、门禁与负样本、验收标准。