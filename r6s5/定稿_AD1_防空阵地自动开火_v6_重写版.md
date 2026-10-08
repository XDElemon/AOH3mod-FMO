# 定稿 · AD-1 防空阵地自动开火（v6 · 重写版）
日期：2026-10-02 ｜ 状态：**待装机验证** ｜ 取代 v5（旧实现整类作废重写）
批次：r6d141 ｜ 类：`aoc/kingdoms/lukasz/map/battles/AirDefense.smali`（整文件重写）

---

## 0. 为什么重写（旧实现的三个口径错误）

| # | 旧写法 | 游戏真实口径 | 后果 |
|---|---|---|---|
| 1 | 击落只做 `hp -= x`，然后自己写 `isAlive=false / isShotDown=true` | 击落 = **`hp<=0` ⇒ `target.recordLoss(unit)`**（从 `aliveAircraft` 移除 + 加入 `lostAircraft` + `airport.removeAircraft`），再 `target.recalcPool()` | 死机留在 `aliveAircraft` 与 `Airport.aircraft` 里 ⇒ `allAircraftLost()` 永假、任务永不收尾、机场留幽灵飞机 |
| 2 | 发明 `isAlive/isShotDown` 语义 | 游戏**只在构造/存档/`resetRound` 里写这两个字段**，战斗全程不碰 | 存档与战斗状态不一致 |
| 3 | 每发 `new Random()`；每次都 `pickAlive()` 任选一架 | 游戏用"伤害池顺序倾泻"：从 `aliveAircraft[0]` 起扣，扣死就继续往下倾泻（溢出伤害转移到下一架） | 逻辑与游戏其他伤害源不一致，且无法解释击杀顺序 |

---

## 1. 判定链（若…则…，按次序）

**入口**：`AirForceManager.update(I)V` 内 1 行 `invoke-static {civID}, AirDefense;->tickSafe(I)V`（不变）

```
tickSafe(civID):
  ① dWrite 自证行「nADT c=<civID>」
  ② try  { tick(civID) }
     catch (Throwable t) { dWrite「nADX <t 的 toString>」}   ← 绝不外抛
```

```
tick(civID):
  若 civ == null           → 返回
  n = civ.getNumOfProvinces()
  对 i = 0..n-1:
    pid = civ.getProvinceID(i)
    若 pid < 0                                  → 跳过（无主省）
    若 pid >= Game.lProvinces.size()            → 跳过（防 IndexOutOfBounds）
    nad = airDefenseAt(pid)                     “本省反导阵地数量 = 本回合发射次数”
    若 nad <= 0                                 → 跳过
    fireProvince(civID, pid)
```

```
airDefenseAt(pid):
  若 AAA_BUILDING_ID < 0                        → 0      （本 mod 未定义该建筑）
  prov = Game.getProvince(pid)（外层已保证 pid 合法）
  若 prov == null 或 prov.buildings == null     → 0
  计数 buildings 中 getBuilding() == AAA_BUILDING_ID 的个数（索引循环，不用迭代器）
```

```
fireProvince(civID, pid):
  prov = Game.getProvince(pid)
  nad  = airDefenseAt(pid)                      （调用方已算过，这里复用参数亦可）
  若 nad <= 0 → 返回
  k = countTargets(civID, prov)                 “在射程内的、敌方的、还有活飞机的任务数”
  若 k <= 0 → 返回（本省本回合不开火，不写日志）
  s = 0; hits = 0; kills = 0
  对 s = 0..nad-1:
     m = pickTarget(civID, prov, s % k)         “轮转选靶：第 (s mod k) 个合格任务”
     若 m == null → 跳过
     若 rng().nextFloat() < adHitChance(0,0)    → hits++, kills += applyMdDamage(m, adDamagePerHit(0,0))
  dWrite「nAD p=<pid> n=<nad> t=<k> s=<nad> h=<hits> k=<kills>」   （仅当 k>0）
```

```
eligible(m, civID, prov):          “可打目标”——三个条件全真
  ① m != null 且 m.civID != civID              （敌方；自己人不打）
  ② m.aliveAircraft != null 且 size() > 0      （还有飞机可打；空任务不浪费弹）
  ③ inRange(m, prov)                           （见下）
```

