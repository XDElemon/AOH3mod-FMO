# 调研 · AD-R0「只读诊断版」 第三轮（定稿）：锚点 / 真值表 / 寄存器分配 / 门禁

日期：2026-10-03 ｜ 批次 **r6d169** ｜ 状态：**定稿，可开工**

---

## 0. 本批产物

| 项 | 内容 |
|---|---|
| 新类 | `aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali`（全树 0 处引用 ⇒ 无命名冲突，已核实） |
| 改 1 处 | `AirForceManager.smali` → `updateAll()V` 开头插 1 行 `invoke-static {}, ...AirDefDiag;->scanAll()V` |
| 行为改动 | **零**（只读；不写任何游戏字段、不改返回值、不改控制流） |
| 可删性 | 撤销 = 删新类 + 删那 1 行；不影响其它任何批次 |

---

## 1. 锚点（逐字，实测命中数 = 1）

**锚点 A（唯一）**——`AirForceManager.smali` 中逐字如下（含空行，`repr` 已核实）：
```
.method public updateAll()V\x0A    .registers 4\x0A\x0A    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V
```
即：
```
.method public updateAll()V
    .registers 4

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V
```
- 全文件命中该**三行组合** = **1**（`_anchor_check_r6d169.py` 输出）
- ⚠️ **只用那行 `invoke-static {}, ...demoLoadCfg()V` 是不行的**：全文件命中 **2**（另有一处在别的方法里）⇒ 必须带上 `.registers 4` 前缀。
- 插入方式：在这三行的 `invoke-static` 之前插入 2 行：
```
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefDiag;->scanAll()V

```
- **方法域校验**：插入后，`updateAll` 区块内 `AirDefDiag` 出现次数必须 = **1**；全文件 = **1**。
- `.registers 4` **不改**（本批无参数传递；`scanAll()` 无参）。

---

## 2. 真值表（极性——Dalvik 零比较助记符，**本批最容易写错的地方**）

| 助记符 | 跳转条件 | 本批用在哪 |
|---|---|---|
| `if-eqz vA` | vA **== 0** 跳 | 判 null（对象）/ 判 0 |
| `if-nez vA` | vA **!= 0** 跳 | 判非 null；`boot` 已写过则跳过自证 |
| `if-ltz vA` | vA **< 0** 跳 | 建筑 ID `>=0` 才计数 → 写成"<0 就跳过" |
| `if-gez vA` | vA **>= 0** 跳 | （本批不用） |
| `if-lez vA` | vA **<= 0** 跳 | 活飞机数 `<=0` 就跳过（= 只要有飞机才计数） |
| `if-gtz vA` | vA **> 0** 跳 | （本批不用） |
| `if-ge vA,vB` | vA **>= vB** 跳 | 循环上界；`cap >= 40` 截断 |
| `if-lt vA,vB` | vA **< vB** 跳 | （本批不用） |
| `if-gt vA,vB` | vA **> vB** 跳 | 距离：`d² > 300²` 就跳过（⇒ 落下来即 `<=` 计数） |
| `if-ne vA,vB` | **!=** 跳 | 建筑 ID 不等则跳过；任务国 ≠ 本省主人（敌方）才继续 |
| `if-eq vA,vB` | **==** 跳 | （本批不用） |

**血案关联**：r6d158 的 `airImgForKey` 就是**把 `if-ltz` 当成"≥0 才走采用分支"**写反，导致全部飞机兜底 RU 组。本批所有判定都按上表逐条对照，并由门禁按方法域断言（见 §5）。

---

## 3. 寄存器分配表（每个方法；`.registers N` ⇒ 最后 k 个寄存器是参数寄存器，k = 参数个数）

