# 调研（第二轮·拓展）：修正方案、不变量与风险
> 时点 2026-09-26 21:03

## 一、修正原则（对齐"如何正确编写"规范）
1. **寄存器按类型分区**（对象/int/float/long 各占各的），**循环头逐边类型一致**。
2. **浮点初值必须走 float 渠道**（`Float.POSITIVE_INFINITY → floatValue()F`），禁用 `const/high16` 当 float。
3. **不跳猜标签**：只用自己的批次前缀标签（`:pst_*`/`:os_*`/`:hsf_*`/`:z_war_go`）。
4. **不提高既有方法 `.registers`**；新方法独立计算（14/10/12）。

## 二、逐处修正
| # | 位置 | 修法 |
|---|---|---|
| 1 | `pickStrikeTargetP` | **整方法重写**：v0 bestPid(int)/v2 ownCiv(int)/v7 pid(int)/v8 temp(int)｜v3 bestDist(float, 由 `Float.POSITIVE_INFINITY.floatValue()` 取得)/v9 dist(float)｜v4 List/Iterator(obj)/v5 Integer(obj)/v6 Province(obj) |
| 2 | `updateOffensivesP` | **整方法重写**：obj v0/v1/v2/v3/v6 ｜ long v4v5 ｜ int v7；总闸 `if-nez`（0=开）保留 |
| 3 | `hasStrikeInFlightP` | **整方法重写**：int v0/v2/v4/v7 ｜ obj v1/v3/v5/v6 ⇒ 消除 v4/v5 混用 |
| 4 | `tryStrikeForAirportP` | 关2 `if-eqz`→**`if-nez`**；关3 `if-ltz`→**`if-gez`**（落实 B3-A1 的 **20% 门**；原写法等价 80%） |
| 5 | E2 短路 | 换成**自定义标签** `:z_war_go` + `return-void`；用 v6(玩家文明)/v4(机场文明) 比较，**不写 v5 为 int** ⇒ 汇合处无类型冲突、不猜标签 |

## 三、不变量与红线
- **AI 链一行不动**（`strikeTick_A1`/`a1*`/`a1b*`/`a1Scan`/`a1bScan` 及 r5c025 玩家门）。
- 不碰巡逻链/扫荡/雷达/机炮/导弹/核爆/存档/`isAtWar(I)`/数值文件；**零新字段**。
- 既有方法 `.registers` 不变（由门禁 ㊽ 逐方法断言）。

## 四、风险与失败模式
| 风险 | 处置 |
|---|---|
| 新方法仍有类型混用 | 门禁 ㊽（含"const 寄存器被当 float 操作数"检查，补 ㉙ 盲区） |
| E2 短路范围过大（连和平分支也挡） | 短路点在**战时分支内**（`nA4d` 之后），和平分支不受影响 |
| 与 AI 双发 | E2 只对**玩家机场**短路；AI 机场仍走老线 |
| 装机需点确认框 | 用 `toolchain/autotap_install.sh`；若自动点按失效 ⇒ 人工点【继续】 |