```
inRange(m, prov):
  a = m.airDivisionAtProvinceID
  若 a < 0                      → false       （未部署；字段初值 -1）
  若 a == prov.getProvinceID()  → true        （同省必中）
  若 a >= Game.lProvinces.size()→ false       （防越界）
  other = Game.getProvince(a)
  若 other == null              → false
  dx = prov.getCenterX_Real() - other.getCenterX_Real()
  dy = prov.getCenterY_Real() - other.getCenterY_Real()
  若 dx*dx + dy*dy <= 300*300   → true  否则 false
```

```
applyMdDamage(m, dmg) -> 击落数:            “复刻 AirMission.applyAirDamage 的伤害池模型”
  kills = 0; rem = dmg; list = m.aliveAircraft
  若 list == null → 0
  i = 0
  循环 当 i < list.size() 且 rem > 0:
    u = list.get(i); 若 u == null → i++; 继续
    h = u.hp
    若 h <= 0:                              （已死残留：直接收尸，不吃伤害）
        n0 = list.size(); m.recordLoss(u)
        若 list.size() == n0 → i++           （防死循环：没能移除就跳过）
        否则 kills++
        继续
    take = (rem < h) ? rem : h
    u.hp = h - take
    rem -= take
    若 u.hp <= 0:                            （击落判定：<=0，不是 <0）
        n0 = list.size(); m.recordLoss(u)
        若 list.size() == n0 → i++  否则 kills++
    否则 i++
  m.recalcPool()
  返回 kills
```

---

## 2. 参数与阈值

| 名称 | 当前值 | 单位 | 含义 | 调大/调小 |
|---|---|---|---|---|
| `AD_RANGE_PX` | 300 | 像素 | 阵地到目标省中心的最大距离（含 =） | 大=覆盖更多省 |
| `adHitChance(defGen,tgtGen)` | 0.5 | 概率 | 每发命中率（**空位**） | 只改方法体 |
| `adDamagePerHit(defGen,tgtGen)` | 3.0 | HP | 每发基础伤害（**空位**） | 只改方法体 |
| 发射次数 | = 本省反导阵地数 | 发/回合 | 每座阵地每回合 1 发 | 由建筑数量决定 |
| 命中判据 | `rng < chance` | — | 等于命中率算**未命中** | — |
| 击落判据 | `hp <= 0` | HP | 等于 0 算击落 | — |

机型血量（实测）：战斗/截击 4.0 ｜ 攻击机 6.0 ｜ 轰炸机 8.0。

---

## 3. 生命周期

反导阵地（建筑）→ `airDefenseAt` 计数 → 每回合每省 1 次 `fireProvince` → 每个合格敌任务按轮转分到 `nad` 发弹 → 命中则 `applyMdDamage` → `hp` 扣减 → 若 `hp<=0`：`recordLoss`（`aliveAircraft` 出、`lostAircraft` 进、`airport.removeAircraft`）+ `recalcPool` → **任务侧**由游戏自己的 `allAircraftLost()`（`update()`/`returnToBase()` 路径）收尾。

---

## 4. 边界与不变量

- **不写** `isAlive` / `isShotDown` / `isInFlight`（游戏战斗全程不写这三个）
- **不调用** 私有方法 `AirMission.applyAirDamage`（跨类访问会 `IllegalAccessError`）；只调用 **public** 的 `recordLoss` / `recalcPool`
- 计数/选靶一律**索引循环**，杜绝迭代器（`recordLoss` 会改列表 ⇒ 迭代器必 `ConcurrentModificationException`）
- 所有 `getProvince` 前先判 `0 <= id < Game.lProvinces.size()`（该方法内部是裸 `List.get`，越界即抛）
- 雷达 / 中层反导雷达**不参与**开火（只探测，本批不动）
- 停放飞机（不在任何任务里）**不碰**
- 弹不消耗资源；对 AI 同样生效（无人类/AI 分支）

---

## 5. 探针（全部走 `dWrite` = `aircfg_diag.txt`，免 `debug` 闸、免 500ms 节流）

| 行 | 何时 | 读什么 |
|---|---|---|
| `nADT c=<civID>` | 每次 `tickSafe` 进入 | 防空 tick 真的在跑 |
| `nADX <异常>` | `tick` 抛 Throwable | 异常类型+消息 |
| `nAD p=… n=… t=… s=… h=… k=…` | 某省本回合有合格目标 | 阵地数/目标数/发射/命中/击落 |

