# 转接文档｜《终序千禧》AI 空军 MOD —— 手机端 → 电脑端 agent 交接（v1, 2026-10-03）

> 读者：电脑端 Agent（接续 smali 逆向/反编译施工）
> 一句话：**AD-1 防空开火+命中链已验收通过（r6d180 已装机）**；GitHub 仓库还停在 C2-B3（r6d126-137），**AD 系列（r6d169–r6d180）未入库** ⇒ 请先入库推送，再接 AD-2。

---

## 0. 你要先做的三件事
1. **取转接包**（手机 `/sdcard/GLG/历史23/handover_r6d180/`）→ 按 §9 校验 md5
2. **推 GitHub**（§8，选路线 A 或 B）
3. **接 AD-2**（§7，规格已定稿：D1/D2/D4/D5）

---

## 1. 项目身份

| 项 | 值 |
|---|---|
| 包名 | `age.of.history3.qiamxi.zhiri` |
| 底座 | v119（1.035-DEMO.1；底座 smali 树见仓库 `base/w3a_smali_20260918.tar.gz`，5520 个 smali）|
| **当前装机** | **r6d180**（2026-10-03 23:34:26 Success）|
| 构建 dex md5 | `1a2cbc69fbbbecd1952cee76acb3757d` |
| 归档 apk | `dbg_signed77_v119_r6d180.apk`（md5 `3dbceb419dcb766d9e793ccce52ce9cf`，763,462,950 B）|
| 装机三对齐 | apk 内 dex md5 = 构建 dex md5 ✓；`assets/map/Earth3/*` = **18510** ✓|
| 归档只留 4 个 | r6d137（回退）/ r6d158（已验证）/ r6d179（上一版）/ **r6d180（当前）** |
| 仓库/远端 | `git@github.com:XDElemon/AOH3mod-FMO.git`，分支 `main`，HEAD `c1df6cf` |
| **勿碰** | `age.of.history3.TNO.yunsi`（另一独立包）|

---

## 2. 转接包内容（手机路径 `/sdcard/GLG/历史23/handover_r6d180/`）

| 文件 | 说明 |
|---|---|
| `delta.diff` | **仓库快照 c1df6cf → 当前 r6d180 工作树** 的逐文件 unified diff，12 个文件（NEW 的给整份 `/dev/null` diff），4982 行 |
| `changed/` | 上述 12 个文件的当前版本（保留 `aoc/...` 目录结构） |
| `smali_tree_r6d180.tar.gz` | **完整工作树**（5523 个 smali，8.4 MB）——解包即可得到 `/tmp/w3a/smali` 等价树 |

### 参考材料（也在手机 `/sdcard/GLG/历史23/`）
| 路径 | 内容 |
|---|---|
| `r6s5/` | 全部设计/调研/实测文档。本系列：`设计逻辑_r6d175_纬度口径_判定跟随圈.md`、`_r6d176_口径统一II.md`、`_r6d177_回归修复.md`、`_r6d178_命中探针.md`、`_r6d179_自证与计数器.md`、`_r6d180_pickTarget极性修复.md`；`实测记录_r6d177_圈对齐与飞行段.md`、`实测记录_r6d177A_AD1开火.md`、`实测记录_r6d180_AD1开火验收.md`；`调研_纬度口径修复_r1/_r2r3.md`、`调研_纬度口径_修订_判定跟随圈.md`、`调研_r6d175_雷达分支极性考古.md`；`evidence/r6d175_base_detectEnemyMissions.txt` |
| `toolchain/act/` | **门禁与模拟器**：`check_r6d175.py`…`check_r6d180.py`、`sim_r6d175.py`、`sim_pick.py`；静态检查 `check_params.py`/`regtype_gate.py`/`check_castorder.py`；反汇编 `DumpM.java`/`DumpFind.java`；构建 `assemble.sh`/`verify.sh`/`build_fast.sh`/`preinstall.sh` |
| `toolchain/autotap3.sh` | vivo 安装框自动点按（先勾“已了解风险”540,2082 → 再点“继续安装”540,2247）|
| `build_inputs/r6d175…r6d180/` | 每批清单（补丁+检查+装机+待办）|
| `capture_r6d1xx_{key,diag,tick}.txt` | 抓样原始数据（大，按需）|
| `/sdcard/GLG/history23_release/` | **发布目录**（= 仓库镜像的来源；`release_pack.py` 生成） |

