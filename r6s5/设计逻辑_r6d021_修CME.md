# 设计逻辑 · r6d021（修复 ConcurrentModificationException：恢复线程安全容器）

> 批次 **r6d021** ｜ apk `275bd51150fc832b51265e27a7b54b09` ｜ dex `fb2f01d549eefac0904f7625f1f65ef8` ｜ Earth3 `18510`
> 归档 `build_apk/dbg_signed77_v119_r6d021.apk` ｜ 可分发 `/sdcard/Download/AOH3_空军demo_r6d021_正式版.apk`
> 回滚点 `AirForceManager.smali.pre_r6d021` ｜ 门禁 **79**

---

## 0. 事故一句话
r6d019 我为了"去掉 logcat 噪声"把 `activeMissions` 的容器从 `DebugMissionList` 换成 `ArrayList` —— **而 `DebugMissionList` 的真身是 `extends java.util.concurrent.CopyOnWriteArrayList`**（线程安全容器）。换掉它＝**拆掉线程安全保护** ⇒ 渲染线程迭代时回合线程增删 ⇒ 崩溃。

## 1. 症状 → 原因 → 修复（对照表）
| 项 | 内容 |
|---|---|
| **症状** | 进游戏玩一会儿后闪退；`logcat -b crash` 显示 `java.util.ConcurrentModificationException`，栈顶 `java.util.ArrayList$Itr.checkForComodification` → `AirForceManager.updateMissions(Unknown Source:29)` → `AA_Game.render(AA_Game.java:236)`（GLThread） |
| **错误的规则** | "`activeMissions` 用一个普通 `ArrayList` 就够了（`DebugMissionList` 只是加了日志，去掉它等于去掉噪声）" |
| **正确的规则** | "`activeMissions` **必须**是线程安全容器（写时复制）：**渲染线程在迭代它，回合线程在增删它**" |
| **为什么之前不崩** | 原实现 `DebugMissionList extends CopyOnWriteArrayList` ⇒ 迭代的是快照，**结构被并发修改也不抛 CME**（那堆 `Log.d` 只是附带） |
| **为什么会漏判** | 我只看了它的方法表（`add/clear/remove` 都在打日志），**没有看 `.super`** ⇒ 误判"仅为调试噪声类"。**教训：动一个类之前必须看它的父类/接口** |
| **症状对应关系** | 换 `ArrayList` ⇔ 出现 CME；换回（等价物）`CopyOnWriteArrayList` ⇔ 消失 |

## 2. 设计目标
- 玩家可见问题：**闪退**（玩到有航空任务在飞时触发）。
- 上层意图：保住 r6d019/r6d020 的"探针静默"收益，同时**恢复**原有的线程安全语义 ⇒ 与基础包行为一致，不再引入新崩溃。

## 3. 设计规则（人话 + 判定顺序）
```
AFM 构造时：activeMissions = new java.util.concurrent.CopyOnWriteArrayList()
  → 任何"读迭代"（updateMissions / 渲染）拿到的是【快照】
  → 任何"写"（add/remove/clear：回合线程或玩家操作）产生新数组
  ⇒ 迭代过程中列表被改，不会抛 ConcurrentModificationException
其余规则不变（探针静默、AI 造机、玩家自动打击/巡逻、水印、启动弹窗）
```

## 4. 参数与阈值表
| 名称 | 当前值 | 类型 | 含义 | 改动影响 |
|---|---|---|---|---|
| `activeMissions` 容器 | `java.util.concurrent.CopyOnWriteArrayList` | 集合类型 | 在飞任务列表 | 换成 `ArrayList`/`Vector` ⇒ **线程不安全（会崩）**；Vector 虽同步但不保证迭代安全 |
| `DebugMissionList`（类） | **已删除**（无引用） | 类 | 原容器（COW 子类 + 日志） | 恢复引用会带来 logcat 噪声；门禁 79 会拦"用非安全容器构造 activeMissions" |
| 探针总闸 `dbgOn` | false（`debug:0`） | 布尔 | 见 r6d019/r6d020 | 不变 |

## 5. 状态与生命周期
- 容器在 AFM 构造时创建，随 AFM 生命周期存在；任务对象增删不变。
- 本版**不涉及**任何玩法逻辑、判定方向、存档字段。

## 6. 边界与不变量
- **不变量（本次新增门禁 79）**：`activeMissions` 只能由**线程安全容器**构造，且任何 `ArrayList`/`Vector`/`DebugMissionList` 都不得出现在它的构造块里。
- 明确不改：探针三入口的闸、AI 造机、玩家链、水印、启动弹窗、`AA_Game`/`initialize`。
- 对齐基础包：恢复与原始 `DebugMissionList` **同等的线程语义**（COW），只是不再打日志。

## 7. 玩家可感知的表现
- 正常：长时间游戏（含任务在天上飞）**不再闪退**；探针静默（0 字节日志、logcat 无 `AIRDBG`）。
- 异常：若仍崩且是 CME ⇒ 说明还有**别的**容器也被换成了非线程安全实现（排查：看栈里的字段名）。

## 8. 失败与回退
- 回退：`cp AirForceManager.smali.pre_r6d021 → AirForceManager.smali` 重汇编重建（会退回 r6d020 = 有 CME 的版本，**不建议**）。
- 真正的稳定基线：r6d016（换容器之前）——但会**重新打开探针**（诊断版）。

## 9. 验收标准（可证伪）
| 判据 | 结果 |
|---|---|
| 门禁 **79**（activeMissions 必须是 COW；不得由 ArrayList/Vector/DebugMissionList 构造） | **全过，负样本 3/3** ✅ |
| 门禁 77 / 78（探针静默） | 全过 ✅ |
| 汇编 `result=true` ｜ 装机三对齐 | ✅ `275bd511…` / `fb2f01d5…` / `18510` |
| 启动自测（80 秒） | 无崩溃、进程存活、日志 0 字节、logcat 无 `AIRDBG` ✅ |
| **真机实战（需用户）** | 玩到有航空任务在飞 + 跨回合，**不闪退** = 通过 |

## 10. 变更清单摘要
1. `AirForceManager` 构造：`activeMissions = new java.util.concurrent.CopyOnWriteArrayList()`（替换 r6d019 引入的 `ArrayList`）。
2. 新增门禁 **79**（3 条断言 + 3 负样本）。
3. 订正 r6d020 文档中"`DebugMissionList` 只是噪声"的错误结论（见该文档批注）。

## 11. 风险与待办
- 风险：`CopyOnWriteArrayList` 每次写都复制数组 ⇒ 写多读少时有开销；但任务列表操作极少（每回合几十次以内），**可忽略**。
- 待办：对外发布前请**先真机玩 3~5 分钟（含战斗）**确认不闪退，再把 APK 发群。
- 沿用待办：B2 巡炸 / B3 配置正式版 / M7 / E6 / E7 / "弹窗只弹一次"。

## 附：血案记录（第 N 条铁律）
> **铁律：改/删任何类之前，先看它的 `.super`（父类/接口）。**
> "看起来像个调试类"不代表它只是调试类——`DebugMissionList extends CopyOnWriteArrayList` 就是一个**用名字伪装成调试工具的基础设施类**。
> 本次代价：一次对外版本的闪退。