| 方法 | 签名 | `.registers` | 参数寄存器 | 局部寄存器 | 备注 |
|---|---|---|---|---|---|
| `scanAll` | `()V` | 4 | — | v0(turn)｜v1(Throwable) | `try/catch Throwable` |
| `run` | `(I)V` | 8 | p0 = v7 | v0..v6 | 自证行 + 计数器归零 + 调 `mline`/`pline` |
| `mline` | `(I)V` | 14 | p0 = v13 | v0(sb) v1(str) v2(mgr) v3(total) v4(alive) v5(dep) v6(list) v7(i) v8(m) v9(ac) v10(n) v11(noDep) v12(str) | 任务盘点 |
| `pline` | `(I)V` | 12 | p0 = v11 | v0(psize) v1(i) v2(prov) v3(civ) v4(aaa) v5(rad) v6(mid) v7(acc) v8(idAAA) v9(idRAD) v10(idMID) | 省份扫描 + 全局行 + 调 `aline` |
| `aline` | `(Laoc/kingdoms/lukasz/map/province/Province;III)V` | 12 | p0 = v8, p1 = v9, p2 = v10, p3 = v11 | v0(cap) v1(常量40) v2(mgr) v3(airports) v4(list) v5(inR) v6(sb) v7(str) | 单省 `nADA` 行（上限 40） |
| `inR` | `(Laoc/kingdoms/lukasz/map/province/Province;I)I` | 16 | p0 = v14, p1 = v15 | v0(mgr) v1(list) v2(size) v3(i) v4(m) v5(pid) v6(civ) v7(px) v8(py) v9(apid) v10(other) v11(n) v12(tmp int) v13(tmp int) | 只读距离判定 |
| `cnt` | `(Laoc/kingdoms/lukasz/map/province/Province;I)I` | 8 | p0 = v6, p1 = v7 | v0(list) v1(size) v2(i) v3(obj) v4(bid) v5(n) | 建筑计数 |
| `kv` | `(Ljava/lang/StringBuilder;Ljava/lang/String;I)V` | 8 | p0 = v5, p1 = v6, p2 = v7 | v0(str) v1..v4 | 追加 ` k=v` |
| `logX` | `(Ljava/lang/Throwable;)V` | 6 | p0 = v5 | v0(sb) v1(str) v2(obj) v3..v4 | 异常行 |

**类型纪律**：对象（StringBuilder / List / AirMission / Province / Object）与 int **不共用同一寄存器**；`inR` / `mline` 的临时寄存器一律 int，且在使用前必被 `move-result`/`iget` 覆盖，不存在"跨标签类型漂移"。
**寄存器上限**：全部 ≤ 16（模板：`inR` 正好 16 ⇒ p0=v14、p1=v15）。

---

## 4. 日志格式（判读口径，写进本批交付说明）

```
nABOOT v=r6d169                     # 仅首次（证明类加载/探针活着）
nADM t=<回合> all=<任务数> alive=<有活飞机> dep=<已部署> noDep=<alive-dep>
nADG t=<回合> pTot=<省数> aaa=<阵地总数> rad=<雷达总数> mid=<中层雷达总数> pAAA=<有阵地的省数> pRad=<有雷达的省数> pMid=<有中层雷达的省数>
nADA t=<回合> c=<省主人国> p=<省id> aaa=<该省阵地数> A=<该国机场数> inR=<同省或≤300px 的合格敌任务数>   # 每回合上限 40 行
nADTRUNC n=<被截断行数>              # 仅截断时
nADX <异常类:消息>                   # 仅异常时
```

**判读方法**：

| 现象 | 结论 |
|---|---|
| 无 `nABOOT` | 探针没跑起来（查汇编/装机/进程），**不要**去判读业务现象 |
| 有 `nABOOT`，无 `nADM/nADG` | 说明 `run` 内异常 ⇒ 看 `nADX` |
| `nADG aaa=0` | 反导阵地建筑**没被识别**（P：建筑 ID/名称） |
| `nADG aaa>0` 但 `nADM dep=0` | 全世界没有"已部署且有活飞机"的任务（P1 目标口径） |
| `nADM dep>0` 但所有 `nADA inR=0` | 射程 300px 卡掉（P2） |
| `nADA` 里 `A=0` | 该国没有机场 ⇒ `update(civID)` 永不调用（P3 命中） |

---

## 5. 门禁（`check_r6d169.py`）＋负样本

