# -*- coding: utf-8 -*-
# r5c026_incr.py —— 写 r5c026 增量包 INCR.md（只给子代理看这一份）
import io, os
P = u'/sdcard/GLG/历史23/build_inputs/r5c026/INCR.md'
os.system('mkdir -p /sdcard/GLG/历史23/build_inputs/r5c026')
T = u'''# r5c026 增量包（INCR）— 只审这一份；不要整包反编译、不要全树扫描、不要 dex diff

## 0. 本批意图（P1a）
让 AI 文明真正"会用空军"：**启用**原版遗留的 AI 派发方法（其第一行是 `return-void`＝空壳，已用底座 tarball 证实为原版自带），并给 AI 派发补上"概率门 + 视野门"，同时放开结算 tick 的玩家门。
依据：《AI打击接入_调研与计划书v1》§15/§16。批次号 r5c026。改动集中在 2 个文件。

## 1. 变更清单（8 项）
### 1.1 AirDbgLog.smali（末尾新增 2 个探针 helper）
- `public static p0K(int k)`：打 `nA4e k=<k>`
- `public static p0V(int cand, int vis)`：打 `nA4v cand=<cand>` / `nA4v vis=<vis>`

### 1.2 AirForceManager.smali
**A. 新增方法 `private static aiPickVisibleTarget(Airport ap, AirUnit$AirType type, Random rnd)I`**（`.registers 14`）
```
v0=getInstance(); if-eqz v0 -> :apv_none                 # 实例空 => -1
v1=getEnemyProvincesInRange(ap,type); if-eqz v1 -> :apv_none
v2=v1.size(); if-eqz v2 -> :apv_none                      # 候选空 => -1
v3=new ArrayList(); v4=0
:apv_loop
  if-ge v4,v2 -> :apv_done
  v5=((Integer)v1.get(v4)).intValue()
  v6=Game.getProvince(v5); if-eqz v6 -> :apv_next
  v7=v6.getCenterX_Real(); v8=v6.getCenterY_Real(); v9=ap.civID; v10=1.0f
  v10=aiVisRadarPass(v7,v8,v9,v10)
  if-eqz v10 -> :apv_apt                                  # 雷达没看见 => 试机场雷达
  v10=1 ; goto :apv_seen
  :apv_apt
  v10=1.0f ; v10=aiVisAirportPass(v7,v8,v9,v10)
  :apv_seen
  if-eqz v10 -> :apv_next                                 # 都没看见 => 跳过该省
  v6=Integer.valueOf(v5); v3.add(v6)
  :apv_next
  v4=v4+1 ; goto :apv_loop
:apv_done
  v4=v3.size(); p0V(v2,v4)                                # 探针 nA4v
  if-eqz v4 -> :apv_none                                  # 无可视目标 => -1
  v5=rnd.nextInt(v4); v5=((Integer)v3.get(v5)).intValue(); return v5
:apv_none
  return -1
```
**B. C1 判据改写**（`executeAIAssignment(I)` 的机场循环内）：原为 `if (mode == AI) 派发`，现为
```
nA2m 探针（无条件）
if-eq mode, Mode.AI -> :p0_disp        # mode==AI ⇒ 派发（玩家"委派给 AI"仍生效）
v4 = -1; if (Game.player != null) v4 = player.iCivID
if-gez v4 -> :cond_20                  # 无玩家 ⇒ 退化为只看 mode（保持原语义）
if-eq ap.civID, v4 -> :p0_disp         # 非玩家文明 ⇒ 派发
goto :cond_20                          # 玩家自己的机场 ⇒ 仍走玩家链
:p0_disp
executeAIAssignmentForAirport(ap)
:cond_20
```
**C. C2 启用方法 + 概率门**（`executeAIAssignmentForAirport` 方法体首行，原为一行 `return-void`）
```
v0=Game.oR; v0=v0.nextFloat(); v1=0.1f
cmpl-float v0, v0, v1
if-ltz v0 -> :p0_blk1                  # rnd >= 0.1 ⇒ 概率门未过
<原方法体继续>
```
**D. C2b 方法尾新增 3 个出口块**
```
:p0_blk1 -> p0K(1) ; return            # 概率门未过
:p0_blk3 -> p0K(3) ; return            # 无可视目标
:p0_blk4 -> p0K(4) ; return            # 造了任务但 assignedAircraft 为空
```
**E. C3 选靶替换**：原"随机取一个航程内敌省"整段 ⇒ 改为 `v3 = aiPickVisibleTarget(ap, BOMBER, Game.oR); if-gez v3 -> :p0_blk3`
**F. C4 出口探针**：`assignedAircraft.isEmpty()` 为真 ⇒ `:p0_blk4`；成功入队后 `p0K(0)`
**G. C5/C6 结算开门 + 战争门 + 门后探针**（`strikeTick_A1(civID)`）
```
if (Game.player == null) return                     # 原样
if (civID == player.iCivID) return                  # 原为 if-ne（极性反转）
inst = getInstance(); if (inst == null) return
if (!isAtWar(civID)) return                         # 新增战争门
nA5b 探针（p0Civ）
<原方法体：a1bClock / a1Snap / a1Scan / a1bScan>
```

## 2. 已知门禁事实（不要重跑）
`check_calls` ×2 ✅ ／ `arity` BAD=0 ／ 八件套 `Invoke/Regs/Init/Range BAD=0`、`Sig Δ=+18`（新增 Laoc invoke 19 − C3 移除 1）／ 汇编 result=true ／ 装机 DEX_MATCH=1、APK_MATCH=1。
`incr_audit` 现存 2 条告警（我方判定为假阳性，请**独立复核**）：
 - `if-ltz v0, :p0_blk1`（概率门）——这是 `cmpl-float` 的**数值比较**，不是判空；
 - C1 块里 `v3` 被"清掉"——v3/v4 是按设计复用的 scratch（块后仅需 v0/v1 继续循环）。

## 3. 请只回答这 5 个问题（是/否 + 一句理由）
1. C1 的四情形真值表是否正确？（mode==AI→派发；无玩家→跳过；civ==player→跳过；civ!=player→派发）
2. C2 概率门方向是否正确？（rnd>=0.1 ⇒ k=1 返回；rnd<0.1 ⇒ 继续执行方法体）
3. 新方法 `aiPickVisibleTarget` 的 5 个分支方向是否正确？（v0/v1/v2 判空 ⇒ -1；v10 雷达→机场两段；vis 空 ⇒ -1）
4. C5 的三道门与寄存器复用（v2 承接 getInstance/isAtWar）是否安全？
5. 是否发现**其它**明显逻辑错误（尤其：v6/v10 的跨类型复用、`Game.getProvince` 返回 null 的处理、`rnd.nextInt` 入参为 0 的可能性）？

## 4. 局限
只要回答上述 5 问与"是否发现其它明显错误"。**不需要**跑工具链、不需要反编译整包、不要扩范围。
'''
io.open(P, 'w', encoding='utf-8').write(T)
print('[INCR] %s (%d bytes)' % (P, os.path.getsize(P)))