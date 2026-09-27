# -*- coding: utf-8 -*-
# R5a005 收尾归档：补丁存档 + 四份文档登记
import io, os, shutil

BASE = '/sdcard/GLG/历史23'
R6S5 = BASE + '/r6s5'

# ---------- 1) 补丁脚本存档到 r6s5 ----------
patches = ['r5a002_patch.py', 'r5a002b_doc.py', 'r5a003b_patch.py', 'r5a004_patch.py', 'r5a005_patch.py']
for p in patches:
    s_p = os.path.join(BASE, p)
    if os.path.exists(s_p):
        shutil.copy2(s_p, os.path.join(R6S5, p))
        print('存档补丁 ->', os.path.join(R6S5, p))
    else:
        print('缺补丁:', s_p)

EV = u"""## 附-8. 第①步「最小可飞」验收通过（2026-09-20 / r5a005）

**结论**：**通过**。用户确认「会飞了」，且有日志实证。

| 项 | 内容 |
|---|---|
| 批次 | **r5a005**（路线：r5a002 首版 → r5a003 入口快照 → r5a004 修 1 处极性 → **r5a005 整段重写修 5 处极性**）|
| 产物 | `build_apk/dbg_signed77_v119_r5a005.apk`（738,366,644 B）|
| 门禁 | 汇编 ✅ / arity `Invoke·Regs·Init·Range BAD 合计=0` ✅ / 八件套 ✅（Sig=152426，对照 r5a004 Δ=1）/ 装机 `DEX_MATCH=1`·`APK_MATCH=1` ✅ / 启动无 VerifyError ✅ |
| 抓样 | `r6s5/r5a005.txt` |

**关键实证（抓样原文统计）**：
```
nA1e p0=73 apts=1 tgtciv=226 pl=73 all=1          × 25
nA1 ap=6337 tgt=5693 k=0 div=airhq_73_6337_2_1    × 2      ← 成功派出 2 架次
nA1 ap=6337 tgt=5693 k=1 div=-                    × 23     ← 之后无空闲师（限流 2 架 + 师在飞）
```
解读：
- **玩家机场在省 6337**，目标 5693（省主＝226，敌方）✅ 命中"敌省 + 在航程内"两条判定；
- 派出的空军师 key = `airhq_73_6337_2_1`（civ=73 / 省=6337 / 槽=2 / 序=1）；
- **限流按设计生效**：先派满 2 架次（上限＝2），之后每回合 `k=1`（该机场已无空闲轰炸机师）——所以"之后不再派"是**正确行为**，不是故障。

**第①步最终代码形态（`AirForceManager.smali`）**：
| 项 | 位置 |
|---|---|
| 新方法 `a1Log(IIILjava/lang/String;)V` | `5650`（统一日志 `nA1 ap= tgt= k= div=`）|
| 新方法 `a1E(IIIII)V` | `5702`（入口快照 `nA1e p0= apts= tgtciv= pl= all=`）|
| 新方法 `strikeTick_A1(I)V` | 每回合对我方机场：目标省校验 → 在飞限流(≤2) → 逐机场 `pickIdleDivKey(BOMBER)` → 射程校验 → `createStrategicBombing` → `assignedAircraft` 非空 → `activeMissions.add` |
| 挂钩 | `update(I)V` 尾部（`return-void` 之前）|
| 常量 | 目标省 **5693**（缅甸首都）|
| 附带修复 | `isAtWar(I)` 守卫 `if-ne`→`if-eq`（原版 AI 轰炸分支此前恒不执行）|

**出口码对照（诊断用）**：
| k | 含义 |
|---|---|
| 0 | ✅ 派出 |
| 1 | 机场无空闲轰炸机师（低配/师在飞）|
| 2 | 目标不在该机场航程内 |
| 3 | 有师但无可用飞机 |
| 4 | 在飞已达 2 架（限流）|
| 5 | 目标省不存在/无主 |
| 6 | 目标省属玩家自己 |
| 7 | 玩家/实例为空（异常态）|

**下批预告**：第②步「点名清单」＝目标改编译期常量数组 + 同省在飞 ≤2 架（含 5693 之外的目标）。

---
"""

# ---------- 2) 计划书：附-8 ----------
plan = R6S5 + '/B3-A1自动打击接活_具体方案书v1.md'
s = io.open(plan, encoding='utf-8').read()
FOOT = '*（附-1~附-7 · 2026-09-20 · 与上文 §0–§8 互斥；上文为已取消路线存档）*'
assert FOOT in s, '计划书尾标未找到'
s = s.replace(FOOT, EV + '\n' + FOOT.replace('附-1~附-7', '附-1~附-8'))
io.open(plan, 'w', encoding='utf-8').write(s)
print('计划书 -> 附-8 已写入，行数=%d' % (s.count('\n') + 1))

