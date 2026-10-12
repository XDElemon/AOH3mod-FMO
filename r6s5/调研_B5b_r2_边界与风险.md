# 调研 · B5b R2：边界、寄存器与风险（拓展）

> 2026-10-12｜只读。

## 1. 边界与不变量
- 不改 `Technologies.json`（本批零资源改动）；不改 UI；不改 r6d270 已上线的方法与调用点（只**新增**方法 + 在尾部**追加**一行调用）。
- `loadTechnology()` 的 `.registers 8` 与既有 dump 调用保持不动。
- 旧档/旧数据兼容：Category 为空 → `getTopCategoryByCategory` 返回 civil（不崩）。

## 2. 命名与冲突检查
- 顶部 id ∈ {land, air, civil}；band id ∈ {foundation, army, air, industry, …}——`air` 同名但分属两字段/两层，文档与代码注释里必须区分（band=Category，top=TopCategory 查询结果）。
- 新方法名不与既有方法冲突（grep 全树无同名）。

## 3. 寄存器画像（各方法独立）
| 方法 | .registers | 局部 | 说明 |
|---|---|---|---|
| getTopCategoryByCategory | 2 | v0 | p0=v1；仅字符串比较 |
| getTopCategory(I) | 4 | v0..v2 | p0=v3；v1 对象需 check-cast 后用 |
| getTopTabs | 2 | v0..v1 | 无参数 |
| dumpTopCategories | 7 | v0..v6 | v0=i、v1=top、v2=builder、v3=tmp、v4..v6=计数 |
> 无 wide；无参数寄存器别名风险；对象访问前先 check-cast（castorder 纪律）。

## 4. 验证与风险
- 行为级模拟器（必需）：对 `getTopCategoryByCategory` 做"解释真实 smali"的小模拟器 + 反转敏感性（改常量必变红）。
- 计数器三点核对：land=21 / air=47 / civil=7；
- 风险：以后拆更细顶部（陆军/工业/建筑/海军）时改映射表（一处）+ 如要"每节点可覆写"再加数据字段——届时评估，不影响本批。