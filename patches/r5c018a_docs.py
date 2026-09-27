# -*- coding: utf-8 -*-
# R5c018a 文档登记：方案书 附-25（施工记录）＋ 设计v2 【R5c018a】节
import io, shutil

A = '/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
B = '/sdcard/GLG/历史23/空战重做专案_设计v2.md'
for f in (A, B):
    shutil.copyfile(f, f + '.pre_r5c018a')

sec_a = u"""
## 附-25 施工记录：批次 **r5c018a**（甲1' 第一步：攻击机"弹药=payload、投完就跑"）2026-09-24

### 附-25.1 决策（用户 2026-09-24 拍板）
- **路线改判：路线2（新池＋4h门）→ 甲1'**。理由：经查证引擎里**没有**"跨回合滞空在目标上空"这一形态（`update()` 每帧跑、`lingerRounds` 是帧计数、`shouldReturn` 一旦判定就转返航），而"5代6代轰炸机也上导弹"是将来事，先做最小正确形态。
- "跨回合滞空"**经确认既非引擎既有、也非用户需求**，已撤销（此前由 AI 推导引入，记此备案）。
- 沿用：弹药数＝`payload`（=JSON `MaxPayload`）；逐代给数（3代4／4代6／5代10／6代16）留待 C2 数据层。
- D-C（打光返航）/D-D（自动＋手动）/D-G（返航补给）**均由引擎自带，无需代码**：`shouldReturn` 在"没有能对地且有弹的机"时直接返航；payload 是机型字段、与创建路径无关；`returnToBase` 补满 payload。
- D-J：本批只做攻击机；轰炸机（`maxAttackRounds=1`、payload 8）不动。

### 附-25.2 改动（2 处常量 ＋ 3 处探针；零新字段、零新门、零状态机改动）
| # | 位置 | 内容 |
|---|---|---|
| ① | `createAttackArmy`（AirMission:778） | `const/4 v1, 0x2` → **`const/16 v1, 0x10`**（`maxAttackRounds` 2→16，抬大以让 payload 当唯一限流） |
| ② | 同处（:782） | **新增 `iput v1, v0, ->maxLingerRounds:I`（=16）**。极性纪律：必须 ≥ 轮数；若写 1（旧默认）会退回"打完 1 轮就走"＝零效果 |
| ③a | `createAttackArmy` 尾部 | 探针 `nGA init ar=/lr=/n=` |
| ③b | `executeAttack` 轮数门后 | 探针 `nGA dry r=/mx=`（仅在 `attackRoundsExecuted >= maxAttackRounds` 时打印） |
| ③c | `executeAttack` `:cond_51` 之前 | 探针 `nGA fire r=/n=`（**仅攻击机档**：轰炸机路径 `goto :cond_51` 会跳过它） |

### 附-25.3 机制依据（逐行核对，防写反）
- `EXECUTING` 每帧顺序：`executeAttack()` → `a1bReHunt()`（命中则当帧 return）→ `lingerRounds++` → `shouldReturn()`。
- `shouldReturn()` 真值（**订正**：此前附-24 写反）：**存在"能对地且有弹"的机 ⇒ 走 linger 判定（`lingerRounds < maxLingerRounds` ⇒ 不返航）**；**全打光／没有对地机 ⇒ 立即返航**。
- `AirUnit.canAttackGround()` ＝ `currentPayload > 0 && canAttackGround[机型]` ⇒ payload 归零 ⇒ 不计伤，「打光即停火」由引擎自带。
- 预期行为：一趟投 `min(payload, 16)` 轮 ⇒ payload 归零 ⇒ 引擎自带返航 ⇒ 回基地补满。

### 附-25.4 门禁与装机（全绿）
| 项 | 结果 |
|---|---|
| assemble | 5520 files → `/tmp/r5c018a_classes.dex`，md5 `be3254523ef72263e78d0786b2a43d5e` |
| check_arity | **BAD=0**（WARN=3，白噪） |
| verify 八件套 | Invoke/Regs/Init/Range **BAD 合计=0**；ΔSig=**+3**（＝3 探针）；UNDEF=4／Cast=50（白噪） |
| check_branch（**单文件**） | `executeAttack`：条件跳转 17、**方向可疑=0**、探针内分支=0；`createAttackArmy`：1／**0**／0 |
| check_dangling | **真悬空=0**（DANGLING=249 均为 dex 外继承噪声） |
| build | `build_apk/dbg_signed77_v119_r5c018a.apk`（738370740 B；APK md5 `f9562d2b…`） |
| install | **DEX_MATCH=1／APK_MATCH=1**；EARTH3=18510 |
| 真机启动自检 | **VerifyError=0、FATAL EXCEPTION=0**；进程在跑；抓样基线随装机重置＝214589086 |

### 附-25.5 待抓样验收（本轮未抓样）
1. 攻击机一趟投满 payload（4 轮）：`nGA fire r=0…3`，且第 4 轮后不再 fire；
2. 投完即返航（`nRT sw`）；
3. 返航后**下一次出击满弹**（payload 补给仍有效）；
4. B2c 回归：空省/无交战陆军 ⇒ 不开火（`nB2c nofire` 与 `nB2 miss` 对账）；
5. r5c015 四项回归：半程 185／上限 N=1／雷达内不重复提示／不炸省-人口-部队；
6. 表现项：机炮 FX 窗口随轮数变化、战报条数（原 1 → 现 ≤4）是否刷屏；
7. **存档覆盖雷**：`maxAttackRounds/maxLingerRounds` 在存档里 ⇒ 旧档里**已存在的任务**仍按旧值(2/1)跑，只有**新派发的任务**是新行为——判读时勿误判。

### 附-25.6 下一步
- 抓样判读通过后 → **r5c018c**（C2 第 4 接线点）：`unitGenOf()` 真接线（读 genID，旧档缺省 3）＋`MaxPayload` 逐代 4/6/10/16（**一个数字来源**，勿在代码里再写一份表）＋探针加 `g=`/`p=`。
"""