---

## 3. 当前进度总览

### 3.1 本系列批次链（全部已装机）
| 批次 | 内容 | 状态 |
|---|---|---|
| r6d169 | 只读诊断 `AirDefDiag`（+`updateAll` 开头注入 scanAll） | 已装机 |
| r6d170 | 修 `aline` 上限判据反写 | 已装机 |
| r6d171 | AD-1′ 恢复开火：`AirDefense`（`tickTurn`/`tickAll` + `lastTurn` 守卫） | 已装机 |
| r6d172 | 修回归：摘除 `AirMission.placeAirDivision` 里 1 行探针调用 | 已装机 |
| r6d173 | 诊断补全（`isq`/`nearX`，`nADA d=/w=`）+ 10 探针判空加固 | 已装机 |
| r6d174 | 修开火侧 3 处极性反写（`eligible`/`inRange`小同省/距离） | 已装机・验收 |
| **r6d175** | **纬度口径 I**：新增 `AirLat`（`f`/`r`）；`detectEnemyMissions` 两分支改口径 + **雷达分支极性（用户裁定 A：圈内才标记）** | 已装机 |
| **r6d176** | **口径 II**：新增 `AirLat.hit`；`fogFromRadar`/`fogFromAirports`/`AirMission.huntVisOk`/`aiVisRadarPass` 统一口径 | 已装机（含回归）|
| **r6d177** | **修回归**：`fogFromRadar` 的口径换算从“内层省循环”移到“每雷达省一次” | 已装机・用户验收“圈对齐”✓ |
| r6d178 | 加命中探针 `nADH`（`logHit`） | 已装机（探针没出数据）|
| r6d179 | 自证+计数器：`nABOOT v=r6d179`、`hitSeen`、`nADM … h1=` | 已装机（定位到“探针未被调用”）|
| **r6d180** | **根因修复**：`pickTarget` 索引极性 `if-ne`→`if-eq`（1 行）；自证升 `r6d180` | **已装机・验收通过** |

### 3.2 已验收结论
- **纬度口径**（用户已验收“雷达圈对准”）：实测 `FGR_RD rps 0→4 / hits 最高 760`。
- **AD-1 开火+命中**（本批验收）：`nAD`15 行 = `nADH`15 行 = 15 发；命中 `h=1` **9/15（60%）**，`c=500`（50% 规格）✓；`r<500→h=1`、`r≥500→h=0` ✓；无崩溃；`k=0`（27 点伤害不足以击落）。
- **悬案定案**：早先“18发/28发 0中”其实是 **0 发射**（`pickTarget` 极性反写），不是命中率问题。

### 3.3 挂账（下一步工单）
① **AD-2**（§7）；② `AirForceManager.aiVisAirportPass`（裸圆 + 未知 `p3` 语义）未改；③ 判定 `÷iMapScale` vs 渲染 `×scale` 是否同尺；④ `planeFogR` 调用点 2045/2049 是否双补偿；⑤ 哑火探针（`nTO/takeoff`、`adp/pap/tkr/fkr/artD/posD`）搬“真路径”；⑥ **AD-3 开火可见特效**（当前开火无视觉）；⑦ AD-6 科技（活化 `adHitChance/adDamagePerHit` 的“代际空位”）；⑧ 钢四科技系统移植（14 批计划已落盘，等 3 个前置参数）。

---

## 4. 本轮到底改了什么（12 个文件，逐项）

