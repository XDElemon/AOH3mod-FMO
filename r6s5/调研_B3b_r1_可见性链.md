# 调研 · B3b R1：科技树"可见性链"全量摸底

> 2026-10-11｜目标：实现"只能在指定国家看到指定国家的科技树（他国科技看不到）"。只读调研。

## 1) 科技树 UI 的构建链（唯一绘制入口）
- **`InGame_TechnologyTree.<init>()V`**（`.registers 26`，一个 ~565 行的大循环）：对 `i=0..iTechnologySize`：
 - 建 `ButtonTechnology(bg=getTechBG(i,player.civ), techID=i, x/y=TreeColumn/TreeRow, queueState)`，加入 `menuElements` 列表；
 - 为 `RequiredTech`、`RequiredTech2` 各建 1 条 `TechLine`（**端点直接用 `lTechnology[req].TreeColumn/TreeRow` 计算，不依赖按钮实例**）。
- 循环骨架：顶 `:goto_56`（`v6=i`，越界跳 `:cond_23a` 出循环）；尾 `:cond_22f`（`v6=i+1` 后 `goto/16 :goto_56`；顺带还原 v8/v12/v7/v10 上轮值）。
- ⇒ **跳过一整次迭代（隐藏该节点）＝ 在顶部 `v6+1; goto :goto_56`**（由于跳过了整段 body，v8/v12/v7/v10 保持上一轮还原值，无需额外处理；v0/v5 中仅 v0 可安全借用——v5=0x64 是 body 要用的字面量，勿动）。

## 2) 节点状态色（`TechnologyTree.getTechBG(i, civ)`）——**没有"隐藏"概念**
- techBlue=正在研究 / techResearched=已研究 / techGray=前置未满足 / techAvailable=可研究。
- ⇒ "看不到"必须**不建按钮**（跳过迭代）＋随之不建线；仅置灰/改色无法满足。

## 3) 研究可用性链（同一闸门，5+调用方）
- `Civilization.getAvailableToResearch(I)Z`：AI 选科技 / 研究队列（PlayerTechQueue 347/742）/ 选择界面（InGame_TechnologyChoose @857，**只列 available=true 的科技**）/ GameThread 备选研究（@973）/ 点击链。
- 点击：`ButtonTechnology.actionElement` 仅当 `btnIMG==techAvailable` 时→ `setActiveTechResearch`（清空队列+开研）；点击其他状态=取消/无操作。
- ⇒ **在闸门加"国别条件"一处，全域（含 AI）生效**。

## 4) 结论：两处注入达成目标
1. **可见性**（看不到）：`InGame_TechnologyTree.<init>` 循环顶部跳过"非本国科技"；
2. **可研究性**（研不了）：`getAvailableToResearch` 尾部加国别条件；
- 共用判定：新增 `TechnologyTree.isTechAllowedForCiv(techID, civID)Z`（复用 `AirForceManager.artGroupOf` 的既定路由：中0/欧1/俄2/美3，默认俄）。
- 节点段→组映射：**32..44→中(0)；45..54→美(3)；55..63→欧(1)；64..74→俄(2)**；<32 或 >74 一律允许（旧科技不受影响）。