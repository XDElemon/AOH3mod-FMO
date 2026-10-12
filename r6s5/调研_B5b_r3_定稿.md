# 调研 · B5b R3（定稿）：锚点 / 寄存器 / 门禁 / 验收

> 2026-10-12｜批次 r6d271（B5b，纯 dex）｜模板=上一归档 r6d270｜回退=重装 r6d270。

## 1. 编辑点（唯一锚点，命中=1）
### 1.1 新增 4 方法（插在 `dumpTechCategories` 方法定义之前）
- 锚点：`.method public static final dumpTechCategories()V`
- 插入：`getTopCategoryByCategory` / `getTopCategory(I)` / `getTopTabs` / `dumpTopCategories` 四个方法块。

### 1.2 调用点（loadTechnology 尾部追加一行）
- 锚点：`invoke-static {}, …;->dumpTechCategories()V\n\n    .line 226`
- 替换：在 dumpTechCategories 调用行后追加 `invoke-static {}, …;->dumpTopCategories()V`（保持在 dumpTechCategories 之后、loadTechnologyImages 之前）。

## 2. 门禁 check_r6d271（S1–S6 + 模拟器 + 3 负样本）
- S1 四方法各存在且仅 1 处定义；S2 调用行 1 处且位次在 dumpTechCategories 之后；
- S3 `getTopCategoryByCategory` 常量集合 = {air, army, government, land, civil} 且分支次序正确（air→air；army/government→land；其余 civil、null→civil）；
- S4 `getTopTabs` 常量顺序 [land, air, civil]；
- S5 `dumpTopCategories` 含 `nTOP id=` 与 `nTOPSUM land=` 且 dWrite 1 处，`.registers 7`；
- S6 既有不动：loadTechnology `.registers 8`；dumpTechCategories 仍 2 处；`nTCAT id=` 仍在。
- **模拟器**：解释 `getTopCategoryByCategory` 的真实 smali（const-string / invoke-equals / move-result / if-eqz / if-nez / return-object 子集），断言：
 `air→air、army→land、government→land、industry→civil、unknown→civil、null→civil`；
 反转敏感性：把 smali 中一处 return 常量改掉 → 模拟器必须变红。
- 负样本：N1 改错映射常量；N2 删除调用行；N3 方法名拼写破坏。

## 3. 验收（可证伪）
- 启动后日志：`nTOP` 行 ×75；`nTOPSUM land=21 air=47 civil=7`；
- 无崩溃；原有 nTCAT×75 不受影响（同次启动应两者都在）；
- 反例：数量不符 / 汇总不符 = 不通过。

## 4. 失败与回退
- 闪退（VerifyError）→ 查新方法寄存器/`check-cast`；回退重装 r6d270；
- 探针缺失：nTOP 不在采样名单（应 1/1）；确认调用行在尾部。