# ---------- 3) 专档：第四十一节 ----------
zj = R6S5 + '/空战重做_进度与bug排查专档_v1.md'
s = io.open(zj, encoding='utf-8').read()
SEC = u"""
## 四十一、【R5a005 / 2026-09-20】自动打击新路线 第①步「最小可飞」验收通过

**背景**：B3-A1 旧路线（自动打击整层）已于 r5a001 整层回滚删除；新路线三步走见《B3-A1自动打击接活_具体方案书v1.md》【附录】。

**过程（同一天 5 个批次，全部只读→单点改动）**：
| 批次 | 内容 | 结果 |
|---|---|---|
| r5a002 | 首版：新方法 `strikeTick_A1(I)` + `a1Log(IIILjava/lang/String;)` + `update(I)` 尾部挂钩 + 顺手修 `isAtWar(I)` 守卫 | 装机后抓样 `nA1`×97 全 `k=5` ⇒ 卡在最早守卫 |
| r5a003b | 加入口快照 `a1E(IIIII)`（p0/apts/tgtciv/pl/all） | 抓样定案：`p0=73(=玩家) apts=1 tgtciv=226 pl=73 all=1`，97 次全 `k=5` |
| r5a004 | 修"自己的省不打"守卫极性（`if-eq`→`if-ne`） | 仍 `k=5` ⇒ 说明还有别的极性问题 |
| **r5a005** | **整段重写 `strikeTick_A1`，修 5 处条件方向**（`if-ltz` 语义被记反等）+ 补丁脚本内置真值表断言 | 抓样 `k=0`×2（`div=airhq_73_6337_2_1`）、`k=1`×23 ⇒ **用户确认"会飞了"** |

**验收实证（`r6s5/r5a005.txt`）**：
```
nA1e p0=73 apts=1 tgtciv=226 pl=73 all=1          × 25
nA1 ap=6337 tgt=5693 k=0 div=airhq_73_6337_2_1    × 2
nA1 ap=6337 tgt=5693 k=1 div=-                    × 23
```
**结论**：第①步通过——轰炸机已按"敌省 + 航程内"自动起飞，且**同目标限流 2 架生效**（派满后自然停手，`k=1`）。

**新增教训（已同步速查）**：
1. **`if-ltz` 是"<0 才跳"**（`if-gez` 才是"≥0 才跳"）——本项目第 9 次栽在条件方向上，本次 5 处同时写错；
2. **`invoke` 最多 5 个寄存器**（>5 必须 `invoke-*/range`，且 `/range` 要求寄存器连续）；
3. **补丁脚本必须内置真值表断言**（正向+反向），不通过就 assert 失败、不打包装机——本轮起生效；
4. **定位挂钩点所属方法**：`awk 'NR<=行号 && /^\\.method/ {m=$0} END{print m}'`（本轮用它确认挂钩确实落在 `update(I)V` 内）；
5. **观察项**：`apts=1`/`all=1` ⇒ 空军系统当前只登记了 **1 个机场**（用户实际有多个），与用户报告的"读档后机场飞机丢失"可能同源 → 已登记，待第②步后专项排查。
"""
s = s.rstrip() + '\n' + SEC
io.open(zj, 'w', encoding='utf-8').write(s)
print('专档 -> 第四十一节 已写入，行数=%d' % (s.count('\n') + 1))

# ---------- 4) 设计v2 ----------
dz = BASE + '/空战重做专案_设计v2.md'
s = io.open(dz, encoding='utf-8').read()
CH = u"""
## 【R5a005 / 2026-09-20】自动打击新路线：第①步「最小可飞」验收通过

**定位**：B3-A1 旧路线已作废（见《B3-A1自动打击接活_具体方案书v1.md》顶部横幅）；本设计＝**新路线第①步**。

**设计（已落地）**：`AirForceManager` 新增 `strikeTick_A1(I)V`，由 `update(I)V` 尾部每回合调用：
```
目标省常量 5693 → 校验(非空 && 省主≥0 && 省主≠我方) → 在飞同目标数 <2
  → 逐个我方机场: pickIdleDivKey(BOMBER) → getProvincesInRange 含目标
  → createStrategicBombing(ap, 5693, key) → assignedAircraft 非空 → activeMissions.add
日志 nA1 ap= tgt= k= div=  ；入口快照 nA1e p0= apts= tgtciv= pl= all=
```
**验收**：✅ 通过（`k=0`×2，div=`airhq_73_6337_2_1`，用户确认"会飞了"）；限流 2 架生效。

**硬约束（本步遵守情况）**：配置＝编译期常量 ✅；目标源只用可靠输入（射程集合＋省主）✅；不读瞬时表/无评分/无随机门 ✅；每步一行日志 ✅。

**后续**：第②步＝目标改编译期常量数组（点名清单）＋同省在飞 ≤2；第③步＝自动挑（口径 A：只记"哪儿出过军事目标"），**先 A 后 B**（攻击机追部队：6 回合新鲜度 + 扑空提示）。
"""
s = s.rstrip() + '\n' + CH
io.open(dz, 'w', encoding='utf-8').write(s)
print('设计v2 -> 新章节 已写入，行数=%d' % (s.count('\n') + 1))

