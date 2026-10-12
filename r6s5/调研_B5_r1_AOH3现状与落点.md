# 调研 · B5 R1（AOH3侧）：现状、加载链与落点
> 2026-10-12｜只读勘察。

## 1) 数据现状
- `Technologies.json` 共 75 条（ID 0..74）：0..31 旧树、32..74 四国空军线；
- 现有字段：ID / Name / ImageID / TreeColumn / TreeRow / RequiredTech / RequiredTech2 / ResearchCost / Repeatable / AI（我方含 MaintainTechnologyName）。

## 2) 类与加载链（关键）
- 类：`TechnologyTree$Technology`（24+ 字段：AI/BattleWidth/Discipline/Gold/ID/ImageID/Legacy/Name/RequiredTech/ResearchCost/TreeColumn/TreeRow/UnitsAttack/UnitsDefense/Unlocks* 等）——目前没有 Category 字段；
- 加载：`TechnologyTree.loadTechnology()`（@1133）：Json → setElementType(ConfigTechnologyData, Technology, Technology.class) → fromJson(反射绑定)。
- libgdx Json 为反射绑定：类里加字段 → JSON 同名键自动绑定；旧 JSON 缺该键 → 保持默认值。
- setIgnoreUnknownFields 仅在编辑器/存档处出现，科技加载未显式设置（新增字段两侧同步即无风险）。

## 3) 科技树 UI 现状
- `InGame_TechnologyTree`：单页可滚动画布（无页签/账本）；
  - 构造器（@64..1140）按 lTechnology 逐条创建 ButtonTechnology（位置由 TreeColumn/TreeRow 换算）；
  - draw()（@1161..2409）负责节点/连线/状态绘制；顶部仅 titleTechTree 图。
- ⇒ 『顶部类别 UI』若要像钢四那样，需要自绘顶部条（按钮/文字）；本轮不建议动 UI，先落数据+读取。

## 4) B5 落点建议（待 R2/R3 定稿）
- `TechnologyTree$Technology` 新增字段：Category（字符串主类别）＋ 可选 SubCategory 或 Tags；
- `Technologies.json` 75 条逐一填值（旧树按语义归类，空军线按『国/机型』子标签）；
- 读取通路：新增只读静态方法（如 getCategory）＋ 探针输出（AirDbgLog.dWrite / CFG.LOG 候选，R3 定）。
