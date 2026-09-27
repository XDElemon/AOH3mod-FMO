# 调研（第一轮·全量）：全面检查设备现装版（电脑端 Phase A）并定位闪退
> 时点 2026-09-26 21:03 ｜ 设备现装：apk `e0de5c46…` / dex `8629cee0…`（Earth3=18510 ✔ 资产正常）｜ 源脚本 `r5c046x_phaseA.py`（PC `E:\WorkGroup\glg\work\revs\…`）

## 一、闪退现场（logcat crash buffer 原文，已存 `logcat_verifyerror_20260927.log`）
```
FATAL EXCEPTION: GLThread
java.lang.VerifyError: Verifier rejected class aoc.kingdoms.lukasz.map.battles.AirForceManager:
  int AirForceManager.pickStrikeTargetP(Airport, AirUnit$AirType) failed to verify:
  [0x57] register v3 has type Integer but expected Float
    at AA_Game.render(AA_Game.java:236) → GLSurfaceView$GLThread…
```
⇒ ART 校验器在**类首次使用**即否掉整个 `AirForceManager` ⇒ 一进游戏必崩（非资产/签名问题）。

## 二、装机版相对我方 r5c046w 的**全部**改动（方法级归一化比对）
| 项 | 内容 |
|---|---|
| 新增方法 5 个 | `updateOffensivesP(I)V`、`tryStrikeForAirportP(Airport;Random;AirType;)V`、`pickStrikeTargetP(Airport;AirType;)I`、`hasStrikeInFlightP(I;AirType;)Z`、`dbgStrikeP(II;String;)V` |
| 插入 1 | `update(civ)` 内 `updatePatrols` 之后 → `updateOffensivesP(p1)` ✔（位置/签名/调用 kind 全对） |
| 插入 1 | `executeAIAssignmentForAirport` 战时分支 → 玩家短路（E2） |
| 空标签 1 | `executeAIAssignment(I)` 多 1 个空标签（无害） |
| 消失 0 | — |
| 其它类 | `BtnMission` 与我方 w 版**语义等同**（归一化 0 行差，仅格式差异）⇒ 我方的 t/u/v/w 修复**都在** ✔ |
⇒ **不是"改了一堆"**：只动了 AFM 的 5 个新方法与 2 处插入。

## 三、逐方法审计（以**装机 dex**为准，非脚本）
| 方法 | 结论 |
|---|---|
| `pickStrikeTargetP` | **★Ver进Error 源**：`const/high16 v3,0x7f800000`（**int 常量**）与回边 `move v3, v4`（float）在循环头 `:cond_19` 汇合 ⇒ 合并类型判为 Integer ⇒ `cmpg-float …,v3`（要 float）失败；**同循环 v4** 也有 `Integer对象↔float` 汇合 ⇒ 修好 v3 后下一个报错就是它 |
| `tryStrikeForAirportP` | **关2 反向**：`if-eqz v3, :cond_51` ⇒ `autoStrikeOff==0`（＝开）反而跳过 ⇒ 与 `updateOffensivesP` 的 `if-nez` 互相抵消 ⇒ **永不派发**；关3/关6 经复核**方向正确**（关3：`cmpg-float`+`if-ltz`⇒ rnd<0.2 跳过；关6：`if-ltz v0`⇒ 无靶(−1)跳过 ✔） |
| `updateOffensivesP` | 总闸 `if-nez` ✔；但循环头 `v0` 存在 `List对象/int/AirType对象` **三方汇合**（靠"合并后未被读"侥幸过校验，脆弱） |
| `hasStrikeInFlightP` | 逻辑正确；但 `v4` 先 int 后对象、`v5` 分支两侧类型不同（同样属"侥幸型"写法） |
| `dbgStrikeP` | ✔（`AirDbgLog.e5ii(String,II)V` 确实存在） |
| E2（玩家短路） | 跳向**猜出来的既有标签 `:cond_ad`**，且 `v5` 在汇合处 `Player对象/int` ⇒ 结构脆弱、标签猜错会静默改老线行为 |
