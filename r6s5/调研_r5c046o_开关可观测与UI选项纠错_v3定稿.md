# 调研 · r5c046o（A+B）— v3 定稿（可直接施工）

> 基线 **r5c046n**（dex `9aa1396defb3a6a1bdba44b61c31888d`）｜前两轮：`..._v1全量.md`、`..._v2拓展.md`
> 编辑文件：**`AirDbgLog.smali`（A）＋ `InGame_AirForceOptions$BtnMission.smali`（B）**；`AirForceManager/AirMission/Airport` **不动**
> 批次：**r5c046o** ｜ 回滚基线：r5c046n（`build_apk/dbg_signed77_v119_r5c046n.apk`，dex `9aa1396d…`）

---

## 1. 施工目标

- **A（可观测）**：`p0Air` dump 追加 ` strike=`（= `Airport.autoStrikeOff:Z`）⇒ 每次机场 dump（`nA2m`/`nA3b`）都能看到该机场的自动打击开关状态。
- **B（UI 纠错）**：`BtnMission.actionElement` / `getTextToDraw` 在 **`iActiveID` 无效（`<0` 或 `≥size`）** 时：
 1. **不再静默作用到列表第 0 个机场**；改为**不动作 + Toast「请先选择机场」+ 探针 `afp:noSel`**；
 2. 显示端返回 **「未选中机场」**（不再冒充第 0 个机场的状态）；
 3. 顺带补诊断探针 **`afp:press ap=<provinceID>`**（每次按键落在哪个机场，可证伪）。

## 2. 锚点（逐字；实测命中次数）

| 锚 | 位置 | 文本要点 | 命中 |
|---|---|---|---|
| **A-1** | `AirDbgLog:881-899` | ` sget-object v2, L…AirUnit$AirType;->ATTACKER:…` ＋ 其后 `Map->get`/`check-cast List`/`size()`/`e5i`（`at=` 字段收尾块） | **1** |
| **B-1** | `BtnMission:72-87` | `sget v1, …;->iActiveID:I` ＋ `if-gez v1, :cond_1b` ＋ `const/4 v1, 0x0` ＋ `:cond_1b` ＋ `size()` ＋ `if-lt v1, v2, :cond_22` ＋ `const/4 v1, 0x0` ＋ `:cond_22` | **1**（`if-gez v1, :cond_1b` 唯一） |
| **B-2** | `BtnMission:88-92` | `invoke-interface {v0, v1}, List;->get(I)` ＋ `move-result-object v0` ＋ `check-cast v0, L…Airport;` | **1** |
| **B-3** | `BtnMission:413-424` | `sget v3, …;->iActiveID:I` ＋ `if-gez v3, :cond_2b` ＋ `const/4 v3, 0x0` ＋ `:cond_2b` ＋ `if-lt v3, v4, :cond_2e` ＋ `const/4 v3, 0x0` ＋ `:cond_2e` | **1**（`if-gez v3, :cond_2b` 唯一） |
| **B-4** | `BtnMission:364-367`（actionElement 尾） | `:goto_110` ＋ `exceptionStack` ＋ `return-void` ＋ `.end method` | 断言=1（脚本先校验，>1 则改用含 `dbgErr` 的更长锚） |
| **B-5** | `BtnMission:494-498`（getTextToDraw 尾） | `const-string v1, "自动巡逻：开"` ＋ `:cond_70` ＋ `return-object v1` ＋ `.end method` | 断言=1 |
| 防撞名 | — | 全树无 `"strike=`、无 `afp:noSel`（实测 0） | — |

## 3. 施工文本

### A-1（在 `at=` 收尾块之后追加一个字段）
```smali
    const-string v1, " strike="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
```

### B-1（钳位 → 未选中即跳错路）
旧：
```smali
    sget v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-gez v1, :cond_1b

    const/4 v1, 0x0

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_22

    const/4 v1, 0x0

    :cond_22
```
新：
```smali
    sget v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-gez v1, :nosel

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :nosel
```

