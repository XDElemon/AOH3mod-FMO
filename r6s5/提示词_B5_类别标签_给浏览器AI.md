# 提示词 · B5「顶部类别 + 类别标签」（交给浏览器 AI 执行）

> 用途：把下面【提示词正文】整段复制给浏览器 AI（有联网最好；不能联网时把标注的文件内容一并粘贴给它）。
> 2026-10-11｜《终序千禧》AI 空军 DEMO 项目

---

## 【提示词正文】

你是《终序千禧》手游 MOD（Age of History 3 平台，包名 `age.of.history3.qiamxi.zhiri`）的科技系统设计师。请完成 **B5「顶部类别 + 类别标签」** 批次：**仿《钢铁雄心4（HOI4）》的"顶部类别（大分组）+ 每节点类别标签"体系**，本轮目标是"标签数据 + 读取通路"，**暂时不产生任何数值效果**。

### 一、背景现状（务必先理解）
- 游戏：Age of History 3（安卓），MOD 通过反编译 + smali 修改实现。
- 科技树现状：共 **75 个节点**：
 - `ID 0..31`＝原版旧树（步兵/早期战机/坦克等基础科技）；
 - `ID 32..74`＝本 MOD 新增的"四国空军线"：中国 32–44 / 美国 45–54 / 欧洲 55–63 / 俄罗斯 64–74（含每国一个"空军包"节点 + 各代机型节点）。
- 现有节点数据字段（`Technologies.json`）：`ID / Name（语言键）/ ImageID / TreeColumn / TreeRow / RequiredTech / RequiredTech2 / ResearchCost / Repeatable / AI`（我方新节点还有 `MaintainTechnologyName: true`）。示例：
```
{ ID: 0, Name: "ModernTechFoundation", TreeColumn: 26, TreeRow: 2, RequiredTech: -1, RequiredTech2: -1, ResearchCost: 250, Repeatable: false, AI: 5 }
```
- 目标形态（对齐 HOI4）：科技树界面能按"大类别"归组/展示（顶部类别），每个科技条目带若干"类别标签"（如 空军→战斗机/截击机/攻击机/轰炸机；工业/电子/政务等）。

### 二、参考资料（先读）
#### A. 钢四参考（本仓库内含 v1.19.2 原版文件；可在线打开）
1. 科技专题包总目录（含 README 抄写指引）：`https://github.com/XDElemon/AOH3mod-FMO/tree/main/hoi4_tech`
2. 科技树本体（13 个 txt，重点 `air_techs.txt`、`industry.txt`、`infantry.txt`、`electronic_mechanical_engineering.txt`）：
 `https://github.com/XDElemon/AOH3mod-FMO/tree/main/hoi4_tech/source/common/technologies`
3. 类别标签清单（`technology_categories` 全表）：`https://github.com/XDElemon/AOH3mod-FMO/tree/main/hoi4_tech/source/common/technology_tags`
4. 科技界面定义（`countrytechtreeview.gui` 等）：`https://github.com/XDElemon/AOH3mod-FMO/tree/main/hoi4_tech/source/interface`
5. 科技文本（英文/简中本地化样例）：`https://github.com/XDElemon/AOH3mod-FMO/tree/main/hoi4_tech/source/localisation`
6. （备用）完整 common/ 预览：`https://github.com/XDElemon/AOH3mod-FMO/tree/main/hoi4_source_preview/common`
> 钢四关键结构（参考用，供你模仿语义）：
> - 每个科技含 `folder = { name = xxx_folder, position = {x,y} }`（**树上的"分组/页"**，即"顶部类别"的载体来源）；
> - 每个科技含 `categories = { ... }`（**类别标签**，取值来自 `technology_categories`）；
> - `technology_categories` 清单示例：`light_air / heavy_air / armor / artillery / naval_equipment / rocketry / nuclear / industry / electronics / computing_tech / radar_tech / ...`

#### B. 本 MOD 现版本源码与资源（参考用）
1. 源码（smali，重点文件）：
 - 科技数据类：`https://github.com/XDElemon/AOH3mod-FMO/tree/main/src/smali/aoc/kingdoms/lukasz/map/technology`（`TechnologyTree.smali`、`TechnologyTree$Technology.smali`）
 - 现有字段（`TechnologyTree$Technology`）：`ID / Name / ImageID / TreeColumn / TreeRow / RequiredTech / RequiredTech2 / ResearchCost / Repeatable / AI / MaintainTechnologyName / UnlocksNukes / UnlocksColonization / UnlocksAccessToTheSea / Gold / Legacy / Discipline / …`