sec_b = u"""
## 【R5c018a / 2026-09-24】弹药机制第一步（甲1'）已开工并装机

- **路线改判**：路线2（任务级池＋4h 冷却）→ **甲1'**（`payload` 即弹药、投完就跑）。触发原因：查证"战斗机/拦截机是否有跨回合滞空"⇒ `update()` 每帧跑、`lingerRounds` 是帧计数、`shouldReturn` 立即转返航 ⇒ **引擎里不存在"停在目标上空"形态**，且用户确认从未要求该形态（此前为 AI 推导引入，已撤销）。
- **本批改动**（`createAttackArmy`）：`maxAttackRounds` 2→16 ＋ 新增 `maxLingerRounds=16` ＋ 探针 `nGA init/dry/fire`；**零新字段、零新门、零状态机改动**。
- **D-C/D-D/D-G 无需代码**：打光返航＝`shouldReturn` 自带；自动＋手动＝`payload` 是机型字段；返航补给＝`returnToBase` 自带。
- **门禁/装机**：arity BAD=0；八件套 BAD=0（ΔSig=+3）；branch 方向可疑=0；真悬空=0；装机 DEX/APK_MATCH=1；真机启动 VerifyError=0。dex `be325452…`／APK `f9562d2b…`。
- **待抓样验收＋下一步（r5c018c 代差接线）**：详见《B3-A1自动打击接活_具体方案书v1》**附-25**。
"""

t = io.open(A, encoding='utf-8').read()
assert '附-25' not in t, 'XX 附-25 已存在'
assert '附-24' in t, 'XX 方案书缺附-24 锚点'
io.open(A, 'w', encoding='utf-8').write(t.rstrip('\n') + '\n' + sec_a)

t2 = io.open(B, encoding='utf-8').read()
assert '【R5c018a' not in t2, 'XX 设计v2 已有 R5c018a 节'
io.open(B, 'w', encoding='utf-8').write(t2.rstrip('\n') + '\n' + sec_b)

print('OK 附-25 已写入方案书；【R5c018a】已写入设计v2（均备份 .pre_r5c018a）')
print('OK 方案书行数:', len(io.open(A, encoding='utf-8').read().split('\n')))
print('OK 设计v2行数:', len(io.open(B, encoding='utf-8').read().split('\n')))