### B-2（按键落在哪个机场：诊断探针，插在 `check-cast v0, …Airport;` 之后）
```smali
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const-string v2, "afp:press ap="

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
```

### B-3（显示端钳位 → 未选中文本）
旧（把 `const/4 v3, 0x0` 两处删掉、标签改为 `:noselTxt`）→ 新：
```smali
    if-gez v3, :noselTxt
    ...
    if-lt v3, v4, :noselTxt
```

### B-4（actionElement 末尾追加错误块，插在 `.end method` 之前）
```smali
    :nosel
    const-string v1, "请先选择机场"

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    if-eqz v2, :nosel2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :nosel2
    const-string v1, "afp:noSel"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
```

### B-5（getTextToDraw 末尾追加，插在 `.end method` 之前）
```smali
    :noselTxt
    const-string v1, "未选中机场"

    return-object v1
```

## 4. 真值表与极性（写反会怎样）

| # | 判据 | 正确 | 写反的后果 |
|---|---|---|---|
| A-1 | 追加字段 | `iget-boolean v2, p0, Airport;->autoStrikeOff:Z` → `e5i(v0,v2)` | 若写成 `if-eqz`/比较 ⇒ 变成布尔判断，日志语义错（`strike=` 恒 0/1 之一） |
| B-1 | 未选中 | `iActiveID<0` **或** `≥size` ⇒ `:nosel` | 写成 `if-ltz`/`if-gez` 反 ⇒ 合法时也报错（按钮全废）或仍静默落到 #0（本 bug 复原） |
| B-2 | 探针取值 | `iget v1, v0, Airport;->provinceID:I`（**v0=机场**） | 误用 v2/v3 ⇒ 打出别的数（机场 id 错位），判读误导 |
| B-3 | 显示 | 无效 ⇒ `"未选中机场"` | 保留钳位 ⇒ 继续冒充 #0 状态（本 bug 复原） |
| B-4 | Toast 守卫 | `if-eqz v2, :nosel2`（menuManager 为空则跳过） | 去掉守卫 ⇒ 面板未初始化时空指针风险 |

## 5. 寄存器分配表（实测）

| 方法 | `.registers` | 现有画像 | 本次使用 | 依据 |
|---|---|---|---|---|
| `AirDbgLog.p0Air` | **10**（不动） | 仅 v0（tag 串）/v1（const 串）/v2（值）/v3（aircraft Map，跨 it~at） | **v0/v1/v2** 复用 | 插入点在最后一个 `e5i` 之后、`return-void` 之前 ⇒ v0/v1/v2 全死 |
| `BtnMission.actionElement` | **11**（不动） | v0=机场列表/机场对象、v1=索引/临时、v2=size/临时、… | **v1/v2** 复用 | [72-92] 区间 v1 刚用完即死、v2 为 size 用完即死；`：nosel` 块独立、只用 v1/v2 |
| `BtnMission.getTextToDraw` | **8**（不动） | v0/v1=文本、v2=列表/机场、v3=索引、v4=size | 仅改标签/删两条 `const/4` | 不新增寄存器 |

⇒ **不提高任何方法的 `.registers`**。

## 6. 失败模式 / 回滚点

| 风险 | 处置 |
|---|---|
| 锚点命中≠1（例如换树/已改过） | 脚本**拒绝写入**并打印实际命中数 |
| 末尾块插入位置错（插到别的 `.end method`） | 锚点 B-4/B-5 含方法尾部特征行 + 断言=1；汇编失败即拒绝出包 |
| 汇编失败 / `result=false` | 校验 `RunSmali` 输出的 `result=true`，否则不出包 |
| 装机后异常 | 重装 r5c046n（`build_apk/dbg_signed77_v119_r5c046n.apk`） |

## 7. 验收标准（可证伪）

