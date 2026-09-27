# -*- coding: utf-8 -*-
# r5c046u_survey_docs.py —— 调研：三观察定位（谁在飞/为何只轰炸机/为何越迷雾）+ 迷雾硬证 + 待裁决
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DOC=os.path.join(R6S5,'调研_r5c046u_三观察与迷雾丢失_v1全量.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

SURVEY = '''# 调研（第一轮·全量）：r 版"谁在飞 / 为何只轰炸机 / 为何越迷雾"
> 时点 ''' + TS + ''' ｜ 设备＝r（`95b8bc04…`／`dfd4e7cd…`）｜ 样本＝r 场次 `r5c046r_s2.txt`（11.2 MB，无新日志）
> 用户观察：①没点自动巡逻/打击，飞机也能起飞 ②战时只有轰炸机起飞 ③随机（越迷雾）打省份；怀疑"全接上 AI 逻辑"

## 1. 先给 r 场次的硬数据（用于对齐"你看到的现象发生在哪条链"）
| 观测 | 值 | 说明 |
|---|---|---|
| `nA5t`（智能线入口） | 559 | 每文明每回合都进了入口 |
| **`nA5b`（智能线体）** | **0** | 体**一次都没跑** ⇒ 因为体门要求 `isAtWar(civ)` ⇒ **本场没有战事** |
| `nP2dif / nP2ap / nP2pick / nP2s / nP2set / nP2mil / nP2cap / nP2frq` | **全 0** | 智能轰炸线**零活动** |
| `nA1 ap=` / `nA1b ap=` | **0 / 0** | 智能线派发日志为零 |
| `nA4d`（老线战时入口） | **0** | 老线战时分支未触发（同样因为无战事） |
| `nA2L`（老线战时骰） | **0** | 同上 |
| `nA2m` 机场 dump | 7389 | ` strike=` 1367 条**全 1（关）**；`mode= a=` **全 1（OFFENSIVE）** |
| `nDR_DET` / `inDE_E`（侦测/自动拦截） | **0 / 0** | 本场也没有自动拦截发生 |
⇒ **本场次什么派发都没发生**。你观察到的"飞机起飞"不在本次采样窗口内（很可能是：**存档里已在飞的任务**、**更早场次**，或**你没留意的另一条链**）。

## 2. 观察①"没点开关飞机也能起飞"——三条**不问开关**的合法路径
| # | 路径 | 是否需要开关 | 证据 |
|---|---|---|---|
| 1 | **自动拦截**：侦测到敌机 ⇒ `PlayerFogOfWar` 记 `airDetSeen` 并调 `AirForceManager.dispatchAutoIntercept(mission)` ⇒ **你的截击机自动升空** | **不需要** | `PlayerFogOfWar` 里 `airDetSeen.add(...)` 紧随 `dispatchAutoIntercept(...)`；本工程从未改这两处 |
| 2 | **手动出击**（点飞机制造任务） | 不需要 | `createMissionForClick` 链 |
| 3 | **存档里已在飞的任务**（上一场创建的巡逻/轰炸仍在飞） | 不需要 | 任务存于 `activeMissions` 并随存档保留 |
⇒ 而**玩家自己的"自动打击"派发**是**必须要开关**的（见 §5 的门）。所以"没点开关也起飞"≠自动打击生效。

## 3. 观察②"战时只有轰炸机起飞"——两条原因，都属**设计现状**
1. **玩家（老线）**：`executeAIAssignmentForAirport` 战时只建 **BOMBER** 任务（`aiPickVisibleTarget` 被传的是 BOMBER 型），**和平**才建 FIGHTER/巡逻 ⇒ 老线**本来就不会派攻击机**。
2. **AI（智能线）**：轰炸线 `a1Scan` 与攻击机线 `a1bScan` 都有，但攻击机线在**机场预筛**处要求"该机场有闲置 **ATTACKER** 师"⇒ 若文明没造攻击机 ⇒ **只有轰炸能起飞**。（这与我们登记的"AI 不造战斗机/截击机"同源。）

## 4. 观察③"随机（越迷雾）打省份"——**成立**，而且我找到硬证（我的锅）
两条线**都没有可见性要求**：
- **智能线（我们写的）**：r 版 `a1Scan` 逐字（`AirForceManager.smali` 940–985）：
```
invoke-virtual {v6}, Province;->getFogDrawArmy()Z      ← 读了"可见性"
move-result v13
invoke-static {v11}, AFM;->a1HasMil(I)Z ; move-result v13   ← ★ 立刻被覆盖（fog 值被丢弃）
... aput-byte a1Known[pid] = 6/4                        ← 无条件写（r5c046g 的 G1）
aget-byte v13, a1Known[pid] ; and-int/lit8 v13, v13, 0x4
if-eqz v13, :cond_150                                   ← 0x4 恒在 ⇒ 该门形同虚设
```
 `a1bPick` 同理（r5c046e 的 G2：两个分支都盖时间戳；F11 撤回了雾门）⇒ **候选只要求"航程内＋交战＋在飞<2"**。
- **老线（游戏自带）**：`aiPickVisibleTarget`（范围 2470–2591）内部只有 `rnd.nextInt(size)` —— **从候选列表里随机取**，自身**不看**雾/军情；调用方（`executeAIAssignmentForAirport`）的候选来自 `getProvincesInRange`/`getRandomBorderProvince` ⇒ 也**不含可见性过滤**。
⇒ 所以"随机 + 越迷雾"是**当前两条线的共同行为**：老线本来就随机；我们的智能线**丢了迷雾/记忆这道门**（为修"候选恒空"我做了 G1/G2 解绑 ⇒ 属**回归**，需重新按正确语义绑回）。

## 5. 顺带确认：玩家自动打击的门（你上次问的"线接好了吗"）
`AFM.executeAIAssignment(I)` 的机场级门（r 版逐字）：
```
mode == AI                                    ⇒ 派发（无视开关）
playerCiv < 0（观战）                          ⇒ 派发
airport.civID == 玩家 且 autoStrikeOff == 0    ⇒ 派发（开关"开"）
其余                                          ⇒ 跳过
```
⇒ **线是接好的**；玩家机场只要把开关打开就会派发（战时 BOMBER）。当前 ` strike=` 全 1（关）＋按钮极性写反 ⇒ 一直没能打开（见另行文档《r版按钮哑真因》）。

## 6. 待你裁决（这三件事定了我就开工）
1. **"迷雾"到底是谁的眼睛？**
 a) **玩家可见**（`getFogDrawArmy()==true`）⇒ AI 只打"你看得见"的省（与我们"看得见的出动"目标一致）；
 b) **AI 自己的记忆**（`a1Known`＋`a1Gsee` 时间戳：曾见过且在 N 回合内）；
 c) **两者取并**（可见 ∨ 近期记忆）。
2. **你看到的飞机是谁的？当时有没有开战？**（本场次无战事、零派发 ⇒ 需要一次"战时＋开关关"的实测样本来定案）
3. **要不要我先把"按钮 1 字极性"修掉**（独立小批，随时可打；不与迷雾批次耦合）？

## 7. 修复计划（待批）
| # | 内容 | 依赖 |
|---|---|---|
| **F1** | `BtnMission.actionElement`：`if-eqz v0, :cond_2c` → **`if-nez v0, :cond_2c`**（按钮真正生效） | 无（已完全验证） |
| **F4** | **迷雾重绑**：按第 1 项口径，把 a1Scan/a1bPick 的可见性/记忆门**正确**绑回（写记忆要条件化；a1bPick 雾分支恢复正确极性） | 需要迷雾口径 |
| F2/F3 | 可选：AI 接管分支统一 `pickAirport`；空列表探针 | 无 |
- **基线树**：一律用 `r` 基线树 `/tmp/w3a_r/smali`（旧树 `/tmp/w3a/smali` 停在 m，用它会回退 n→r）。注意：`toolchain/act/assemble.sh` 的 `SMALI_TREE` **硬编码旧树** ⇒ 本批需**直调 `RunSmali`**（或用同一 `SMALI_CP`）。
- **验收（F4，可证伪）**：开启后抓样应看到"被打击的目标省 ∈ 你当时可见的省"（`nP2s pid=` 与可见集合对账）；且候选非空（不能回到"恒空"血案）。
- **验收（F1）**：按一次「自动打击」⇒ `afp:ent → afp:src → afp:press ap=<省> → afp:mt=1 → afp:strike new=<0/1>` ＋ ` strike=` 1↔0。
'''

PLAN_SEC = '''

---

## 87. 【第一轮全量调研】r 版"谁在飞／为何只轰炸机／为何越迷雾"
### 87.1 r 场次硬数据（对齐现象归属）
`nA5t`=559 但 **`nA5b`=0**（**本场无战事**）⇒ 智能线**零活动**（`nP2*`、`nA1*` 全 0）；老线战时入口 `nA4d`=0、`nA2L`=0；` strike=` 1367 条**全 1（关）**、`mode=` 全 1（OFFENSIVE）；`nDR_DET`=0。
⇒ **该场次没有任何派发**；观察到的"起飞"不在采样窗口内（可能在飞旧任务／更早场次／另一条链）。
### 87.2 三条"不问开关"的升空路径
① **自动拦截**（侦测到敌机 ⇒ `dispatchAutoIntercept` ⇒ 你的截击机自动升空，**游戏自带**）② 手动出击 ③ 存档里已在飞的任务。
玩家"自动打击"派发**必须**开关开（门见 §87.4）。
### 87.3 "战时只有轰炸机"＝设计现状
老线战时只建 **BOMBER**（和平才 FIGHTER/巡逻）；智能线攻击机线需"机场有闲置 ATTACKER 师"（预筛）⇒ 没造攻击机 ⇒ 只有轰炸机起飞（与"AI 不造战斗机/截击机"同源）。
### 87.4 ★"越迷雾"硬证（我的回归）
`a1Scan`（r 版 940–985）：`getFogDrawArmy()` 读取后**下一行即被 `a1HasMil` 覆盖丢弃**；`a1Known` 无条件写；`&0x4` 门**恒真** ⇒ 可见性**完全不参与**候选判定。`a1bPick` 同（G2 两支都盖戳、F11 撤雾门）。
老线 `aiPickVisibleTarget`＝`rnd.nextInt(size)` 随机取，自身不看雾 ⇒ **两条线都"随机/越迷雾"**。
⇒ 结论：不是"接了 AI 逻辑"，而是**我们智能线的迷雾/记忆门被我在 r5c046g 为修"候选恒空"而解绑**（G1/G2/F11）——需按正确语义绑回。
### 87.5 玩家自动打击的门（r 版逐字）
`mode==AI ⇒ 派发（无视开关）`｜`playerCiv<0 ⇒ 派发`｜`玩家机场 且 autoStrikeOff==0 ⇒ 派发`｜其余跳过 ⇒ **线已接好**，只差开关能打开（按钮 F1）。
### 87.6 待裁决
①迷雾口径（a 玩家可见／b AI 记忆／c 二者并）②"谁在飞"＋战时实测 ③是否先打 F1（按钮）。
### 87.7 修复计划
F1 按钮 1 字极性（独立）｜F4 迷雾重绑（按口径；验收＝目标省 ∈ 可见集合且候选非空）｜F2/F3 可选。
**基线树＝`/tmp/w3a_r/smali`**；`assemble.sh` 的 `SMALI_TREE` 硬编码旧树 ⇒ 需直调 `RunSmali`。
'''

INCR_ADD = '''
## 31. 调研：r 版"谁在飞／只轰炸机／越迷雾"（不写码）
- r 场次：`nA5b`=0（**无战事**）⇒ 智能线零活动；`nA4d`=0/`nA2L`=0；` strike=` 全 1（关）、`mode=` 全 1；`nDR_DET`=0 ⇒ **本场零派发**，"起飞"不在采样窗口内。
- 三条不问开关的升空路径：**自动拦截**（`dispatchAutoIntercept`，游戏自带）／手动／存档在飞任务。
- "战时只有轰炸机"：老线战时只建 BOMBER（和平才 FIGHTER/巡逻）＋智能线攻击机线需闲置 ATTACKER 师（预筛）。
- ★"越迷雾"硬证：`a1Scan` 里 `getFogDrawArmy()` 读了即被覆盖、`a1Known` 无条件写、`&0x4` 恒真 ⇒ 可见性**不参与**；`a1bPick` 同；老线 `aiPickVisibleTarget` 是 `rnd.nextInt` 随机 ⇒ 两条线都越迷雾。**这是我 r5c046g 的 G1/G2 解绑造成的回归**。
- 玩家自动打击门：`mode==AI ∨ 观战 ∨ (玩家机场且开关=0)` ⇒ 线已接好，只差按钮能打开。
- 待裁决：①迷雾口径（玩家可见／AI 记忆／两者并）②谁在飞＋战时实测 ③是否先打 F1。
- 基线树 `/tmp/w3a_r/smali`；`assemble.sh` 的 SMALI_TREE 硬编码旧树 ⇒ 需直调 RunSmali。
'''

def main():
    open(DOC,'w',encoding='utf-8').write(SURVEY)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] survey=%d plan=%d incr=%d' % (os.path.getsize(DOC), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()