# -*- coding: utf-8 -*-
# r5c046b_docs.py —— 崩溃修复落盘：计划书 §63 + INCR §13 + 设计逻辑补丁说明
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
DOC=os.path.join(R6S5,'设计逻辑_r5c046.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

PLAN_SEC = r'''

---

## 63. 【崩溃修复】r5c046b：ART VerifyError（寄存器类型冲突）（''' + TS + r'''）
### 63.1 症状
装机后一进游戏即闪退（两次不同 PID 同样崩）：
```
java.lang.VerifyError: Verifier rejected class ...AirForceManager:
  void ...a1Scan(int) failed to verify: [0x83] register v3 has type Conflict
  but expected Precise Reference: AirUnit$AirType
```
### 63.2 根因（症状→原因）
- `a1Scan` 的**机场循环体内**，v3 原本是 `AirUnit$AirType`（引用，用于 `getProvincesInRange`）；
  本批的打分代码把 **score（float→int）写进了 v3**。
- 循环**回边**回到下一圈机场时，v3 的两种类型在合并点冲突 ⇒ ART verifier 拒绝整个类 ⇒ 类加载即崩。
- 同类隐患：v7（`a1Known` 数组引用）被我塞了常量 `0x64`（ART 实际只报了 v3）。
### 63.3 修法（r5c046b）
- **不用**"提升 `.registers`"——本工具链 **RunSmali 硬限 16 寄存器**（v0..v15），语句 `Invalid register: v16`。
- 改为**借用方法内已死的 int 寄存器**：`v8`（只被赋 `TURN_ID`、之后**从未被读**）存 score；`v14` 存常量/计数；
  `v5`（每轮先赋值后读）存 Random 与探针字符串；`tier` 仍用 v13；`/100` 改 `div-int/lit8 v14, v14, 0x64`（省一个寄存器）。
- **结果**：`a1Scan` 内 v3 只作对象、v7 只作数组，无数值写。
### 63.4 产物与核验
- 补丁：`r5c046a_fix.py`（首修，误用提寄存器，汇编被拒）→ `r5c046b_fix.py`（终修）
- dex：`/tmp/r5c046b_classes.dex` = **17d7dbe0328f43c9aa9fbd7735a24c4b**（7357228 B，`result=true`）
- apk：`build_apk/dbg_signed77_v119_r5c046b.apk` = **58eba394daeb3bd9e615320eb78288c8**
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`｜真悬空 `0`｜**㉙ 新增：坏文件独有 v3/v7、新文件零新增**
- 装机：Success；**独立复核**：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；抓样基线已重置
### 63.5 新增门禁㉙（`toolchain/act/check_regtype.py`）
- 判据：同一方法内，某寄存器**先被当对象写、后（跨标签合并点）被数值写** ⇒ WARN（ART VerifyError 高危）。
- **用法是"对比式"**：同时跑「旧文件/坏文件」与「新文件」，只把**新增**的报错当失败（存量 35 处为历史无害模式）。
- **已做负样本验证**：坏文件独有 `a1Scan v3`、`a1Scan v7` 两条，新文件零新增 ⇒ 门禁确实能抓到本次这类错。
### 63.6 新铁律（下批起强制）
1. **16 寄存器硬限**：RunSmali 不允许 `.registers > 16`；选最优/评分等暂存**要么走静态，要么借用"方法内已死的 int 寄存器"**。
2. **禁止复用"引用型"寄存器做数值**：尤其**循环体内**被用作对象（`AirType`/数组/`String`）的寄存器，绝不能再写 int/float（回边合并必炸）。
3. 新增分支/寄存器前，先跑 **㉙ 对比式**（旧 vs 新），再做 arity/㉘/方向/悬空，然后才装机。
'''

DOC_ADD = r'''

---

## 附二：r5c046b 补丁说明（崩溃修复，''' + TS + r'''）
- **设计逻辑不变**（§1–§11 全部照旧）；本补丁**只改实现**：把打分/随机/探针的临时量改放到"方法内已死的 int 寄存器"，
  并停止复用引用型寄存器（v3=AirType、v7=数组）。
- **新增两条不变量**（并入 §6）：
  1. **工具链硬限 16 寄存器**（`RunSmali` 拒绝 v16+）⇒ 暂存必须走静态字段或借用已死 int 寄存器；
  2. **循环体内被当作对象使用的寄存器，禁止再写数值**（回边类型合并会触发 ART `VerifyError`）。
- 产物：dex `17d7dbe0…` / apk `58eba394…`（已装机、独立复核通过）。
'''

INCR_ADD = r'''
## 13. 崩溃修复（r5c046 → r5c046b）
- 症状：装机后进游戏即闪退；`VerifyError: a1Scan(int): [0x83] register v3 has type Conflict but expected AirUnit$AirType`。
- 根因：`a1Scan` 机场循环体内 v3 既是 `AirType`（引用）又被本批当 int 写 ⇒ **循环回边类型合并冲突**；同类隐患 v7（数组）。
- 修法：**不提升寄存器**（RunSmali 硬限 16）⇒ 借用方法内已死 int 寄存器：score→v8、常量/计数→v14、Random/探针串→v5；`/100` 改 `div-int/lit8`。
- 产物：dex `17d7dbe0328f43c9aa9fbd7735a24c4b`｜apk `58eba394daeb3bd9e615320eb78288c8`｜装机 Success＋独立复核 ✔｜基线已重置。
- 新增门禁㉙ `check_regtype.py`（对比式，已负样本验证：坏文件独有 a1Scan v3/v7）。
- 新铁律：①16 寄存器硬限（暂存走静态或已死 int 寄存器）②禁止复用引用型寄存器做数值（尤其循环体内）。
- 文件：`r5c046a_fix.py`（首修，被汇编拒绝）/`r5c046b_fix.py`（终修）；计划书 §63；设计逻辑「附二」。
'''

def main():
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(DOC,'a',encoding='utf-8').write(DOC_ADD)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK]', PLAN, os.path.getsize(PLAN),'B')
    print('[OK]', DOC, os.path.getsize(DOC),'B')
    print('[OK]', INCR, os.path.getsize(INCR),'B')

if __name__=='__main__':
    main()