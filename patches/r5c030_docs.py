# -*- coding: utf-8 -*-
# r5c030_docs.py —— 落盘：r5c029 抓样判读（否掉"空壳 key"假设）+ r5c030 设计与预测
import io, os, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
RULES = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

S18 = u'''

---

## 18. r5c029 抓样判读 ⇒ "空壳 key"假设被否 + r5c030 二分（诊断批）【2026-09-24】

### 18.1 r5c029 抓样（`r6s5/cur_r5c029.txt`，6.05MB，90 次调用）
| 探针 | 结果 | 说明 |
|---|---|---|
| `nA2s` | 90 次 | `executeAIAssignment` 入口正常（civ=73、pl=226、apts=4） |
| `nA2t` | **89/90 次为 `a=4`** | **`getAirportsForCiv` 返回的 list 尺寸 = 4**（非空！） |
| `nA2u` | **0** | 循环体入口省号 —— 一次都没打 |
| `nA2m` | 0 | 循环体内机场快照 |
| `nA4d/nA4v/nA4e/nA4f` | 0 | 派发链后续全部没到 |
| `nA5t` | 90（civ=73、apts=4） | `strikeTick_A1` 正常（结算门开着） |
| `nA3b` | 360 = 90 回合 × 4 机场 | `update(I)` 的两趟 `iterator()` 遍历（updateBuild/updateDeployedCount）**都成功** |
| `nA5b` | 56 | 结算体被 AI 文明调用 |

**关键结论（否掉子代理的静态假设）**：
1. 列表**不是空壳**（size=4），所以"map 有 key、list 为空 ⇒ 循环体不执行"**不成立**；
2. `update(I)` 用 `iterator()` 遍历**同一个 list** 并成功调用 `updateBuild()`/`updateDeployedCount()`（`nA3b` 打了 360 次，`Airport.updateBuild` 内部解引用机场）⇒ **元素是合法 Airport 对象**（否则 `check-cast`/`updateBuild` 早就炸了）；
3. 日志通道无过滤、无去重（`dKey` 只做 500ms flush 节流，且 flush 判据 `if-ltz` 本身是反的——缓冲区仍会累积，不影响"是否记录"）；
4. 日志顺序显示：`nA2s → nA2t → 直接 nA5t`（`nA5t` 在 `strikeTick_A1`）⇒ **`executeAIAssignment` 在 nA2t 之后没有产生任何输出**。

⇒ 于是出现与代码矛盾的实测：**代码里 `if-ge v1,v2` 在 v1=0/v2=4 时必然进循环体**。可能是"方法被异常提前打断"或"运行的不是这段代码"。r5c030 就是为了区分这两者。

### 18.2 r5c030（诊断批，已装机，dex `cbd8c225…`）
探针（全部无分支、都插在 `move-result` 之后 / 条件跳转之前；只动 `executeAIAssignment(I)V`，外加 `AirDbgLog.p0Exc`）：

| 键 | 位置 | 作用 |
|---|---|---|
| `nA2v` | 方法头 | build stamp(30)：证明跑的是本批 dex |
| `nA2w` | `isEmpty()` 之后 | isEmpty 的实际结果（0/1） |
| `nA2x` | 循环内 `size()` 之后 | 循环判据里的 size 实际值 |
| `nA2y` | `if-ge` 之前 | 循环索引实际值 |
| `nA2b` | `check-cast` 之后（解引用之前） | 循环体**是否真的进了** |
| `nA2r` | `:cond_23` 的 `return-void` 之前 | **正常返回**标记 |
| `nA2e` | `.catchall` 处理器 | 异常被捕获时打印**异常类名**（`AirDbgLog.p0Exc(Throwable,String)`） |

**可证伪预测**：
- 若 `nA2b`+`nA2e` 都无、但 `nA2r` 有 ⇒ 方法正常返回却没进循环 ⇒ 只有 isEmpty=true 能解释 ⇒ 看 `nA2w`；
- 若 `nA2b` 有、`nA2u` 无 ⇒ 循环体里**解引用机场**那一步炸了（异常被 `nA2e` 抓到并给出类名）；
- 若 `nA2e` 给出异常类名 ⇒ 直接定位（NPE / ClassCast / IncompatibleClassChange / …）；
- 若 `nA2v` 的 `a=30` 不出现 ⇒ 跑的不是本批 dex（安装/进程问题）。

**注意**：本批带 `catchall`，若确有异常，行为会从"回合被异常中断"变为"吞掉并继续"——这是**诊断期的临时改动**，定位后必须按结论改成正常处理。

### 18.3 本批顺带修到的两个工具链坑（已修，见铁律 ㉖）
1. `assemble.sh` 只看 `java` 退出码 ⇒ **RunSmali 失败时也返回 0**，会静默沿用旧 dex（本批真踩：`const/4 v4, 0x1e` 越界 ⇒ `result=false`，而脚本仍报"汇编完成"）。已加 `result=true` 硬校验。
2. `const/4` 只能承载 -8..7（nibble）⇒ 探针里的常量值要用 `const/16`。
'''

