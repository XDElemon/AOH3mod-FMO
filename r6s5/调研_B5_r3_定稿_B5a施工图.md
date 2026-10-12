# 调研 · B5 R3（定稿）：B5a 施工图（锚点/寄存器/门禁/验收）

> 2026-10-12｜批次＝**r6d270（B5a：类别字段 + 75 条填值 + 读取探针）**；性质＝改码 + 资源注入混合批；模板＝上一归档包 r6d269；回退＝重装 r6d269。

## 1. 编辑点清单（唯一锚点；命中数必须=1）

### 1.1 `TechnologyTree$Technology.smali`（字段 ×2）
- A1 锚点（逐字，含紧邻行；注意字段之间是空行分隔）：
```
.field public BattleWidth:I

.field public Discipline:I
```
插入后：`BattleWidth` 与 `Discipline` 之间新增 `Category:Ljava/lang/String;`（保留空行风格）。
- A2 锚点：
```
.field public ResearchCost:I

.field public TreeColumn:I
```
插入后：`ResearchCost` 与 `TreeColumn` 之间新增 `SubTag:Ljava/lang/String;`。

### 1.2 `TechnologyTree.smali`（探针 ×2）
- B1 调用点：在 `loadTechnology()` 尾部、`sput v0, ...->iTechnologySize:I` 之后插 1 行：
`invoke-static {}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->dumpTechCategories()V`
- B2 新方法 `dumpTechCategories()V`（插在 `loadTechnologyImages()` 方法定义之前）：
  - `.registers 4`；循环 i=v0；对象 v1；StringBuilder v2；临时串 v3；
  - 每行输出 `nTCAT id=<i> cat=<Category> sub=<SubTag>`（经 `AirDbgLog.dWrite`）；
  - 全部对象访问前先 `check-cast`（castorder 纪律）；无 wide 寄存器；无参数。

## 2. 寄存器分配表（B2 方法）
| 寄存器 | 用途 | 类型 | 说明 |
|---|---|---|---|
| v0 | 循环 i | int | 0..iTechnologySize-1 |
| v1 | 节点对象 | ref | check-cast 后用 |
| v2 | StringBuilder | ref | 链式 append（每次 move-result-object v2） |
| v3 | 临时字符串 | ref | const-string / iget-object |
> loadTechnology 原 `.registers 8` 不动；本批不新增寄存器到既有方法。

## 3. 数据编辑点（纯资源）
- 源文件＝`build_inputs/b3/out/assets/game/technologies/Technologies.json`（已核实与 r6d269 APK 内取值**逐字节一致**，md5 `1055e727…`）；
- 75 条记录各插入两行：`Category: "…",` 与 `SubTag: "…",`（映射表见 `调研_B5_r2_类别体系与全量映射.md`，含 CFA44/X02S 勘正）；
- 产物：`/tmp/r6d270_assets/assets/game/technologies/Technologies.json`（打包暂存）＋ `build_inputs/r6d270/out/…`（记录）。

## 4. 门禁 `check_r6d270.py`（S1–S6 + 3 负样本）
- S1 数据完整性：`Category:`=75、`SubTag:`=75；取值 ⊆ 11 集合；分类计数 air=47、army=20、economy=2、future=2、foundation/industry/nuclear/government=各 1、预留=0；
- S2 抽查：id33=cn.fighter、id54=us.interceptor、id73=ru.fighter、id0=foundation/root、id74=ru.bomber；
- S3 字段声明：两个 `.field` 各出现 1 次；
- S4 结构：`dumpTechCategories` 共 2 处（声明+调用）；调用行位于 `sput ...iTechnologySize:I` 之后；方法内含 `nTCAT id=` 与 `dWrite` 各 1；
- S5 回归：`loadTechnology()` 的 `.registers 8` 不变；
- S6 原字段计数不变：Name/TreeColumn/TreeRow/RequiredTech/RequiredTech2/ResearchCost/AI 各 75。
- 负样本（应变红）：N1 任取一条 Category 改成非法值；N2 删除一行 `Category:`；N3 删除 smali 调用行。
> 本批无极性判定（仅数据写入+读取）⇒ 按裁定不强制行为模拟器；以数据断言+结构断言为主。

## 5. 验收（可证伪）
- 启动进游戏后，`files/aircfg_diag.txt`（dWrite 通道）应出现 **nTCAT 行 ×75**：能读出每条节点的 Category/SubTag；
- 统计应满足 S1 数量；科技树/建造等原有功能无回归；无崩溃；
- 反例：nTCAT 缺失或统计不符＝不通过；出现 VerifyError＝按回退流程重装 r6d269。

## 6. 失败与回退
- 若开局闪退：抓 `logcat` 的 VerifyError 栈（重点看 dump 方法寄存器/类型），修后重编；必要时先回退 r6d269；
- 若 nTCAT 缺失但无崩溃：先查 dWrite 采样前缀名单（nTCAT 不在采样名单，应 1/1）与文件路径（files/aircfg_diag.txt）。
