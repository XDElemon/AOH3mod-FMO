# 设计逻辑 · r6d308（2026-10-14）· 修 bug：r6d307 开局闪退（instance-of 误用）
> 类型：**修 bug（回滚+修正）**｜依据崩溃栈与审计报告。

## 1) 版本号 + 定位
r6d308：修掉 r6d307 引入的"进游戏即闪退"——`instance-of` 后面画蛇添足加了 `move-result`。

## 2) 设计目标
- 玩家可见问题：装 r6d307 后 GLThread 在 AA_Game.initGame 抛 `VerifyError: … copyRes1 v1<- result0 type=Undefined` ⇒ 拒类 MenuManager ⇒ 启动即崩。
- 上层意图：保留"伴生菜单重定向"的行为修复，但用正确指令形态。

## 3) 设计规则与判定顺序（人话）
- 错误规则：以为 `instance-of` 和 `invoke-*` 一样先执行、再用 `move-result` 收结果。
- 正确规则：**`instance-of vA, vB, Type` 直接把布尔写进 vA**，没有"待取结果"这一步；其后不得跟 `move-result`（否则 verifier 看到 pending=Undefined，拒绝方法所属类）。
- 因此改为：`instance-of v1, v2, …EmptyMenu;` → 直接用 `if-eqz v1, :redir_skip`。

## 4) 参数与阈值表
| 项 | 值 | 说明 |
|---|---|---|
| 触发条件 | treeVisible && target instanceof EmptyMenu | 不变 |
| 结果寄存器 | v1（布尔） | 只读、不碰 v3/v4 |

## 5) 状态与生命周期
无状态变化；行为与 r6d307 设计完全一致，仅指令形态修正。

## 6) 边界与不变量
- 新增审计规则入 toolchain：instance-of+move-result 为绝对禁止；move-result 前须 invoke/filled-new-array。
- 本次全量/增量审计：A/B/C=0；D=2 为既有已知项。

## 7) 玩家可感知
- 修复前：启动闪退；修复后：正常进游戏（并携带 r6d307 的"卡死重定向"修复）。

## 8) 失败与回退
- 门禁 check_r6d308 + 行为级模拟器（4 场景 + 3 变异）全绿；八件套通过。
- 若异常：回退 r6d306（上一安全版）。

## 9) 验收标准（可证伪）
1. **开机不闪退**（本批核心）；
2. 进科技树滑到原卡死点——**不再卡死**（r6d307 行为修复此时生效）；
3. 点击科技/切栏/关闭重开正常。

## 10) 变更清单摘要
MenuManager：一行形态修正（instance-of 直写 v1，删 move-result）。新增审计工具 `audit2.py`。

## 11) 风险与待办
- 风险：无新增；工具未覆盖对象↔对象合并（备注在审计报告）。
- 待办：r6d309 计划（原 r6d308 计划顺延）：①滚动范围收缩（mx=30258→内容宽）②探针减负。