**结构断言（≥4 条，方法域内计数）**：
1. S1：`AirForceManager.updateAll()` 区块内 `AirDefDiag` 出现 **= 1**；全文件 `= 1`。
2. S2：`AirDefDiag.smali` 中 `.method public static scanAll()V` **= 1**，且它 `.end method` 前含 `.catch Ljava/lang/Throwable;` **= 1**（绝不外抛）。
3. S3：`mline` / `pline` / `aline` / `inR` / `cnt` / `kv` / `logX` 各**恰好 1 个**定义。
4. S4：`scanAll`/`run`/`mline`/`pline` 中**不存在** `iput`/`sput` 到**游戏类**字段（正则：`iput[^;]*Laoc/kingdoms/lukasz/map/battles/AirMission;|Laoc/kingdoms/lukasz/map/province/Province;|Laoc/kingdoms/lukasz/map/battles/AirForceManager;|Laoc/kingdoms/lukasz/map/battles/Airport;`）命中 **= 0**（只读铁律）。
5. S5：`dKey` / `java/nio/file` 在 `AirDefDiag.smali` 中命中 **= 0**；`dWrite` 命中 **≥ 4**。
6. S6：`AirForceManager.smali` 里 `updateAll()` 的 `.registers` 仍为 **4**（不得改）。

**极性断言（P1..P6，成对）**：
- P1 `cnt`：`if-ne v4, p1, :cond_*` 存在（**不等才跳过**）且不存在 `if-eq v4, p1`。
- P2 `mline` 活飞机：`if-lez`（≤0 跳过）。
- P3 `mline` 已部署：`if-ltz`（<0 跳过）。
- P4 `inR` 距离：`if-gt v12, v13, :cond_*`（>300² 才跳过）。
- P5 `aline` 截断：`if-ge`（cap ≥ 40 才截断）。
- P6 `run` 自证：`if-nez v0, :cond_*`（boot 非 0 才跳过写自证行）——**写反会导致从不写自证行（= 哑火）**。

**负样本（N1..N5，必须能被抓）**：把上面 6 条极性逐条反转后，门禁必须报 ❌（脚本内置 `--selftest` 做突变自检）。
**行为级自检**：`r6s5/addiag_sim_r6d169.py`（Python 复刻 `cnt/inR/aline` 判定链，含 4 条断言 + 反转敏感性自检）。

---

## 6. 失败模式与回退

| 情况 | 判定 / 处理 |
|---|---|
| 装上后无 `nABOOT` | 探针没跑（查 dex/进程）；立刻回退上一版归档包 |
| `nADX` 出现 | 看异常类型；本批 catch `Throwable` ⇒ 不会崩游戏 |
| 游戏卡顿 | 极不可能（单回合 = 1 次省扫 + ≤40 次任务遍历）；若真有，先把 `nADA` 上限降到 8 |
| 开局闪退 | 抓 `logcat -b crash`；本批只动 `updateAll` 开头 1 行 + 新类，若报 `VerifyError` 就是新类类型流问题 ⇒ 回退 |
| 回退动作 | 删 `AirDefDiag.smali` + 用 `.pre_r6d169` 覆盖 `AirForceManager.smali` ⇒ 重编；对照包 = **r6d168**（当前已验收） |

---

## 7. 验收标准（可证伪）

**通过**：装上后进游戏过 2–3 回合，`aircfg_diag.txt` 里出现 **`nABOOT`** 且出现 **`nADM` 与 `nADG` 至少各 1 行**，且**无** `nADX`。
**进一步（诊断成功）**：能根据 §4 判读表把根因钉到 **P1/P2/P3/建筑识别** 中的至少一条（即 `nADM dep=`、`nADG aaa=`、`nADA A=/inR=` 三组数字能给出自洽结论）。
**不通过**：无 `nABOOT`；或有 `nADX`；或 `nADM/nADG` 都没有；或游戏因此闪退/卡顿。

---

## 8. 变更清单摘要

- **新增 1 个类**：`AirDefDiag.smali`（9 个静态方法 + 8 个静态计数器）。
- **改动 1 处**：`AirForceManager.updateAll()V` 开头插 1 行 `invoke-static {}, AirDefDiag;->scanAll()V`（`.registers 4` 不变）。
- **不改**：`AirDefense`（仍在留档目录）、旧 AAA 段、雷达、UI、存档、其它任何类。

## 9. 风险与待办

- 风险：日志行数上限 40 可能在"很多国家都有阵地"时截断（有 `nADTRUNC` 提示，可放宽）。
- 待办（AD-R1 候选，按诊断结果择一）：放宽目标口径（含"停敌境机场的飞机"）｜射程改"同省必打 + N 环"｜防空 tick 从"有机场的国家"改挂全局入口。
- 本批**不做**：开火、伤害、记账、雷达参与、建筑耐久（H2）。