# -*- coding: utf-8 -*-
# r5c046e_docs.py —— 第 5 次修正记录（F10/F11/F12）+ 全逻辑审查清单：计划书 §65 + INCR §15
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

PLAN_SEC = r'''

---

## 65. 【第 5 次修正 + 全逻辑审查】fog 语义钉死 / F10 / F12（r5c046e）（''' + TS + r'''）
### 65.1 样本 `r5c046d_s2.txt` 判读（35 MB）
- `nP2dif`=66、`nA1e`=69、`nA2L`=73 ⇒ 入口在跑；
- **`nP2s`/`nP2frq`/`nP2mil` 仍全 0**；但 **`nA1 ap=… tgt=-1 k=2` × 7044** ⇒ **派发器被以"目标=-1"调用**（每条扫描一次，然后在 107 个机场里逐个判"不在航程"）。
### 65.2 钉死引擎语义：`fogDrawArmy == true` = **可见**
证据（`PlayerFogOfWar.setFogOfWar_ExtraCheck`，行 249-252）：
```
if-nez p2, :cond_17      # p2==0（＝取消迷雾）
:cond_17  const/4 v1, 0x1 # ⇒ setFogDrawArmy(true)
else      const/4 v1, 0x0 # p2!=0（＝处于迷雾）⇒ false
```
⇒ `true=可见（要画军队）`、`false=被迷雾遮住`。**原判据 `if-eqz`（不可见→用旧记忆；可见→刷新记忆）本来就是对的。**
### 65.3 本批修正（3 类）
| # | 位置 | 错误 | 正确 |
|---|---|---|---|
| **F11a/F11b** | `a1Scan` / `a1bPick` 的雾判据 | 我在 r5c046 按**错误语义**把 `if-eqz` 翻成 `if-nez` ⇒ 可见省永不写记忆 ⇒ `&0x4` 门全拒 ⇒ 候选池恒空 | **撤回**，恢复 `if-eqz` |
| **F10** | `a1Scan` 的 `:sc_pick` 守卫 | `if-gez`（≥0 才跳）⇒ 真实候选被跳过、**-1 反而去派发** | `if-ltz`（只有 pid<0 才跳过） |
| **F12** | `a1Scan` 的 P 骰 | `if-ltz` ⇒ 变成"rnd≥P 才尝试"（概率反置） | `if-gez`（rnd≥P 才跳过） |
### 65.4 产物
- dex `17ae24d18f3ed47c6c8e44f55d336d04`（`result=true`）｜apk `eecf0ca13ed6cd6659bd0e02840832b5`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`（740 跳转）｜真悬空 `0`｜㉙ 35（存量，无新增）
- 装机 `Success`；独立复核：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；基线已重置
### 65.5 全逻辑审查清单（终稿，逐条已核）
**A 线 L 关闭**：`if-eqz player→关`｜`if-eq playerCiv,apCiv→保留`（其余关）✔；探针 `nA2L` ✔
**B 文明级**：K=3（轰炸/攻击机各一，`a1CivInflight(civ,类型对象)`，排除 COMPLETED/ABORTED）｜FRQ 计数绑 `TURN_ID`｜P 每次重算 ✔
**C 每机场**：开关**只对玩家本国生效**（AI 视为开）｜P 骰（rnd<P 才尝试）｜选中态重置 ✔
**D 候选过滤**：航程内 + pid 合法 + Province 非空｜`fog==false`⇒用旧记忆 / `true`⇒刷新 6/4｜`&0x4` 必须已记录｜目标国有效且交战｜`a1Inflight<2` ✔
**E 排序（每机场只派 1 次）**：tier（有军建=0 置顶）→ 同档比 `score=(int)(econ×10)+popTotal/100`（负值归零）→ 同档同分蓄水池随机（1/n）｜`nP2mil` 在 tier==0 时打 ✔
**F 派发**：pid<0 跳过｜FRQ 未满才派（否则 `nP2frq` + 中止本文明）｜成功才 FrqN++ 并打 `nP2s`/`nP2frq` ✔
**G 攻击机线**：K=3｜候选=航程内且确有敌军且情报新鲜（≤6 回合）｜主键**师数多者优先**（`a1bDivCmp`：>0 更好/0 同/<0 更差）｜次键在飞↑｜再次距离 band 随机 ✔
**H 参数表**：`FRQ=[1,1,1,2,2,3]`｜`MULT=[0.5,0.75,1,1.25,1.5,2.0]`｜`base=GV_Air.AIR_AI_BOMB_CHANCE_AT_WAR`（≤0 ⇒ 0.33）✔（均已真值校验）
**I 已知未纳入**：①`a1bDispatch` 的 `a1bBlind` 语义仍与 fog 真语义相反（"靠记忆"提示会反，P3b 修）②`a1bRetarget` 仍用旧键（在飞/距离）③老探针 `nA4v` 休眠
### 65.6 血案累计（本功能）：12 处
F1 开关解绑漏做｜F2 概率兜底｜F3 FRQ 门｜F4/F5 开关解绑判据｜F6 师数比较｜F7 系数表档位｜F8/F9 FRQ 表档位｜**F10 pid 守卫**｜**F11a/b 雾判据（误翻）**｜**F12 P 骰**。
⇒ 铁律追加：**"语义没钉死前不许改判据方向"**——本批最大教训是"按推测的语义去翻一条原本正确的门"。
'''

INCR_ADD = r'''
## 15. 第 5 次修正（r5c046d → r5c046e）
- 样本 s2：`nP2dif`=66/`nA2L`=73，但 `nP2s`=0 且出现 `nA1 ap=… tgt=-1 k=2` ×7044 ⇒ 派发器被以 -1 调用。
- 钉死语义：`fogDrawArmy==true` = **可见**（证据 `PlayerFogOfWar.setFogOfWar_ExtraCheck` 行249-252）。
- 修 3 类：**F11a/b 撤回** E4/E5（原判据 `if-eqz` 本来正确，我按错语义翻反了）｜**F10** `:sc_pick` 守卫 `if-gez→if-ltz`｜**F12** P 骰 `if-ltz→if-gez`。
- 产物：dex `17ae24d18f3ed47c6c8e44f55d336d04`｜apk `eecf0ca13ed6cd6659bd0e02840832b5`｜装机 Success＋独立复核 ✔｜基线已重置。
- 全逻辑审查清单已列（计划书 §65.5）：A 线 L 关闭 / B 文明级门 / C 机场级门 / D 候选过滤 / E 排序 / F 派发 / G 攻击机线 / H 参数表 / I 已知未纳入。
- 血案累计 12 处；铁律追加：**语义没钉死前不许改判据方向**。
'''

def main():
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK]', PLAN, os.path.getsize(PLAN),'B'); print('[OK]', INCR, os.path.getsize(INCR),'B')

if __name__=='__main__':
    main()