# ---------- 5) 交接文档 v2 ----------
hj = BASE + '/空战重做_交接文档_v2.md'
s = io.open(hj, encoding='utf-8').read()
HS = u"""
## §22 【2026-09-20】自动打击新路线 第①步验收通过（r5a005）

- **现役版本**：`r5a005`（架构 `dbg_signed77_v119_r5a005.apk`），装机核验 `DEX_MATCH=1`/`APK_MATCH=1`，启动无 VerifyError。
- **做了什么**：`AirForceManager` 新增 `strikeTick_A1(I)V`（每回合对我方机场派轰炸机打常量靶 **5693＝缅甸首都**，同目标限流 2 架）＋ `a1Log`/`a1E` 日志＋`update(I)` 尾部挂钩；顺手修 `isAtWar(I)` 守卫（原版 AI 轰炸分支此前恒不执行）。
- **实证**：抓样 `r6s5/r5a005.txt` → `nA1 ap=6337 tgt=5693 k=0 div=airhq_73_6337_2_1` ×2（用户确认"会飞了"）；随后 `k=1` ×23（无空闲师，限流后正常）。
- **登记**：专档第四十一节｜设计v2【R5a005】｜计划书 附-8｜补丁 `r6s5/r5a002_patch.py … r5a005_patch.py`。
- **下一步**：第②步「点名清单」（目标改常量数组 + 同省在飞 ≤2）。
- **遗留观察**：`apts=1`/`all=1` ⇒ 空军系统只登记 1 个机场（用户有多个），疑似与"读档后机场/飞机丢失"同源，**已登记待专项排查**（用户已同意插在三步走之后）。
"""
s = s.rstrip() + '\n' + HS
io.open(hj, 'w', encoding='utf-8').write(s)
print('交接文档v2 -> §22 已写入，行数=%d' % (s.count('\n') + 1))

# ---------- 6) 常驻速查 ----------
sc = BASE + '/铁律与教训_常驻速查_v1.md'
s = io.open(sc, encoding='utf-8').read()
SC = u"""
## 【2026-09-20 新增】自动打击新路线（R5a002~R5a005）留下的 5 条硬教训

1. **`if-ltz` ＝ "小于 0 才跳"**；`if-gez` 才是"大于等于 0 才跳"。`if-gtz/if-lez` 同理。**写任何条件跳转前先查表**——本轮一次性写错 5 处（第 9 次栽在同一类问题上）。
2. **`invoke` 最多 5 个寄存器**；6 个以上必须用 `/range`（且要求寄存器**连续**）——本轮首版因此汇编失败。
3. **补丁脚本必须内置真值表断言**（正向断言 + 反向断言"不该出现的错向指令"），不通过就 `assert` 退出、**绝不许接着装机**。本轮起所有补丁脚本照此办。
4. **定位"某行属于哪个方法"**：`awk 'NR<=行号 && /^\\.method/ {m=$0" @"NR} END{print m}' 文件`；挂钩后必须复核一次。
5. **症状速查**：`nA1 … k=` = 自动打击出口码（0 ok / 1 无空闲师 / 2 航程外 / 3 无可用机 / 4 限流 / 5 目标省无效 / 6 目标是自己 / 7 异常态）；`nA1e …` = 入口快照（p0=本次文明 / apts=该文明机场数 / tgtciv=目标省主 / pl=玩家文明 / all=机场总数）。
"""
s = s.rstrip() + '\n' + SC
io.open(sc, 'w', encoding='utf-8').write(s)
print('速查 -> 5 条教训 已写入，行数=%d' % (s.count('\n') + 1))
print('全部归档完成')