| # | 操作 | 通过 | 不通过 |
|---|---|---|---|
| 1 | 打开空军面板、**不点机场**，按任一任务按钮 | 弹 Toast**「请先选择机场」**；日志出现 `afp:noSel a=1`；**游戏状态无变化**（机场 mode/开关不动、`afp:press` 不出现） | 仍作用于第 0 个机场（无 toast、无 `afp:noSel`） |
| 2 | 不点机场时看按钮文本 | 显示 **「未选中机场」** | 仍显示第 0 个机场的「自动打击：开/关」 |
| 3 | **点选**某机场后按按钮 | 日志出现 `afp:press ap=<该机场省号>`；该机场状态按预期变化 | 省号与所点机场不符 ⇒ 锚点/寄存器错 |
| 4 | 机场 dump 可读开关 | 新键 ` strike=` 出现，且**逐一等于**该机场面板显示的开关状态（关＝1、开＝0） | 恒 0/恒 1/不出现 |
| 5 | 回归 | `check_execaiassign_gate.py` 仍 **0 FAIL**；结构门禁净 0；`afp:st`/`nA2m` 旧键仍在 | 任一破坏 ⇒ 回滚 |

## 8. 门禁与负样本

| 门禁 | 判据 | 负样本（r5c046n） | 正样本（r5c046o） |
|---|---|---|---|
| **㊲ `check_r5c046o_probe.py`（新增）** | ①`AirDbgLog.smali` 含 `" strike="` **且**该 dump 内有 `Airport;->autoStrikeOff:Z`；②`BtnMission.smali` 含 `"请先选择机场"`＋`"afp:noSel"`；③含 `"未选中机场"`；④含 `"afp:press ap="` | **4 FAIL** | **0 FAIL** |
| ㊱（既有） | 玩家门形态（本批不应触碰） | 2 FAIL | 0 FAIL |
| 结构门禁（`verify_r5c046n.py` 同款） | 越界/p 区/move-result/尾部标签 | — | 净 0 |
| 汇编 | `RunSmali` 输出含 `result=true` | — | ✅ |

## 9. 变更清单摘要

| 文件 | 项 | 内容 |
|---|---|---|
| `AirDbgLog.smali` | A-1 | `p0Air` 追加 ` strike=` 字段（5 行） |
| `InGame_AirForceOptions$BtnMission.smali` | B-1 | `actionElement` 钳位 → `:nosel`（删 2 条 `const/4`，改 2 个目标标签） |
| 同上 | B-2 | 机场解析后补 `afp:press ap=` 探针（3 行） |
| 同上 | B-3 | `getTextToDraw` 钳位 → `:noselTxt`（删 2 条 `const/4`） |
| 同上 | B-4 | `actionElement` 末尾追加 `:nosel` 块（Toast+探针+return，12 行） |
| 同上 | B-5 | `getTextToDraw` 末尾追加 `:noselTxt` 块（2 行） |
| 不改 | — | `AirForceManager`/`AirMission`/`Airport`、任何 `.registers`、存档、开关与派发语义、其它按钮类 |

## 10. 【设计逻辑】摘要（交付时用）
1. **定位**：r5c046o＝观测与 UI 纠错批；不改任何派发/开关逻辑。
2. **目标**：让"开关状态"与"按钮作用于哪个机场"**可见**；消除"未选中时静默落到第 0 个机场"的误导。
3. **判定顺序**：按钮按下 → 读 `iActiveID` → 无效 ⇒ 提示并中止；有效 ⇒ 取机场 → 打 `afp:press` → 执行原逻辑。
4. **参数**：无新增阈值；探针键 ` strike=` / `afp:noSel` / `afp:press ap=`。
5. **生命周期**：无新增状态；dump 字段随每次 `p0Air` 输出。
6. **不变量**：合法选中时行为与 r5c046n 逐字相同；不提高 `.registers`；不动派发链。
7. **可感知**：未选中时按钮会告诉你"请先选择机场"且文本显示"未选中机场"。
8. **失败与回退**：见 §6；回滚＝重装 r5c046n。
9. **验收**：见 §7 五条。
10. **变更清单**：见 §9。
11. **风险与待办**：其它按钮类的同款钳位（登记）、type3/4 支（登记）、C（全局开关）、D（攻击机纳入自动派发，下批）。