---

## 6. 失败与回退

| 现象 | 判定 |
|---|---|
| 没有 `nADT` | 探针没跑起来（查汇编/装机），不是业务问题 |
| 有 `nADT` 无任何 `nAD` | 正常：本国没有"射程内有敌机"的省 |
| 有 `nAD` 但 `h=0` 长期 | 正常（0.5 命中率）；先看 `t`、`s` 是否 >0 |
| 有 `nADX` | 异常，看类型；本版 catch Throwable 兜住，不会崩游戏 |

---

## 7. 验收标准（可证伪）

1. 装上后进游戏过 1–2 回合：`aircfg_diag.txt` 出现 `nADT`（≥1 条）。
2. 让我方飞机飞进敌方"有反导阵地"的省：出现 `nAD p=… t>=1`，且 `s=n`（=阵地数）。
3. 多回合后目标机 hp 下降（`Airport` 面板/任务里的飞机数减少），击落时该机从任务与机场双双消失（**不再是幽灵**）。
4. 停在机场（未出击）的飞机 hp 不变。
5. 点军队、开菜单**不闪退**。
6. 不通过：出现 `nADX`；或击落后 `Airport.aircraft` 里仍能查到该机；或 `aliveAircraft` 里出现 hp<=0 的机。

---

## 8. 寄存器分配（写码时必须遵守）

| 方法 | `.registers` | 局部 | 参数 | 备注 |
|---|---|---|---|---|
| `tickSafe` | 6 | v0..v3 | p0=v4 | catch 用 `move-exception v3`（Throwable） |
| `tick` | 7 | v0..v4 | p0=v5 | v0=civ, v1=n, v2=i, v3=pid, v4=nad |
| `airDefenseAt` | 10 | v0..v7 | p0=v8 | v0=prov, v1=count, v2=AAAid, v3=list, v4=size, v5=i, v6=unit, v7=bid |
| `countTargets` | 9 | v0..v6 | p0=v7(prov), p1=v8(civID) | |
| `pickTarget` | 11 | v0..v8 | p0=v9(prov), p1=v10(civID), p2=v11(idx) | |
| `eligible` | 9 | v0..v6 | p0=v7(m), p1=v8(civID), p2=v9(prov) | |
| `inRange` | 10 | v0..v7 | p0=v8(m), p1=v9(prov) | 算术用 int |
| `fireProvince` | 15 | v0..v12 | p0=v13(civID), p1=v14(pid) | float 单独寄存器 |
| `applyMdDamage` | 12 | v0..v9 | p0=v10(m), p1=float 占 v10？**否**：float 参数用 p1，`.registers 12` ⇒ p0=v10, p1=v11 | kills 用 int 寄存器 |
| `adHitChance` / `adDamagePerHit` | 4 | v0 | p0,p1 | 常量返回 |
| `rng` | 3 | v0 | — | 静态字段懒初始化 |

**铁律**：`.registers` 不得盲目上调；float 与 int 不混用同一寄存器；跨标签不得改寄存器"类型"。写完必跑 `check_regtype.py`。

---

## 9. 变更清单（相对 r6d140）

- 删：`pickAlive`、`fireAtMission`（旧的任选机+无记账版）、`e5i/e5s` 探针（dKey 通道）
- 增：`countTargets` / `pickTarget` / `eligible` / `applyMdDamage` / `rng`
- 改：`tick` 增省 id 上界守卫；`fireProvince` 改为"轮转选靶 + 记账伤害"；探针改 `dWrite`
- 不变：`adHitChance` / `adDamagePerHit`（空位）、`AirForceManager` 里那 1 行调用、雷达/中层反导雷达行为

---

## 10. 风险与待办

- 非确定：命中率 0.5 ⇒ 单回合可能 0 命中（正常节流，不是 bug）
- 待办：命中率/伤害接科技与代差（空位已留）、代际升级、空袭摧毁建筑、导弹动画（A 曳光弹/B 追踪弹未选）
- 观察项：`AirDbgLog` 里遗留高频探针（`RBM_DRAWN`/`dAF_IN` 各 7 万行/局，单局日志 65MB）后续单独清理
