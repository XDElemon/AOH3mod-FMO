# -*- coding: utf-8 -*-
# r5c046f_docs.py —— 独立审核发现的 3 处归零钳位修正 + 门禁㉚：计划书 §66 + INCR §16
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

PLAN_SEC = r'''

---

## 66. 【第 6 次修正】3 处"归零钳位"方向反（独立审核发现）（r5c046f）（''' + TS + r'''）
### 66.1 审核结论（采纳）
独立审核在 r5c046e 的 dex 上逐字节复核，确认：
- 我报的 F10/F11a/F11b/F12 **都改对了**；上轮报的 5 项（FRQ 上限、FRQ 阶梯、P 阶梯、P 基准、a1bDivCmp）也**全部修好**；
- 但**仍有 3 处同族错误**：把 `if-ltz` 误当 ">=0 才跳"，于是"负值归零"写成了"非负归零"。
### 66.2 三处（本批修，F13/F14/F15）
| # | 位置 | 错误 | 正确 | 后果 |
|---|---|---|---|---|
| F13 | `a1FrqFor`（difficultyID 归零） | `if-ltz v0, :ff_lo` | `if-gez v0, :ff_lo` | `difficultyID>=0`（任何实际对局）恒被归零 ⇒ **FRQ≡1** |
| F14 | `a1ProbFor`（difficultyID 归零） | `if-ltz v2, :pf_lo` | `if-gez v2, :pf_lo` | 同上 ⇒ **MULT≡0.5、P≡0.165（永远 VeryEasy 档）** |
| F15 | `a1Scan`（score 归零） | `if-ltz v8, :p2s_pos` | `if-gez v8, :p2s_pos` | `score` 几乎恒 ≥0 ⇒ 恒被归零 ⇒ 同档全部同分 ⇒ 退化成纯随机（"讲价值"失效） |
### 66.3 判读签名（抓样时的特征）
- `nP2dif` 显示真实难度（如 5），但行为是 VeryEasy 档 ⇒ 坐实 F13/F14；
- `nP2s score` 恒打印 0 ⇒ 坐实 F15。
### 66.4 新增门禁㉚ `toolchain/act/check_zeroclamp.py`
- 判据：紧接 `if-ltz vR, :L` 之后出现 `const/4 vR, 0x0` ⇒ 该形态表示"把**非负**归零" ⇒ **FAIL**；`if-gez` 同形态 ⇒ OK。
- **已做负样本验证**：坏文件（r5c046e）精确报 **3 条**（对应 F13/F14/F15）；修后（r5c046f）**0 条**。
### 66.5 产物
- dex `c01608935890d8ad9f047ba06adfc9dd`（`result=true`）｜apk `a7713d553e88d947377cfec717493d91`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`｜真悬空 `0`｜㉙ 35（存量）｜㉚ **0**
- 装机 `Success`；独立复核：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；基线已重置
### 66.6 认知教训（写入铁律）
- **`if-ltz` = "<0 才跳"、`if-gez` = ">=0 才跳"** —— 我在同一季里把这两个词义反复弄错；凡"归零/钳位"必用 ㉚ 自检。
- 本轮 15 处血案中，**有 6 处属于"归零/跳过"这类成对语义**（F13/F14/F15 + 早前 F3/F10/F12），已全部被专项门禁覆盖。
- "逐条已核过"不等于核过：**必须用能与否证对齐的形态判据**（㉙/㉚ 这类模式门禁），而不是靠复读时的语义推测。
'''

INCR_ADD = r'''
## 16. 第 6 次修正（r5c046e → r5c046f）：归零钳位 3 处
- 独立审核确认：F10/F11/F12 与上轮 5 项全修好；**新发现 3 处同族错误**（`if-ltz` 误当 ">=0 跳"）。
- F13 `a1FrqFor` / F14 `a1ProbFor` / F15 `a1Scan score`：`if-ltz → if-gez`（各 1 个助词，Δinvoke=0、无寄存器/标签变动）。
- 后果：难度恒被归零 ⇒ FRQ≡1、P≡0.165（永远 VE 档）；score 恒 0 ⇒ 排序退化为随机。
- 新增门禁㉚ `check_zeroclamp.py`（紧接 `if-ltz vR,:L` 后 `const/4 vR,0x0` ⇒ FAIL）；负样本=r5c046e 精确 3 条，正样本=r5c046f 0 条。
- 产物：dex `c01608935890d8ad9f047ba06adfc9dd`｜apk `a7713d553e88d947377cfec717493d91`｜装机 Success＋独立复核 ✔｜基线已重置。
- 铁律：**凡"归零/钳位"必过㉚**；`if-ltz`=<0 跳、`if-gez`=>=0 跳（写进语义表）。
'''

def main():
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK]', PLAN, os.path.getsize(PLAN),'B'); print('[OK]', INCR, os.path.getsize(INCR),'B')

if __name__=='__main__':
    main()