| 文件 | 类型 | 改了什么 | 当前 md5 |
|---|---|---|---|
| `aoc/kingdoms/lukasz/map/battles/AirLat.smali` | **NEW** | **唯一纬度入口**：`f(I)F`＝clamp(cos((y-4300)/4300×π/2),0.25,1)；`r(II)I`＝R×f；`hit(IIII)Z`＝r+calcCosK+calcInEllipse | `34b18f7a4644fc2b74f2358c96d39be1` |
| `aoc/kingdoms/lukasz/map/battles/AirDefense.smali` | **NEW** | AD 核心：`adHitChance/adDamagePerHit`（代际空位 0.5f/3.0f）、`airDefenseAt`（只数 AAA）、`inRange`（同省或≤300px）、`eligible`、`countTargets`、`pickTarget`（**r6d180 修极性**）、`applyMdDamage`、`fireProvince`、`tick/tickSafe/tickTurn/tickAll`、探针 `logAD/logADA/logHit` | `7a835107d1153351cc5a6531e4fb0adc` |
| `aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali` | **NEW** | 只读诊断：`scanAll→run`、`mline`(`nADM`+`h1`)、`pline/gline/aline`(`nADA`)、`inR`、`nearX`、`isq`、`live`、`cnt`；`nABOOT v=r6d180` 自证 | `077f52ee647f6dcbcc2636f9319d83d8` |
| `aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali` | **NEW** | 位置/分列探针（`upx/upy/uaw2/takeoff/mk/aif/hit1-3`…），均已加判空 | `da92ca47fd5c870d9cd344ab4d1a626c` |
| `aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali` | DIFF | `detectEnemyMissions`（雷达分支 `R=r(R,y)`＋**极性=圈内才标记**；机场分支裸圆→椭圆）；`fogFromRadar`（`R=r(R,y)`，**每雷达省一次**）；`fogFromAirports`（→`hit()`）| `dfef7943af91ee6ebd249611da1d0dd6` |
| `aoc/kingdoms/lukasz/map/battles/AirForceManager.smali` | DIFF | `aiVisRadarPass`：`R=r(R,y)`；另有历史改动（注入 `AirDefDiag.scanAll` 与 `AirDefense.tickTurn`）| `4f2eae73a71165247ce4d612c1a99b13` |
| `aoc/kingdoms/lukasz/map/battles/AirMission.smali` | DIFF | `huntVisOk`：`R=r(R,y)`；历史：探针判空、跨省挂 `fogFromPlanesTick` | `4e893ea4c1ce5f1d985fadc495606bce` |
| `aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali` | DIFF | 日志链：`dKey`（节流）/`logOnce`/`dWrite`（免节流）/`e5i`/`e5ii` 等 | `9f5e165ab896bfe1ce93d09023292ceb` |
| `aoc/kingdoms/lukasz/map/army/ArmyDivision.smali` | DIFF | 分列/位置字段（历史系列）| `861149594cf252c4fc430353469dd258` |
| `aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali` | DIFF | 分列偏移/绘制（历史系列）、`myOrDetectedMission` | `cc3a623d6e5d48c84337df8c9e937c94` |
| `aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1.smali` | DIFF | 同上（内部类）| `b9caacfe1bd21a88a11fb884660cb912` |
| `aoc/kingdoms/lukasz/map/province/Province.smali` | DIFF | `updateArmyPosY` 分列（`iShiftX`）、`r6d165` 标记等 | `607ef81f7ce22fb9060f9179dd2758b5` |

> 说明：`DIFF` 中包含**更早批次**（分列、探针、开图）的改动，它们是仓库快照之后累积的全部差异，不代表全部都是本轮所改。本轮（AD 系列）新增/修改的核心是前 7 行。

---

## 5. 必须知道的机制知识（否则会重走弯路）