RULES_ADD = u'''

## ㉖ 汇编器的两个静默坑（2026-09-24 新增）
1. **`RunSmali` 失败仍返回 0**：`assemble.sh` 原来只校验进程退出码 ⇒ `result=false` 时**不报错**，后续 build 会拿**上一次的旧 dex**继续跑（"装了个寂寞"）。现已在 `assemble.sh` 里加：输出必须含 `result=true`，否则 `die`。
   - 症状识别：`assemble.sh` 显示"汇编完成"，但 dex md5 与上一次完全相同。
2. **`const/4` 只能放 -8..7**：探针/新代码里写 `const/4 vX, 0x1e` 会报 `30 cannot fit into a nibble`；常量值一律用 `const/16`。
3. 教训加强版（针对 ㉓）：**"门禁通过"只在门禁本身可信时成立**——本批是"汇编成功"这个最基本的环节在骗人。

## ㉗ 判"探针没打出来"前，先排除这四件事（2026-09-24 新增）
按顺序排除，能省掉整轮构建：
1. **类/方法是否真的在跑**（ps 的 ETIME 对比 apk 安装时间；再加 build stamp 探针）；
2. **日志函数是否过滤/节流**（读 `dKey`/`e5i` 实现；`dKey` 只做 flush 节流，不丢内容）；
3. **探针是否落在条件分支体内**（铁律⑧）；
4. **同一份 list 在别处是否被成功遍历**（若 `update(I)` 的 `iterator()` 能跑，说明元素合法 ⇒ 排除"空壳/null 元素"）。
'''

HAND_ADD = u'''

---

### 追加登记：r5c030（P1a 诊断二分批）【2026-09-24】
- 内容：`executeAIAssignment(I)V` 加 7 个探针（`nA2v/w/x/y/b/r`+`.catchall`→`nA2e`）+ `AirDbgLog.p0Exc`；**带 catchall 属诊断期临时行为**。
- 产物：dex `cbd8c225…` / apk `22727f39…`（`build_apk/dbg_signed77_v119_r5c030.apk`）；八件套 `Sig Δ=+9`（＝新增 invoke），arity BAD=0。
- **装机：✅ DEX MATCH=1；日志与基线已重置。**
- 前置事实：r5c029 抓样显示 `nA2t a=4`（列表**非空**）而 `nA2u/nA2m=0` ⇒ 子代理"空壳 key"假设被否（见计划书 §18.1）。
- 下一步：跑 1 回合 → 抓样判读 `nA2v/nA2w/nA2x/nA2y/nA2b/nA2r/nA2e`（预测见 §18.2）。
'''


def append_once(path, marker, text):
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('SKIP %s' % os.path.basename(path)); return
    io.open(path, 'a', encoding='utf-8').write(text)
    print('OK   %s' % os.path.basename(path))


append_once(PLAN, '## 18. r5c029 抓样判读', S18)
append_once(RULES, '## ㉖ 汇编器的两个静默坑', RULES_ADD)
append_once(HAND, 'r5c030（P1a 诊断二分批）', HAND_ADD)
print('DONE', time.strftime('%m-%d %H:%M'))