2. 资源（当前版数据文件）：
 - `https://github.com/XDElemon/AOH3mod-FMO/tree/main/build_inputs/b3/out/assets/game/technologies`（`Technologies.json`＝全部 75 节点）
 - `https://github.com/XDElemon/AOH3mod-FMO/tree/main/build_inputs/b3/out/assets/game/units`（四型空军单位记录示例）
 - `https://github.com/XDElemon/AOH3mod-FMO/tree/main/build_inputs/b3/out/assets/game/languages`（`Bundle*.properties`×3＝中/英/繁）
3. 前期设计文档（沿用其结论，不要推翻）：
 - 顶层大类候选：`https://github.com/XDElemon/AOH3mod-FMO/blob/main/r6s5/移植菜单_顶层大类_v3.md`
 - 一级领域骨架：`https://github.com/XDElemon/AOH3mod-FMO/blob/main/r6s5/移植菜单_一级领域骨架_v2.md`
 - 移植批次计划：`https://github.com/XDElemon/AOH3mod-FMO/blob/main/r6s5/钢四科技系统移植_批次计划_v1.md`

### 三、你需要的交付（5 件，编号输出）
1. **类别体系设计**：定"顶部类别"清单（建议 5–8 个，如 陆/空/海不可用时用 陆/空/工业/电子/核/政务 之类，按前期文档结论取舍）＋每类的"子标签"。给出：类别 id（英文小写）、中文名、英文名、繁体名、建议排序、建议图标描述（可选）。
2. **全量映射表**：`ID 0..74` 每个节点 → 所属类别（+可选子标签）。输出为一张表（列：ID / 现行Name / 中文名推测 / 类别 / 子标签）。旧节点按语义归类（如 `EarlyFighter`→空军）；我方 32..74 全部→空军，子标签按机型（战斗机/截击机/攻击机/轰炸机，含各代）。
3. **数据落地方案**：给出 `Technologies.json` 中每条记录要**新增的字段**（字段名、类型、缺省值）＋ 3 条完整示例片段（1 条旧节点 + 1 条中方节点 + 1 条美方节点），格式与现文件完全一致（缩进风格同原文件）。
4. **代码落地方案（smali 级规格）**：
 - 在 `TechnologyTree$Technology` 类新增字段的声明行（仿照现有 `public Xxx:I` 风格；字符串类用 `Ljava/lang/String;`；**注意不要动 `.registers`**）；
 - 如需 getter/读取点，给出建议位置（文件+方法名）与该字段的读取示例；
 - 说明"为什么这样加"（资源 JSON→类字段 的反射绑定关系）。
5. **自检清单（可证伪）**：列出 3–5 条"怎么验证类别可被读出"的最小验证法（在哪看、看到什么算通过、看到什么算失败）。

### 四、约束
- **兼容性**：旧存档、旧字段一律不动；新字段缺省时，一切行为与现状一致。
- **不重命名**现有字段；不修改现有节点顺序/位置。
- 语言：中文为主；类别名请一并给中文/英文/繁体（本 MOD 语言键写在 `Bundle.properties` / `Bundle_cn_sp.properties` / `Bundle_cn_tr.properties`）。
- 只做"标签与读取"：**本轮不产生任何数值/规则效果**（那是后续批次）。
- 输出请直接按"1..5"分节，做到**可直接落地**（不要泛泛而谈）。

---

## 【备注（不用发给 AI）】

- 本提示词落盘于：`r6s5/提示词_B5_类别标签_给浏览器AI.md`（GitHub 同路径）。
- 若浏览器 AI 不能联网：把下方文件内容粘贴给它即可工作：`hoi4_tech/source/common/technologies/air_techs.txt`（或任两三个科技 txt）+ `hoi4_tech/source/common/technology_tags/00_technology.txt` + 本 MOD 的 `Technologies.json` + `TechnologyTree$Technology.smali` 头部字段段。
- 收 B5 产出后，交给 Operit 侧走"三轮调研→门禁→编译装机"施工流程。