### 5.1 纬度口径（本系列的最大成果）
- 唯一入口 **`AirLat`**：`f(y)`、`r(R,y)=R×f`、`hit(dx,dy,R,y)`。
- 统一口径：`R' = R×f(y)`；命中 ⇔ **`(dx/R)² + (dy/(R·f))² ≤ 1`** ＝ 屏幕上画出来的椭圆 `(横半轴 R, 竖半轴 R·f)` ⇒ **“圈=判定范围”**。
- **渲染 4 处一行未改**（`ProvinceDrawArmy` 两处内联 + `RadarBitmap` + 飞机雷达圈）⇒ 圈不变大、仍随纬度变扁。
- ⚠️ **口径换算必须“每个雷达省一次”，不能放内层省循环**（r6d176 血案：R·f^k 累积⇒归零⇒圈内不亮）。

### 5.2 防空术语（已核实）
- **防空阵地 = AAA 炮**（`BuildingsManager.AAA_BUILDING_ID`）；`AirDefense.airDefenseAt(I)` **只数 AAA**。
- **雷达 = RADAR(`RADAR_BUILDING_ID`) / LONGRADAR(`LONGRADAR_BUILDING_ID`，即“中层反导”)**；`AirForceManager.hasRadarBuilding(I)Z` / `hasLongWaveRadarBuilding(I)Z`；`radarProvinces:Set`。
- 只建雷达、不建 AAA ⇒ AD-1 **不开火**（设计现状，不是 bug）。

### 5.3 探针通道与字段（避坑速查）
| 通道 | 落盘文件 | 特性 |
|---|---|---|
| `AirDbgLog.dKey(tag,msg)` | `files/airdbg_key.txt` | **500ms 节流**（相邻行会被吃掉）|
| `AirDbgLog.logOnce` | `files/airdbg_tick.txt` | 只写一次 |
| **`AirDbgLog.dWrite(s)`** | `files/aircfg_diag.txt` | **免节流**（诊断/自证首选）|

路径（设备侧）：`/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/`
- `nAD p/n/s/t/h/k`＝省/发数/发数/**射程内目标数/命中/伤害**
- `nADA t/c/p/aaa/A/inR/d/w`＝回合/文明/省/AAA数/该国机场数/**射程内敌任务数/最近敌机距离/900px内数目**
- `nADM t/all/alive/dep/noDep/h1`＝回合/任务总/存活/已部署/未部署/**命中探针计数**
- `nADH p/c/r/h`＝每发命中判定原始值（`c`=chance×1000 应=500）；`nADH0 first`＝首次调用
- `FGR_RD rps=/hits=`＝雷达省迷雾；`nABOOT v=`＝启动自证（**装完先看这个**）

### 5.4 铁律（血案换来的，勿重犯）
1. **装了新包必须完全杀掉游戏进程再测**（最近任务划掉/重启），否则内存里还是旧 dex。
2. 判定/极性点位 ⇒ **文本门禁 + 行为级模拟器**两道防线；门禁必须带**能复原血案的负样本**。
3. **grep 前缀坑**：统计 `nAD` 用 `^nAD `（带空格），否则把 `nADA/nADM/nADG` 全算进去。
4. “乘系数”类改动先问：这段代码是**每次调用一次**还是**每个元素一次**？
5. `if-gez`＝“≥0 跳”；`if-ltz`＝“<0 跳”；**探针必须独立成方法**（主方法只留 1 行 invoke）。
6. **汇总行会骗人**：`n=1 t=1` 只说明循环跑了；是否**真发射**看 `nADH`/`h1`。
7. 插入代码必须在 `check-cast` 之后；`.registers` 最后 k 个是参数寄存器。
8. 打包模板**永远用“上一个归档包”**；归档目录只留 4 类。

---

## 6. 构建/装机链（以及“哪些必须在手机上做”）

### 6.1 手机侧链路（已固化）
```
bash toolchain/act/assemble.sh <批次>            # smali树 → /tmp/<批次>_classes.dex（必须 result=true）
bash toolchain/act/verify.sh <dex> [对照apk]      # 八件套：Invoke/Regs/Init/Range BAD=0；Cast=50/Undef=10/MISSING=14 白噪；Sig 对照
bash toolchain/act/build_fast.sh <批次> <dex> <上一个归档包>   # zipalign+签名+归档
cp <apk> /data/local/tmp/                          # pm install 读不了 /sdcard（fuse）
sh  toolchain/autotap3.sh /data/local/tmp/<apk>    # vivo 安装框：先勾“已了解风险”再点“继续安装”
```
- 工作树：`/tmp/w3a/smali`（= 转接包的 `smali_tree_r6d180.tar.gz`）
- 关键工具/依赖（手机侧）：`toolchain/lib/{smali,baksmali,dexlib2,guava,antlr}-2.5.2.jar`、`/tmp/RunSmali.class`（自研装配入口）、`/tmp/rebuild_v119fix.py`、`/tmp/debug.keystore`、`/tmp/e3`（Earth3 素材）、`/tmp/base_v119.apk`
- **反汇编（读原版代码）**：`java -cp "$CP:/tmp/dcls" DumpM <classes.dex> <类名关键字> <方法名>`（需 dexlib2+guava+antlr；**baksmali CLI 因缺 jcommander 不可用**）

### 6.2 电脑侧怎么搭等价环境
1. 解包 `smali_tree_r6d180.tar.gz` ⇒ `smali/`（5523 个）
2. 下载 smali/baksmali 2.5.2 + dexlib2 + guava + antlr 到本地；自写一个 `RunSmali` Java 入口（或直接用 `smali.jar` 的 `Main`）把树装配成 `classes.dex`
3. 素材/签名：Earth3 地图与 keystore 在仓库 `build_inputs/`（若含大文件已被 release 排除）；**若只做逆向分析，不必重打包**
4. 需重打包时：`zipalign -f 4` + `apksigner sign --ks ...`，并核 `apk内 dex md5` 与 `Earth3=18510`

> 现实建议：**装机与抓样留在手机**（vivo 安装框需要自动点按、探针文件在 `/sdcard/Android/data/...`）；电脑侧专注“反编译/改 smali/写门禁与模拟器”，产出 patch 再回手机执行。

---

## 7. 下一步工单：AD-2（规格已由用户定稿）

**用户裁定原文**：
> “如果一个省份上既有防空阵地，又有雷达，那防空阵地的射程将增加 150px；另外，给防空阵地的射程搞一个红色的亮圈；防空阵地的射程也应该受到纬度的变化而变化。”
> “（D2）不用设到 600，中层反导雷达我还要重置的”；“代际”概念留到 AD-6 接科技。

| 项 | 规格 | 我的落点（建议） |
|---|---|---|
| **D1** 雷达＝开火许可 | 本省（或本国）有雷达 ⇒ 该阵地才允许开火 | `AirDefense.tick`/`fireProvince` 入口：`AirForceManager.hasRadarBuilding(prov) \|\| hasLongWaveRadarBuilding(prov)`（本国维度再议）|
| **D2** 射程加成（**省份级**） | 同省**既有阵地又有雷达** ⇒ 该省阵地射程 **+150px**（**不叠加、不设上限**） | `AirDefense.inRange`：现为“同省必中 / 否则≤300px” ⇒ 改 `R = 300 + (同省有雷达 && 有阵地 ? 150 : 0)`；并把“有效半径”落成可读常量便于参数化 |
| **D3** 射程随纬度 | 防空射程必须吃纬度换算，且与雷达圈**同一口径** | 用 `AirLat.f(y)`：把 300/450 变成“按纬度换算的有效半径”，判定用 `AirLat.hit(dx,dy,R,y)` |
| **D4** 红色射程亮圈 | 给防空阵地射程画**红色亮圈** | 在渲染路径叠加（`ProvinceDrawArmy` 的雷达/阵地绘制处），半径用 `AirLat.f/r` **同口径**；红圈=判定范围 |
| **D5** 弹数 | 固定参数：每座阵地每回合 **1 发**（不做代际） | `AirDefense.tick` 的发射次数源（现为 `airDefenseAt`=阵地数）改为 1 |

其他挂账见 §3.3。

---

## 8. 推 GitHub 的动作（详细）

### 8.0 现状
- 仓库：`git@github.com:XDElemon/AOH3mod-FMO.git`，分支 `main`
- 手机侧仓库 `/root/history23_repo`，HEAD=`c1df6cf`（C2-B3，r6d126-137），**工作区干净**
- 该仓库由 **`/sdcard/GLG/history23_release/`（发布目录）rsync 而来**；发布目录由 `release_pack.py` 生成
- ⚠️ 发布目录**不含 `src/smali` 的当前树**（仅有 `base/` 底座 tar + `patches/`）⇒ AD 系列的 smali 源码目前**只在工作树与转接包中**

### 8.1 路线 A：在电脑上（推荐，因为推送密钥在电脑侧最方便）
```bash
# ① 克隆
git clone git@github.com:XDElemon/AOH3mod-FMO.git   # 或 https（用 token）
cd AOH3mod-FMO

# ② 应用转接包的 12 个文件（含 4 个新文件）
cp -a /path/to/handover_r6d180/changed/. src/smali/

# ③ 复制文档与工具（可选但建议）
#   文档：手机 /sdcard/GLG/历史23/r6s5/ 下本系列全部 .md → repo/r6s5/
#   门禁：手机 /sdcard/GLG/历史23/toolchain/act/{check_r6d17*,check_r6d180.py,sim_*.py,DumpM.java,DumpFind.java} → repo/toolchain/act/
#   批次清单：/sdcard/GLG/历史23/build_inputs/r6d175…r6d180/ → repo/build_inputs/
#   转接包：delta.diff、smali_tree_r6d180.tar.gz → repo/ 或 repo/r6s5/

# ④ 提交并推送
git add -A
git commit -m "AD 系列: 纬度口径统一(AirLat) + AD-1 开火链修复(pickTarget极性) ; r6d169-r6d180 已装机验收"
git push -u origin main
```
**提交信息建议**（沿用仓库风格：前缀 + 批次 + 一句结论）：
```
AD-1 防空开火链验收(r6d169-r6d180): 新增 AirLat 纬度口径(f/r/hit) + detectEnemyMissions/fogFromRadar/fogFromAirports/AirMission/aiVisRadarPass 统一口径 + pickTarget 极性修复(if-ne→if-eq); 自证 nABOOT v=r6d180; 实测 15发/9中
```

### 8.2 路线 B：在手机上（一键脚本，已存在）
```bash
cd /sdcard/GLG/历史23
bash toolchain/../toolchain/sync_and_push.sh "<commit message>"   # 实际路径：/sdcard/GLG/历史23/toolchain/sync_and_push.sh
# 它做四件事：① python3 release_pack.py 刷新发布目录 ② rsync 到 /root/history23_repo
#             ③ git add/commit ④ git push
```
⚠️ 前提：
- 需要 **deploy key**：`~/.ssh/id_ed25519_gh`（私钥）+ 公钥已加到仓库 Settings → Deploy keys 且勾选 *Allow write access*；**当前手机 `~/.ssh` 下没有该私钥 ⇒ 手机端推送大概率失败**（那就走路线 A）。
- 首次使用需：`REMOTE=git@github.com:XDElemon/AOH3mod-FMO.git bash toolchain/sync_and_push.sh --init`
- **发布目录不含当前 smali 树** ⇒ 先手工把 `handover_r6d180/changed/...` 复制到 `/sdcard/GLG/history23_release/src/smali/`（若无 `src` 目录则新建），否则推上去的只有文档/工具、没有源码变更。

### 8.3 不要提交的东西
- 任何 `*.apk`（763MB/个）、`/tmp/*_{work,aligned,signed}.apk`
- 抓样大文件 `capture_*_key.txt`（可达 40MB+，除非需要长期留档）、`aircfg_diag.txt` 原始件
- `/tmp/w3a`、`/tmp/e3`、`/tmp/base_v119.apk` 等中间产物

---

## 9. 一致性校验（电脑端拿到包后先核）

### 9.1 构建产物
| 项 | md5 |
|---|---|
| 构建 dex（r6d180）| `1a2cbc69fbbbecd1952cee76acb3757d` |
| 归档 apk（r6d180）| `3dbceb419dcb766d9e793ccce52ce9cf` |

### 9.2 12 个文件 md5（与转接包 `changed/` 逐一对）
```
34b18f7a4644fc2b74f2358c96d39be1  aoc/kingdoms/lukasz/map/battles/AirLat.smali
7a835107d1153351cc5a6531e4fb0adc  aoc/kingdoms/lukasz/map/battles/AirDefense.smali
077f52ee647f6dcbcc2636f9319d83d8  aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali
da92ca47fd5c870d9cd344ab4d1a626c  aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali
dfef7943af91ee6ebd249611da1d0dd6  aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali
4f2eae73a71165247ce4d612c1a99b13  aoc/kingdoms/lukasz/map/battles/AirForceManager.smali
4e893ea4c1ce5f1d985fadc495606bce  aoc/kingdoms/lukasz/map/battles/AirMission.smali
9f5e165ab896bfe1ce93d09023292ceb  aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali
861149594cf252c4fc430353469dd258  aoc/kingdoms/lukasz/map/army/ArmyDivision.smali
cc3a623d6e5d48c84337df8c9e937c94  aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali
b9caacfe1bd21a88a11fb884660cb912  aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1.smali
607ef81f7ce22fb9060f9179dd2758b5  aoc/kingdoms/lukasz/map/province/Province.smali
```
> ⚠️ smali 汇编**非确定性**：同一棵树两次汇编出的 dex md5 可能不同 ⇒ 只能“装哪版核哪版”，不要拿旧 md5 对账源码。

---

## 10. 用户约束与偏好（务必遵守）
1. **先三轮调研再动手**（全量→拓展→定稿：锚点/真值表/寄存器/门禁），每轮落盘 `r6s5/调研_*.md`。
2. 判定/极性点位 ⇒ **门禁 + 行为级模拟器**，门禁要带**负样本**。
3. 打包模板**永远用“上一个归档包”**；归档目录只留 4 类（回退/已验证/上一版/当前）。
4. **不自动启动游戏**（由用户启动并实测）；装包后注意 `files/` 是否被清空与 UID 变化。
5. 每个新版本交付时**必须附【设计逻辑】11 项**（版本定位/目标/规则与判定顺序/参数表/状态生命周期/边界不变量/玩家可感知/失败回退/验收可证伪/变更清单/风险待办）。
6. “改完之后才出现的闪退＝回归”，不许推给既有 bug。
7. 靶子包只有一个：`age.of.history3.qiamxi.zhiri`；**勿碰 `age.of.history3.TNO.yunsi`**。
8. 世界书/文档先行：不可再生事实先写盘再继续（总结只存语义，文件才存事实）。

---

## 11. 首日建议动作（step by step）
1. 取包 → 核 §9 md5；解 `smali_tree_r6d180.tar.gz` 得到等价工作树。
2. 读 `r6s5/设计逻辑_r6d175…r6d180*.md`（6 篇）与 `实测记录_r6d180_AD1开火验收.md`（理解现状与铁律）。
3. 按 §8 选路线推 GitHub（含 12 个源码文件 + 本系列文档 + 门禁脚本 + 批次清单 + `delta.diff`）。
4. 开工 **AD-2**：先三轮调研（D1 雷达许可落点 / D2 射程加成与 `inRange` 改造 / D3 纬度口径复用 `AirLat` / D4 红圈渲染路径 / D5 弹数），产出定稿锚点表与门禁+模拟器，再写补丁脚本 → 回手机执行装机。
5. 全程遵守 §10。
