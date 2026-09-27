# 终序千禧 × ICBM 系统移植 —— 产品规划书 v2.1（详尽版）

- 文档版本：v2.1（当前状态基线·详尽版）
- 编写时间：2026-08-24
- 前版：v1（2026-08-23 调研基线）/ v2（2026-08-24 摘要版），均已保留
- 基线安装包：/sdcard/GLG/历史23/build_apk/dbg_signed.apk（2026-08-24 19:34 装机）
- 目标包名：age.of.history3.qiamxi.zhiri
- 游戏启动 Activity：aoc.kingdoms.lukasz.jakowski.AndroidLauncher
- 项目代号：Operation FALCON（空军）；Operation DOOMSDAY（核战争）

---

## 0. 术语与约定（消除歧义）

| 术语 | 定义 |
|---|---|
| 机场（Airport） | 空军基地建筑对应的运行时对象（类 Airport），一省一机场；是飞机停放/建造/出击的载体 |
| 空军师（Air Division） | 本项目的自定义概念：一个真 ArmyDivision 实例，key 以 airhq_ 开头，挂在机场省份，用于复用原版“选中/军队栏/行进”交互；本身不参与陆军战斗 |
| AirUnit | ICBM 机制层单位：单架/组飞机数据（hp/maxHp/airAttack 等），存放于 Airport.aircraft |
| AirMission | ICBM 机制层任务：PATROL 等；含状态机 PLANNING→EN_ROUTE→EXECUTING→RETURNING→COMPLETED |
| 编队 | 用户约定的 10 架战斗机组成一个空军师（1 团，num=10） |
| 巡逻（PATROL） | 当前唯一任务类型：从机场起飞→飞到目标省→滞留 2 回合→返回机场→飞机回库（满血） |
| 选中圈 | 黄圈（ringSel 88×88），表示当前选中的飞机编队 |
| 航程圈 | 白圈（半径=选中机型 CombatRadius×scale×0.25），表示该编队作战半径 |
| 状态标识 | ✅=已装机验证；🆕=已实现待验收；🔶=部分完成（列出已做/未做）；❌=未开始 |

---

## 1. 项目定位与范围

将 ICBM（Escalation Endless October）的空军系统与核战争系统核心机制移植进终序千禧（AoH3 改版）。

最终形态：终序千禧 = AoH3 国策/回合文明底盘 + ICBM 级空军体系 + ICBM 级核战争体系

### 明确不移植（控制范围）
1. ICBM 实时战略地图拖拽操作（终序千禧保持回合制+实时动画）
2. ICBM 导弹发射动画 1:1 复刻（用 AoH3 原生核弹动画替代）
3. ICBM 原始美术资源（仅移植机制与数值，美术自绘/复用现有素材）

---

## 2. 当前基线快照（2026-08-24 装机版）

### 2.1 已达成功能（逐项：实现要点 / 代码位置 / 触发条件 / 已知限制）

| # | 功能 | 实现要点与代码位置 | 触发表触发 | 已知限制 |
|---|---|---|---|---|
| F1 | AircraftTypes.json 合法化 | assets/game/AirUnit/AircraftTypes.json；代码实际加载文件为此（AircraftDataManager.types），非 Aircraft.json（死文件） | 游戏启动加载 | Aircraft.json 为遗留半成品，无人引用 |
| F2 | 4 机型可建造 | 拦截/战斗/攻击/轰炸；空军司令部面板 select→建造→回合递减（Airport.updateBuild 建成→AirUnit 入 aircraft 列表→totalAircraft++） | 回合推进 updateAll→updateBuild | 建造队列容量上限=20 |
| F3 | 机场不带飞机 | 已撤销“机场注册即送机”逻辑；飞机仅经 F2 建造产生 | — | AI 机场除外（见 F12） |
| F4 | 地图建筑图标 | 机场/雷达/反导/长波；ProvinceDrawArmy.drawAirportIcons + drawAirForceBuildingIcons；修复过 getAirportByProvinceID 双层遍历 ClassCastException 与 setBlendFunction | 每帧 | — |
| F5 | 机型图标放大 | 战斗机/拦截机/攻击机 40px；轰炸机 56px；友军环 56px；HP 环 25/22/33px（drawAirForce） | 每帧 | — |
| F6 | 点击选中飞机 | trySelectAirUnit(屏x,屏y)：全机场遍历+坐标命中（距离²≤0xe10=60px 半径）+totalAircraft>0；命中→selectedAirportProvinceID=省ID | actionDown（ProvinceTouchExtraAction$1.extraAction） | 命中后即选中；黄圈=ringSel |
| F7 | 黄圈选中圈 | drawAirForceSelection：仅选中时绘制 ringSel 88×88 | 选中后每帧 | 取消方式=点空地/点其他 |
| F8 | 白圈航程圈 | drawAirForceCircles：半径=选中机型 CombatRadius×scale×0.25 白色；原为黄色已改白 | 选中后每帧 | 与黄圈并存（黄=选中，白=航程） |
| F9 | 实时平滑飞行动画 | AirMission.animStartMs 时间戳；drawAirForceMissions 用（now-animStartMs）插值；去程 3s/回程 2s；已取消回合制逐步 | 任务创建后每帧 | 不可暂停/取消 |
| F10 | 巡逻任务“飞到目标再回来” | createPatrol(Airport,目标省ID)：全部可用战斗机起飞→目标省滞留 2 回合→返回；handleProvinceClick(I)为入口（已在 ProvinceTouchExtraAction 省份激活时调用） | 选中编队后点击其他省 | 前进基地/搬迁移已撤销 |
| F11 | 血量制空战 | updateAirCombat：被敌机雷达圈探测→hp -= 敌机 AirAttack×0.5；hp≤0 击落（recordLoss）；返航 hp=maxHp（returnToBase） | 任务飞行中每回合 | 敌机无战损（F19/S6） |
| F12 | 飞行中编队血环 | drawAirForceMissions：48×48 环，按首机 hp/maxHp×8 用 ringHP_0~8 分级 | 任务飞行中每帧 | 环取首机血量，非全队均值 |
| F13 | AI 机场初始机队 | AI 机场注册时 4 拦截机+4 战斗机（玩家不送） | AI 机场注册 | — |

### 2.2 师级单位模型 v1（🆕 待验收）——完整链路说明

**目标效果**：与用户提供的效果图一致——选中飞机时，左下角弹出与“选中陆军师级单位”完全相同的原版军队栏（将领位/军队编制：战斗机/行进按钮）。

**完整行为链（每步的实际代码路径）**：
1. 建造完成：空军面板建造战斗机→回合归零→Airport.updateBuild 在 :cond_add 段（飞机入编后、totalAircraft++ 前）判断 buildingType==FIGHTER→调用 AirForceManager.syncAirDivisionAirport(Airport)。
2. 师生成（syncAirDivisionAirport，public static，新增）：以 key="airhq_"+civID+"_"+provinceID 查 Province.getArmyKeyID；不存在→new ArmyRegiment(uID=5(Fighter),aID=0) + 设 num=10（1 团=10 架）→new ArmyDivision(civID,provinceID,regiments) + 设 key/iArmyRegimentSize=1/fMorale=1.0→Province.addArmy(division)；已存在→直接返回（不重复建）。
3. 选中飞机（actionDown）：trySelectAirUnit 命中→selectedAirportProvinceID=省ID→构造 Game$HoveredArmy{key=airhq_key, iProvinceID=机场省, iArmyID=Province.getArmyKeyID(key), iCivID=机场 civID}→Game.addActiveArmy(HA)→ProvinceTouchExtraAction.actionUp_SetActiveArmy()（触发原版军队栏刷新）。
4. 军队栏弹出：InGame_ProvinceArmy 读取 activeArmy[0]→getArmyKeyID(key)≥0→显示：无将领（armyGeneral=null→显示 NoGeneral）、军队编制=战斗机×10、行进按钮、省份标题。（零面板代码修改，全部原版逻辑）
5. 行进/出击：点行进→原版移动模式→点目标省→MapTouchManager→GameActiveProvince.moveActiveArmiesToProvinceID→Civilization.newMove(fromProvinceID,toProvinceID,key,...)：拦截 airhq_ key→return false（师不移动）→继而 ProvinceTouchExtraAction 的 handleProvinceClick(目标省) 触发 createPatrol→飞机出击往返。
6. 防冲突保护：MapTouchManager 军队 toggle 段：hoveredArmy 命中 airhq_ 师→goto :goto_2 跳过“选中/取消”切换（防止 actionUp 把 actionDown 刚选中的师取消）。
7. 军旗隐藏：drawProvinceArmyWithFlag 开头：armyDivision.key 以 airhq_ 开头→return-void（不画陆军旗/士气条/军队名）；飞机视觉完全由 drawAirForce 负责。

**约定（不可更改）**：
- key 前缀固定 "airhq_"；师军团固定 1 团（Fighter uID=5，num=10）
- 空军师不出现在陆军混编/合并/升级/补员逻辑中（newMove 已拦截；其他未拦截路径待 S4 处理）

---

## 3. v1 规划书对照进度（逐里程碑）

| 里程碑 | 总状态 | 已完成部分 | 未完成部分 |
|---|---|---|---|
| M0 调研冻结 | ✅ | 字段清单、壳验证（重打包可行）、调用链清单、M0 调研报告（M0调研报告_字段与调用链清单.md） | — |
| M1 空军基础修复 | ✅ | AircraftTypes.json 合法化；4 机型可建造；出击/巡逻/返航闭环；机场图标/四建筑图标修复；UI 无报错 | 无（按 v1 定义收官） |
| M2-A 代差树 Gen1-6 | ❌ | 无 | generation 字段、科技节点（Gen2-6）、阵营贴图切换、数值演进曲线；Gen3-6 素材已具备（kb_assets） |
| M2-B 挂载系统 | ❌ | 无 | 武器枚举、payloadSlots 挂载槽、弹药补给、AutoEngage 优先级 |
| M2-C 作战任务系统 | 🔶 | C2 流程（起飞-交战-返航）；C3 空战初版（血量制，见 F11） | C1 任务类型（仅 PATROL）；C3 敌机战损；防空火力；C4 雷达探测圈逻辑 |
| M2-D 机场雷达联动 | 🔶 | 建筑存在+图标正常（F4） | 容量上限联动、基地被毁机队回收判定、跑道受损修复期 |
| M2-E AI 空战 | 🔶 | AI 机场初始机队（F13） | AI 建造评估、AI 任务调度、编队数量优势修正 |
| M2-F 空军 UI | 🔶 | 建造界面可用；选中/军队栏（师模型复用原版） | 空军面板状态列表（驻场/空战/返航/损失）、战报 UI（M2-F4） |
| M3 核战争基础 | ❌ | 无 | M3-A 弹头分级/产业链/库存；M3-B 陆海空平台；M3-C 发射与打击；M3-D AI 核战略 |
| M4 核战争深度 | ❌ | 无 | M4-A MIRV；M4-B 拦截链；M4-C DEFCON；M4-D EMP；M4-E CBRN；M4-F 电站事故 |
| M5 扩展武器 | ❌ | 无 | 化学/生物/盐弹/钴弹/ASAT/核防空 |
| M6 平衡与测试 | 🔶 | 稳定性多轮真机验证（含 VerifyError 修复） | 换算系数表、存档迁移、48h 长跑、双 ABI |

---

## 4. 问题清单（S — 每项含现象/影响/方向/验收）

### P0 组（当前轮必须处理）

**S1 师模型真机验收**
- 现象：v1 首次装机，未做真机全流程验证
- 影响：若链路某环节失效，用户无法使用“飞机=师级单位”核心体验
- 方向：按 2.2 链路 1→7 逐环节测试（建造→出师→选中→弹栏→行进→巡逻→取消）
- 验收：7 步全部符合预期，不闪退

**S2 行进按钮链路**
- 现象：点“行进”后进入原版移动模式，点目标省由 newMove 拦截+handleProvinceClick 双路径，需确认无冲突/无重复派单
- 影响：可能重复创建巡逻任务或卡在移动模式
- 方向：真机走一遍；必要时在 newMove 拦截后加“本次点击已消费”标记
- 验收：单次点击只创建一个巡逻任务

**S3 存档兼容（高风险）**
- 现象：AirForceManager（AirUnit/AirMission/机场登记）无序列化代码；Airport 数据不在 SaveGame 中；而空军师（ArmyDivision）会随原版存档保存
- 影响：读档后机队/机场状态丢失，但省里残留“空壳师”→选中军队栏显示战斗机×10 却无飞机可出击
- 方向：方案A=SaveGameManager 增加空军段（机场/机队/任务/师 key 映射），旧档默认值；方案B=读档时重建（按省建筑扫机场+按 airhq_ 师恢复机队）
- 验收：存档→读档后飞机数量/机场/师状态与存前一致；旧档可正常读

**S6 敌机战损**
- 现象：updateAirCombat 只结算我方损失，敌机 hp 不扣、不击落
- 影响：敌方拦截机永久存在，战斗无“消耗”感；偷袭敌机场无意义
- 方向：敌机 AirUnit 同样 hp 制；被击落→从敌机场 aircraft 移除；必要时对称扣血
- 验收：空战后敌机数量可见减少

### P1 组（M2-A 前置）

**S4 AI 误操作空军师**：AI 军队调度/合并逻辑遇到 airhq_ 师可能尝试移动/合并（newMove 已拦，其余路径如 AI_Manager.updateArmies 待排查）；方向=AI 遍历军队时跳过 airhq_ 师；验收=AI 回合后空军师位置/编制不变。

**S5 多机种师化**：目前仅 FIGHTER 机型创建师（updateBuild 判断）；拦截机/攻击机/轰炸机建造后不生成师→无法被选中弹栏；方向=按机型创建对应师（多团或一机型一师），军队栏编制显示“拦截机×10”等；验收=四种机型均可选中弹栏。

**S7 取消选中体验**：目前点同一飞机（actionDown 重复 addActiveArmy 幂等）不会取消；点空地由原版 clearActiveArmy 关闭；点其他陆军师→原版 toggle 正常工作。需确认用户预期：是否希望“再点一次已选中飞机即取消”。

**S8 序列化方案落地**：同 S3，需先定方案再实现。

**S9 金描边/悬停共存**：原版 drawProvinceArmyActive 会对 activeArmy 中的空军师画金描边（位置在师坐标=省中心附近，可能遮挡飞机图标视觉）；需确认与黄圈/白环共存效果，必要时对 airhq_ 师跳过金描边。

**S10 RealTimeSim 检查**：AirForceManager 与 RealTimeSim 的关系待确认（是否存在实时模拟线程与回合制双写冲突）。

---

## 5. 下阶段路线图（每阶段：目标/任务/验收）

### 阶段一（P0，预计 3-5 天）：师级模型打磨与稳定

目标：把“飞机=师级单位”从待验收变成稳定可用。

任务清单：
1. [ ] S1 真机验收（链路 1→7）
2. [ ] S2 行进按钮链路冲突修复（防重复派单）
3. [ ] S3+S8 存档兼容（方案二选一：A 序列化 / B 读档重建；推荐 B 先行，改动小）
4. [ ] S6 敌机战损（对称 hp 制）
5. [ ] S4 AI 遍历跳过 airhq_ 师
6. [ ] S9 金描边确认（不遮挡飞机视觉；否则跳过）
7. [ ] S7 取消选中交互确认（含用户决策）
8. [ ] 回归测试 F1-F13 全项

验收标准：
- 建造→选中→弹栏→行进→巡逻→返航 全链路真机通过；无闪退
- 存档→读档后 飞机数量/机场/师 状态一致
- 空战可见敌机损失；四机型均可选中

### 阶段二（P1，1-2 周）：M2-A 代差树（Gen1-6）

| 子任务 | 内容 | 验收 |
|---|---|---|
| A1 数据结构 | AircraftTypes.json 增加 generation 1-6 子表（Speed/CombatRadius/AirAttack/GroundAttack/Defense/Agility/Stealth/Ecm/Fuel/RadarRange）+ 阵营字段（CN/EU/RU/US） | 一个机型可完整定义 6 代 |
| A2 科技挂钩 | 新增科技节点 空军Gen2-6（共 5 节点），与 AoH3 RequiredTechID 整合；跨代解锁联动 | 科技解锁后机型自动升级 |
| A3 视觉替换 | 按 代次+阵营 自动切换贴图（Gen3-6 已有；Gen1/2 回退默认或补图） | 4 阵营×6 代无缺图 |
| A4 数值演进 | 照 ICBM 倍率设计代差成长曲线 | 数值表过审 |

### 阶段三（P1，2-3 周）：M2-C 空战完善

| 子任务 | 内容 | 验收 |
|---|---|---|
| C1 任务类型扩展 | STRIKE（对地攻击）/ INTERCEPT（截击敌机）/ 护航 / 侦察；沿用 AirMission 状态机 | 五类任务皆可下达 |
| C2 敌机战损+战报 | 敌机 hp/击落/编队损失；战后结算面板（击落/损失/返航/弹药） | 战报可读、数据一致 |
| C3 防空火力 | AAA 建筑+反导阵地对来袭机群按概率结算 | 防空生效 |
| C4 雷达探测圈 | 雷达建筑提供探测圈：圈外敌机不可见，圈内己方暴露 | 探测逻辑与 UI 一致 |

### 阶段四（P2，2 周）：M2-E AI 空战

- AI 建造：经济+威胁驱动（复用 AI_BuildNukes 评估模式）
- AI 任务：拦截玩家机群（CAP）、对地打击选点；预算驱动
- 编队数量优势修正（简化：数量比较加成）
- 验收：AI 国家会造飞机且空战频率合理；AI 回合无卡死

### 阶段五（P2+）：M3-M6 核战争体系（沿 v1 规格，见 v1 第 6 节）

- M3：弹头分级（100kt-100M）/ 产业链（核电站→铀钚→弹头）/ 陆海空平台 / 发射 UI / 爆炸污染 / AI 核战略
- M4：MIRV（3x/8x）/ 三层拦截链（预警-ABM-终端）/ DEFCON 1-5 / EMP / CBRN 防护 / 核电站事故
- M5：化学/生物/盐弹/钴弹/ASAT（4 型）/ 核防空（核 SAM/AAM）
- M6：数值换算表（1格≈50km）/ 性能（同屏≤200、对象池、结算<1s）/ 存档版本管理 / 48h 长跑 / 双 ABI

---

## 6. 技术方案备忘（构建/部署/调试环境）

### 6.1 目录与环境

| 角色 | 路径 | 说明 |
|---|---|---|
| 母本 APK | /sdcard/GLG/历史23/终序千禧V33.1-fix4-aligned-debugSigned.apk | 原始 721MB，只读参照 |
| 组装源包 | /tmp/orig2.apk | 母本副本（mkzip 读取），保留 |
| 代码工作区 | /tmp/build_work/ | apktool d 解包（仅 smali/original/build/apktool.yml，无 assets/res） |
| 数据资产 | /sdcard/GLG/历史23/kb_assets/ | 构建期替换/追加的 JSON/PNG（原 decode_output 已清理迁移到此处） |
| 组装脚本 | /tmp/mkzip.py | 原包条目原样保留 + 替换/追加列表 |
| 输出 | /tmp/pkg2.apk（dex-only）/ /tmp/full_aligned.apk（完整 721MB） | 组装后立即 copy 到 sdcard |
| 签名输出 | /sdcard/GLG/历史23/build_apk/dbg_signed.apk | 最终安装包 |
| keystore | /data/user/0/com.ai.assistance.operit/files/pkcs12.keystore | alias=androidkey |
| 规划书 | /sdcard/GLG/历史23/终序千禧_ICBM移植_产品规划书*.md | v1/v2/v2.1 |

### 6.2 构建命令序列（每次发版照此执行）

```bash
# 1) 编译 smali → dex
cd /tmp && java -Xmx4g -jar /tmp/apktool.jar b /tmp/build_work -o /tmp/pkg2.apk 2>&1 | tail -3
# 2) 提取新 dex
unzip -p pkg2.apk classes.dex > classes_new.dex
# 3) 组装完整包（保留原包所有条目 + 替换/追加）
python3 /tmp/mkzip.py   # 输入 classes_new.dex + kb_assets 资产 → /tmp/full_aligned.apk
# 4) 移出到 sdcard
cp /tmp/full_aligned.apk /sdcard/GLG/历史23/build_apk/dbg_unsigned.apk
# 5) 签名（apk_reverse_sign 工具，debug 签名）
# 6) 安装（Shizuku shell）：
am force-stop age.of.history3.qiamxi.zhiri
cp /sdcard/GLG/历史23/build_apk/dbg_signed.apk /data/local/tmp/ && chmod 644 /data/local/tmp/dbg_signed.apk
pm install -r /data/local/tmp/dbg_signed.apk   # 偶发 User rejected permissions → 重试一次
```

### 6.3 调试手段
- 日志：logcat 过滤 tag=AIRDBG（Log.d 不落盘，避免 EPERM）
- 崩溃：logcat -d | grep -E 'FATAL|AndroidRuntime'
- 代码通道：Shizuku shell（pm/am/logcat）+ proot terminal（文件/smali/python）；禁止 proot 内 find/du 扫描 /sdcard（FUSE+ptrace 会卡死会话，2026-08-24 教训）

---

## 7. smali 修改铁律（每条附反例教训）

1. 寄存器上限 v15；**.locals 增量不改变参数别名 p0/p1**（用别名引用，勿直接改 .locals 期望参数移位）
2. private 方法必须 invoke-direct（invoke-virtual 会 SecurityError/NoSuchMethod）
3. const/4 范围 -8~7；超出用 const/16（如 10 必须 const/16 0xa）
4. 寄存器列表必须升序（{v1, v2} 不能写 {v2, v1}）
5. 寄存器类型必须全路径一致：禁止 double 写进 float 寄存器→VerifyError（Math.random 教训，改确定性伪随机）
6. if-lt 需要两个寄存器；单寄存器比较用 if-ltz / if-gez（if-lt v0, :label 是经典错误）
7. 静态方法 p0 占 .locals 之后的位置（.locals + 参数 ≤ 16 上限）
8. 构建成功 ≠ 数据生效（需真机验证；可能运行时报错）
9. smali 方法不能有重复 return-void / .end method
10. mkzip.py 的 add_files 与 replace 键重复会报错
11. 改行号前先 grep 确认内容（多次行号漂移导致改错位置）
12. 字符串锚点必须精确匹配空行（smali 指令间有空行，模式里 
 数量要一致）
13. 禁止在 proot 内 find/du 扫描 /sdcard 大目录（见 6.3）

---

## 8. 附录

### 8.1 关键常量与约定表

| 常量 | 值 | 说明 |
|---|---|---|
| 师 key 格式 | airhq_{civID}_{provinceID} | 注意分隔符为下划线，civID 与 provinceID 为十进制整数 |
| 师军团 | uID=5（Fighter），num=10 | 1 团 = 10 架；aID=0 |
| 机型图标尺寸 | 战斗/拦截/攻击 40px；轰炸 56px | drawAirForce |
| 友军环 | 56px | drawAirForce |
| HP 环 | 驻场 25/22/33px；飞行编队 48×48 | ringHP_0~8 分级 |
| 选中命中半径 | 60px（距离平方阈值 0xe10=3600） | trySelectAirUnit |
| 选中圈 | ringSel 88×88 黄色 | drawAirForceSelection |
| 航程圈 | CombatRadius×scale×0.25 白色 | drawAirForceCircles |
| 飞行动画 | 去 3s / 回 2s（animStartMs 时间戳插值） | drawAirForceMissions |
| 巡逻滞留 | 2 回合 | AirMission 状态机 |
| 空战扣血 | hp -= 敌机 AirAttack×0.5 | 每回合结算 |
| 返航修复 | hp = maxHp；燃油/弹药回满 | returnToBase |
| AI 机场初始 | 4 拦截机 + 4 战斗机 | registerAirport |
| 机场容量上限 | 20 | 空军面板建造界面 |

### 8.2 资源清单（构建相关）

| 资源 | 位置（kb_assets 下） | 用途 |
|---|---|---|
| AircraftTypes.json | assets/game/AirUnit/ | 机型数据（代码实际加载） |
| Buildings.json / numOfImages.txt | assets/game/buildings/ | 建筑数据 |
| 建筑贴图 101/102 | assets/game/buildings/buildingsImages/{H,XXH,XH}/ | 机场/雷达外观 |
| 反导/长波图标 | assets/game/buildings/provinceIcons/ | antiAir.png / longwaveRadar.png |
| ringHP_0~8 / ringSel | assets/ui/graph/ | 血量环/选中圈 |
| 阵营机模图（Gen3-6） | 原包 assets/game/AirUnit/AirUnitImages/（未迁移，仍在母本） | M2-A 代差树素材 |

### 8.3 空间清理记录（2026-08-24）

| 位置 | 清理前 → 后 | 清理内容 |
|---|---|---|
| /tmp | 5.5G → 1.4G | 删 orig.apk、full_aligned.apk、终序千禧0.0.1.apk、unsigned_full_aligned.apk、full_0.0.1.apk、pkg_final.apk、wrap、smali_build、origdex、pkg2.apk；保留 orig2.apk、build_work、工具 jar |
| /sdcard/GLG/历史23 | 约 6.9G → 3.4G | 删 decode_output（427M）、build_apk 旧 APK×3（约 2.2G）、jadx_verify 796M（待删） |
| 迁移 | decode_output → kb_assets | 构建资产 18M（见 8.2） |
| 保留 | — | 母本 APK（688M）、最新 dbg_signed.apk（689M）、kb_assets、backup_m1、v1/v2 规划书 |

---

*v2.1 以 2026-08-24 装机基线为准。每轮迭代后应更新：①已达成功能表（2.1）②问题清单（4）③进度对照（3）。凡本文件中标 🆕/待验收 的条目，须在真机验证通过后改为 ✅。*

---

# 9. 轮2 空军任务持久化 —— 现状全景补充（2026-08-27）

> 本章由项目负责人指令写入：把当前（2026-08-27）对该包的全部理解汇总于此，作为跨对话的上下文锚点。
> 关联文档：《飞机系统任务持久化方案_v2_轮2详细计划_大计划对齐版.md.txt》（轮2 执行基准，139 行）

## 9.1 当前装机基线

| 项 | 值 |
|---|---|
| 装机版本 | **pkg_new32**（2026-08-27 深夜~28 修复读档 VerifyError 三连最后一弹：JsonValue.get 缺 String 参数+寄存器数；PID 16984 启动验证 0 崩溃 + dex 级验证 TOTAL BAD:0） |
| 版本线 | pkg_new22→23（兜底段）→24（key 修复+每回合重置修复）→25/26（读写路径统一+fallback）→27（T4 激活）→28（const-wide v15）→29（afNewGame 隔离）→30（JsonValue 类型）→31（Long.valueOf 宽参数）→**32（JsonValue.get 缺参，当前基线）** |
| 构建链 | /tmp/build_work（smali 工作区）→ `java -jar /tmp/apktool.jar b` → /tmp/pkg_new23.apk → `unzip -p classes.dex` 至 **/tmp/classes_new.dex**（mkzip.py 硬编码读此路径）→ `python3 /tmp/mkzip.py` → /tmp/full_aligned.apk（721,989,897 字节）→ cp 至 `/sdcard/GLG/历史23/build_apk/dbg_unsigned.apk` → apk_reverse_sign(debug) → dbg_signed.apk → `pm install -r -d` → 启动 |
| 日志通道 | logcat，tag=AIRDBG（`Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(String,String)`，I/V 两个签名；loadSave_Airforce 内用 `Log.e`） |
| 存档调试文件 | `/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/airforce_dbg/Airforce_Data.json`（R6 保存侧导出） |

## 9.2 核心机制全景（"飞机=师级单位"）

1. **飞机** = AirUnit（ICBM 层机制单位），存于 `Airport.aircraft`（Map<机型,List<AirUnit>>）；unitID 由 **System.nanoTime()** 唯一化（T0）。
2. **机场** = Airport 运行时对象，一省一机场；`AirForceManager.allAirports` 全局索引。
3. **任务** = AirMission（ICBM 层）：`MissionType`（PATROL/INTERCEPT/ATTACK_ARMY/STRATEGIC_BOMBING/AIR_SUPERIORITY）、`MissionState`（PLANNING(0)/EN_ROUTE(1)/EXECUTING(2)/RETURNING(3)/COMPLETED(4)/ABORTED(5)）；构造器 `(MissionType, Airport, civID)`（**第三参=civID**，非 targetProvinceID）。
4. **师** = 真 ArmyDivision，key=`airhq_{civID}_{provinceID}`，1 团 Fighter×10；用于复用原版选中/军队栏/行进交互；newMove 拦截 airhq_ 师移动；绘旗时 airhq_ 前缀跳过。
5. **任务驱动链**：updateAll（）→ syncAirports/syncRadar/updateMissions/updateAirCombat；`syncAllFromProvinces()`（1772 行）重建省军队/机场壳 → `loadSave_Airforce()`（LoadSavedGameManager 15246 行，static final→Z）重建机队+任务。
6. **巡逻闭环**：选中飞行编队→点目标省→handleProvinceClick→createPatrol→起飞（3s 动画插值）→滞留 2 回合→返航（2s）→落地满血回库。

## 9.3 存档格式（R6 实测，Airforce_Data.json）

三段式（GdxJson 对齐）：
- `airports:[{provinceID, civID, totalAircraft, mode:"PATROL", ...}]`
- `airunits:[{unitID, type:"FIGHTER", typeID, isInFlight, currentMission:"GROUND_ATTACK"/"AIR_PATROL", airportID, civID, fuel, hp, ...}]`
- `missions:[{type:"PATROL", state:"EN_ROUTE", flightProgress:0.22~0.48, roundsInFlight, missionID, sourceProvinceID, targetProvinceID, airhqKey:"airhq_73_2315", aliveIDs:[{value:unitID}], animElapsedMs, distanceToTarget, ...}]`

实测样例：unitID=186455562879077/210582991199353（唯一）、airportID=2315、civID=73、source=2315、target=2370/3714。

## 9.4 已闭环成果（2026-08-27 累计）

| # | 成果 | 状态 |
|---|---|---|
| R1 | 轮1 存档兼容（机场+机队；airportID=734 修复；读档挂点 pswitch_1 末；sync 死循环修复；loadSave_Airforce NPE 修复） | ✅ |
| R2 | 视觉·机场雷达圈恒定（移除 hasAirportBuilding/hasRadarBuilding 前置；RDBG:ap= 日志） | ✅ |
| R3 | 视觉·任务圈恒跟随飞机（drawAirDivisionAsPlane 插值分支；radarFill 160px 蓝晕同心） | ✅ |
| R4 | T0 unitID 唯一化（System.nanoTime） | ✅ |
| R5 | T1 Save_AirMission 容器（22 字段） | ✅ |
| R6 | T2 保存侧 missions 段（终态过滤/三列表 unitID 提取/targetAirUnitIDs 复制；AF_SAVE:start→exported） | ✅ |
| R7 | 无文字修复双层（BtnSelect.getTextToDraw 空列表防护 + 读档机队重建 preseed 全机型空 List） | ✅ |
| R8 | 探针基础设施（bsel:ord=/bsel:name=；um_upd: 等） | ✅（正式版可精简） |
| T3 | unitID 索引池（Map 初始化 15386 在机队循环前、填充 15431、AF_LOAD:pool=N 日志、断链兜底） | ✅ 核验通过 |
| T4 | 任务重建段（loadSave_Airforce 内 :af_u_add→:af_done 约300行；机场匹配→new AirMission→14 字段覆写→三列表重连→alive 空非终态丢弃→targetAirUnitIDs 直拷→师绑定 airhqKey→时钟重锚定→防重 add；AF_MIS:restore/drop 日志） | 🔶 已激活（pkg_new27 死代码修复）并连续修完 5 个地雷（const-wide v15 / JsonValue→Long / Long.valueOf 宽参 / JsonValue.get 缺参 / get 缺 String 参数），**pkg_new32 待用户实测** |
| T4.5 | 时钟重锚定（currentTimeMillis + clamp 1h） | 🔶 已并入 T4（同层） |

## 9.5 关键故障与修复（2026-08-27 两轮实锤）

### 9.5.1 故障一：读档后飞机僵在原地（未恢复）

**现象**：飞行中（PATROL EN_ROUTE）存档 → 读档 → 飞机停在保存位置、不能移动、不回机场。

**根因（最终实锤，pkg_new24 修复）**：
- 读档挂点**一直都在**（`Menu_LoadSavedGame.smali:508-519`，含 `syncAllFromProvinces`+`loadSave_Airforce`，日志 `AF_CALL:loadfinal`；另 `InitGame.smali:20813`）；`AF_LOAD:start` 日志确实出现。
- **但 `loadSave_Airforce` 提前 return**：其路径拼接用 `LoadSavedGameManager.key`（`<clinit>` 中恒为 `""` 空串，全项目无任何赋真实存档名处）→ 拼接路径 `saves/{map}/""/Airforce_Data.json` 无效 → `file.exists()`=false → `:af_ret` 提前 return（既不到 `AF_LOAD:done` 也不到 `AF_LOAD:fail`）。
- 保存侧用 `SaveGameManager.saveKey`（保存 `InGame_SaveGame$3` 与读档回调 `SaveGameManager$1:168` 均会将其设为真实存档名；`<clinit>` 默认 `"SAVE_KEY"`）→ **读写密钥不同源** → 读档永远找不到文件。

**修复**：`loadSave_Airforce` 15253 行改用 `SaveGameManager.saveKey`（补充 length() 非空检查；v1 保留引用用于后续路径 append）。

### 9.5.2 故障二：每过一个回合游戏数据被重置（严重回归）

**现象**：pkg_new23 后，正常游戏中每回合数据被重置，无法完成任何操作。

**根因链**：
1. 兜底段（updateAll 开头）条件 `afRestored==false && key!=null && 视图==IN_GAME` 在新开局/继续游戏中**恒成立**（afRestored 只在 `AF_LOAD:done` 置位，而 loadSave_Airforce 总是提前 return 从不置位）。
2. 兜底段每回合执行 `syncAllFromProvinces()`（重置机场/机队）→ 数据被重置。
3. `AF_CALL:fallback` 日志实测每秒多次（21:31:49–21:32:04 实锤）。

**修复（三处，pkg_new24）**：
- ① `loadSave_Airforce` 提前 return 出口（`:af_ret`，15679）统一置位 `afRestored=true`（"本次调用已处理，无需重试"）。
- ② `loadSave_Airforce` 异常出口（`:catch_af`）同样置位（防异常时无限重试）。
- ③ 兜底段进入 fallback 分支**立即**置位 `afRestored=true`（在 sync/load 调用前，一次性锁：无论成败不再重试）。

**日志证据链（验收预期）**：`AF_CALL:loadfinal`（或 `AF_CALL:fallback`）→ `AF_LOAD:pool=N` → `AF_MIS:restore N` → `um_rt:src=:dst=` 推进。

**已知风险**：若兜底视图检查不匹配 IN_GAME 或读档挂点仍未触发，需查 LOAD_SAVE_GAME 与 LOAD_SAVED_GAME 路径差异（排查项，当前未复现）。

### 9.5.3 故障三：读档路径读写不同源（pkg_new26 修复）

**现象**：pkg_new24 后读档链条已通（`AF_CALL:loadfinal→start→file_ok→unit_add→pool=1→done` 全链出现），但仍无 `AF_MIS:restore`、读档后 `um_upd:0`。

**根因**：
- 保存侧写 `saves/{mapPath}/{saveKey}/Airforce_Data.json`（`FileManager.getSaveType`=Gdx external → `/storage/emulated/0/saves/...`），实测该路径**文件不存在**（/storage/emulated/0/saves 目录都不存在；Scoped Storage 下外部根不可写）。
- 读档侧 `FileManager.loadFile` 遍历 modsFolders 拼接（与保存根不一致）；此前 file_ok 读到的是 mods 路径下**旧/不完整文件**（missions 缺失→T4 段静默跳过）。
- debug 导出（absolute 绝对路径 `files/airforce_dbg/`）**总是成功**（app 外部目录可写）。

**修复（读写同源，pkg_new26）**：
- 保存侧：正式存档改为绝对路径 `/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/airforce_save/Airforce_Data.json`（不再依赖 saveKey/地图路径）。
- 读档侧：优先读 `airforce_save`；文件不存在时 **fallback 读 `airforce_dbg`**（旧档兼容，:af_fb_path/:af_fb_got 标签）。
- 当前为单档策略（每次保存覆盖），多存档支持留批次3。

**装机陷阱记录**：vivo 设备**锁屏状态**下 `pm install` 会返回 `INSTALL_FAILED_ABORTED: User rejected permissions`（确认弹窗无法显示自动拒绝）——装机前需用户解锁屏幕（22:14 实锤）。

### 9.5.4 故障四：读档 VerifyError 三连（T4 段手写 smali 违规）

**现象**：pkg_new27/28 激活 T4 段后，每次读档（loadSave_Airforce 触发）闪退，`logcat -d -b crash` 报 `VerifyError: ... LoadSavedGameManager.loadSave_Airforce() failed to verify`。

| # | 错误 | 偏移 | 根因 | 修复（版本） |
|---|---|---|---|---|
| V1 | `tried to get class from non-reference register v15 (type=Conflict)` | 0x220 | T4 段内 `const-wide v14, 0x36ee80L`（3600000 毫秒钳制）占寄存器对 v14:v15，把 v15（T3 索引池 Map，要求引用类型）污染为 long | 宽值移出循环：循环外 `const-wide v2`，循环内 `cmp-long v11, v12, v2`（pkg_new28） |
| V2 | `ClassCastException: JsonValue cannot be cast to Long` @loadSave_Airforce:551 | 运行时 | 存档 `aliveIDs:[{value:xxx}]` 元素被 Gdx Json 解析为 JsonValue 对象，T4 段直接 `check-cast Long` 失败 | 三列表循环双类型兼容：`instance-of Long`→直接用；否则 `check-cast JsonValue`→`get("value").asLong()`→`Long.valueOf`；标签按出现顺序唯一化（pkg_new30） |
| V3 | `Rejecting invocation, expected 1 argument registers, method signature has 2 or more` | 0x22D | 两处违规：① `Long.valueOf(J)` 手写 `{v0}` 缺宽参数第二寄存器（应为 `{v0, v1}`）；② `JsonValue.get(Ljava/lang/String;)` 只写 receiver `{v11}` 且**缺 `"value"` 参数**（应为 `{v11, v12}` + 前置 `const-string v12, "value"`） | 3 处 `{v0}`→`{v0, v1}`（pkg_new31，只修了一半）；3 处 get 补 `const-string v12,"value"` + `{v11, v12}`（pkg_new32，修复完成） |

**关键教训**：① 手写 smali 的 invoke 寄存器列表必须与签名精确匹配（receiver+参数、J/D 宽参数 x2）——这是 VerifyError [0x22D] 的通用根因；② **构建成功 ≠ 验证通过**，pkg_new30/31 连续两次构建成功仍闪退；pkg_new32 首次引入 **dex 级指令验证**（/tmp/verify_dex/CheckInvoke.java，dexlib2 扫描 loadSave_Airforce 全部 invoke 寄存器数 vs 签名，TOTAL BAD:0 才装机）。

## 9.6 关键代码位置速查

| 位置 | 内容 |
|---|---|
| LoadSavedGameManager.smali | 字段：key/playerKey/afRestored(10)；loadSave_Airforce(15246)；池初始化(15386)/填充(15431)/AF_LOAD:pool(15485)/AF_LOAD:done→afRestored(15675)；T4 任务重建段 :af_u_add→:af_done |
| AirForceManager.smali | updateAll(2482，兜底段2485)；syncAllFromProvinces(1772)；syncAirDivisionAirport；activeMissions/allAirports；updateBuild 建师；um_upd: 日志 |
| AirMission.smali | 22 持久字段；构造器(MissionType,Airport,civID)；枚举 MissionState/MissionType |
| InGame_AirForceOptions$BtnSelect.smali | getTextToDraw 空列表防护（bsel_no_list） |
| Menu_LoadSavedGame.smali:515 / InitGame.smali:20813 | loadSave_Airforce 两处挂点 |
| buttons/InGame_SaveGame$3 | 游戏内存档回菜单（LOAD_SAVE_GAME 路径来源） |

## 9.7 技术教训（新增，防重蹈）

1. **move-result 孤儿 → VerifyError 闪退**（08-27 实锤）：插入含分支代码后必须脚本扫描"每个 move-result* 前一条有效指令必须是 invoke"（守则14）。
2. **锚点空行精确**（守则12 细化）：`.locals 3` 与下一条指令之间存在空行；python 字符串锚点必须含 `

`，用 count==1 断言防误匹配。
3. **catch handler 不可置于主流程路径**：否则 fallthrough 死循环；handler 应放方法末尾（return-void 之后、.end method 之前）。
4. private 方法跨类调用 → 改用字段直读（getAirDivKey → airhqKey 字段）。
5. const-wide/16 放不下 3600000 → 用 const-wide（0x36ee80）。
6. **invoke 寄存器数与签名严格一致**（09.5.4-V3）：实例方法=receiver+参数；静态方法=参数；J/D 各占 2 寄存器；手写后必须跑 dex 级扫描（CheckInvoke）确认 TOTAL BAD:0（轮2计划书守则16/18）。
7. **const-wide 避让业务寄存器**（09.5.4-V1）：宽值占用 vN:vN+1，勿落在后续用作引用类型的寄存器上（轮2计划书守则17）。
8. **Gdx Json 集合元素是 JsonValue 对象**（09.5.4-V2）：JSON 数组（尤其 {value:x} 包装）反序列化后元素=JsonValue，需 instance-of 分支兼容（轮2计划书守则19）。

## 9.8 批次2 验收状态（2026-08-28 更新：✅ 核心验收通过，双师根除）
> **用户确认"好了"（pkg_new46 真机验证通过）**：读档→飞行→回程→师归位 全链路正常，无幽灵师、无闪退。
> 版本线：pkg_new32（基线）→ 37/38（探针体系：dKey 关键链 + 文件镜像）→ 39/40（AirDbgLog 内存缓冲+500ms 刷盘、dedup 节流+civID 过滤）→ 41（sb 懒初始化修复+dKey try/catch）→ 42/43（探针独立方法化）→ 44（civID 过滤移除+飞行中跳过归位）→ 45（addArmy_Load dup 守卫+dedup 索引遍历+placeAirDivision 守卫修复）→ **46（iArmiesSize 私有字段→getArmySize() 修复，✅ 通过）**。
### ✅ 已闭环（证据：airdbg_key.txt / airdbg_tick.txt）
1. **读档链全绿**：`AF_CALL:loadfinal → AF_LOAD:start → fb_ok → parsed → file_ok → unit_add → t4_enter → AF_MIS:restore → pool=1 → done`。
2. **状态机全程正确**：EN_ROUTE(1)→(到达)→EXECUTING(2 瞬态)→RETURNING(3)→回机场（um_mvsw 去程 2315→1047→2203→2320→2372→2369→2370→目标→回程→2315 完整序列）。
3. **双师根除**：`um_all`（省≥2 同 key 师检测）= **0 次**；`um_hq:armN=1` 单师恒态；`ald_dup_skip` 未触发（正常单师流程）。
4. **师归位**：回程完成 `um_mvsw:to=2315:pr=1047:fp=0.96:st=3`、`um_mv0:at=2315:hq=1`——师稳定驻留机场省 2315。
### ❌ 已修复的关键缺陷（本轮攻坚五连）
| # | 缺陷 | 根因 | 修复 |
|---|---|---|---|
| 1 | 0.1 帧卡顿 | dKey 无限流写文件 IO 爆炸 | 内存缓冲 + 500ms 批量刷盘（AirDbgLog 重写） |
| 2 | 闪退 VerifyError | dedup 节流 wide 寄存器对冲突 | 独立寄存器对 v6-v7/v8-v9 |
| 3 | 机场贴图消失+空军栏空 | AirDbgLog sb 懒初始化 `if-eqz` 写反→NPE→绘制链破坏 | `if-nez` + dKey 整体 try/catch + 参数防护 |
| 4 | 闪退 VerifyError | 探针内联 moveDivisionAlongFlight 寄存器 Conflict | 探针独立成方法（dbgMv0/dbgMvsw/dbgDd） |
| 5 | 闪退 IllegalAccessError | 跨包访问 Province 私有字段 iArmiesSize | 改用公开方法 getArmySize() |
| 6 | **双师（幽灵师）** | ① addArmy_Load 无 dup 守卫→同 key 重复入省 ② dedup 只取第一个匹配+removeArmy(key)=remove-all→漏删/误删 ③ placeAirDivision `if-nez at` 守卫→到达不放置 ④ civID 过滤漏扫敌省 | ① dup 守卫 ② dedup 索引遍历（保留绑定、删其余）③ placeAirDivision 重写 ④ civ 过滤移除 |
### 📌 技术教训补充（9.7 追加）
9. **跨包私有字段访问 → IllegalAccessError**（03:01 实锤）：AirForceManager 不能 iget Province.iArmiesSize（private），用公开 getArmySize()；改代码前先 grep `.field` 查可见性。
10. **内联探针改主方法寄存器 → VerifyError Conflict**（02:27 实锤）：探针代码必须独立成私有方法（.locals 自足），主方法只留 invoke-direct 一行。
11. **removeArmy(String) 语义=删除全部匹配**（非单个）：remove-all + re-check；"删一个"必须用 removeArmy(I) 按索引；dedup 用索引遍历避免死循环/误删。
12. **addArmy(有 dup 检查) vs addArmy_Load(无)**：重复添加路径必须加 dup 守卫（省里 getArmyKeyID≥0 → 拒绝）。
### ▶ 下一步（批次3）
1. **T6 日志收口**：本地探针（um_dr/um_segr/um_p0/um_r1 等高频 d()）评估降级或保留；vivo 日志吞噬需 dKey 文件通道已验证。
2. **T7 回归**：连存连读×3、返航中存档、多任务并存、旧档（无 missions）兼容、目标丢失降级（aircraft 被击落）。
3. **T8 主循环核验**：修改项在 RealTimeSim/GameThread 主循环的稳定运行（长时间挂机无泄漏/无卡顿）。
---
*（第9章为 2026-08-28 快照；批次2 核心验收 ✅ 通过，S3/S8 可关闭，待批次3 启动后回写）*

---

# 10. A0 师级模型批次 —— 现状全景补充（2026-08-28）

> 本章由项目负责人指令写入：把 A0.1（师粒度）与 A0.2（空军专属兵种 X 方案）攻坚中对该包的全部技术认知整合于此，作为跨对话上下文锚点。
> 关联文档：《终序千禧_ICBM移植_当前阶段计划书_战斗可用版v1.md》（v1.2，A0 执行基准）；《飞机系统任务持久化方案_v2_轮2详细计划_大计划对齐版.md.txt》（轮2 参考）
> 当前阶段执行线：**A0 师级模型（甲'+X）→ A1 打击任务下达 → …** 单线串行。

## 10.1 版本线（A0 批次）

| 版本 | 内容 | 状态 |
|---|---|---|
| pkg_new47 | 师粒度首版：`syncAirDivisionAirport` 批次重写 + `airhqKey` 新增 | 首验 3 问题（无师/队列不减/上限不触发） |
| pkg_new48 | ①sync 钩子死代码修复（return-void 之后→之前）②点"在建"行取消建造 ③超限 Toast | 队列减少 ✅ / 上限生效 ✅；新 bug：0/20、20架单师 |
| pkg_new49 | sync 分支条件写反修复（if-gez→if-ltz）+ totalAircraft 按实际机数修正 + updateBuild sync 调用点 try/catch 隔离 + 取消建造/Toast 完善 | 双 bug 复现（0/20 + 单师） |
| pkg_new50 | 新增 `sd:enter/cnt/create` 精细节探针 | 取证用 |
| **pkg_new51** | num 分编条件修复（if-le→if-gt） | ✅ **A0.1 验收通过（用户"OK了"）** |
| pkg_new52 | A0.2 X 方案代码：`airhqKey4` / `sync` 重写 / `syncAirDivisionForType` / uID=ordinal+7 / 旧档 uID=5 迁移 / updateBuild 删除仅 FIGHTER 判定 | 装机零崩溃；新 bug：**空师**（师有团但军队栏不显示） |
| pkg_new53 | rgDump 探针（ProvinceDrawArmy） | ❌ 闪退：VerifyError [0x6A] v5 String/Integer 冲突 |
| pkg_new54 | rgDump 探针移至 :armn_done（v5=armN int） | 装机零崩溃 |
| pkg_new55 | 新增 `paArmImg` 探针（armyImages.size()+uID），插入 ButtonArmy.drawButtonBG（v7 空闲寄存器） | ⚠️ 装机乌龙：dex 导出为 classes_new55.dex 但 mkzip.py 硬编码读 classes_new.dex（旧）→ **实际装的是 pkg_new54 的 dex**（探针不在包内，pa:aimg 无输出被误判） |
| **pkg_new56** | 修复 dex 拷贝错位（classes_new55.dex→classes_new.dex）+ **根因修复：numOfImages.txt 去换行符（"70
"→"70"）** | ✅ **空师根因实锤，用户确认显示正常，A0.2 闭环** |

## 10.2 A0.1 师粒度 —— 已闭环（✅ 用户验收）

### 根因三连（探针实锤链）
1. **钩子死代码**：`syncAllDivisions()` 插在 `updateAll` 的 `return-void` **之后**，永不执行 → 无师。
2. **分支条件写反**：`if-gez v6, :sd_create`（师已存在才创建）→ 师不存在却走 `getArmy(-1)` 同步 num → 越界异常炸断 updateBuild 建造链 → totalAircraft++/队列推进全断（**核心矛盾：队列不减+上限不触发=一直造**）。修复 `if-ltz v6, :sd_create`。
3. **num 计算条件反**：`if-le v10, 10` → 12 架首轮 num=12 塞满一师剩余 0，永不分行。修复 `if-gt`。

### 探针证据链（airdbg_key.txt）
- `sb:ok: tot=0/1→19` 建造时 totalAircraft 真实在涨；`ub:done=0` 完成路径未走（异常炸断）
- `sd:enter: msz=4` sync 正常运行；`sd:cnt: 0→12` 计数正常；`sd:create: 仅1次(num=10)` 师2从未创建（num 条件反）
- `um_hq: armN=1` 旧师仍在

### 约定的师模型（v1.2 定稿）
- 师 key = `airhq_<civ>_<省>`（A0.1）；**A0.2 扩展为 `airhqKey4(civ,prov,ord,seq)` = `airhq_<civ>_<省>_<机型序>_<批号>`**
- 战斗机(机型序=1)+第1批 = **旧 key**（`airhqKey4` 兼容 `AirMission.getAirDivKey` 任务绑定）
- 1 团 = 1 机型，num 动态 1~10，满 10 自动分编（师2/师3…）
- `uID = AirType.ordinal() + 7`（INTERCEPTOR=0→7、FIGHTER=1→8、BOMBER=2→9、ATTACKER=3→10）
- **旧档迁移**：uID=5（Fighter）自动迁移为 8（AirFighter）（syncAirDivisionForType exists 分支：`if-eq uID, ordinal+7 跳下文; 否则 iput`）
- `ArmyRegiment.<init>(II)` 语义：p1=nUnitTypeID→**uID**，p2=nArmyID→**aID**（建团传 `(ordinal+7, 0)`，aID 恒 0）
- 建师后字段：`iArmyRegimentSize=1`、`fMorale=1.0`、`key`、`Province.addArmy(division)`
- **清理段**（syncAirDivisionForType 尾部）：按 airhqKey4 生成 key，`airhqKeyInMission(key)==false` 才 removeArmy（任务中师保护），批次号扫描上限 0x20（32）
- **updateBuild**：删除"仅 FIGHTER 建师"判定 → 任意机型建造完成即同步建师（try/catch 隔离 ub:syncfail）

## 10.3 A0.2 空军专属兵种（X 方案）—— 资产与映射（全部实证 ✅）

### 资产（full_aligned.apk 内实测）
| 资产 | 实测值 |
|---|---|
| Units.json | `assets/game/units/Units.json`，Army 数组 11 条（ID0-10）；ID7=AirInterceptor(Line1)、8=AirFighter(Line1)、9=AirBomber(Line1)、10=AirAttacker(Line1)；**格式为 GdxJson（key 无引号：`File: "..."`，非标准 JSON——python json 解析会失败）** |
| Air*.json | 4 个，各含 Name/ImageID/Attack/Defense/MovementSpeed/AttackRange；ImageID=**66/67/68/69**（Interceptor/Fighter/Bomber/Attacker）；**无 Settler 字段**（isSettler 默认 false） |
| unitsImages | **真实路径 = `assets/game/units/unitsImages/`**（易错：不是 `assets/game/unitsImages/`）；H/XH/XXH 三层各 70 个（0-69），**66-69 三层 12 张全在** |
| numOfImages.txt | **=70**（加载循环 0..69 全覆盖 66-69）；`unitsImages/` 目录下 |
| 语言包 | AirFighter→"战斗机"等中文名已生效（um:larmy name=战斗机 实证，来自语言包翻译，非 JSON Name） |

### 加载/渲染链（实证）
- `ArmyManager.loadUnits()`（1227）：`loadArmyImages()`（1051，1341 行调用）读 numOfImages.txt → 循环 i∈[0,num) → 路径 `"game/units/unitsImages/" + getRescouresPath_Short()(XXH/XH，存在则用) + i + ".png"`；不存在回退 `getRescouresPath_Short_H()`(恒"H/") → `loadTexture_RGB888` → **add 进 `ArmyManager.armyImages`**（**独立 List**，非 ImageManager.images！（initializer 处 new ArrayList，见 ArmyManager 99 行））
- `armyImages` 消费点：ButtonArmy/ButtonArmyBattle/ButtonRecruitingArmy/ButtonUnit*/Button_QueueUnit/ButtonTechnology/ProvinceDrawArmy/ProvinceDraw/AA_Game
- **`ImageManager.images` 是 UI 图列表**（AA_Game addImage 灌入）；`getImage(ID)=images.get(ID)`（**无越界防护**，越界即 IndexOutOfBoundsException；被 try/catch 吞则静默空白）
- **ButtonArmyIcon 系取图走 ImageManager.getImage（错误？）**：ButtonArmyIcon.drawText 用 `ImageManager.getImage(imageID)`；而原版团图标应来自 unitsImages→armyImages——**ButtonArmyIcon 引用仅**：menu_element 自身/ButtonArmyIcon_Green/_Special、InitGame、InGame_Battlefield$4/5、InGame_Armies$10/11（TopBar$1-$9 是固定功能按钮 subclass，imageID=Images.center/splitArmy 等 UI 图）
- **省份军队栏（关键认知）**：
  - `InGame_ProvinceArmyTopBar.$10`（extends **ButtonArmyID**）= 军队卡：构造 `(civID, provinceID, nArmy, x, y, nID)`，**drawText 只画旗帜+文字，不画兵种图标**
  - `InGame_ProvinceArmyUnits.$2/$3`（extends **ButtonArmy**）= **团按钮**：构造时传 `textUnits, numOfRegiments, civID, x, y, niUnitTypeID=regiment.uID(8), nArmyID=regiment.aID(0), iID, provinceID`
  - ButtonArmy.drawButtonBG 取图链（2203）：`armyImages` → `lArmy.get(iUnitTypeID)` → `.get(iArmyID)` → `Data_Army.ImageID`(67) → `armyImages.get(67)` → draw（**无 size 防护**）
  - 编制渲染双循环：①统计循环（Line<2 计入 armyFirstLine；==2 计入 armySecondLine；>2 跳过）②合并同类团循环（uID+aID 相同合并 num→numOfRegiments）→ 每组合建 1 个 $2 ButtonArmy
  - **Line 过滤**：Air 兵种 Line=1 正常按"一线"显示，无跳过风险（Fighter ID5 也是 Line1，一致）

### 已实证"不是问题"的项
- 师有团：`um_rg: rsz=1 uid=8 num=1` ✅
- 兵种数据加载：`um:larmy: uid=8 lsz=11 isz=1 name=战斗机` ✅（lsz=lArmy 外层 11、isz=内层 1）
- 渲染循环到达：`pa:uid: uid=8`（×3）✅
- 图片文件/加载范围/加载路径全部 ✅（见 10.3 资产表）

## 10.4 空师问题 —— ✅ 已闭环（根因实锤，pkg_new56）

**现象**：师创建成功（军队栏可见/可选中），但编制为"空"，无团按钮显示。

**根因（最终实锤链）**：
1. `numOfImages.txt` 内容为 **`"70
"`（带换行符）**——母本原版是 `"66"`（无换行，2 字节）；我们添加 unitsImages 66-69 时写文件带了 `
`
2. `loadArmyImages()`：`readString()` → `Integer.parseInt("70
")` → **NumberFormatException**
3. 异常从 `loadUnits()` 的 `try_start_1/catch_1`（ArmyManager 137-138 行）被**静默吞掉**（catch 只打 exceptionStack 不设标志）
4. `loadArmyImages()` 中途中断 → **`armyImages.size()=0`**（一张图都没 add）
5. 团按钮 `ButtonArmy.drawButtonBG` 绘制时 `armyImages.get(67)` → **IndexOutOfBoundsException**（被外层 catch 吞）→ 编制空白；而 `lArmy`/`lUnitsTypes` 已加载（loadArmies 在前一行成功）→ 数据层全部正常

**探针证据链（pkg_new55/56，airdbg_tick.txt）**：
- 修复前：`pa:aimg: size=0 uid=8`（armyImages 空！）
- 修复后：`pa:aimg: size=70 uid=8` + `pa:uid: uid=8` + `um_rg: rsz=1 uid=8 num=1` → **用户确认军队栏显示"战斗机×N"正常**

**修复**：`printf '70'`（无换行，对齐母本格式）；buildings/numOfImages.txt 同步核查为 `103`（无问题）。

**经验**：FileManager.loadFile 按 assets 内部路径解析正常（同 Units.json 机制）；唯一杀手就是**换行符**——Gdx 的 readString() 1:1 保留字节，parseInt 对 `
` 零容忍。

**排除过的项（备忘，勿重复排查）**：文件缺失、numOfImages 数值、加载路径（XXH/XH→H 兜底）、兵种 JSON、师数据、统计 Line 过滤（Air Line=1 正常）、armyImages vs ImageManager.images 两列表混淆。

## 10.5 探针体系（当前活跃）

| 探针 | 实现 | 输出文件 | 用途 |
|---|---|---|---|
| dKey(tag,msg) | 内存缓冲+500ms 刷盘 | `files/airdbg_key.txt` | 关键链（sd/sb/ub/um_hq/um_all/um_rg/um:larmy） |
| logOnce(tag,msg) | ≥500ms 节流+写盘 | `files/airdbg_tick.txt` | 高频节流（pa:uid/pa:aimg） |
| paUID | logOnce | airdbg_tick.txt | 渲染循环 uid |
| lArmyDump(uID) | dKey | airdbg_key.txt | 兵种数据 dump（lsz/isz/name） |
| rgDump(armyObj, idx) | dKey | airdbg_key.txt | 师团数据（rsz/uid/num） |
| sdEnter/sdCnt/sdCreate/ubDone/sbOK/sbQDeny/sbCapDeny/laOK | dKey | airdbg_key.txt | 建师/建造链 |
| **paArmImg(size,uid)** | logOnce（**pkg_new55 新增**） | airdbg_tick.txt | **armyImages.size() 取证** |

路径前缀：`/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/`

## 10.6 构建链与资产认知（A0 轮更新）

```bash
# 1) 编译（verify 级）
cd /tmp/build_work && java -jar /tmp/apktool.jar b /tmp/build_work -o /tmp/pkg_newN.apk
# 2) dex 级 invoke 验证（强制，TOTAL BAD:0 才继续）
unzip -p /tmp/pkg_newN.apk classes.dex > /tmp/classes_new.dex
java -cp '/tmp/verify_dex:/tmp/dexlib2-2.5.2.jar:/tmp/guava.jar' CheckInvoke /tmp/classes_new.dex   # → TOTAL BAD: 0
# 3) 组装完整 APK（dex+资产）
python3 /tmp/mkzip.py     # 生成 /tmp/full_aligned.apk（721-722MB）
# 4) cp → /sdcard/GLG/历史23/build_apk/dbg_unsigned.apk → apk_reverse_sign(debug) → dbg_signed.apk
# 5) 装机：pm install -r -d（vivo 锁屏会 User rejected permissions，需先解锁）
# 6) 启动：am start -n age.of.history3.qiamxi.zhiri/aoc.kingdoms.lukasz.jakowski.AndroidLauncher
```

**关键认知**：
- pkg_newN.apk 是 **dex-only**（4.5MB）；完整资产只在 **full_aligned.apk**（721/722MB）；验证资产必须查 full_aligned.apk
- mkzip.py 已含 units 相关 replace/add：Units.json、Air*.json、unitsImages 66-69（三层）、numOfImages.txt（=70）
- **kb_assets 是增量目录**：`unitsImages/` 下只有 66-69×3 层 + numOfImages.txt（13 文件），0-65 原包图标在母本 APK 中（验证原包结构需 unzip -l 母本/组装包，勿信 kb_assets 目录假设）
- 当前装机：**pkg_new55**（PID 12077 启动零崩溃）

## 10.7 技术教训（A0 轮新增，9.7 之后）

13. **探针插入必须核对插入点寄存器活跃类型**（pkg_new53 实锤）：rgDump 插在 v5=String 位置 → VerifyError [0x6A]（register v5 has type String but expected Integer）→ 移到 :armn_done（v5=armN int）才安全；插入前先 sed 该方法体 grep 寄存器使用统计，选空闲 vN。
14. **钩子必须插在 return-void 之前**（A0.1 实锤）：return-void 后代码=死代码，永不执行（pkg_new47→48 三问题根因之一）。
15. **分支条件语义对照注释**（A0.1 实锤）：`if-gez v6, :sd_create` 语义="v6≥0 跳创建"——师已存在才建=写反（应 if-ltz）。smali 无源码可读时必须推定意图（函数名/注释）再写条件。
16. **num/计数类比较用 if-gt/if-le 而非 if-le/if-ge 想当然**（A0.1 实锤）：`if-le v10, 10`（num≤10 才分编？）实际 12 架首轮 num=12 塞满一师剩余 0 永不分行——应 `if-gt v10, 10`（num>10 才拆）。
17. **getImage(I)=List.get(I) 无越界防护** → 运行时列表 size 与 ImageID 匹配是硬依赖；排查"显示空白"类问题时，先验证目标列表运行时 size（探针打法：paArmImg）。
18. **两套图片列表别混**：`armyImages`（unitsImages→兵种图标，loadArmyImages 填充）vs `ImageManager.images`（UI 图，addImage 填充）；ButtonArmyIcon 系走后者、ButtonArmy 系走前者；改图/加图必须对应正确列表。
19. **排查顺序方法论（空师类问题）**：数据层（师有团？um_rg）→ 兵种加载（um:larmy）→ 渲染循环到达（pa:uid）→ 取图链列表内容（pa:aimg）→ 才轮到按钮创建/绘制细节；每步一次探针，勿跳层猜测。
20. **numOfImages.txt 必须无换行符**（08-28 空师实锤）：文件内容 `"70
"` → `Integer.parseInt` 抛 NumberFormatException → 被 loadUnits:catch_1 静默吞 → armyImages=0 → 编制全空白。**所有 numOfImages.txt 用 `printf '70'` 写（无 
），并 od -c 验证字节**；母本格式=2 字节无换行（"66"）。顺带教训：**Gdx readString() 1:1 保留字节，parseInt 对 
 零容忍**；替换任何 *Images/numOfImages.txt 都必须 hexdump 比对母本。
21. **构建链 dex 文件名一致性陷阱**（08-28 装机乌龙）：`mkzip.py` **硬编码读 /tmp/classes_new.dex**；手动导出时若命名成 classes_new55.dex 等变体 → **组装包仍是旧 dex，装机"成功"但改动不在**（表现为：新探针/新代码全无输出，误判为"逻辑没跑"）。铁律：**导出必须 `unzip -p pkg_newN.apk classes.dex > /tmp/classes_new.dex`（固定名），或改 mkzip.py 支持参数**；装机后 **strings dex | grep 新方法名 ≥1** 双保险验证。
22. **"装机成功≠改动生效"的验证顺序**：①dex 内含新方法（strings 验证）②满包 APK 内含新 dex（unzip -p full_aligned.apk classes.dex，不是 pkg_newN.apk——那是 dex-only）③运行时探针输出。任何一步断了都先怀疑打包链，别直接归因游戏逻辑。

## 10.8 当前状态与下一步

- **完成**：A0.1 ✅（pkg_new51 用户验收）；**A0.2 空军专属兵种 ✅ 空师根因闭环（pkg_new56 用户确认军队栏显示正常）**
- **待办**：
  1. A0.2 全面验收：4 机型各自成师（截击/战斗/轰炸/攻击）、多师控制、满 10 分编（造11架→师2）、旧档 uID=5→8 迁移验证
  2. A0.3 可视化（**细分计划见第 11 章**）：先拍板 11.2 策略（甲静态基线/乙动态阵营/丙完整代差）→ A0.3.1 贴图管线（64 张规格化）→ A0.3.2 编制图标 → A0.3.3 飞行/省份贴图 → 11.5 验收
  3. A0.4 验收（7 项）：①造1架→师1(num=1) ②10架→num=10 ③11架→师2 ④军队栏显示"战斗机×N"（✅ 已确认）⑤多师逐个控制 ⑥读档完整 ⑦战损递减→0移除
  4. A1 打击任务下达（UI 三选一拍板：点敌省直接开打/空军面板任务按钮/点敌方单位弹菜单）
- **当前装机**：**pkg_new56**（空师修复版；PID 23725 启动零崩溃）
- **下次验收前提**：多机种/分编/旧档迁移实测后回写本章。

*（第10章为 A0 批次快照；A0.1 ✅ 验收、A0.2 ✅ 空师闭环，待 A0.2 全项验收后回写）*

---

# 11. 空军贴图可视化 A0.3（对话口径）—— 细分任务计划（2026-08-28）

> ⚠️ **编号口径说明**：本章"Ａ0.3"为**对话习惯编号**（A0.1 师粒度→A0.2 兵种→A0.3 贴图→A0.4 验收）。
> 对应到《战斗可用版v1.2》规划书：贴图本质是 **A0.2 的"图标"行**（第 0 步内，现在可做）；而完整"代次+阵营"自动切换是 **后置线 C5 的 M2-A·A3 视觉替换**（A 线验收后）。规划书原编号"Ａ0.3=改造落点锚点表"与此无关。
> 本章把贴图任务（A0.2 图标行 + M2-A A3 前的全部工作）拆分为可独立执行/验收的子任务。
> 前置状态：A0.2 空师已闭环（pkg_new56）；语言包中文名已全部就绪（见 11.3）。
> 素材总盘：**贴图补充.zip/空军贴图/ = 4代（3/4/5/6代）×4阵营（中/俄/欧/美）×4机型（战斗机/截击机/攻击机/轰炸机）共 64 张**，命名如"中国三代战斗机SU-27或J-11.png"。

## 11.1 总体目标与三层显示面

目标：空军专属兵种的**全链路可视化**——覆盖以下三层，且为 M2-A 代差树（代号"A3 视觉替换"）铺数据/机制地基。

| 层 | 现用资源 | 状态 |
|---|---|---|
| ① 军队栏/编制图标 | `assets/game/units/unitsImages/{H,XH,XXH}/66-69.png`（A0.2 新增，当前为占位图） | 待替换为机型图 |
| ② 地图省份飞机图标 | `ui/interface/{XXH,XH,H}/icons/{FIGHTER,INTERCEPTOR,BOMBER,ATTACKER}.png`（mkzip replace 自 /tmp/FIGHTER_new.png，用户三角翼图 300×200） | 待替换为机型图 |
| ③ 飞行动画贴图 | 同 ②（drawAirForce 按 AirType 取 icons/ 对应图，绘制 40px/56px 缩放） | 随 ② 一并 |

## 11.2 决策点（用户拍板，先行）—— 图标显示策略三选一

| 策略 | 说明 | 改动量 | 效果 |
|---|---|---|---|
| **甲·静态基线** | 66-69 固定替换为**某一代+某一阵营**的 4 机型图（建议默认：3代中国），全游戏统一显示 | 最小：纯资源替换+mkzip | 当天可见；但所有阵营/代次显示同一组图 |
| **乙·动态阵营** | 按**师 civID → 阵营映射**（中/俄/欧/美），渲染时按阵营取图；代次固定 3 代 | 中：civ→阵营映射表 + ImageID 动态计算（军队栏/编制/地图三处渲染改造） | 阵营自适应；代次仍固定 |
| **丙·完整代×阵营** | AircraftTypes.json 加 generation/faction 字段 + 64 张图全入池 + 渲染按 (机型,代,阵营) 计算 ImageID + 科技挂接预留 | 大：≈M2-A 的 A1+A3 提前实施 | 完整代差视觉；建议并入 M2-A 一起做 |

**默认建议**：先做**甲**（当天见效、为后续验证铺路），乙/丙在 M2-A 阶段决策。
（注：游戏当前 4 机型的 RequiredTechID=5，代次暂与科技时代弱关联，M2-A 的 A2 科技节点将定义 Gen2-6 挂接。）

## 11.3 名称层 —— 已达成（仅验收），无需改动

**实测结论：语言包 4 机型中文名已全部就绪**：
- `Bundle_cn_sp.properties`：`AirInterceptor=拦截机`（4248）、`AirFighter=战斗机`（4249）、`AirBomber=轰炸机`、`AirAttacker=攻击机`；另有 `AirType.INTERCEPTOR=截击机` 等 4 条（2319-2322，空军面板用）
- `Bundle.properties`（en 兜底）：`Air*` 4 条 + `AirType.*` 4 条齐全
- ✅ A0.2 实测：编制栏已显示"战斗机"（中文名生效）

**A0.3.3 验收项**：编制栏逐一验证 4 机型中文名（截击机/战斗机/轰炸机/攻击机）显示正确、无英文残留。

## 11.4 A0.3.x 子任务分解

### A0.3.1 贴图资产管线（无论何种策略都必须做）
- [ ] 11.4.1.1 素材入库：解压 64 张 → `kb_assets/airImages/{3代,4代,5代,6代}/{中,俄,欧,美}/{机型}.png`（保留原文件，命名标准化：如 `CN_3_FIGHTER.png`）
- [ ] 11.4.1.2 规格化脚本（python PIL）：批量 resize → **H=200×118 / XH=266×157 / XXH=332×196**（实测原版 0.png 三档规格；当前 66-69 已按此规格统一）→ 输出 64×3=192 张
- [ ] 11.4.1.3 透明底/格式校验：全部 PNG、alpha 通道存在、非全空白（脚本：逐张统计非透明像素占比 >5%）
- [ ] 11.4.1.4 ImageID 分配规划（按策略）：
  - 甲：66-69（1 组 4 机型×3 档=12 文件），`numOfImages.txt=70` 不变
  - 乙/丙：**ImageID = 66 + genIdx×16 + civIdx×4 + typeIdx**；genIdx=gen-3（3代=0…6代=3）、civIdx（中0/俄1/欧2/美3）、typeIdx（战斗机0/截击机1/轰炸机2/攻击机3）→ 66..129，共 64 槽；`numOfImages.txt=130`（**关键字：写 130 必须 `printf '130'` 无换行！教训 #20**）
- [ ] 11.4.1.5 mkzip.py 扩展（按策略）：add 全部新图条目 + numOfImages.txt replace

### A0.3.2 编制图标替换（unitsImages 66-69）
- [ ] 11.4.2.1（策略甲）选定默认组（建议 3代中国：J-11 战斗机 / J-8 截击机 / Q-5 攻击机 / H-6 轰炸机）→ 替换 H/XH/XXH 三层 66-69
- [ ] 11.4.2.2（策略甲）mkzip 组装 → 装机 → 编制/军队栏图标验证（与 11.5 验收同跑）
- [ ] 11.4.2.3（策略乙，若拍板）civ→阵营映射表实现（AoH3 civ 名单：中/俄/欧/美 civID 映射；AirForceManager 内静态表）+ 渲染三处取图改造（ButtonArmy.drawButtonBG / ProvinceDrawArmy 地图图标 / 编制列表）
- [ ] 11.4.2.4（策略乙）ImageID 计算函数（f(civID, genIdx=0, typeEnum)）→ 66-129 池加载验证

### A0.3.3 飞行/省份贴图替换（icons/ 系列）
- [ ] 11.4.3.1 选定与 11.4.2.1 同组机型图 → 生成 `{XXH,XH,H}/icons/{FIGHTER,INTERCEPTOR,BOMBER,ATTACKER}.png`（注意绘制缩放 40px/56px，贴图构图需居中+留白，建议 300×200 → 缩放不糊即可）
- [ ] 11.4.3.2 mkzip replace 旧三角翼图 → 装机 → 验证省份飞机图标/飞行动画为机型图（非三角翼）
- [ ] 11.4.3.3 玩家 vs 敌军显示检查（drawAirForce 按 civ 画的逻辑是否同样吃这 4 张——若是，敌我同图；策略乙可扩展为按 civ 取不同 icons/ 图，工作量小，可顺手做）【备注：当前 drawAirForce 取 icons/ 按 AirType，与 civ 无关 → 敌我同图；如用户要求阵营区分，可为 icons/ 增加按 civ 的取图分支（策略乙同层）】

### A0.3.4 M2-A 代差预留（数据骨架，实现留 M2-A）
- [ ] 11.4.4.1 AircraftTypes.json 字段规划文档：预加 `generation`（1-6）与 `faction`（CN/EU/RU/US）字段定义（**不改逻辑**，仅记录设计）
- [ ] 11.4.4.2 RequiredTechID→代次映射表规划：tech 5→Gen3 基线；M2-A 的 A2 科技节点 Gen2-6（5 节点）挂接预留记录
- [ ] 11.4.4.3 64 张图完整入池时机 = 策略乙/丙实施点；甲阶段仅用 1 组（其余 60 张留 kb_assets/airImages 原始档案）

## 11.5 A0.3 验收清单（对应 A0.4 第④项强化 + 三层视觉）

1. 编制栏显示"截击机/战斗机/轰炸机/攻击机 ×N"中文名（4 机型逐验）
2. 编制图标 = 对应机型图（战斗机的图不得出现在截击机上）
3. 地图省份飞机图标 = 机型图（非三角翼占位）
4. 飞行动画贴图 = 机型图（选中/飞行/返航全程一致）
5. 每机型 40px/56px 缩放正常、无糊图/截断/闪烁
6. 无缺图（LoadedImages 无 traceback）、无编译失败、装机零崩溃
7. 【策略乙追加】不同阵营 civ 的师显示对应阵营图

---
*（第11章为 A0.3 细分计划；待用户拍板 11.2 策略后按【甲→乙→丙】推进）*

---

# 12. 读档空军师消失 BUG —— 根因与修复（2026-08-28 深夜，✅ 已闭环）

> 触发：用户实测"游戏内保存→退回主菜单→读档→空军师消失（飞机还在）"；且"走一个回合师又出现"。
> 关联：S3/S8 存档兼容（第9章轮1/轮2 已闭环）；A0.1/A0.2 师模型（第10章）。
> 验收：pkg_new60 装机，用户确认 ✅"功能已实现"。

## 12.1 现象与两个关键事实

| 事实 | 证据 |
|---|---|
| 读档后师缺失、机队完好 | `AF_SAVE:exported` 后存档导出 Airforce_Data.json 机场+机队正常（375B/1架）；`um_hq`（渲染）在缺失期 = 0 次 |
| 保存瞬间省 2315 军队数 = 0 | `AF_SZ:SAVE` 全表 `prov=2315` **缺席**（探针只在省军队数>0 时打印） |
| 走回合后师重建 | `um_add:prov=2315:dh=254879150`（tick 文件）+ 后续 `um_hq` 持续（armN=1） |
| 无人删除过师 | `um_rm`（removeArmy 捕手）**0 次** → 排除"清理段删师"假设 |
| 存档恢复段确实遇到过师 | `AF_army=airhq_73_2315`（读档恢复段 addArmy_Load 探针，出现 1 次） |

## 12.2 根因（攻防链最终定论）

**师的三个重建时机，其中"主菜单读档"路径漏了：**

| # | 时机 | 调用点 | 状态 |
|---|---|---|---|
| ① | 启动/新游戏初始化 | InitGame.smali:20822 `syncAllDivisions()` | ✅ |
| ② | **每回合兜底** | AirForceManager.smali:2810 `:cond_0` "per-turn division sync" → `syncAllDivisions()` | ✅ |
| ③ | **游戏内保存→主菜单读档** | Menu_LoadSavedGame.smali:508-523（loadfinal 段） | ❌ **漏**（A0 轮只补了①） |

- 读档段只做了 `syncAllFromProvinces()`（机场壳）+`loadSave_Airforce()`（机队/任务），**无 `syncAllDivisions()`** → 读档后省 armies 无师（渲染无 um_hq、保存段 AF_SZ 计 0）
- 机队已从 Airforce_Data.json 恢复 → **走一回合** → 时机②触发 → `syncAirDivisionForType` 用机队重建师（`um_add` 新 dh）→ 师"长回来"
- 这也解释了用户"走时间师又出来"：**数据从未丢失，纯属读档路径漏了一次建师调用**

## 12.3 修复（pkg_new60）

```smali
# Menu_LoadSavedGame.smali（loadfinal 段，afSuspended=false 之后、:af_restore_skip 之前）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->syncAllDivisions()V
    const-string v2, "AIRDBG"
    const-string v3, "AF_CALL:resync_load"
    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I
```

验收日志：`AF_CALL:loadfinal → … → AF_CALL:resync_load → um_add → um_hq`（读档后立即出师，无需走回合）。

## 12.4 版本线与中间产物

| 版本 | 内容 | 状态 |
|---|---|---|
| pkg_new57 | AF_army 探针（读档段14216/15738+保存段7294 三调用点） | 探针版 |
| pkg_new58 | AF_army 前缀化 S/L/C + AF_SZ（保存段省军队数）+ 清理段 C 探针 | 探针版 |
| pkg_new59 | 修复插入（Menu loadfinal 补 syncAllDivisions） | ❌ 闪退 |
| **pkg_new60** | **invoke-virtual→invoke-static 修正** | ✅ 用户验收 |

pkg_new59 闪退：`IncompatibleClassChangeError: syncAllDivisions() expected virtual but found static` —— `syncAllDivisions` 是 static 方法，误用 `invoke-virtual`。

## 12.5 新增技术教训（9.7/10.7 之后）

22. **static 方法必须 `invoke-static`**（08-28 实锤）：`syncAllDivisions()` 定义 `.method public static`，用 `invoke-virtual {v2}` 调用 → `IncompatibleClassChangeError`（`expected virtual but found static`）；与教训#2（private→invoke-direct）同族。**手写 invoke 前先看 `.method` 行是 public/protected/private + static/实例**。
23. **addArmy_Load 的 dup 守卫会静默跳过**：省里已有同 key 师时返回 null（`ald_dup_skip`），**探针若加在调用后仍会打印**（对象在），**切勿将"探针打印"当作"操作成功"证据**（本轮 AF_army=… 一度误判）。
24. **AF_SZ 类"只在 sz>0 打印"探针的缺席语义**：省 ID 缺席 = 军队数 0（不是未遍历），用于区分"无师"与"未执行"（配合 sort 全表核对）。
25. **sed 'N a\ 多行插入会丢续行缩进**（本轮 524 行 `move-result-object v2` 无缩进，模板匹配失败）；smali 容缩进但**python 模板必须按真实字节匹配**，稳妥策略=re 正则容忍 `\s*` 缩进。

## 12.6 收尾状态

- **当前装机**：**pkg_new60**（PID 28494，启动零崩溃；读档→师立即恢复 ✅ 用户确认）
- 探针现状：AF_army(S/L/C)/AF_SZ/resync_load 均为**轻量低频 dKey**，保留（后续正式版按 9.8-T6 一并收口）
- **S3/S8 可视为最终关闭**（存档兼容三件套：机队/任务/师 全部读档即恢复）
- **下一步（原计划不变，见 10.8）**：A0.2 全项验收（4 机型成师/多师/满10分编/旧档迁移）→ A0.3 贴图（11.2 策略拍板）→ A0.4 → A1 打击任务

---

*（第12章为 2026-08-28 深夜快照；pkg_new60 为当前基线）*

---

# 13. 甲1逐师命中 + 行进BUG + D1航程 + 省份滤镜（2026-08-29，🔶 已装机待终验）

> 触发：用户验收 A0.2 后拍板多师控制=甲（逐师命中）；同时报告新BUG"行进点目的地无法移动"；随后追加需求"选中机队后航程内省份加滤镜（变浅）"。
> 版本线：pkg_new61（行进修复+甲1）→ pkg_new62（D1）→ pkg_new63（滤镜 v1 改错层，无效）→ **pkg_new64（滤镜 v2 正解，当前基线）**。
> 验收状态：行进BUG ✅ / 甲1（多师可视化+逐个选中）✅ / D1 🔶 已实现待验 / 滤镜 🔶 pkg_new64 待用户实测。

## 13.1 行进BUG根因与修复（✅ 用户确认）

**现象**：只选中飞机师→点行进→点目的地无法移动；必须先点省份（激活）→再点飞机师→行进→点目的地才生效。

**根因**（GameActiveProvince.actionUp_setActiveProvinceID2 双路径）：
| 路径 | 条件 | 空军拦截段 |
|---|---|---|
| 行进模式点击（cond_9） | chooseProvinceMode==true 时**先置 false** → 走到 884 段时条件已失效 | `if-eqz v2, :air_mv_skip`（885-887）**必然跳过** |
| 省激活路径（ProvinceTouchExtraAction:1282） | iActiveProvince 激活路径 | 有效（用户"成功"流程走这里） |

**修复（pkg_new61）**：①删除 885-887 两行（sget-boolean chooseProvinceMode + if-eqz :air_mv_skip）——行进模式点击也走空军拦截段；②拦截后（handleProvinceClick 调用后）追加 `return-void`——跳过原版 moveActiveArmiesToProvinceID，**防双触发**（S2 闭环）。

## 13.2 甲1 逐师命中（✅ 用户确认）

**前置发现**：drawAirForce 机型循环把 4 机型全部画在**省中心同一位置（无偏移）**→ 多师视觉完全重叠，物理上无法逐师点击。

**实现（pkg_new61，两件套）**：
1. **视觉分层** `drawAirDivisions(SB, Airport, baseX, baseY)Z`（ProvinceDrawArmy）：
   - 机场省存在 airhq_ 师时：**每师纵排错开**（idx×28px 向上偏移），各画 友军环(56px)+机型图(40/56px by ord)+数量文本；**替代原重叠机型循环**（有师即返回 true 跳过旧循环；AI 无师机场走旧逻辑）
   - ord 解析：key 3 段（legacy）→1；5 段→parts[3]；机型图 per ord（0拦截/1战斗/2轰炸/3攻击）
2. **逐师命中** `selectAirDivisionAt(Airport, screenX, screenY)V`（AirForceManager）：
   - trySelectAirUnit 命中机场后调用；按各师绘制位置（同 28px 偏移公式）取**距离最近**命中（阈值 90px 沿用 0x1fa4）；选中→HoveredArmy{key=师key...}→addActiveArmy
   - 结果：点哪排选哪师，军队栏随点随换（用户实测 ✅）

## 13.3 D1 航程判定落实（pkg_new62，🔶 待用户专项验证）

**原状**：`isInRange()` **硬编码 800.0f**（AirForceManager:838），且**无任何调用点（死方法）**；F8 白圈仅视觉（取全机型 max，非选中）。

**实现**：
1. isInRange 800 → **遍历机队实际 AirUnit.combatRadius 取 max**（applyType 已从 AircraftTypes.json 填真实值：拦截400/战斗500/轰炸800/攻击300；types 空回退 800）
2. **接入入口**：handleProvinceClick（:af_no_pat 后）插 `invoke-direct isInRange`——超航程拒绝派单 + 日志 `AFRNG:out=1`（dKey）
3. 属主：A1（打击任务）前置基础；作战半径与滤镜共用同一计算逻辑（airFadePrepare 同款遍历）

## 13.4 航程省份滤镜（pkg_new63 无效版 → pkg_new64 正解，🔶 待验收）

**需求**：选中机队后，航程内省份颜色变浅（高亮作战范围）。

**v1 陷阱（pkg_new63）**：改动 `drawProvinces(SB,IIFI)`——该方法是 **previewTexture_Generate（地图纹理预渲染）** 的调用点（MapBG:7420/7514/7589 全在 previewTexture_Generate 内），**非每帧渲染** → 用户实测无效果。

**真实渲染链（pkg_new64 正解）**：
```
每帧 drawProvinces(SB)（无参版，RendererGame$3/6/7/8 调用）
  → airFadePrepare()：计算 afSelProv/afR2（机场机队 maxR²）/afFadeOn   ← 每帧
  → DrawProvinces 策略（MODE_DEFAULT=MapModeManager$1 → drawProvinces_Standard_InGame
      → drawProvinces_Standard_LandProvinces_InGame → 省循环）
  → 每省 Province.draw(SB,IIFI)：afFadeOn && airReachFilter(provID)
      → 把文明色向白 lerp(0.4) 后 setColor 绘制（省=白色形状掩码×文明色 → 变浅）
```
- 新静态字段（ProvinceDraw）：`afFadeOn:Z / afSelProv:I / afR2:I`
- `airReachFilter(I)Z`：距机场省中心 dist² ≤ afR2（自身省不淡化；整数平方无 sqrt）
- 主地图 + 小地图 + 荒原省渲染一致挂载（:af_skip/:af_skip2 标签）
- 深浅系数 0.4 可调（0.25 柔和 / 0.6 更亮）

## 13.5 挂起项（用户拍板"以后做"）

| # | 项 | 说明 |
|---|---|---|
| H1 | **甲3 任务编队独立** | createPatrol **硬编码 AirType.FIGHTER** + handleProvinceClick 机型检查也硬编码 FIGHTER + drawAirDivisionAsPlane 飞行图标固定 `airFighter` + 数量=全机型可用数（xN 显示"战斗机数据"的根因）。用户意见："跟贴图相关，放着以后做"——**与 A0.3 贴图一起做** |
| H2 | A0.3 贴图策略 | 甲静态基线（3代中国）/乙动态阵营/丙完整代差——未拍板 |
| H3 | A1 打击任务 UI | ①点敌省直接开打（建议）/②面板任务按钮/③敌方单位弹菜单——未拍板 |
| H4 | A0.5 师属性数据化 | 师兵种数值映射机型（hp/攻击/航程）、军队栏属性显示、AirUnit.hp 从类型数据读取——本轮未做（与甲1无关） |

## 13.6 技术教训（本轮新增，12 条：教训 26-37）

26. **invoke 寄存器列表不能使用 p* 别名**（apktool smali 解析器不支持，报 "mismatched tree node: UP expecting I_CATCHES"）；一律先 move 到 vN 再用。
27. **invoke 单寄存器格式（35c）最多 5 个寄存器**；6 寄存器必须 `invoke-virtual/range`（Image.draw(SB,IIII)=6 寄存器，普通 invoke 报 I_STATEMENT 错误）。
28. **对象移动必须 `move-object`**（普通 `move v1, v12` 对象→寄存器 VerifyError: copy1 type=Reference 但期望 Integer；同理 drawAirCount 的 SB 参数）。
29. **const/high16 要求低 16 位为 0**：0.4f=0x3ecccccd 非法（"Invalid literal value. Low 16 bits must be zeroed out"），必须 `const`；1.0f=0x3f800000 之类低 16 位为 0 的才可用 const/high16。
30. **smali 模板匹配教训（多次）**：真实文件在指令间有空行（apktool 输出 `.line` 行被过滤后仍留空行）；python 字符串锚点必须含 `

` 或改用 re 正则 `\s*` 容忍（教训 12/25 细化）。
31. **`.locals` 增量安全规则实证**：.locals 4→10 后参数别名 p1…p5 自动重映射（v4→v10），原代码参数引用不受影响；但**必须先 grep 方法体内是否直接引用 v4-v9**（本次无，安全）。
32. **改"渲染效果"必须先确认调用点所属方法**（drawProvinces 带参版=previewTexture_Generate 预渲染陷阱）——grep 全部调用点 + 所在 `.method` 行再动手（本轮滤镜 v1 无效的教训）。
33. **floating 常量 0.4 的 smali 写法**：`const v7, 0x3ecccccd`；lerp 公式 r'=r+(1-r)*k 用 sub/mul/add-float 实现，逐分量算。
34. **跨类读取 public static 字段**（Province→ProvinceDraw.afFadeOn 等）：sget/sget-boolean 直接访问 OK（public）；private 字段则必须过 getter（教训 9 延伸）。
35. **每帧路径挂全局准备逻辑的位置**：无参版 drawProvinces(SB) 是唯一每帧入口（RendererGame$3/6/7/8 调用），准备函数（airFadePrepare）挂这里；不要挂在预渲染/生成纹理路径上。
36. **构建后台执行 & 失败检测**：apktool b 用 `> log 2>&1; echo EXIT=$?` 落盘，wait 后必查 log——本轮 pkg_new64 首次构建静默失败（const/high16 非法），若只看"wait 完成"会误判成功。
37. **dex 层确认新代码存在**（strings dex | grep 方法名 ≥1）用于防"旧 dex 组装"（教训 21/22 延伸）；classes_new.dex 为 0 字节时 mkzip 不会报错（沿用包内旧 dex）——**装机前必须验证**。

## 13.7 当前基线与下一步

- **当前装机**：**pkg_new64**（滤镜 v2；PID 14031 启动零崩溃；含 61/62/63/64 全部改动）
- **待用户验收**：滤镜效果（深浅 0.4 可调）；D1 超航程拒绝（AFRNG:out=1）
- **下一步（单线串行）**：A0.3 贴图（H2 拍板）→ 或 A1 打击任务（H3 UI 拍板，建议①点敌省直接开打 + D1 已就位）；H1（甲3 任务编队）挂靠 A0.3 后做

*（第13章为 2026-08-29 快照；pkg_new64 为当时基线）*

---

# 14. 航程省份滤镜（多轮探针定位闭环，✅ 用户确认"成了"）

> 触发：用户追加需求"选中机队后航程内省份变浅"，随后纠正语义——**选中飞机师不变浅，点"行进"进入选目的地界面才变浅**。
> 版本线：pkg_new64（滤镜v2 挂错层，无效）→ 65（改挂 drawLandProvince，仍无效）→ 66（行进触发+首轮探针）→ 67（无条件链探针×5）→ 68（精细数值探针）→ 69（off入口瞬值打印）→ **pkg_new70（根因修复 if-gez→if-ltz，✅ 用户确认）＝当前基线**。
> 验收：用户实测"成了" ✅。

## 14.1 三层根因（缺一不可，全部靠探针实锤）

| 层 | 根因 | 证据/修复 |
|---|---|---|
| **L1 挂错渲染层** | 滤镜误挂 `Province.draw(SB,IIFI)`——该方法是 **MapBG 预渲染纹理（previewTexture_Generate）+ Minimap** 的路径，**主地图每帧不走** | 调用点全表：ProvinceDraw:4832（带参 drawProvinces=预渲染）/9675（Minimap）/内部10672；pkg_new65 改为挂 `drawLandProvince(SB,F)` |
| **L2 渲染链正常** | 挂对方法后仍无效——但探针证明链全通：`um:cs2→um:cs3→um:dp1→afp:enter→afd:enter`（12万次/会话）全部在跑 | pkg_new67 无条件探针×5 一次定位"链通但滤镜条件失败" |
| **L3 分支方向写反（终极）** | `airFadePrepare` 中 `if-gez v1, :afp_off`——**v1=selectedAirportProvinceID ≥0 也跳 off**（应 `if-ltz` 即"未选中才跳"）。后果：选中任何机场省都直接进 off → **afFadeOn 恒为 false** | 计数矛盾：`afp:st sel=2315 mode=1`（420帧）却全部掉进 `afp:offm`（且总数=三种状态之和 100% 命中 off）；pkg_new70 `if-ltz` 一行修复 ✅ |

## 14.2 省渲染架构（本项目沉淀，别再踩）

```
Renderer.render
 └─ drawCurrentScale_Provinces（RendererGame$3，getInGame()==true 时）
     └─ drawProvinces(SB) 无参版【唯一每帧入口；设 shaderDefaultProvince】
         ├─ updateProvincesInView() / MapModeManager.updateAlpha()
         ├─ airFadePrepare() ← 滤镜准备（本工程插入）
         └─ DrawProvinces 接口（MODE_DEFAULT = MapModeManager$1）
             ├─ FBO_PROVINCES=true → drawProvinces_Standard_FBO → LandProvinces_FBO
             │    （省=帧缓冲纹理 textureProvince_PBG；仅地图移动/计数超限时重建）
             └─ false → drawProvinces_Standard_InGame
                  └─ drawProvinces_Standard_LandProvinces_InGame(SB,α)
                      ├─ 缩放≥阈值 → fog_drawLandProvince 接口
                      │    （默认 Province$1=空实现！setFogDrawArmy(true)→Province$15 转发 drawLandProvince）
                      └─ 缩放<阈值 → drawProvinces_Standard_LandProvinces → drawLandProvince(SB,F)
省级颜色终点 = Province.drawLandProvince(SB,F)：
  setProvinceColor(SB,F)（= setCivilizationProvinceColor：civColorMap.a=α + SB.setColor）
  → provinceBG（白色形状掩码纹理，setBG(Pixmap)）。draw(SB,x,y,iMapExtraScale)
```

## 14.3 滤镜最终实现（pkg_new70 状态）

| 项 | 内容 |
|---|---|
| 静态字段 | ProvinceDraw：`afFadeOn:Z / afSelProv:I / afR2:I / afSig:I` |
| 准备函数 | `airFadePrepare()`（每帧，无参 drawProvinces 内）：`chooseProvinceMode==true` && `selectedAirportProvinceID>=0` && 机场存在 && 机队非空 → 遍历机队取 max `AirUnit.combatRadius` → `afR2=r²` → afFadeOn=true；否则 off（afSelProv=-1） |
| 判定函数 | `airReachFilter(I)Z`：自身省除外；`省中心(getCenterX/Y_Real)距离² ≤ afR2` → true |
| 挂载点 | `drawLandProvince(SB,F)`：setProvinceColor 后、provinceBG.draw 前，命中省 `SB.setColor(lerp0.4向白, α=p2)`（.locals 4→12，标签 :afd_skip） |
| FBO保险 | `airFadeFBOForce()`（afSig 签名变化时若 FBO_PROVINCES=true → `FBOProvincesBG.disposeProvincesTexture()` 强制重建） |
| 数据源 | 遍历 `Airport.aircraft: Map<AirType,List<AirUnit>>`；玩家飞机由 `Airport.updateBuild()`（建造完成）加入；`syncAirDivisionForType` 只读数量建师（不删 aircraft） |
| 深浅系数 | 0.4（lerp 公式 r'=r+(1-r)*k；可调 0.25/0.6） |
| 触发语义 | ✅ 选中师不变浅；点行进（chooseProvinceMode=true，选择目的地期间）变浅；取消/完成行进即恢复 |

## 14.4 教训 38-43（本轮新增）

38. **smali 分支方向必须逐字核对**：`if-gez`（≥0 跳）与 `if-ltz`（<0 跳）仅差一个字母，语义完全相反。本项目 `airFadePrepare` 写反导致"选中恒 off"，静态排查 4 轮 + 探针 3 轮才靠计数矛盾抓到。规程：写条件注释（如 `# sel<0 结束`），构建前 grep 复核新增的 if-* 指令方向。
39. **探针计数对比法**：状态记录（afp:st mode=1）与结果记录（afp:offm）互斥但同时大量出现 → 中间判断分支与记录点不一致 → 在分支入口打印寄存器瞬值（再打一次同一寄存器），一次装机即可定位。
40. **"打印值与跳转值不一致"时先怀疑分支指令方向**，再怀疑寄存器覆盖——本轮 v1/v2 在 afpProbe 与 if 之间无任何覆盖，唯一解释即方向写反。
41. **渲染功能定位三步**（教训 32 强化）：① grep 调用点+所在 `.method` → ② 找"每帧唯一入口"（无参 drawProvinces(SB)；带参版=预渲染，Minimap 带独立滤镜挂载）→ ③ 省色终点=drawLandProvince(SB,F)（fog 接口默认 Province$1=空实现是陷阱；Province$15 才是转发）。
42. **FBO 路径保险丝**：FBO_PROVINCES=true 时省=预渲染纹理，状态变化需强制重建（disposeProvincesTexture 后计数机制自动重建）；默认 false 零开销。
43. **调试批处理**：5 个无条件探针（um:cs2/cs3/dp1/afp:enter/afd:enter）一次定位"渲染链通/滤镜条件挂"二分，避免单点猜测多轮往返。

工具备注：terminal 会话工作目录会残留（跨命令 cd 生效）——用绝对路径或显式 cd；grep BRE 下 `|` 是字面量需 `-E`；本机启动 Activity 真实名 = `aoc.kingdoms.lukasz.jakowski.AndroidLauncher`（此前摘要中 com.lukasz 为误记）。

## 14.5 当前基线与下一步

- **当前装机**：**pkg_new70**（滤镜 ✅ 用户确认；含 61-70 全部改动；探针保留待收口）
- **待办**：① 探针收口（afp*/arf*/um:cs* 一组，撤除后终验一次）；② 挂起项不变：H1 任务编队机型（挂靠 A0.3）｜H2 A0.3 贴图策略拍板｜H3 A1 UI 三选一拍板｜H4 A0.5 师属性数据化
- **下一步（单线串行）**：A0.3 贴图（H2）或 A1 打击任务（H3，建议①点敌省直接开打；D1 已就位），请用户拍板

## 14.6 预留项：航程按"师/机型"独立化（用户拍板"后面做"，本轮仅铺垫）

**现状（用户观察属实）**：滤镜 / D1 判定 / F8 白圈 / 任务派单 全部使用**机场机队 max CombatRadius**——同机场所有师"同一航程"，与机型无关。

**数据层已就绪（无需补数据）**：
| 项 | 位置 | 说明 |
|---|---|---|
| 机型真值 | `AircraftDataManager.types[AircraftTypeData].CombatRadius:F`（@AircraftDataManager.smali:17，public static） | 拦截400/战斗500/轰炸800/攻击300（AircraftTypes.json） |
| 机机真值 | `AirUnit.combatRadius:F`（applyTypeDefaults 从 types 填） | 每架独立字段 |
| 师→机型 | 师 key = `airhqKey4(civ,prov,ord,seq)` = `airhq_<civ>_<prov>_<ord>_<seq>`（ord=0拦截/1战斗/2轰炸/3攻击；legacy 3段=ord1） | **ord 即机型**，key.split("_")[3] 现成解析模式（drawAirDivisions:6833） |
| 选中师 | `selectAirDivisionAt()` 设 `Game.HoveredArmy{key=师key,...}`（AirForceManager:3255） | 选中师信息已挂载 |

**四个"机队 max"使用点（未来逐一替换为"选中师的 ord→types[ord].CombatRadius"）**：
1. 滤镜准备 `airFadePrepare()`（ProvinceDraw）——遍历 aircraft 求 max（现）
2. D1 拒绝 `isInRange()`（AirForceManager:835-861）+ handleProvinceClick 接入（AFRNG:out=1）
3. F8 白圈（ProvinceDrawArmy:1107 遍历 types 求 max）
4. 任务派单 createPatrol（H1 挂起项，机型硬编码 FIGHTER 一并解决）

**改造方案预判（正式开工时按此执行）**：
- airFadePrepare 数据源：`selectedAirportProvinceID`（机场级）→ **选中师 key 解析 ord**（HoveredArmy.key；未选中师回退机队 max）
- 为师场景新增辅助：`getSelArmyOrd()I`（静态，懒解析缓存）；滤镜/拒绝/白圈三处统一调用
- 注意：多师同机场（已有逐师选中）→ 按师显示自然贴合"选哪个师显示哪个师的航程"；选中师但无机队数据时回退 800
- 属主：A0.3 贴图（H2）同期或 A1 前插入，单独小项不阻断主线

*（第14章为 2026-08-29 快照；pkg_new70 为当时基线）*

---

# 15. 轰炸机飞行视觉放大 ×1.5（pkg_new71/72，🔶 待用户验收）

> 触发：用户需求——"轰炸机的飞机飞行的贴图放大1.5倍（省份上都不用放大，省份上的已经放大过了）"；随后澄清："不止贴图，除雷达圈之外的其他贴图（蓝环、血量环）都要变大1.5倍"。
> 版本线：pkg_new71（飞机图标）→ **pkg_new72（蓝环+血环，当前基线）**。
> 状态：🔶 已装机（PID 28330 启动零崩溃），待用户验收报告（用户已确认将反馈）。

## 15.1 需求与范围

| 元素 | 位置（drawAirDivisionAsPlane，飞行绘制唯一有效路径） | 尺寸变化 | 备注 |
|---|---|---|---|
| 飞机图标 | #4 段（原硬编码 `sget Images.airFighter` 40px） | **40→60px（0x28→0x3c）** | ord==2 时改用 `airBomber` 机模；其余机型原样（H1 挂起项仍挂起） |
| 蓝环（友军环 airRingFriend） | #4 段开头 | **56→84px（0x38→0x54）** | 中心偏移 -0x8→-0x2a 同步对齐 |
| 血量环（ringHP_4） | #4 段尾部 | **48→72px（0x30→0x48）** | 中心偏移 -0x4→-0x24 同步对齐 |
| 雷达圈（radarFill 蓝晕 160px） | :aus_seg（仅转段时） | **不动** | 用户明确排除 |
| 省份上驻场显示（drawAirDivisions/drawAirForce） | — | **不动** | 轰炸机驻场本为 56px 大图标 |

## 15.2 实现要点（pkg_new72 状态）

- **新增** `ProvinceDrawArmy.getKeyOrd(String)I`（.locals4）：师 key `airhq_<civ>_<prov>_<ord>_<seq>` → ord（0截/1战/2轰/3攻；legacy 3 段 key 默认 1；`NumberFormatException` try/catch 兜底）
- **ord 计算前置**到 #4 段开头（v10=ord、v11=2），友军环/飞机/血环三处共用同一判定，飞机分支去重（pkg_new71 的重复 getKeyOrd 调用删除）
- 环形全部以飞机为中心重新对齐（尺寸×1.5 后偏移=-size/2）
- 主路径确认：`drawAirDivisionAsPlane` 由 3713 行调用（师级飞行必经）；`drawAirMissionFlyingPlane`（4039）**无调用者=死代码**，未改（备忘）
- CheckInvoke TOTAL BAD: 0；mkzip 组装 entries 31698

## 15.3 教训补充（本轮新增）

44. **"视觉放大"需求先列全元素清单再动手**：用户第一轮说"贴图放大"只改了飞机；第二轮澄清"不仅是贴图，蓝环血量环都要"——轮询式返工。规程：改前把目标界面的**全部绘制元素**列成表（图标/各环/文本/特效），标注"改/不改"让用户一次确认。
45. **环形绘制中心对齐公式**：draw(SB,x,y,w,h) 的 x/y 是左上角——中心对齐需 offset = -w/2（56→84 时 -8→-42；48→72 时 -4→-36），只改尺寸不改偏移会中心偏移。
46. **同一方法内多次相同锚点注意上下文**：airFighter drawFull 八行在 drawAirDivisionAsPlane（v3..v9）与 drawAirMissionFlyingPlane（v0..v6）各出现一次——锚点必须带寄存器名区分（本计划已用 v3..v9 版本唯一定位）。

## 15.4 当前基线与下一步

- **当前装机**：**pkg_new72**（轰炸机飞行视觉 ×1.5：飞机60px/蓝环84px/血环72px/雷达圈不动；含 61-72 全部改动）
- **待用户验收**：① 本项（B1 轰炸机飞行三元素放大）② 滤镜深浅是否要调（14.3 可选 0.25/0.6）
- **下一步（单线串行）**：① H2 A0.3 贴图（《A0.3贴图替换_执行计划书v1.md》已就绪，甲策略 16 张替换待开工命令）② H3 A1 UI 拍板（①点敌省直接开打建议）｜挂起项 H1（任务编队机型，同入口可顺带做"飞行图标按机型"全机型化）

*（第15章为 2026-08-29 快照；pkg_new72 为当时基线）*

---

# 16. B1 闭环 + 师-任务绑定（pkg_new73→75，✅ 用户确认"修复成功"）

> 触发：用户验收 pkg_new72 反馈两问题（① 放大后飞机与环错位 ② 师的图案与飞出去贴图不同源）；随后再报关键缺陷"选截击机师飞出去却是战斗机师"。本轮三轮修复全部闭环。

## 16.1 版本线

| 版本 | 内容 | 状态 |
|---|---|---|
| pkg_new73 | ① 错位修复：轰炸机三元素统一回公共中心 (cx+20,cy+20) ② 飞行图标 per-ord（0截/1战/2轰/3攻）与驻场同源 | ✅ 用户确认错位修复 |
| pkg_new74 | 师-任务绑定（patch15）：createPatrol 加 divKey + airhqKey 字段优先 + 3 调用点 | ❌ 两次闪退（VerifyError[0x90] → NoSuchFieldError，见 16.4） |
| **pkg_new75** | 修复 move-result 错位 + `$` 类名损坏（10 处） | ✅ **用户确认"修复成功"** |

## 16.2 B1/机型显示闭环（pkg_new73）

### 锚点体系（本包定论，沉淀为公式）
- **公共中心 = (cx+20, cy+20)**：40px 图标左上角在 (cx,cy)，**所有环/圈偏移按该中心对齐**（蓝环 56px 偏移-8、血环 48px 偏移-4、雷达圈 160px 偏移-60，验证 -size/2+offset=+20 全同）
- **放大 1.5 后保持同心的 offset = 20 - size/2**：飞机 60px→**-10(0xa)**、蓝环 84px→**-22(0x16)**、血环 72px→**-16(0x10)**；雷达圈不动（160px 偏移-60 天然同心）
- patch12/13 错位根因：轰炸机分支漏减偏移（drawFull 左上角语义），环按"中心=(cx,cy)"对齐 → 三者中心互差 10~30px

### 飞行图标 per-ord 映射（与驻场 drawAirDivisions 完全同源）
| ord | 机型 | 飞行图标 | 尺寸 |
|---|---|---|---|
| 0 | 截击机 | airInterceptor | 40px |
| 1 | 战斗机 | airFighter | 40px |
| 2 | 轰炸机 | airBomber | **60px（×1.5）** |
| 3 | 攻击机 | airAttacker | 40px |
| default/legacy | — | airFighter | 40px |

（`drawAirMissionFlyingPlane` 为无调用者死代码，未动）

## 16.3 师-任务绑定（patch15，核心逻辑修复）

### 根因（两层，运行时探针 `um_dr:key=` 实锤）
1. **createPatrol 硬编码 `getAvailableAircraft(FIGHTER)`** → 无论选什么机型，任务永远派战斗机机队
2. **AirMission.airhqKey = getAirDivKey()（只拼 `airhq_<civ>_<省>` 3 段）** → pickup/place/move 用 3 段 key 精确匹配（`Province.getArmyKeyID` 是 equals 匹配），只能抓到"战斗机 legacy 师"（airhqKey4 对 ord=1&&seq=1 压缩为 3 段）；5 段 key 的截击/轰炸/攻击师永远不被任务抓到
3. 探针证据：`um_dr:key=airhq_73_2315`（3 段，141 次）= 战斗机师被搬运；用户选中截击机师（`airhq_73_2315_0_1`）却无对应飞行记录

### 修复（patch15）
| # | 改动 | 位置 |
|---|---|---|
| 1 | `getAirDivKey()` 改为 **airhqKey 字段优先**（null→legacy 3 段，构造器行为不变、旧档兼容） | AirMission.smali |
| 2 | `createPatrol(Airport,I)` → **`createPatrol(Airport,I,String divKey)`**：divKey 非空→airhqKey=divKey + `getKeyOrd` 解析机型→按机型派机；空→原 FIGHTER 行为（AI/兜底） | AirMission.smali |
| 3 | 3 调用点：用户主路径（handleProvinceClick）传 **Game.activeArmy[0].key**（HoveredArmy.key=选中师 key，trySelect 链路已置）；AI（tryPatrolForAirport）/兜底（executeAIAssignmentForAirport）传 null | AirForceManager.smali |

### 兼容性结论
- 旧存档 mission（airhqKey=3 段）读档后仍绑定 legacy 战斗机师 ✓
- 新任务 airhqKey 随 `airhqKey` 字段持久化（save/load 沿用 22 字段容器）✓
- AI 巡逻/兜底无师绑定 → FIGHTER（行为不变）✓

## 16.4 事故与教训（新增 47-50）

**事故一（pkg_new74 首版）**：`handleProvinceClick` VerifyError [0x90] invalid use of move-result*——插入探针/调用代码时把 `invoke-static` 与 `move-result-object` 之间插入了其他指令。
**事故二（pkg_new74 二版）**：`NoSuchFieldError: No field PATROL in class AirMission` —— 用 `python3 -c "..."`（shell 双引号）整块重写 createPatrol，**`$MissionType`/`$AirType` 被 bash 变量展开成空** → smali 类名损坏（`AirMission$MissionType;->PATROL`→`AirMission;->PATROL`），编译通过、CheckInvoke 0 bad，但运行时字段解析失败（dex 级字段引用错误，CheckInvoke 不覆盖）。

47. **任务派单必须携带"选中对象"的完整标识**：createPatrol 硬编码机型/3 段 key 是"选截击机飞战斗机"的总根因；新增任务类接口时先问"谁发起的、哪个师/目标"，不可默认。
48. **invoke 与 move-result 必须紧贴**（0x90 通用根因）：在既有方法中插入代码时，`move-result*` 的前一条指令必须是其 invoke；**插入点应选"invoke 之前"而非"move-result 之前"**；插入后扫一遍"每个 move-result* 的前驱"。
49. **smali 含 `$` 类名严禁经 shell 双引号传参**（bash 变量展开地雷）：`AirMission$MissionType`、`AirUnit$AirType`、`Game$HoveredArmy` 等在 `python3 -c "..."` 中会被吃成空；规范=一律写成 `.py` 文件执行（或单引号包裹）；改后必须 grep 验证 `$` 完整性（`grep -c '\\$MissionType'`）。
50. **smali 整块匹配易失败**（本轮 4 次返工）：baksmali 输出指令间有空行、标签带 4 空格缩进；整块字符串匹配建议改**行级定位**（找 `.method`/`.end method`/关键指令行号作区间替换），或先 `repr()` 打印实际字节再构造锚点。

## 16.5 当前基线与下一步

- **当前装机**：**pkg_new75**（PID 验收时 4263；含 61-75 全部改动）
- **本批闭环**：✓ B1 轰炸机飞行视觉×1.5（错位已修）✓ 飞行图标按机型（H1 挂起项核心部分闭环：飞行/驻场同源）✓ 师-任务绑定（任务=选中师机型）
- **待办**：① 滤镜深浅系数可调（0.4，可选）② 探针收口（afp/arf/um:cs*/afd/um_dr/um_hq 一组）③ **H2 A0.3 贴图开工**（《A0.3贴图替换_执行计划书v1.md》就绪，甲策略 16 张替换）④ H3 A1 UI 拍板（①点敌省直接开打建议）⑤ H4 A0.5 师属性数据化 | H1 剩余（任务编队机型其他细节）挂靠 A0.3 后
- **教训 47-50 已入本章；累计 50 条**

*（第16章为 2026-08-29 快照；pkg_new75 为当时基线）*

---

# 17. H2 A0.3 空军贴图替换（甲·静态基线，✅ 用户确认"正常"）

> 触发：用户启动 H2（A0.3），指令"贴图从贴图补充.zip提取"+"背景需要透明"+"军队栏缩略图背景用 #00468E"。执行《A0.3贴图替换_执行计划书v1.md》，实施中对消费链做**实证修正**（计划书原 C1 判断有误），最终 28 张替换闭环。

## 17.1 版本线

| 版本 | 内容 | 状态 |
|---|---|---|
| pkg_new76 | ① ArmyManager 两处 `loadTexture_RGB888`→`loadTexture`（RGBA8888，透明前提）② mkzip 28 键：icons12（per机型）+ unitsImages12 + AirUnitlmages4 ③ 透明版缩略图 | 装机启动正常 |
| pkg_new76（重装） | C2 缩略图改为 **#00468E 深蓝实底**（RGB 不透明，重新组装未重编 dex） | ✅ **用户确认"正常"** |

## 17.2 消费链实证修正（★ 重大认知，原计划书 10.3/1.1 需更正）

实施中发现计划书 C1 描述不准，**真实消费链如下**（均已 grep 实锤）：

| 链 | 真实路径 | 证据 |
|---|---|---|
| **C1/C3 地图图标+建造面板** | `assets/ui/interface/{XXH,XH,H}/icons/{4机型}.png` → `InitGame.addImage("...icons/X.png")` → `Images.airX`（ImageID）→ `ImageManager.getImage` | InitGame.smali 9783-9870（airX 的 sput 源为 `"icons/INTERCEPTOR.png"` 等；`getRescouresPath()` 前缀=ui/interface层级） |
| **C2 军队栏缩略图** | `unitsImages/{H,XH,XXH}/66..69.png`（**ImageID=66/67/68/69**=Air*.json）→ `ArmyManager.armyImages` → ButtonArmy | 计划书 10.3 ✓ 正确 |
| **AirUnitlmages 根目录 4 张** | **无绘制引用**（死资源）；`Gen4/CN|RU/` 仅注册为 `airG4_*_*`（备用，绘制代码未用） | InitGame 只 addImage 未消费 |

**隐藏bug顺带修复**：mkzip 旧 icons 12 键全部引用同一张 `FIGHTER_new.png`（早期测试图）→ **所有机型在建造面板/地图上显示同一张图**。本轮改为 per 机型（4 张 Gen3/CN 各 3 层）。

### 资源接入规则（教训化）
- 改"视觉"前先 `grep -rn 'addImage\\|loadTexture'` 追到**加载字符串**真实路径，勿凭目录名（`AirUnitlmages` 拼写陷阱 K2 的升级版：目录存在≠被加载）
- replace vs add_files：键是否在母本决定用哪个（icons 不在母本→add_files；AirUnitlmages/unitsImages 66-69 本次用 add_files/覆盖既有键）

## 17.3 素材与规格

### 素材源（贴图补充.zip，用户指定）
`贴图补充.zip`（/sdcard/GLG/历史23/）——**重要资产发现**：
- **空军贴图：3代~6代 × 中/欧/美/俄 × 4机型 = 64 张完整代差池**（正是计划书丙策略/64图池素材！）；另含 **NuclearWeapons图片 15 张**（核弹/导弹分级图）、**核战建筑**（反导阵地/核弹发射井/长波雷达 + 省份贴图/雷达.png）
- 同批图另有已解压副本 /sdcard/GLG/贴图补充/
- 源图**尺寸不一**（400×276 / 474×204 / 300×200 / 475×355）且**RGBA 真透明**（alpha extrema=(0,255) 实测）→ 必须统一 LANCZOS 缩放

### 规格（最终版，用户拍板）
| 组 | 尺寸 | 模式 | 背景 |
|---|---|---|---|
| C1 icons/AirUnitlmages | 300×200 | RGBA | **透明** |
| C2 unitsImages H/XH/XXH | 200×118 / 266×157 / 332×196 | **RGB（不透明）** | **#00468E（0,70,142）实底** |

机型映射：66=拦截(J-8) 67=战(SU-27或J-11) 68=轰(H-6) 69=攻(Q-5)（与 Air*.json ImageID 对齐）。

## 17.4 技术要点

1. **加载器已全链 RGBA8888**：`addImage` 默认 RGBA8888 ✓（icons 透明无改动）；ArmyManager 的 loadArmyImages 两处 `loadTexture_RGB888`→`loadTexture`（否则 H/XH 层强制 RGB888→透明区黑块；libGDX `Texture(File,Pixmap$Format)` 对格式不符用 drawPixmap SourceOver 合成转格式，transparent→黑）
2. **PIL 背景合成公式**：`Image.alpha_composite(纯色RGBA底, 缩放后RGBA源)` → `.convert('RGB')`；验证角点像素 = (0,70,142)
3. **纯资源轮判定**：仅换图→仍走 mkzip（classes_new.dex 复用上一版）即可，无需 apktool b（K9）；但**改了 smali（此轮改过加载器）→必须全链**
4. **装机后哈希校验**（K7 升级）：unzip -p dbg_signed.apk + md5 对比源图（本批 12 键抽查 ALL MATCH）

## 17.5 教训（51-53）

51. **消费链追"加载字符串"而非目录名**：Images.airX 实际加载 `.../icons/X.png`（ui/interface），`AirUnitlmages/` 目录存在却是死资源——计划书 10.3 的 C1 判断因此写错；改版前 grep addImage/loadTexture 的字符串实参。
52. **视觉列表至少三层**（airX icons / armyImages unitsImages / 备用 gen池）：漏一层即"半边旧"；改前先列"生效键全景表"（本次 28 键=12+12+4 就是如此推演出来的）。
53. **背景色合成规范**：需求方指定色值（#00468E）→ 转 RGB 三元组 (0,70,142)，alpha_composite 后 convert('RGB')，角点像素断言验证；透明背景需求→RGBA8888 加载前提检查（RGB888 会黑块）。

## 17.6 当前基线与下一步

- **当前装机**：pkg_new76（A0.3 全量：61-75 全部 + 28 张贴图 + 加载器 RGBA8888）
- **本批闭环**：✅ **H2 A0.3 甲策略（M-H2-1）**——4 机型视觉全部 Gen3/CN（中国三代机 J-8/J-11/H-6/Q-5），C1/C3 透明、C2 #00468E 深蓝
- **挂起/后置**：M-H2-2 乙（civID→阵营动态图，素材 64 张池已备）；M-H2-3 丙（64 图代差+科技，=C5/M2-A 正题）；H1 剩余（任务编队机型其他细节）；**探针收口**（afp/arf/um_dr/um_hq 一组）
- **下一步（单线串行建议）**：① **H3 A1 UI 拍板**（①点敌省直接开打建议，D1 已就位）② 探针收口（随手）③ H4 A0.5 师属性数据化
- **教训累计 53 条**

*（第17章为 2026-08-29 快照；pkg_new76 为当前基线）*

---

# 18. ICBM 游戏本体空军机制调研（2026-08-29，A1 UI 方案蓝本）

> 触发：用户指令"查查 ICBM 本体里是怎么做的，再给我 3 个 html"；澄清①"我要的是空军的，核弹一会做" ②"要你查的是 ICBM 游戏文件里的"（指向**ICBM: Escalation 游戏文件**，非 AoH3 母本）。
> 调研对象：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER/`（ICBM: Escalation·Endless October MOD·PC 完整解包，含 ICBM.exe / ICBM_MOD.exe / 全明文配置）。
> 产出：①本章机制调研 ②3 个 ICBM 风格 A1 UI HTML 样品（18.7）。**未装机，无代码改动**（纯调研轮）。

## 18.1 游戏资源体系（全明文，可 grep）

| 文件 | 内容 | 备注 |
|---|---|---|
| `Units/Units.txt`（198KB） | 全部单位定义 `[UNIT] "X"`：属性/武器/Config/雷达/代差链 | **空军机制第一手源** |
| `Units/Missile_types.txt` | 弹头/投送类别（[GENEVA_CATEGORY]）+ 导弹修饰符 | 核弹分级蓝本（M3） |
| `Units/Missile_defs.txt`（401KB） | 导弹详细参数 | M3 导弹数据蓝本 |
| `Units/Radars.txt` / `explosion.txt` | 雷达/爆炸 | — |
| `UI/UI.txt`（1004 行）+ `UI/UI_2048.png` | **UI 图集坐标表**：每行 `Element 名, x, y, sx, sy` | **UI 交互蓝本（18.5）** |
| `lang/CHN/*.lng` | 中文文本（`"Key" LANG "译文"` 格式，UTF-8） | — |
| `Tech.txt` / `GameMode/Blitz/Tech.txt` | 科技 | 代差节点蓝本 |
| `GameMode/Blitz/` | 大战略模式（含独立 Units/Tech/AI/Lang） | — |
| `Images/`、`Units/Images/` | 图标/机模（midx/fbx/png） | 素材池参考 |

## 18.2 ICBM 空军单位体系（Units.txt 实证清单）

- **战斗空军**：Fighter（战斗机）、Attack（多用途攻击机）、Interceptor（截击机）、Bomber（轰炸机）、High_Speed_Bomber（高速轰炸机）、AWACS / Naval AWACS（预警机）、Spy_Plane（侦察机）、EW_Aircraft（电子战机）、Navy_Helicopter / Attack_Helicopter（直升机）、Spec_Ops_Team / Spec_Ops_Helicopter（特种部队）、Air_Transport（空运）
- **机场族**：Airport（主要机场）、Tactical_Airbase（战术基地）、Improvised_Airbase（简易机场）、Specialized_Airport（专用机场）
- **海军平台**：Carrier（航母）、Submarine / SSGN / SSBN / Destroyer / Cruiser
- **防空/雷达**：AA_Site_Old、SAM_site、MOBILE_SAM、ABM_Site、Terminal_ABM、Mobile_ABM_Laser、Laser_Defence_Complex、EW_MOBILE、Fixed_LW_radar、Mobile_SW_Radar、Over_Horizon_radar、Space_radar、Naval_Monitoring_Station
- **陆军/其他**：Army_Division（+Mobile/Entrenched 变体）、Forward_Operating_Base、Combat_Engineers、Bomb_Truck / Heavy_Bomb_Truck、VirtualCity、Central_Command_Bunker、Intelligence_Center、Research_Center、ICBM_Launchpad、Missile_Silo、SRBM_Site、Mobile_*(MRBM/SRBM/ICBM) 等

## 18.3 四核心机型（与我方 4 机型 1:1 同构 ★）

| 属性 | Interceptor（截击） | Fighter（战斗） | Bomber（轰炸） | Attack（攻击/多用途） |
|---|---|---|---|---|
| Speed | — | 700 km/h | — | 650 km/h |
| Range | **3000** km | **2400** km | **6000** km | **2200** km |
| Power | 0.50 | 0.65 | **2.00** | 0.65 |
| MaxAutoEngageRange | 3000 | 1200 | — | 1200 |
| 默认 Config | Air to Air：**LAAM×2**（Time150 AutoEngage） | Air-To-Air：**AAM×2** + Plane Gun×20000（Time6） | **Bombs**：Free fall bomb×20（Launch4） | **Rockets**：Rocket Pod×8（Launch8）+ Plane Gun |
| 副 Config | ASAT / Nuclear AAM / Pure Fusion AAM | — | **100kt/500kt/10M/25M/50M/100M 核弹**、Chemical bomb（+Improved/Advanced） | **Bombs**：Free fall bomb×4（Principal）+ Plane Gun |
| 代差链 | Set Range 5000→7000→9000、Power 0.75→0.9→1.05、LAAM×2→4→4→6 | Set Speed 800/900…、Range 2800…、Movie/Icon 换代（Fighter_2…） | （同族） | （同族） |
| 共性 | AutoReturn Yes、DoesNotTriggerWarWhenAttacked Yes、Size 0.05、Modifier EMP_Killable、ECM_Bonus_1-4、Stealth_Bonus_1/2、ProductionCost 1.0 | | | |

> **ICBM 特有设计（已全部为我方可借鉴）**：① **Config（挂载配置）机制**——同机型按任务切挂载（对空/对地/核/化学），UI 有专属配置框（Info_UnitConfigFrame）；② **弹头是轰炸机的 Config 而非独立单位**——这正是"核弹一会做"的挂载位（M3 只需给 Bomber 加核弹 Config）；③ **代差=ImprovedBy 科技链**逐代替换（Set 数值 + Movie/Icon 换图），非一次性数值表。

## 18.4 机场机制（Airport 定义实证）

```text
[UNIT] "Airport"
  AttackerInPlanner              ← 可被列入打击策划目标
  AlwaysVisibleOnEnemyTerritory Yes
  Power 30 / SelfDestructTime 45 / ProductionCost 9.0 / NoAutoAttack
  Weapon "Small Arms" 20000 ... / Weapon "C-RAM" 25000 ...   ← 近防火力
  Airway Launch 2 Time 180      ← 跑道资源：每 180s 可起飞 2 架
  Airway Launch 1 Time 300
  CanHostAircrafts "Fighter" 10 Patrol 4        ← 机位 10 + 巡逻配额 4！
  CanHostAircrafts airway 1 "Bomber" 5 Patrol 2
  CanHostAircrafts airway 1 "Interceptor" 4 Patrol 2
  CanHostAircrafts airway 1 "AWACS" 2 Patrol 1 AIAutoPatrol
  Radar "STD Vision" / "STD Long Wave"
```

- **CanHostAircrafts 双数字**（主机位 / Patrol 巡逻配额）= 机场容量语义的升级版：我方当前"容量上限 20"可扩展为"按机型限位 + 巡逻配额"，AI 巡逻（tryPatrolForAirport）与玩家共用同一配额概念。
- **Airway Launch**（跑道消耗）→ 我方起飞间隔/跑道受损修复（M2-D）可借。

## 18.5 UI 交互链（UI.txt / UI_2048.png 实证）★ A1 蓝本

**选中单位 → 底部/侧边 Info 面板 → 命令按钮 → 地图目标标记 → 确认/取消**：

| 元素 | 尺寸 | 含义 |
|---|---|---|
| Info_Top / Middle / Bottom | 614×60 / 60 / 214 | 信息条三段（图集 X 轴拼装） |
| **Info_UnitFrame** | 194×154 | 单位信息框（选中单位显示） |
| **Info_UnitConfigFrame** / W 变体 / Nuclear / Disabled | 194×93 | **挂载配置框**（4 态：配置/禁用/核） |
| Info_MissileFrame(×Check/Nuclear/Disabled) | 75×71 | 导弹框 4 态 |
| **Info_HostedFrame**(×Active/Disabled/Config/Hangar) | 131×131/93 | **机库框**（机场/航母承载飞机显示） |
| Info_ButtonFrame（九宫格 Left/Center/Right × Top/Mid/Bot）+Pressed/Disabled | 203×70 | 按钮九宫格（3×3 拉伸） |
| 命令按钮（58×58）：**Move / Follow / Attack / Refill / Replenish / Surface / Submerge / CancelOrders / StateUp / StateDown** | 58×58 | 选中单位的操作组 |
| **AttackPosition_Mark / Accept_Mark / Cancel_Mark** | — | 地图目标标记 + 确认/取消标记 |
| CES_*（Bld/Tech/Espionage/Science/Main） | — | 建设/科技树/情报/科研标签页（大战略界面） |
| Chart_Tab_Button_1..10 | — | 图表标签页 |

**打法总结**：指挥 = 点选 → 面板（框+配置框+按钮组）→ 地图指派（AttackPosition_Mark + Accept/Cancel）。玩家零学习成本，**我方 A1 打击 UI 照此结构即可**。

## 18.6 映射表（ICBM → 终序千禧）

| ICBM 机制 | 我方对应 | 状态 |
|---|---|---|
| 4 机型（Intercept/Fighter/Bomber/Attack） | 4 机型（AircraftTypes.json GA0/GA5/GA60/GA30） | ✅ 已对齐 |
| Config 挂载机制 | **M2-B 挂载系统**（武器枚举/payloadSlots/AutoEngage） | 🔶 蓝本已备（本调研前计划书仅有概念） |
| 轰炸机核弹 Config（100kt~100M） | **M3 弹头分级**（100kt-100M） | 🔶 挂载位已确认（"核弹一会做"） |
| ImprovedBy 代差链（Set+换图） | **M2-A 代差树**（Gen1-6） | 🔶 实现路径按"科技链逐代替换" |
| CanHostAircrafts（机位/巡逻配额） | 机场容量 20（当前单值） | 🔶 可升级语义 |
| GENEVA_CATEGORY（化学/生物/盐弹/核MIRV/EMP/ASAT/高当量/战术核） | M4/M5 扩展武器清单 | 🔶 蓝本已备 |
| Info 面板 + 按钮组 + 目标标记 | **H3 A1 打击 UI** | 🔶 3 样品已出（18.7） |
| AttackerInPlanner / AlwaysVisibleOnEnemy | 敌省目标列表可策划性 | ○ 将来 A1 升级参考 |

## 18.7 A1 UI 新样品（ICBM 参照，3 个，已交付）

路径：`/sdcard/GLG/历史23/ui_samples/`（与早前 A-E 五样品同目录）

| # | 文件 | 对应 ICBM 机制 | 实现量 |
|---|---|---|---|
| ① | ICBM_方案1_单位Info面板式.html | Info_UnitFrame+ConfigFrame+58px 按钮组+AttackPosition_Mark | ★★★☆☆（最贴本尊，链路最短） |
| ② | ICBM_方案2_机场机库挂载出击.html | Info_HostedFrame 机库 + CanHostAircrafts + Config 挂载三态 | ★★★★☆（**推荐**：Config 底座为核弹留位） |
| ③ | ICBM_方案3_目标策划式打击.html | AttackerInPlanner + CES 标签页 + 波次/预估卡 | ★★★★★（战略层，可作 A1 升级形态） |

早前 5 样品（方案 A-E）仍在同目录，两批共 8 个，待用户拍板。

## 18.8 教训（54-58，本轮新增）

54. **参考游戏机制调研必须直达原始配置文件**：ICBM 的 Units.txt/UI.txt 全明文，grep 一次即拿全（机型/属性/容量/按钮/坐标），比二手描述准百倍；规程=用户指"XX 游戏文件"→先 find 定位→按 Units / UI / Tech / Lang 四层读配置。
55. **ICBM 指挥五步链（点选→面板→按钮→目标标记→确认）是成熟范本**：打击 UI 照此结构，玩家零学习成本；标记用 AttackPosition_Mark + Accept/Cancel 双确认，与 D1 航程判定天然融合。
56. **Config 挂载 = ICBM 空军灵魂**：同机型多任务全靠挂载切换；我方 M2-B 蓝本即此；**核弹=轰炸机的一个 Config（100kt~100M）而非独立单位**——"核弹一会做"的挂载位由此确认（方案②第三态）。
57. **代差=ImprovedBy 科技链逐代替换**（Set Speed/Range/Power + Movie/Icon/Model 换图），不是"一次性生成数值表"——M2-A 实现路径照此结构（A2 科技节点 + A3 视觉替换天然合一）。
58. **UI 与逻辑解耦的最佳实践**：ICBM 用"图集 + 坐标表"（UI.txt 每行一个元素），改布局=改坐标；我方 AoH3 是代码定位（无坐标表），借鉴思想但映射方式不同——若 A1 面板要做"像素级还原"，提前为元素做键值表规划。

## 18.9 当前状态与下一步

- **当前装机**：pkg_new76（本调研轮零代码改动）
- **本批产出**：①18 章机制调研 ②8 个 A1 UI 样品（A-E 五 + ICBM 三）
- **待办**：① **H3 A1 UI 拍板**（两批 8 选 1；ICBM 方案②为推荐：Config 底座+核弹留位）② 探针收口 ③ 滤镜深浅可调 ④ H4 A0.5 师属性数据化 ⑤ M-H2-2乙 / M-H2-3丙（64 图池已备）⑥ M2-B 挂载系统（18.6 蓝本就绪）
- **教训累计 58 条**

*（第18章为 2026-08-29 快照；pkg_new76 为当前基线）*

---

# 19. ICBM × AoH3 深度调研第二辑（2026-08-29，计划书精细化）

> 触发：用户指令"重新调研两个游戏文件，把这些计划书补充得更详细"（第二轮深度调研）。
> 对象：① ICBM: Escalation 游戏文件（同第18章路径）② AoH3/终序千禧 当前工程（/tmp/build_work smali）。
> 本章是第18章的**深化与实证补充**，并含对《A1打击任务UI_实现计划书v1》的修正清单（19.8）。

## 19.1 调研范围与产出

| 域 | 文件 | 本轮新增成果 |
|---|---|---|
| ICBM 武器体系 | `Units/Missile_defs.txt`（401KB） | [MISSILE] 定义全谱 80+ 条（空军武器/核弹家族/ASAT/化学/钴盐/EMP/MIRV/HGV） |
| ICBM 弹头分级 | `Units/Missile_types.txt` | GENEVA_CATEGORY 全 21 条（弹头 10 + 投送 11）+ 修饰符语义表 |
| ICBM 预警/防空 | `Units/Units.txt` | AWACS（6 雷达/Range 8000/CanPatrolPoint）/ SAM_site（Config 核SAM）/ AA_Site/ABM 系 |
| ICBM 科技树 | `Tech.txt` + `TechLevels.txt` | [TYPE] 9 分类（含 Aircraft Technology / Air and Missile Defence / Radar / EW）；10 级研究×1.5 |
| ICBM UI 图集 | `UI/UI.txt`（726 元素） | 全元素分类：建造 Airborne 分类/时钟/日志/图表/CES/path 路径系/标记/Main2 打击计划 |
| AoH3 数据层 | SaveGameManager$Save_AirUnit/Airport | **currentPayload 已持久化**（B3 免加字段）；Save_Airport 12 字段待 +1 |
| AoH3 菜单层 | MenuManager.smali:19023 | InGame_AirForceOptions 预创建点（Quick 面板同法注册） |
| AoH3 布局层 | InGame_AirForceOptions 340-950 | 每机型行=Text_StaticBG+文本("AirType.X 数量")+BtnSelect+BtnBuild（4 行节奏，锚点精确） |

## 19.2 ICBM 武器体系全谱（M2-B 挂载系统蓝本）

### 空军直接武器（Missile_defs.txt 实证）
| 武器 | 装备单位 | 参数要点（defs 内） |
|---|---|---|
| `AAM` | Fighter | 空空导弹（Fighter Config 中 ×2 Launch1 Time120 AutoEngage） |
| `LAAM` | Interceptor | 远程空空（×2 Time150；代差×4/×6） |
| `Plane Gun` | Fighter/Attack | 航炮 20000（弹药量巨型=持续火力） |
| `Rocket Pod` | Attack | 火箭巢 ×8 Launch8 Time4 Principal |
| `Free fall bomb` | Bomber/Attack | 自由落体炸弹 ×20/×4 Launch4/1 Time1 Principal |
| `AA Gun Old`/`Chaingun` | AA_Site_Old | 高炮 |
| `SAM`/`SAM MD` | SAM_site | 防空导弹 ×20000 Time70 AutoEngage |
| `C-RAM` | Airport | 近防（反击来袭火箭弹） |
| `Nuclear AAM`/`Fusion AAM` | Interceptor(Config) | 核空空/聚变空空（M5 核防空） |
| `Nuclear SAM`/`Fusion SAM` | SAM_site(Config) | 核防空导弹 |
| `Aircraft ASAT`/`Satellite ASAT`/`Co-Orbital ASAT`/`Nuclear ASAT` | Interceptor/卫星 | 反卫星族 |
| `Plane Laser` | （未来） | 机载激光 |

### 核弹家族（轰炸机 Config / 弹头 defs，M3 弹头分级蓝本）
- **轻核弹（light）**：100kt / 250kt / 500kt / 1M / 5M nuke_light
- **重核弹（heavy）**：500kt / 10M / 25M / 50M / 100M nuke_heavy（轰炸机 Config 直挂）
- **MIRV 弹头**：ICBM（250kt/500kt/1M）/ MRBM（100kt/250kt/500kt）/ False Warhead（诱饵）；SLBM/MRBM/Light ICBM/Heavy ICBM 四投送类
- **特殊**：HGV（高超音速滑翔：500kt/5M/10M/25M/50M Pure Fusion/10M Cobalt/10M Salt）、Cobalt_Bomb、Salted_Bomb、EMP（500kt_MRBM_EMP/EMP_Super）、Chemical（+Improved/Advanced/Experimental）、Nuclear Artillery/Fusion Artillery
- **GENEVA_CATEGORY 全表（21 条）**：Chemical/Biological/Salted/Nuclear MIRV/EMP/ASAT/High-Yield/Offensive Tactical/Defensive Tactical/Basic Fission（10 弹头类）+ SLBM MIRV/MRBM MIRV/Light ICBM MIRV/Heavy ICBM MIRV/Light Gravity/Heavy Gravity/Air-Launched MRBM/Unitary Heavy ICBM/Unitary Light ICBM/Unitary MRBM/Unitary SLBM（11 投送类）

> **M3 直译建议**：我方弹头分级 = 轻核（100kt-1M）/ 重核（1M-100M）/ MIRV / 化学 / EMP / ASAT 六族，全部可从本表秒抄参数（Range/Damage/Precision/CanBeIntercepted）。

## 19.3 预警/防空体系（A3/C3/C4 蓝本）

| 单位 | 关键字段 | 设计启示 |
|---|---|---|
| **AWACS** | Range 8000、Speed 400、Power 1.5、MaxElevation 30、**CanPatrolPoint**、雷达×6（AWACS Short/Long Wave、Over_Horizon、Air Detection、Air Targeting、Quantum Radar Strong）、ProductionCost 4.0、DrawSize 24 | 我方 C4 雷达探测圈=AWACS 雷达语义（探测+引导）；未来预警机可给"部队+探测圈" |
| **SAM_site** | Power 3.0、AttackDelay 0.5、SelfDestructTime 5、SAM×20000 Time70 AutoEngage、Config"Nuclear SAM" | 我方 A4 防空=Power×数量×概率；Config 核SAM 后置 |
| **AA_Site_Old** | AA Gun Old/Chaingun | 低端高炮（对机群） |
| **MOBILE_SAM / ABM_Site / Terminal_ABM / Mobile_ABM_Laser / Laser_Defence_Complex / EW_MOBILE** | 机动防空/反弹道/终端拦截/激光/电子战 | M4 拦截链（预警-ABM-终端）分级参考 |

## 19.4 ICBM 科技树（M2-A 科技节点蓝本）

**Tech.txt [TYPE] 分类（9 类）**：Weapons of Mass Destruction / Ballistic Missiles / Ground Forces / **Aircraft Technology** / Naval Technology / Smart Weapons / **Air and Missile Defence** / **Radar Systems** / **Electronic Warfare**。
**TechLevels.txt**：10 级研究（NextLevelMultiplier 1.5，每级 320-1445 点）。
> 我方 M2-A 参考：空军科技按 [Aircraft Technology] 链（U_Fighter/U_Interceptor/U_Bomber/U_Attack/U_AWACS）+代差（ImprovedBy Generation_2_Aircraft…）+ [Air and Missile Defence]（SAM 系）+ [Radar Systems]（雷达探测）+ [Electronic Warfare]（ECM）。

## 19.5 ICBM UI 图集全貌（726 元素分类，A1 UI 实现素材地图）

| 类别 | 代表元素 | 用途 |
|---|---|---|
| Info 面板系 | Info_UnitFrame/ConfigFrame/HostedFrame/MissileFrame/ButtonFrame（九宫格全态：常态/Hi/Disabled/Filler）+ 命令按钮 Move/Follow/Attack/Refill/Replenish/Surface/Submerge/CancelOrders/StateUp/Down | **方案①蓝本** |
| 建造分类 | Construction_Category_**Airborne**_High/Ground/Naval/Satellite/Missile + 分类框 | **空军独立建造分类**（我们机库面板可直接借鉴） |
| 单位条 | Unit_Bar_Top/Middle/Bottom(+Mask) / Unit_Frame(+Disabled) / Unit_Scroll_* | 单位列表滚动条 |
| 导弹条 | Missile_Bar_Top/Middle/Bottom / Missile_Frame | 弹头显示条 |
| 时钟 | Clock_*(Play/Pause/Blue/Green/Red/Ticks/Runner) + Clock2_* | 战略实时感（后置） |
| 日志 | Journal_Open/Close_Button | 战报面板 UI 题材 |
| 图表 | Chart_Tab_Button_1..10 / Chart_XAxis/YAxis(+Glow) | 数据页 |
| CES 战略页 | CES_Main_Selector / Bld_Key_Up/Down(Selected)/Tech_Frame(四色)/Espionage_*/Science_* | 方案③蓝本 |
| **路径图标系** | **path/launch fighter / launch bomber / launch attack bomber / launch AWACS / launch HELI / launch STD / attack / attack nuclear / patrol path / PatrolPoints / follow / direction** | **B1 飞行视觉/攻击航路的直接素材语义**（起飞/攻击/巡逻/核袭四类路径） |
| **地图标记** | **AttackPosition_Mark / FinalPosition_Mark / Accept_Mark / Cancel_Mark** | 打击指派标记三件套 |
| Main2 打击计划 | **Main2_StrikePlan_Icon** / SelectedUnit_Tint / Radiation_Sign / HeaderWindow / SkewedWindow / WhiteEmptyWindow / ProgressBarFrame | **方案③-StrikePlan 存在实锤**；窗口九宫格通用件 |
| 主按钮栏 | Main_Button_Globe/Radar/Diplomacy/Territory/Splitter(+Pressed) 92×92 | 主界面按钮 |
| 其他 | Pollution_Frame / Score_Frame / Blue_Box / Blue_Line / Black_Team_Button | 杂项 |

## 19.6 ICBM 属性参数语义表（设计映射词表，M2-B 直接照搬）

| 参数 | 语义 | 我方映射 |
|---|---|---|
| `Range` | 武器射程 | 机型航程/D1（已有 combatRadius） |
| `Speed` | 速度（km/h） | 飞行动画时长/拦截判定 |
| `Power` | 单位战力 | 未来"师战力" |
| `MaxAutoEngageRange` | 自动接战半径 | 我方可映射"自动交战/拦截半径" |
| `Weapon "X" N Launch M Time T AutoEngage` | 武器×N；Launch=每机每轮射出数；Time=秒冷却；AutoEngage=自动开火 | **M2-B payload 循环模型**（Launch 即"每回合投掷数"、Time 即"回合冷却"） |
| `Principal` / `DefaultOff` | 主武器标记 / 默认关闭（需手动开） | 挂载默认态 |
| `Config "X" Default` | 挂载配置（Default=默认套） | 我方 prefPayload |
| `CanBeIntercepted` | 可被拦截 | 防空结算判定 |
| `SelfDestructTime` / `AttackDelay` / `ModelLaunchTime` | 自毁/攻击间隔/发射动画 | 建筑/机场被毁判定 |
| `ImprovedBy` / `Set X` | 科技逐代替换 | M2-A（教训57） |
| `CanHostAircrafts "X" N Patrol M` | 机位 N+巡逻配额 M | 机库格显示（教训：仅显示） |
| `AIAutoPatrol` / `CanPatrolPoint` | AI 自动巡逻 / 巡逻点 | AI 巡逻 |

## 19.7 AoH3 侧补充取证（实现精确化）

1. **Save_AirUnit 已含 `currentPayload`**（jakowski/SaveLoad/SaveGameManager$Save_AirUnit.smali:23）→ **B3 无需为挂载数加字段/存档**，executeAttack 扣 payload 链已通（仅缺"类型"语义，放 Airport.prefPayload 即可）
2. **Save_Airport 12 字段**（buildTurnsRemaining/.../totalLost）→ 加 `prefPayload:I` 后 13 字段；读档默认 0（旧档兼容）
3. **菜单预创建点**：`MenuManager.smali:19023` `new InGame_AirForceOptions` —— InGame_AirForceQuick 与所有 AirForce 面板**同处注册**（一次性预创建+setVisible 控制，符合项目惯例）
4. **机型行结构（4 行循环）**：每行 = Text_StaticBG（行背景）+ 文本行（StringBuilder：`"AirType."`+枚举名+数量+`"/"+maxCapacity`）+ **BtnSelect**（typeOrdinal=ord，p8） + **BtnBuild**（建造）→ 机库格改造就在这 4 行的"文本行"处做文章（图标+配额+状态），BtnSelect/BtnBuild 原位保留
5. **InGame_AirForce 机场列表**：遍历 getAirportsForCiv + hasAirportBuilding → BtnAirport（文本=省份名+`"  "`+totalAircraft+`" "`+lang(机场)）——机库入口链不动
6. **现有 lang keys**（Game.lang.get 实参）：AirForce/AirForceOptions/AirForceSelectHint/AirForceAirport/AirForcePatrol/AirForceAttack/AirForceAuto/AirForceNoAirports/AirForceClose/AirType.{INTERCEPTOR,FIGHTER,BOMBER,ATTACKER} —— 新增文本沿用此文件（Bundle_*.properties）+ 命名规范

## 19.8 对《A1打击任务UI_实现计划书v1》的修正（v1.1 变化点）

| # | v1 原文 | 修正 |
|---|---|---|
| 1 | §2.2 U5"currentPayload 有数值无'对空/对地'语义" | **确认：数值链已持久化**（Save_AirUnit.currentPayload），仅缺类型语义——U5 降级为"只补 Airport.prefPayload" |
| 2 | §3.1 字段表 | prefPayload 持久化=Save_Airport 12→13 字段（19.7-2） |
| 3 | §5 锚点 11 | Quick 面板注册点明确=MenuManager:19023 同区（19.7-3） |
| 4 | §5 锚点 3 | 机型格改造=4 行"文本行"替换为"图标+机位/配额+状态"（结构 19.7-4），BtnSelect/BtnBuild 原位保留 |
| 5 | §4.3 目标路由 | 补充：软匹配+Payload 语义（对地任务需 prefPayload=1 或自动提示切换） |
| 6 | 附录 | 新增两附录（19.2 武器谱 / 19.6 参数词表）供 B3 编码直接引用 |

## 19.9 教训（59-61）

59. **武器=导弹统一体系**（[MISSILE] defs 单表定义一切武器：炮弹/炸弹/导弹/弹头/激光）——我方 M2-B 挂载系统可直接采用"单一武器表+单位 Config 引用"结构，勿做多套平行枚举。
60. **弹头分级按"投送方式×当量×特殊类型"三维建模**（GENEVA：弹头类×投送类；light/heavy；MIRV/HGV/EMP/化学/钴盐）——M3 数据结构照抄此三维，避免后期打补丁。
61. **UI 图集"元素名即语义"**：ICBM 726 元素全部可读命名（path/attack nuclear、AttackPosition_Mark、Main2_StrikePlan_Icon）——做像素级 UI 前先给元素列"语义清单"，比对着截图猜测高效 10 倍。

## 19.10 当前状态
- 当前装机：**pkg_new77-v55**（`dbg_signed77_v55.apk`，2026-08-31 04:10 装机启动零崩溃；B2 信息条动态字段✅ + **×1000 残值闭环✅（v54-v55）**——探针实证 num=1/陈旧存档 1000 残留→载入后强制 syncAllDivisions（RebuildMenus 锚点）+信息条 num 合法性兜底（>10 重算机场真相源）+ 场景加载链修复✅（v42）+ 军库长按详情优化✅（v43-v51））
- **B1 行为层=⏸待做**（用户确认：核弹开关仅 Toast 占位/未实现武装链；BtnBuild/BtnMission 行为待验）——当前只交付 B1 视觉层
- **B2 面板骨架✅**：新面板类 `InGame_AirForceQuick`（信息条 460×110 + 4×BtnCmd 打击/巡逻/返航/取消 115px 等宽、图标上文字下，布局参照 `ui_samples/空军作战界面-3.html`）+ 仅空军师显隐（`Game.addActiveArmy` 尾部 airhq_ 前缀判定）+ z 序每帧置顶 + 位置左下贴底（x=52, y=GAME_HEIGHT-230，右侧留空给后续 UI）
- **B2 滑动✅根除（v37）**：根因=拖动链 actionMove cond_3→setScrollPosY/X（非点击路径），修复=cond_3 QUICK 实例守卫断源+位置 x=52→152（右移100px）；**B2 信息条动态字段✅（v52-v53）**：字段=机型×数量｜师状态五态（待命/打击/返航/取消/巡逻），数据链=HoveredArmy→Province.getArmy→regiment（uID 双通道判定）+ 刷 新点=draw 入口（update 不被调用，教训㊳）
- **U4 师粒度补全✅**（ICBM 巡逻逻辑调研实证 + 五工厂全 divKey 化 + getActiveDivKey 抽取；B2 三调用点接线已备好）
- 文档资产：《A1打击任务UI_实现计划书v1.md》→ 现已迭代至 **v1.15**（B2 信息条字段决策v2 + 附录D.1-D.6 实施纪实/教训固化 v52-v53）｜战斗可用版同步 v53 基线
- 教训累计 **90 条**（㉔-㉚ 见前；㉛ smali 寄存器规则全集/㉜ 构造器定义=调用/㉝ invoke 参数计数/㉞ 循环回边类型合并/㉟ Hover 布局机制/㊱ CheckRange 第五防线，见 A1 计划书修订 46-49；㊲ 构建环境陷阱（mkzip/打包必须 Ubuntu terminal 环境，shell 环境 /tmp 挂载不同致脚本静默失败→装机旧包）/㊳ 战后面板不调用 update()（刷新必须挂 draw 入口）/㊴ activeArmy 元素=Game$HoveredArmy 非 ArmyDivision（数据链=HoveredArmy→Province.getArmy(key)）/㊵ 条件跳转写反（if-gez/if-ltz 语义混淆，本工程第 2 次——首次 v38 1b））；㊶ 分支内寄存器覆盖→VerifyError（v57→v58：sget-object v2 枚举覆盖 AirForceManager 实例带，治理=死寄存器）/㊷ smali 汇编器无 Main-Class+jcommander 缺失→apktool b 代替（v59）/㊸ pm install-write 无 -r 选项（v59；install-create 才有），累计 **93 条**）；㊶ 分支内寄存器覆盖→VerifyError（v57→v58：sget-object v2 枚举覆盖 AirForceManager 实例带，治理=死寄存器）/㊷ smali 汇编器无 Main-Class+jcommander 缺失→apktool b 代替（v59）/㊸ pm install-write 无 -r 选项（v59；install-create 才有），累计 **93 条**）
*（第19章为 2026-08-29 快照；当前状态= pkg_new77 v53 装机（2026-08-31 02:56）+ B2 信息条动态字段✅（v52-v53 用户确认）+ 场景加载链修复✅ + B1行为⏸待做 + U4✅，2026-08-31 更新）*

---

# 20. 巡逻现状审计（2026-08-29，用户指正"巡逻没做好"）

> 触发：用户反馈"飞机很多功能没实现，只有移动一个功能"，并明确**"巡逻也没有做好"**。本轮对 PATROL 全链做代码级审计（AirMission.update / createPatrol / updateAirCombat / drawAirForceMissions / drawAirDivisionAsPlane），结论：**状态机骨架完整 ✅，玩家感知血肉全缺 ❌**。

## 20.1 巡逻已完成（骨架，全部实证）

| # | 环节 | 实现 | 证据 |
|---|---|---|---|
| 1 | 任务创建 | createPatrol(Airport,I,String divKey)：师-任务绑定（patch15） | AirMission:875 |
| 2 | 起飞飞行 | EN_ROUTE：flightProgress 插值动画（去程 3s，animStartMs 时钟） | update():1341 |
| 3 | 到达 | placeAirDivision 目标省 + state=EXECUTING + flightProgress=100 | AirMission:1516-1522 |
| 4 | 滞留 | roundsInFlight/lingerRounds 计数（2 回合）+ consumeFuel 每回合耗油 | update():1478-1538 |
| 5 | 返航 | RETURNING（动画时钟重置，回程 2s）→ 回库满血 | update():1600-1637 |
| 6 | 状态机/存档 | PLANNING→EN_ROUTE→EXECUTING→RETURNING→COMPLETED；22 字段持久化（T2-T4） | 轮2 验收 ✅ |
| 7 | 师随段移动 | um_mvsw 完整序列（2315→…→3715→…→2315）实测 | 批次2 验收 ✅ |

## 20.2 巡逻没做好（血肉缺口，玩家感知层 ★本次核心）

| # | 缺口 | 现象（用户视角） | 根因（代码实证） |
|---|---|---|---|
| **P1** | **到达后无"巡逻"视觉** | 飞机飞到目标省就"停住"（驻场式悬停 2 回合），与"移动到终点"无区别——**这就是"只有移动功能"观感的总根源之一** | EXECUTING 入口调用 `placeAirDivision`（1516）把师放置回省 → 走省驻场绘制（drawAirDivisions），**无滞空/巡航/绕圈动画**；ICBM 是 CanPatrolPoint/PatrolPoints 巡逻路径，我们是"落地式" |
| **P2** | **巡逻无空域语义** | 巡逻点=一个省份，无半径/无路径 | createPatrol 只存 targetProvinceID；无 patrolRadius/patrolPath 概念 |
| **P3** | **无交战行为** | 巡逻机不反击、不拦截、不击落；只有每回合 hp 被扣（血环变短） | updateAirCombat（AirForceManager:2498）只做"敌机场在库机 → 我方飞行任务扣 hp×0.5"单向扣血；**我方巡逻机无战斗结算分支**（executeAttack 只服务打击任务） |
| **P4** | **无探测/受击反馈** | 被打不知道打哪来的，无雷达圈、无战报 | radarProvinces 有数据无可视化（C4 未做）；无战报系统（A2 未做） |
| **P5** | **敌我不对称** | 敌方拦截"隐身"（不可见来源），我方机队被消耗无提示 | 同 P3：敌机只扣血不现身（无"敌机起飞拦截"实体） |

## 20.3 结论与归包

- **巡逻 = 状态机完成度 90%，体验完成度 20%**：骨架（飞→停→回）全绿；血肉（巡逻视觉/空战/反馈/对称）全缺。
- 与"打击"同构：**机制层已有，缺入口+可见性+对称性**——巡逻补课与打击功能包共用一条改造链。
- **功能包归位**：
  - P1/P2 → **F1.5 巡逻视觉**（滞空巡航动画+巡逻圈；ICBM PatrolPoints 蓝本）——可并 A1 B4 打磨批
  - P3/P5 → **F3 空战对称**（巡逻机参与战斗：拦截/反击/击落）
  - P4 → **F2 战报** + **F4 探测圈**
- 教训（62）：**"巡逻"作为术语名容易误导验收——状态机"正确"≠玩家"觉得在巡逻"**；体验类功能验收标准必须写"玩家可感知行为"（绕圈/交战/战报），而非内部状态。

## 20.4 下一步

- A1 UI（F1）开工不变；**巡逻视觉（P1）建议作为 B4 打磨首选**（改动小：EXECUTING 段不再落地、改为绕圈插值绘制——复用现有 flightProgress 时钟机制）
- 通知 P2-P5 与功能包对齐（F2/F3/F4），无需并行新线

*（第20章为 2026-08-29 快照；pkg_new76 为当前基线）*

---

# 21. A1-B1 机库化迭代登记（2026-08-30，pkg_new77）

> A1 决策（2026-08-29 拍板）：方案②拓展空军栏为机库视图（优先）/ 方案①即时交互面板（后续批次）/ 方案③目标策划式（后置 M3 核弹）。实施方案见《A1打击任务UI_实现计划书v1.md》。

## 21.1 迭代史（v1→v37 全部装机）

| 版本 | 时间 | 内容 | 结果 |
|---|---|---|---|
| v1 | 01:21 | B1 机库化初版 | 装上但进空军栏闪退（VerifyError：BtnPayload size() 寄存器错） |
| v2 | 01:35 | 修 size() 寄存器 2→1（2处） | 解决闪退；但 UI 资源全黑、布局错乱 |
| v3 | 01:49 | 修 12 键路径漏 `ui/` 前缀 + slot 背景层 + 文本缩短 + 行距压缩 | 资源加载错误清零；再次闪退（slot new-instance 重复初始化） |
| v4 | 01:56 | 修 new-instance→invoke-direct 重复初始化 | **功能层稳定**：零崩溃、资源全加载、旧档兼容（AI UI 实测） |
| v5 | 02:13 | 两子行布局重构（信息行下移+挂载键图标左文本右） | 启动稳定，视觉待验收 |
| v6 | 03:28 | **按用户效果图全布局重构**：4 机型卡片纵排（J-11/H-6/Q-5/J-8+八边形 slot+飞机居中+信息条+右列建造）+核弹行（蘑菇云+红字警告+✓开启）+挂载行（说明+3 键横排）+命令组 4 键带图标（巡逻/打击/返航/取消） | **用户实测空军栏加载成功**，布局细节待反馈 |
| v7 | 07:30 | 按 HTML 参考工程（空军司令部.html 691px）重设计几何（卡片 200/frame 205×132/飞机 156×100/名称 112/建造右列 132/核弹行 244/命令组 92 纵排）+误判 patch getIsInView 恒 true | **按钮仍全无**（frame/文字/图标已渲染）→ 触发 v8 根因实证 |
| v8 | 08:00 | **⚡真根因修复**：16 个按钮创建段缺失 `List;->add`（BtnSelect×4/BtnBuild×4/BtnNuke/BtnPayload×3/BtnMission×4）→ 按钮从未注册进 menuElements → drawMenuElements 永不绘制；setHeight 因 add 缺失误伤前元素（布局错位/J-8 截断）；补齐 add+回退 getIsInView 原版 | 四防线全过；装机 08:00:36；**待用户进空军栏实测按钮显示** |
| v9-v15 | 08:58-12:18 | 飞机名称 X 坐标 8 轮微调（112→88→100→92→84→76→68→**53px**） | 用户确认 53px 合适 |
| v16 | 12:35 | 卡片间距 0xd0→0xf0(240px，间隙=一个按钮高度) | 4 卡间隔全部拉开 |
| v17 | 12:51 | 信息条错位修复：移除 BtnSelect 四处 setHeight(0x28)（文字偏上 12px） | 信息条文字与贴图对齐 |
| v18 | 13:12 | **slot 原生居中机制实证**（Icon 按贴图原生 315×200 居中绘制，显示区 y-34~+166）→几何重排：slot+34/飞机+50/信息条 y+212/推进 0x125(293)；**三段式装机固化**（install-create/write/commit 绕开空间不足+权限拒绝） | 信息条不再遮挡 slot/飞机 |
| v19 | 13:23 | slot/飞机/名称整体下移 10px（0x2c/0x3c/0x46） | 下移生效 |
| v20 | 13:31 | 建造按钮两项：移除 setHeight(0x84)（文字偏下 43px）+ posY 对齐信息条行(y+212)；**教训⑱**（lit16/const4 限 v0-v15） | 建造按钮对齐信息条 |
| v21 | 13:38 | **删除 payload 挂载行**（默认挂载文字+3 图标+3 按钮，118 行） | 挂载行清除，命令组上移 87px |
| v22 | 13:50 | 核弹行两项：**buttonMenu 实测 44×110**（背景按原生高 110px 三明治拼贴，不随 setHeight）→①"轰炸机开启核挂载"补信息条背景（540×110）②开启按钮移除 setHeight(0x2c)；**教训⑯⑰⑲** | 核弹行信息条出现+开启按钮对齐 |
| v23 | 13:54 | 开启按钮 posY 161→128 与信息条同顶对齐 | **UI 重置完成（用户确认）** |
| v24 | 17:24 | **U4 改动一**：4 工厂签名 + divKey（AS/AA/IC/SB→+1 参），体内 if-eqz→iput airhqKey（师归属，null 走合成 key 回退）+ 必要调用点同步（AirForceManager:104 AI 轰炸传 null） | 四防线全过；装机 17:24:05 零崩溃；旧档/AI 零影响 |
| v25 | 17:34 | **U4 改动二**：getActiveDivKey() 公共方法抽取（AirForceManager static，activeArmy→HoveredArmy.key）+ handleProvinceClick 15 行去重为单行调用（标签验证后安全删除）；核实存量用户入口已师粒度（patch15） | 四防线全过；装机 17:34:19 零崩溃；B2 三调用点接线备好 |
| v26 | 19:04 | **B2 面板骨架落地**：新类 InGame_AirForceQuick（Menu 子类：信息条 buttonMenu 540×110 + 4×BtnCmd 135px 等宽横排，图标 96px 上+文字 16px 下，布局参照 ui_samples/空军作战界面-3.html）+ MenuManager 注册链 3 处 + showAirForceQuick(Z) + addActiveArmy 尾部 airhq_ 前缀接线（仅空军师显示） | 四防线全过；装机 19:04:06 零崩溃；选中空军师→面板弹出✅ 陆军师不显示✅ |
| v27-v29 | 19:13-19:27 | 位置轮询：v27 固定 461（应为 691-230）→v28 跟随军队栏上方（armyY-238）→v29 覆盖军队栏（x/y 完全跟随） | 用户逐轮指正；**v29 澄清"上层"=z 序覆盖**（非纵向） |
| v30-v31 | 19:35-19:44 | v30 固定底+setOrderOfMenu 置顶（无效）→v31 **z 序根因**：绘制顺序=orderOfMenu 顺序表（动态重排打乱）；改 draw(SpriteBatch;III) 入口**每帧守卫置顶** + 位置用 CFG.GAME_HEIGHT-230 动态贴底 | 装机 19:44:15；**z 序修复用户确认✅**；位置仍无效 |
| v32 | 19:50 | 位置无效根因：绘制读 iPosY（initMenu 写入），setMenuPosY 只写 iMenuPos*（部分字段）→换 setPosX/setPosY（三字段全同步） | 装机 19:50:21；位置贴底✅；**引发水平滑动（新 bug）** |
| v33 | 20:00 | ⚡滑动根因实证：setPosX→updateMenuPosX→**setUpdateSliderMenuPosX(true)=滑块菜单**；删 setPosX + 按钮收窄 135→115px（词间距缩短，信息条/面板 540→460） | 装机 20:00:30；用户：**滑动仍在**、文字紧凑✅ |
| v34 | 20:08 | 位置全部写死 initMenu（构造期三字段同值，无 setter 无滑块）+ x=GAME_WIDTH-460-52 贴右 | 装机 20:08:27；用户：**仍能滑动**、太靠右 |
| v35 | 20:12 | 触摸框架层布防：cond_17 分支加 QUICK 守卫（activeSliderMenuID==QUICK→跳过 scrollTheMenu）+ 面板居中 (W-460)/2 | 防滑待验；用户：不要居中（右侧留空） |
| v36 | 20:16 | 位置终局：x=52 左侧 + y=GAME_HEIGHT-230（GAME_WIDTH/GAME_HEIGHT 构造期动态算，任何分辨率贴底） | 四防线全过；装机 20:16:10 零崩溃；**防滑效果待用户真机验证** |
| v37 | 20:39 | ⚡**滑动根因实证+断根**：滑动驱动链=actionMove cond_3→setScrollPosY/X（拖动路径，非点击路径）；cond_3 入口加 QUICK 实例守卫（instance-of）+ initMenu x=52→152（右移100px）+ 清理重复死代码 5 行 | 四防线全过；装机 20:39:10 零崩溃；**用户确认：滑动根除✅ 位置正确✅** |
| v38 | 22:22 | ⚡**场景加载三处修复（方向未谱，见 v40-v42 反转）**：Button_Preview/PreviewSmall 入口无条件设 scenarioID（**引来点击分支劫持**）+ loadScenario_1_ClearData if-ltz 兜底（**条件写反**）+ kaishi.txt mission_image=kaishi→0（**唯一有效**，NumberFormatException 消失✅） | 装机 22:22:09；**新问题**：无加载画面直进选国 + 2014 仍在 + 图标消失 |
| v39 | 22:56 | **🔬 PB39 探针包（11 点位）**：P1 addImage 入口全覆盖图标路径｜P2/P3/P4 ClearData sid/dsize/cal｜C1-C4 两按钮点击入口+cond 分支｜L1/L2 加载链；实测：首击→cond0（无加载）；二击→cond1→CLR sid 被 1b 吞 0→cal=2022-4-22（ModernWorld） | 装机 22:56:58；首次 2014/二次 2022 现象与探针完全吻合 |
| v40 | 23:26 | ⚡**1a 回退（恢复原版 if-ne 分支）+ 1b 修正（if-ltz→if-gez，仅负数兜底）**；实测：首击→cond1→CLR sid=1→**无 cal（异常断流）**；二击→cal=2000-1-1✅ | 装机 23:26:03；二次=2000✅；首次仍 2014（未谱断点） |
| v41 | 23:37 | **QUICK 守卫**：showAirForceQuick 加 IN_GAME_AIRFORCE_QUICK<0 跳过（首局菜单未注册）——完整堆栈指向 showAirForceQuick！ | 装机 23:37；**加载画面回归**；首次仍 2014（menus.get(IN_GAME) 第二崩点） |
| v42 | 23:41 | ⚡**完整修复**：showAirForceQuick 补 IN_GAME 守卫（-1 静默跳过，双守卫）+ qk_skip 段同款双守卫；根治=首局加载链（disposeCivilizations→clearActiveArmy→showAirForceQuick）在菜单未注册时不再崩→日历三行正常执行 | 四防线全过；装机 23:41 启动零崩溃；**用户确认：首局 2000-01-01 修复成功✅** |
| v43 | 00:20 | 军库长按详情改造（setText 机型名方案） | VerifyError [0x212] v1 污染闪退 |
| v44 | 00:40 | 构造器参数法（Btn* modelName 字段+9 参构造器+range {v16..v25}） | 军库打开后走进地图触发 drawAirForce VerifyError |
| v45-v46 | 00:50 | drawAirForce 初修（HP ring 7 参数）+types 数组修正 | 启动即崩 [0x15A]/[0xAD] |
| v47 | 01:00 | drawAirForce 全量重写（循环专用寄存器+attacker 补全） | 启动零崩溃✅（用户 Test 军库）→打开军库 [0x1EB] |
| v48-v49 | 01:10 | 构造器调用签名 8→9 参对齐（BtnSelect/BtnBuild 8 处）+BtnMission 签名误改还原 | 启动+军库打开✅（用户 Test 长按）→详情框横排错位 |
| v50 | 01:20 | hover v3（标题=机型名+种类名合并；数据首行 
 纵排） | 军库+长按详情框正常弹出，文本溢出弹窗 |
| v51 | 01:30 | 引擎 Text.getHeight() 多行化（split(
)×单行高） | **用户确认长按详情布局正常✅**（机型名+两列五行+弹窗增高） |

## 21.2 关键机制（A1 阶段核心认知，已在 A1 计划书 §2 固化）
1. **Menu 绘制=倒序遍历**：后 add 的元素先绘制=底层、先 add 后绘制=上层（slot 盖飞机的根因）
2. **BtnSelect 动态文本**（机型名+已建+在建，每帧刷新）=信息行数据源
3. **默认挂载语义**（用户拍板）：战斗机/截击机→对空、轰炸机/攻击机→对地；已登记 B3 落点（prefPayload 目前无任务消费点，M2-B 后置）——**v21 已按用户指示删除挂载行 UI**（行为语义仍登记 B3 待后续）
4. **机型名数据源**：AirUnitModelMap.json（中国三代：J-11/H-6/Q-5/J-8）为模组资产、游戏 smali 不加载 → v6 硬编码映射（后续可挪数据层）
5. **buttonMenu 背景=原生高 110px 三明治拼贴**（左角+中间拉伸 draw2+右角；贴图 44×110），**不随 setHeight 变化**→setHeight 只改文字居中基准（文字错位三案 v17/v20/v22 同根）；CFG.BUTTON_HEIGHT=110px=贴图原生高
6. **Icon 贴图=原生尺寸居中绘制**（Image.draw(cx,cy) 不缩放）→airs_slot 315×200 显示区=(y-34~y+166)，frame 设定 205×132 仅为按钮盒
7. **师粒度任务归属链（U4 定稿）**：AirMission.airhqKey 字段（非空=显式师 key，优先）→ `getAirDivKey()` 合成 key 回退（airhq_{civ}_{省}，仅旧档/AI 走）；五工厂 create*(..., String divKey) 全支持；用户侧统一取 key 走 `AirForceManager;->getActiveDivKey()`（activeArmy[0].key，空→null）；**AI 路径有意传 null**（无师归属）
8. **ICBM 巡逻对照（调研实证）**：ICBM 巡逻=机场级自动机制（CanHostAircrafts "... Patrol N AIAutoPatrol"+每机型 Air Patrol 开关+巡逻机自动拦截/返航自修/被击不宣战/和平不越界）；ICBM 无师概念（任务挂机场）——我们=师粒度指派；可选增强=机场自动巡逻开关（用 airPatrolQuota）

## 21.3 构建链四道防线（v6 定稿）

CheckInvoke（引用存在性）→ CheckRegs（invoke 寄存器数）→ CheckInit（new→invoke 配对）→ **CheckSig（方法名+参数个数精确匹配；v6 抓出 BtnNuke 构造器签名 6I/5I 不一致——smali 汇编器与前三防线均不校验的盲区）**；已知白名单：enum 合成方法、外部库继承（Thread/ApplicationListener）、跨 dex（原版 classes2.dex）。

## 21.4 待办（B1 UI 重置完成后的下一步）
- ✅ **B1 视觉层（空军司令部 UI 重置）**：v9-v23 全部落地，用户确认完成（2026-08-30）
- ✅ **U4 师粒度补全**：五工厂 divKey 化（v24）+ getActiveDivKey 公共化（v25）+ ICBM 巡逻逻辑调研实证（结论：我们走师粒度指派，ICBM 式机场自动巡逻为可选增强）
- ⏸ **B1 行为层=待做**（2026-08-30 用户确认）：核弹开关仅 Toast 占位（未实现武装/发射链）、BtnBuild 行为待验、BtnMission 命令组行为待接入——**整体挂起，等用户点名再做**
- ✅ **场景加载链修复（v38-v42）**：首局 2014-01-01 回退 bug 全链闭环（根因=MenuManager 菜单字段首局未注册→ showAirForceQuick menus.get(-1) 崩溃→日历三行被跳过）
- ✅ **军库长按详情优化（v43-v51）**：机型名显示（BtnSelect/BtnBuild 构造器 modelName 参数法）+数据两列五行+弹窗多行增高（引擎 Text.getHeight 多行化）；VerifyError 四连根修（[0x212]/[0x15A]/[0xAD]/[0x1EB]/[0x5A1]）——**用户确认✅**；**新防线 CheckRange 就位**（第五防线）
- ✅ **图标路径污染（撤销）**：用户确认不用修（#16）
- 🎯 **进行中：B2 即时面板（方案① Info 面板）**——**骨架✅（v26-v37）**：面板类+命令组四按钮+仅空军师显隐+z 序每帧置顶+左下贴底（x=152/y=GAME_HEIGHT-230）+**滑动已根除（v37 actionMove cond_3 守卫，用户确认）**；**遗留🔴**：信息条动态字段未做——**决策v2（2026-08-31 用户拍板）**：字段=编队·机型×数量｜航程｜核挂载（**战力取消**；挂载体系简化：战/截=只对空、攻/轰=只对地、唯一挂载=核挂载仅轰炸机；编队=师粒度一师一编队混编不做）；**空军对战系统自研**登记（不套 ICBM/陆军，远期主项）；**二轮定稿（2026-08-31）**：取消编队名——信息条只显示 **机型｜数量｜师状态**（待命/打击/返航/取消/巡逻；映射=无任务待命/PATROL+制空巡逻/打击类任务打击/RETURNING 返航/ABORTED 取消）；**✅ 信息条动态字段完成（v52-v53，2026-08-31 用户确认）**——字段=机型×数量｜师状态五态（待命/打击/返航/取消/巡逻），数据链=HoveredArmy→Province.getArmy→regiment(uID双通道)，刷新点=draw 入口（update 不被调用）；**下一步**=B3 打击指派流 或 B1 行为层（核弹链）；**B3 方案甲拍板✅（2026-08-31）**——机库[打击]=机场自动打击模式开关（OFFENSIVE 接活，弃方案乙手动合一），批次 B3-A1（OFFENSIVE→敌省→战略轰炸）/B3-A2（目标扩展：敌军/敌机/制空+机型分工）/B3-A3（航程/战损/打磨），详见 A1 v1.16 附录D.7-D.10；**B3-I 即时面板打击定稿（2026-08-31）**——矩阵认同（轰炸→敌省战略/攻击→敌军/战斗→敌机制空/截击→拦截）+护航=任务级合并（FIGHTER/INTERCEPTOR 自动并入打击任务，师不混编）+软校验改为意图路由（对空机型点省=移动 PATROL，对地机型点省=打击；**移动滞留=取消**（2026-08-31：滞留计数单位=帧、引擎无回合实时时长→半回合不可行→到达即返航；半回合滞留=I-3 可选增强）），批次 B3-I-1（打击接线+机型路由+护航+返航取消）/I-2（打击效果结算+敌军/对空）/I-3（确认条+打磨），详见 A1 v1.16b/c 附录D.11；**B3-I-1 分部化（2026-08-31）**——细分为 I-1a（返航/取消，最小）/I-1b（机型路由）/I-1c（护航合并）/I-1d（BtnCmd[打击]接线），每步单文件单验收点+验收手册（A1 附录D.11.5）｜**I-1d 范围修正（v1.17b，2026-08-31 用户指正+ICBM 原文调研）**：[巡逻]按钮**不接入任务指派**=机场 Air Patrol 模式开关（ICBM lang/Eng/UI.lng **2066** "Allow air patrol"/**3301** "Air patrol:"/**3510** 教程"toggle the Air Patrol buttons..." + CanHostAircrafts Patrol 配额/CanPatrolPoint/AIAutoPatrol）；[打击]=**目标指派=点击选择目标省份模式**（ICBM "assign targets"：2562-2564 打击计划簿/2821-2822 加入退出打击计划）；I-1d 范围收窄=只做[打击]按钮接线（pendingMissionMode=1+selectedAirportProvinceID=当前师机场省+iActiveProvince 同步+chooseProvinceMode=true+Toast"点选目标省份"→点省机型路由现成）；证据表=**A1 D.11.8**；**行进链触发方式修正（用户指正）**——点省需先经[行进]进入选择目的地模式（chooseProvinceMode=true），非选中师直接点省（D.11.1 原文误记已修正；正确链=总纲§2.2链路5/§13.1：选中师→[行进]→选择目的地界面→点省→handleProvinceClick→createPatrol）；**取消键语义定稿（v1.16e，2026-08-31）**——[取消]=取消选中师（clearActiveArmy()+setActiveProvinceID(-1)，等价点空白/ESC）；[返航]=任务召回（forceReturn→RETURNING，唯一任务终止入口）；forceAbort 不做（引擎全损自动 ABORTED 兜底保留）；ICBM 对齐实证（CancelOrders/ReturnToBase/AutoReturn 三语义+返航范围/自杀任务概念，Units.txt/UI.txt 实锤）；**移动选中保持（AFKEEP，v59，2026-08-31）**——用户新指示：不做飞行中选中师（AFDIV2 v57/v58 试验回滚），真实需求=下达移动指令后师保持选中；根因=MapTouchManager.actionUp 点省选中处理把 activeArmy 替换/清空→handleProvinceClick 无恢复→面板隐藏；修复=任务创建成功后恢复选中（模板 selectAirDivisionAt 尾部）；新缺口 G6 登记（A1 D.11.2/D.11.6）；**装机基线更新 v59**；**移动选中保持（AFKEEP，v59，2026-08-31）**——用户新指示：不做飞行中选中师（AFDIV2 v57/v58 试验回滚），真实需求=下达移动指令后师保持选中；根因=MapTouchManager.actionUp 点省选中处理把 activeArmy 替换/清空→handleProvinceClick 无恢复→面板隐藏；修复=任务创建成功后恢复选中（模板 selectAirDivisionAt 尾部）；新缺口 G6 登记（A1 D.11.2/D.11.6）；**装机基线更新 v59**
- ⬜ **后续队列**（B2 之后）：B1 行为语义补全（核弹链等）→ B3 prefPayload 消费点（M2-B 后置）
- 归档：build_apk/dbg_signed77{,_v2..v51}.apk（v1→v51 全 51 版）
*（第21章为 2026-08-30 快照；pkg_new77 v42 + B2 面板骨架✅滑动根除 + 场景加载链修复✅ + B1 行为⏸待做 + U4✅为当前基线）*

---

## 21.5 返航瞬移专案闭环 + 经验总结（2026-08-31，装机基线 v59→v69）

> 触发：用户 #19/#23/#29/#31/#33 五轮"点返航飞机瞬移到目的地"；v64/v65 两版修复无效后，v66 双探针 + 全链代码走查最终实锤，**v67 修复闭环（用户确认"现在是可以了"）**；v68 航线修复闪退（寄存器覆盖迭代器）→ v69 修复装机。基线 **pkg_new77 v69**。

### ✅ 专案闭环（返航瞬移·完整真相链）
```
用户点[返航] → forceReturn()
  ├─ 去程中途：回拨 animElapsedMs=(1-fp_cur)×spd×0x1c（v65 设计）✓
  ├─ 但随后被 v64 遗留复位段覆盖：animStartMs=now + animElapsedMs=0 ← 🔴 v65 从未生效！
  └─ EXECUTING：animElapsedMs=0（正确，从目标省回）
下一帧 update()：fp=animElapsedMs×100/denom（RETURNING denom=spd×0x1c）
  → fp=0（若被清）→ 绘制/师移动用同一插值：pos=lerp(机场,目标,100-fp%)
  → fp=0 → pos=目标省 = "瞬移到目的地" + "目的地看到飞机师"（绘制层无段守卫，师摆放有）
```
**v67 修复**：删除 forceReturn():fr_ex2 复位段（animStartMs/animPrevMs/lastTickMs=now + animElapsedMs=0 共 7 行）→ 回拨值保留、animPrevMs 基座不动 → 下一帧 fp 从当前位置续算 → **原地掉头** ✅ 用户确认。

**v68→v69**：返航航线=橙红"当前→机场"动态回程线（浅蓝去程线照旧）；v68 闪退根因=`sget-object v0,RETURNING` **覆盖循环迭代器 v0**（drawAirForceMissions 遍历 activeMissions）→ v69 改用 v2/v3（1272 后闲置，每轮循环开头重赋值）✅。

### 📐 APK 布局核对（本轮逐行实证，后续改动必读）
| 组件 | 位置 | 布局要点 |
|---|---|---|
| `update()` | AirMission.smali:1363 | 每帧：updateAnimClock（**animElapsedMs 增量累加** +=now-animPrevMs）→ fp=animElapsedMs×100/denom（RETURNING denom=spd×**0x1c**；其他状态 spd×**0x28**）→ moveDivisionAlongFlight → throttlePass → pswitch |
| `forceReturn()` | AirMission.smali:1777 | 状态守卫（RETURNING/COMPLETED/ABORTED 跳过）→ 设 RETURNING → 回拨（去程 (1-fp)×spd×0x1c；EXECUTING 清零）→ roundsInFlight=0 → 探针 → done（v67 已删复位段） |
| `moveDivisionAlongFlight()` | AirMission.smali:341 | RETURNING 时 pct=100-fp% → 插值坐标 → setProvinceID_Point → 跨省才 removeArmy+addArmy（:mv_add）；**段动画守卫 airDivSegAnimMs<airDivSegDurMs 拒绝换省**（正是它挡住刚出发返航的师摆放 → "目的地飞机师"来自绘制层） |
| `drawAirForceMissions()` | ProvinceDrawArmy.smali:1126 | 遍历 activeMissions 每帧：条件 sourceAirport≠&&target≥0 → **插值点 v8=X v9=Y**（dy 先算 dx 后算！）→ 探针段 → **唯一 drawLinePts=航线**（机场→目标直线，5×5 pix 小方块，浅蓝，无箭头，本项目自研）；飞机图标不在此方法 |
| `drawAirDivisionAsPlane()` | ProvinceDrawArmy.smali:3550 | 飞机图标/雷达圈（3446 调用，独立于航线） |
| `Image.drawLinePts()` | Image.smali:1128 | Bresenham 逐点 draw(SB,x,y,5,5)，**全库唯一调用点=我们的航线**（原版无参照） |
| `AirDbgLog` | map/battles/AirDbgLog.smali | **dKey=sb 缓冲+500ms 刷盘（FileWriter append）→ airdbg_key.txt**；**logOnce=500ms 节流直接写 → airdbg_tick.txt**；双文件同目录 files/ |

### ⚠️ 工具坑与解决方案（教训㊹-㊾，累计 99 条）
- **㊹ 探针双文件+读法**：dKey→airdbg_key.txt、logOnce→airdbg_tick.txt（**排查先分清用哪个**！um_mvp 在 tick，fr_enter 在 key）；**读大文件尾部必须 `tail -c`**（dd if= bs=1M skip=N 对 FUSE 大文件返回 **0 字节**）；**文件 mtime 不变=探针未写入**（先怀疑代码未执行/未触发，再怀疑打包链）；/data/media/0 路径 Permission denied 勿走。
- **㊺ 寄存器覆盖迭代器（v68 闪退实锤）**：插入代码必须 grep vN 使用区间——**方法内"宽松寄存器"≠真空闲**；循环迭代器（如 v0=Iterator）列为禁区；治理：插入前对目标方法做全量寄存器使用表，选"插入点之后全程空闲"的 vN；跨轮循环变量每轮重赋值才可复用。
- **㊻ 修复必须"替代"而非"插入"**（v65 无效的唯一真相）：回拨 animElapsedMs 后，**v64 遗留复位段（animStartMs=now+animElapsedMs=0）仍在执行**→回拨值只活了一瞬→三版"仍瞬移"（用户 #23/#29/#33 全部命中）；治理：修复前通读方法全文，**删除/绕过所有旧写入点**；探针打印"回拨后值"只是自证计算正确 ≠ 生效，必须再核对后续是否有反向写入。
- **㊼ 动画时钟两套语义**：animElapsedMs=**增量**（updateAnimClock: +=now-animPrevMs）；animStartMs=now 只重置增量基座；**回拨正确写法=只写 animElapsedMs 且不动 animPrevMs**（去程中途）；EXECUTING→RETURNING 清零才正确（师在目标省，从目标省回）。
- **㊽ 插值坐标 X/Y 顺序陷阱**：drawAirForceMissions 插值 **v9=插值Y、v8=插值X**（dy 先算、dx 后算，与直觉相反）；v68 首版写反（v12=v9 当 X）→线斜画；治理：坐标代入前逐行核对 add-int/2addr 顺序，或插值点命名注释（如 # v8=X v9=Y）。
- **㊾ 装机空间管理（10G 丢失真相）**：722MB APK 每次 cp 到 /data/local/tmp，**装机后必须 rm**——积 27 个=19G 撑爆 /data（install-write "Failed to allocate 722873808 because only 525131776 allocatable"）；治理：装机成功即 `rm /data/local/tmp/*.apk`+`df -h /data` 例行检查；install-write 失败后 session 作废需重新 install-create（㊸ 延伸）；/sdcard/Download 副本同步清理（v68/v69 也是 1.4G）。

### 📌 版本线与基更
- 版本线：v59(AFKEEP)→v60-v63(守卫链)→v64(设 fp 无效)→v65(回拨被覆盖无效)→**v66(双探针:fr_enter fp=12/um_mvp=0)**→**v67(删复位段,返航闭环✅)**→v68(航线+闪退作废)→**v69(寄存器修复,当前基线)**
- 损失教训：v65"用户说好了"实为短期假象（复位覆盖后 fp=0 恰好**部分场景**不瞬移，场景敏感）→ **"好了"不代表根因消除，需看探针/根链条目确认**。
- 待办继承（未变）：I-1a 验收（返航✅ 待航线/状态全验后记入）→ I-1b 机型路由 → I-1c 护航 → I-1d BtnCmd[打击]；返航航线=橙红回程线（v69 待用户确认形态）。

### 👻 21.5.1 军队栏闪现消失专案（I-1b 遗留 #2，2026-08-31，装机基线 v70→**v73 闭环✅**）
> 用户 #23 反馈："下达行动指令时军队栏闪一下然后消失"。**v72 探针实锤 → v73 TAPG 修复 → 用户确认"正常正常"✅闭环**。错字"循逻"→"巡逻"（InGame_AirForceQuick.smali:159，v71 已并装）。

**◆ 操作路径（D.11.1 修正版）**：选中机场省师（trySelectAirUnit→selectedAirportProvinceID=机场省，activeArmy=[airhq_师]）→ 点[行进]（chooseProvinceMode=true）→ 点敌省 → ACTION_UP 链（下）。

**◆ 已确认代码事实（逐行实证，后续勿再重复排查）**：
| # | 事实 | 位置 |
|---|---|---|
| F1 | AFKEEP 恢复段前置条件链：`getActiveDivKey→v0`、`selectedAirportProvinceID>=0→v1`、`Province.getArmyKeyID(师key)→v3`（**v3<0 则整体跳过恢复**=军队栏不重建） | AirForceManager.smali:1769-1779 |
| F2 | 任务创建（createPatrol/createStrategicBombing）**无 removeArmy**——EN_ROUTE 期间师**仍在机场省 army 列表**（A1 D.11.6 已记；pickup 段移除发生在更晚时机，非创建时） | A1 附录D.11.6 |
| F3 | moveDivisionAlongFlight 换省（**实际首跳走 :mv_tryrm**（airDivisionAtProvinceID>0 时），:mv_first 仅占位路径 v9==0）：removeArmy(旧省)+addArmy(新省) | AirMission.smali:480-504 |
| F4 | 军队栏重建=tDivID=`getProvince(HoveredArmy.iProvinceID).getArmyKeyID(sActiveKEY)`；**tDivID<0 → key=""+跳过军队按钮构建段（:cond_1f）→ 军队栏内容空/失效**（本次实证 ub:tdiv<0 未出现=未触发，师始终在列表） | InGame_ProvinceArmy.smali:291,354,418 |
| F5 | rebuildInGame_ProvinceArmy(ZZ) 开头 `activeArmySize<=0 → :cond_5` → **直接隐藏三件套**（ARMY/UNITS/TOP_BAR）——**不经 AFG2 守卫** | MenuManager.smali:30164,30833-30896 |
| F6 | actionUp_SetActiveArmy：`activeArmySize<=0 → setVisibleInGame_ProvinceArmy(false)`（cond_0 分支）——**无守卫** | ProvinceTouchExtraAction.smali:1287-1349 |
| F7 | `$23` AFG2 守卫只挡 `setVisibleInGame_ProvinceArmy(false)`，条件=`selectedAirportProvinceID>=0`；**若军队栏当前不可见则整个守卫段跳过（不隐藏也不做什么）** | ProvinceTouchExtraAction$23.smali:1830-1853 |
| F8 | 清 selectedAirportProvinceID 的三处：GameActiveProvince tapClr（**chooseProvinceMode=true 且悬停省≠机场省**）、Game.setActiveProvinceID(<0)、ProvinceTouchExtraAction:1275（iActiveProvince<0） | GameActiveProvince.smali:1541-1568 / Game.smali:15504-15516 / ProvinceTouchExtraAction.smali:1264-1276 |
| F9 | clearActiveArmy 调用点 18 处（MapTouchManager 10 处 + AA_KeyManager/Game/GameActiveProvince/MenuManager 等 8 处）；点省链 MapTouchManager:1382 等紧随 setActiveProvinceID | 全库 grep |

**◆ ✅ 根因定案（v72 全 dKey 探针实证，2026-08-31）——H1 时序版**：
```
① handleProvinceClick（ACTION_UP 先执行）：hc:sel=2315:click=1300（sel 正常！）
   → 创建任务（i1b:rt=patrol:ord=1）→ AFKEEP：afk1:div= / afk2:sel=2315 / afk3:key=0 → ub:afk:sz=1
   → 军队栏重建显示【闪一下】✅（afkeep:ok）
② GameActiveProvince.actionUp_setActiveProvinceID（ACTION_UP 后执行）：
   tapClr：chooseProvinceMode=true & 悬停敌省≠2315 → selectedAirportProvinceID=-1
   → $23.extraAction：军队栏可见 && sel<0 → ub:afg2hid（实测 2 次！）→ setVisibleInGame_ProvinceArmy(false)【消失】
```
**H2（师离省）排除**：afk3:key=0（创建时师在机场省列表）、ub:tdiv<0 未出现、ub:mvs0 换省时军队栏早已被 afg2hid 隐藏。
**"时有时无"机制**：竞争性时序——若 tapClr 触发时军队栏已不可见（F7 守卫），或 chooseProvinceMode=false（未走[行进]），则不隐藏。

**◆ ✅ 修复（v73，TAPG 守卫，用户确认"正常正常"）**：GameActiveProvince.smali :tap_clear 处（1555-1568）插入：
```
# TAPG: 选中空军师时不清 selectedAirportProvinceID
invoke-static AirForceManager;->getActiveDivKey() → v0
if-nez v0, :tap_skip   ← 有选中师 → 跳过清空 → $23 守卫永远成立 → 军队栏不再被隐藏
```
[取消]按钮语义不受影响（clearActiveArmy+setActiveProvinceID(-1) 专用链依旧清空）。

**◆ 探针实践经验（本轮新增，教训㊿-㊽…见下方教训表）**：
- **logOnce=500ms 全局节流**（tickMs 静态字段，窗口内第 2 条直接丢弃）——一次诊断多条探针**必须用 dKey**（sb 缓冲+500ms 批量刷盘，消息全保留）；v71 的 6 探针全军覆没=全被 ub:clr:sz=0 背景抢占窗口。
- **分支标签多入口陷阱**：[0x6AB] VerifyError——`:afg2_hide` 有 `if-eqz v0→:afg2_hide` 直接跳入路径（v5 从未赋值=Undefined），探针读 v5 → VerifyError→闪退（v71 首测）；修复=标签处重新定义寄存器或用全路径已定义寄存器。
- **探针插入位置必须对路径**：ub:mvs0 首版插在 :mv_first（占位路径 airDivisionAtProvinceID==0），实际换省走 :mv_tryrm（v9>0）→ 永不触发；v72 移到 :mv_tryrm 前立即拿到完整换省链（4856→…→2315）。
- **logcat 自污染**：AIService 会把命令回显写入 logcat，抓取需 `-T '日期时间'` 时间过滤 + `grep -av 'AIService|ToolPkg'`。
- **versionCode 递增硬编码**（构建链）：patch_axml.py 内 `struct.pack_into('<I', newd, aoff+16, N)` 的 N 为硬编码——每次发版 N+1（v70 基线=5→v71=6→v71b=6→v72=7→v73=8），**漏改→INSTALL_FAILED_VERSION_DOWNGRADE**（versionCode 4<5 实测）；manifest 流程=apktool b 产物提取→patch_axml 打补丁→verify.py 确认 data=N。

### 📌 21.5.2 版本线与基更（v70→v73 收尾）
- 版本线：**v70（I-1b 机型路由）**→v71→v71b→**v72（全 dKey 探针版，实锤 H1）**→**v73（TAPG 守卫）**→**v74（I-1c 护航合并）**→**v75（护航状态六态）**→**v76（防重复师级化）**→**v77（I-1d [打击]接线：pendingMissionMode+选机场省+iActiveProvince+chooseProvinceMode+Toast，AirForceManager 新增 static pendingMissionMode）**→**v78（双修复：本国省禁打击转移动+护航仅限 BOMBER/攻击机不借护航）**→**v79（占领省可打击：isOccupied 优先——被占省敌/叛军→允许收复）**。装机基线 **v79**。
- **I-1b 验收完成✅（2026-08-31）**：机型路由（轰炸/攻击→打击、战斗/截击→移动）+ 错字"巡逻" + 军队栏闪现消失闭环。
- **I-1c 护航合并验收完成✅（2026-08-31，v74-v76）**：v74/v75/v76 详见前版；**I-1d 编码完成✅（v77-v79，2026-08-31）**：v77=[打击]按钮接线（目标指派点选省份模式）；v78=①轰炸/攻击机点本国省→国别校验（目标省 getCivID()==机场省→转移动 createPatrol，探针 i1b:rt=ownmove）②护航仅限 BOMBER（ATTACKER 战术打击不借护航，legacy 保留原版）；v79=**占领省允许打击**——**用户指正+引擎语义实锤（AI_MoveAtWar.addOccupiedProvinces 1114 + ProvinceData.getOccupiedByCivID/isOccupied）**：被占省 getCivID=所有权仍原主→V78 误判本国→修复 isOccupied 优先（<0=叛军/≥0=敌国→打击收复）；**判定原则迁移：省份归属=实际控制（isOccupied/OccupiedByCivID）≠所有权（getCivID）**，证据表=A1 D.11.9。**下一步**：I-1d 验收（装机 v79）→B3-I-2（效果结算 G4+敌军/对空+护航跟飞扩展）。
- 教训累计：**109 → 111 条**（㊿10 **省份归属判定=实际控制（isOccupied/OccupiedByCivID）≠所有权（getCivID）**——占领区省份 getCivID 仍是原主，误判"本国"禁打击；引擎先例=AI_MoveAtWar.addOccupiedProvinces 以 isOccupied/OccupiedByCivID 定攻击目标；治理=所有"我方/敌方省"判定先查 isOccupied/㊿11 **护航按机型语义细分**——护航=轰炸机战略打击专属（ATTACKER 战术打击无护航，ICBM/引擎语义）；功能上线前按机型逐一过语义。㊿9 **功能语义须先对齐 ICBM 原文再接线**——占位按钮[巡逻]差点按"任务指派"接入，实为机场 Air Patrol 模式开关（ICBM 2066/3301/3510）；治理=接线前先看 ICBM 原文语义（模式 vs 任务），拿不准问用户。㊿6 **原版防重复维度≠新功能维度**

*

*



---

# 22. 巡逻系统落地闭环 + 打击可见化 + 战争门控（2026-09-01，v80-v91）

> 本轮到 2026-09-01 凌晨为止完成：巡逻系统闭环（v80-v83 用户验收）、打击效果修复（v84 用户'有效果'）、打击动画/Toast（v85-v87b）、战争门控（v90 验收）、巡逻双 bug 修复（v91 验收）。
> 装机基线：**pkg_new77 v91**（dbg_signed77_v91.apk）。

## 22.1 版本线

| 版本 | 内容 | 结果 |
|---|---|---|
| v80 | 巡逻引擎侧六修（短路/双反转判定/80%/航程按机型/civ 守卫） | 构建链变更为容器内直接 baksmali-smali-自研 mkzip-apksigner |
| v81 | 默认 OFFENSIVE + 护航误显 + 派机按师截断 + [巡逻]开关化 | 用户实测三修 |
| v82 | 机场级两根因（自动巡逻走无师路径取全机群 / BtnMission 模式键埋深因可用飞机空则跳过） | 自动巡逻改按师派机 + 模式切换前置 + stopAirportPatrols |
| v83 | 司令部按钮改造：自动巡逻两态 + getTextToDraw 动态开/关 + 文本自动巡逻/自动打击/紧急召回 | 用户验收（巡逻线闭环） |
| v84 | 打击效果视觉化：人口伤害改逐 civ + 引擎战报 | 用户'有效果'（后确认弹窗不合意） |
| v85 | 战报按钮分叉 + 引入 executeAttack.addNuke | 闪退（VerifyError）到 v86 修 |
| v86 | executeAttack 拆 addNuke 到 emitStrikeReport | 稳定 |
| v87 | ①和平期放行轰炸（方向搞反）②弹窗到右下栏 Toast | v87b 修正基线 |
| v88 | 战争门控（isAtWar）+ 路由重排（寄存器混用 v6） | 闪退（VerifyError v6 Boolean） |
| v89 | mode 改存 v0（首次整改 p0 覆盖） | 仍闪退（v6 残留混用） |
| v90 | 寄存器类型隔离（v6 引用/v1 int/v7 对象） | 稳定，但新增巡逻两 bug |
| v91 | BtnMission 删除旧重复模式设定块 + pickIdleDivKey 判空 v0到v8 | 用户验收（巡逻双 bug 修复） |

## 22.2 核心机制最终态（v91）

- **自动巡逻（机场级）**：Airport.mode=PATROL 时 GameThread_Turns.updateAll→update(civ)→updatePatrols→每机场 tryPatrolForAirport；条件=玩家 civ + 80% 概率 + pickIdleDivKey 找到空闲师 + getRandomBorderProvince（航程+本国省，与 ICBM 3510 一致）+ hasActivePatrol 防重复 + createPatrol(airport,prov,divKey)；派机按师编制截断（divLimit，大于10 视为陈旧） |
- **司令部按钮**（BtnMission 4 键）：missionType 0=自动巡逻（两态：开=设 PATROL / 关=设 OFFENSIVE+stopAirportPatrols 召回）/ 1=自动打击（OFFENSIVE+召回）/ 2=AI / 3=紧急召回（clearPatrolForAirport）/ 4=取消；getTextToDraw() 动态显示「自动巡逻：开/关」 |
- **师级巡逻**：Quick 面板 [巡逻]=开关（无任务→起飞；有任务→forceReturn=召回；已返航→提示），机型按 divKey ordinal 四态映射 |
- **打击**：createMissionForClick 顶层战争门控=DiplomacyManager.isAtWar(玩家,目标)——和平期点敌国→拦截（「和平时期不能轰炸敌国，请先宣战」）；被占省（敌占/叛军）→允许打击收复（isOccupied 优先）；同国未占→移动；已宣战敌国→打击（BOMBER/ATTACKER） |
- **打击结算**：executeAttack：ΣgroundAttack×0.1=economy 扣减（setEconomy→ProvinceData6 持久）+人口逐 civ 按比例 setPopulationOfCivID（applyPopDamage，不再直写聚合缓存）+recordDamage；emitStrikeReport：Player.addBattleReport + MenuManager.addToast（右下栏「轰炸成功：目标省人口损失 N」，无全屏弹窗）+ RendererGame.addNuke（核弹蘑菇云动画） |
- **暂停冻结**：AirMission.update 检查 play==false 或 menuManager.getVisibleInGame_Escape() → 冻结；updateAnimClock 同步冻结累加但 animPrevMs 照常刷新（恢复无跳变） |

## 22.3 教训（㊿13-㊿19，累计 119 条）

- ㊿13 smali 寄存器编号=参数寄存器陷阱：.registers N 有参数时 v(N-1)/v(N-2)...=p0/p1/p2（this 优先）；move v8,v5 实际写入 this。治理：插代码前先画寄存器用途表 |
- ㊿14 类型流 VerifyError：同一寄存器不能 move-result（int/boolean）后又 move-result-object（引用）混用 → ART '[0xN] tried to get class from non-reference register vN'。治理：寄存器分工表（引用/整数/布尔各占独立寄存器） |
- ㊿15 补丁基线一致性：v87 曾用 v85 旧树重打 → VerifyError 回归。治理：verify 脚本必须含上一版修复项回归清单 |
- ㊿16 需求语义复述：用户'和平时期可以轰炸'我读成'修复成可以'（实际=改成不可以）。治理：歧义需求先复述确认 |
- ㊿17 验证脚本自身校验：verify 的 op→o 笔误、find 用字符串比较类名。治理：检查工具自身也要自证 |
- ㊿18 判定写错寄存器（v0≠v8）：pickIdleDivKey if-nez v0（Province 恒非空）→永不巡逻。治理：move-result 后立即核对目标寄存器 |
- ㊿19 新旧代码打架：BtnMission 同时存在 v83 两态块与引擎旧重复设定块 → 两态失效。治理：改动同一行为路径时先 grep 全库该字段/方法的所有写入点 |
- ㊿20 最终隐藏点常在「延迟任务」里：sv=false 类状态改动者不止同步链，还埋在 SimpleTask 队列（Game.updateSimpleTask→Game$X 匿名类.update()）。治理：排查状态改动把延迟任务纳入范围；st:cls 类名打点点名 |
- ㊿21 探针污染寄存器=VerifyError：fix7 st:cls 用 v0 覆盖循环计数器、fix6 frame4 用已被 const-string 覆盖的 v0。治理：插桩前画寄存器用途表，临时值用 .locals+N 新增寄存器 |
- ㊿22 python 多行模板替换=转义地狱：\1 被当字面量吃掉 iget v5；空行/缩进差异致 count==0。治理：行号切片+列表替换，cat -A 验空白 |
- ㊿23 ART compile -m verify 懒验证不可靠：坏 dex 装机 Success、启动不崩，运行时才 VerifyError。治理：静态防线兜底+真启动复现 |
- ㊿24 smali 汇编器版本陷阱：apktool 内置 shade 版与官方 2.5.2 产物有差异；官方 jar 缺 jcommander 须补 smali-debian.jar。治理：汇编命令脚本化固定 |
- ㊿25 探针频率失控：um_enter/afd:in/um_all 每帧刷屏（60MB/530 万行）。治理：状态变化才打点，高频探针独立开关 |
- ㊿26 新增类必须确认进入编译输入：R1 加 RadarDataManager 后 smalidec 目录未含新类（cp 被超时打断）→ 汇编的 dex 缺类 → 运行时 NoClassDefFoundError 闪退（启动即崩，装机后才暴露）。治理：新增 smali 文件后立即 `ls | grep` 确认已在编译目录；构建命令 cp+assemble 一条龙脚本化 |
- ㊿27 引用类完整性静态检查（CheckRefs 第八道防线）：NoClassDefFoundError 类错误可在 dex 上静态检测——扫描所有 aoc/ 前缀引用 vs class_defs，缺失即报（本次坏 dex 一秒命中 MISSING_CLASS=RadarDataManager）。治理：新增类/删除类后必跑 CheckRefs，MISSING_CLASS 必须为 0 |
- ㊿28 长终端命令易被超时截断：cp+assemble 单条超时命令中断时，后续步骤可能【看起来成功】（日志缺失）。治理：长流程拆步+每步产物校验（ls/日志 tail），或 nohup 后台+轮询 |
- ㊿29 调试探针默认用【文件版】dKey（Log.d+写airdbg_key.txt），Log.d仅在辅助；装机后【清文件→操作→读文件】三步闭环（logcat buffer/时机/后台均不可靠——“薛定谔日志”）
- ㊿30 特征行删除必须限定方法范围（全局删除曾毁掉ProvinceDrawArmy整类）
- ㊿31 返回值“被覆盖”型bug：算完立即分支保护（if-gtz v0,:use_v0），不要“算A→算B→move B覆盖A”
- ㊿32 sed/python行号修改后必须立即验证上下文再编译（本次2195-2200连改3次才对齐）
- ㊿33 雷达圈绘制必须乘当前缩放(mapScale)才能钉住地图；radarRange语义=km，统一几何工具见雷达计划书D7

## 22.4 待办（下一步候选）

- **N5 敌机对称**（A3.1）：recordKill 全库无调用者（敌机不掉血不击落）；updateAirCombat 单向扣血且只取每 civ 第 0 机场第 0 架机 radarRange 取样、被击落不从 aliveAircraft 移除 |
- **P-2 巡逻配额**：getPatrolQuota（截2/战4/轰2/攻0）全库零调用者；机库显示「巡逻 N/4」 |
- **P1 巡逻绕圈视觉**：EXECUTING 不再落地式悬停，绕圈巡航动画（ICBM PatrolPoints 蓝本） |
- **A2 战报面板化**：当前用 Toast；引擎原版战报已存（addBattleReport），可用原版面板（rebuild 需点击通知触发） |
- **M2-A 代差树**（Gen1-6×4阵营×4机型，资产已备 Gen3-5/CN-EU-RU-US 贴图） |
- **B3-A 机场 OFFENSIVE 自动打击模式**：模式位已存在，行为层未做（方案甲批次 A1-A3） |

## 22.5 工具链（沉淀）

- 容器内：OpenJDK21 + smali/baksmali 2.5.2（apt: apktool libjcommander）+ zipalign + apksigner
- 构建流（v119 起已换快速管线，见 §23.8）：仅汇编主 dex（smali-2.5.2+smali-debian.jar 46s）→rebuild.py 替换→zipalign→apksigner（d6d886f1）→pm install，全程 ~3min |
- 构建流（旧 apktool 全量，历史）：v79 APK→抽 classes.dex→baksmali 全量→内容锚定 .py 补丁→smali 汇编 -a 34→自研 mkapk（逐条 raw copy+4 字节对齐+剔签名）→apksigner 签名→指纹必须==d6d886f1...（==v79 证书）→zipalign 校验→交付
- 静态防线（八件套）：CheckInvoke（跨 6 dex+父类链解析）/CheckRegs·CheckSig（实参寄存器数==形参宽度和+this）/CheckRange/CheckInit/CheckCast/CheckUndef（if-* 未定义寄存器，15 条全第三方）/CheckRefs（引用类完整性，抓 NoClassDefFoundError；v119R1 新增，见 ㊿27）
- 证据链：logcat crash buffer（logcat -d -b crash）+ airdbg_key/tick + 探针 dKey

---

## 23 v119 军队栏消失专案·终局排查 + 第八道防线（2026-09-02，装机基线 v119 → **v119fix8 闭环✅**）
> 关联：§21.5.1（v70→v73 军队栏闪现消失专案已闭环）——v119 新基线（ICBM 空军系统移植版）重现同类症状，但**隐藏路径更深**（经延迟任务队列），本轮以「三层调用栈 + 匿名类点名」破案并给出终局修复。

### 23.1 专案概述与最终结论
- **症状**：选中空军师（机场省）后，军队栏（左下角灰色大方框）第一次派任务正常，**第二次派任务后消失**。
- **复现条件**：第一次派任务 → 第二次派任务（第二次必现）。
- **最终结论（机制）**：军队栏 `InGame_ProvinceArmy.draw()` **每帧**（`activeArmySize != 0` 时）向 `Game.simpleTasks` 队列添加一个 **SimpleTask 匿名类 `InGame_ProvinceArmy$8`**；`$8.update()` = **无条件 `MenuManager.setVisibleInGame_ProvinceArmy(false)`**。任务下达时显示链（sv=true + rebuild）先行，`$8` 延迟任务随后执行 → 军队栏被关；第二次任务时无重建救场 → **永久消失**。
- **修复**：`$8.update()` 加**空军守卫（第八道防线）**：`AirForceManager.getInstance().selectedAirportProvinceID >= 0`（机场选中 = 空军场景）→ 直接 return，不隐藏。陆军场景（sel<0 / 空实例）保持原逻辑 → **用户实测闭环 ✅**。

### 23.2 UI 正名（血泪教训：先看图再下结论）
- **军队栏** = 左下角灰色大方框（将领头像 + 军队编制/战斗机行 + 行进按钮）= **`InGame_ProvinceArmy` + `ProvinceArmyUnits` + `TopBar` 三件套**，统一由 `MenuManager.rebuildInGame_ProvinceArmy(ZZ)`（MenuManager:30200）管理。
- **`InGame_AirForceQuick`** = 四按钮栏（打击/巡逻/返航/信道 + 飞机状态）≈ **≠ 军队栏**。
- 教训：AI 曾把 `InGame_AirForceQuick` 误当军队栏追了半天；UI 名词必须先用用户截图 + 字符串（"待命"/"战斗机"）实证反查代码，再开打。

### 23.3 探针方法论（本轮核心调试资产，可复用）
1. **全路径打点**：对目标行为（sv=false）所有可能入口逐一打点 → 后升级为**定义处单点打点**（`setVisibleInGame_ProvinceArmy(Z)` 定义处 1 个探针覆盖全部 8 个调用点）。
2. **状态探针**（sv=0/1）：谁改最终状态一打便知。
3. **caller 栈探针（svHide）**：`new Throwable().getStackTrace()`，sv=false 时打印 `caller=方法/类 <- frame3 <= frame4`——解决多路径 + 每帧刷屏干扰（`um_enter` 每帧 7 次=烟雾弹）。
4. **frame4 位置陷阱**（fix6 闪退）：取栈帧代码必须在 **v0 仍为 Throwable 那一刻**执行；一旦 v0 被 `const-string "AIRDBG"` 覆盖再 `aget-object` → VerifyError。
5. **st:cls 类名打点（终极手段）**：在 `Game.updateSimpleTask()` 内对每个执行的 SimpleTask 打 `getClass().getName()`——匿名类真凶一锤定音（本轮直接点名 `InGame_ProvinceArmy$8`）。
6. **日志对齐法**：以 svHide 行为锚点，前后 N 行抓关键探针（um_mvsw / st:cls）还原时序。

### 23.4 调用链真相（完整机制还原）
```
每帧（军队栏可见时）：
InGame_ProvinceArmy.draw() [定义 3057，分支 595 区]
  ├─ activeArmySize != 0 → Game.addSimpleTask(new InGame_ProvinceArmy$8(this,"setVisibleInGame_ProvinceArmy"))
  │      $8.update() = MenuManager.setVisibleInGame_ProvinceArmy(false)   ← 最终隐藏点
  └─ activeArmySize == 0 且 iActiveID 越界 → iActiveID=0 + addSimpleTask($9)（重建）

执行：GameThread_Update / Renderer:9516 → Game.updateSimpleTask() [Game:19978]
  → ConcurrentLinkedDeque 逐个 SimpleTask.update()
      ├─ Game$1/$2   → Game.updateActiveArmy_MoveUnits（空军师任务移动；已被 AIRSKIP 拦截）
      └─ InGame_ProvinceArmy$8 → setVisibleInGame_ProvinceArmy(false)   ← 真凶
```
- **三条已知隐藏路径 + 最终隐藏点**：① $23 守卫路径（`ub:afg2hid`，fix3c 堵）；② `updateActiveArmy_MoveUnits`（`um_mvsw`，fix4 堵）；③ **`InGame_ProvinceArmy$8.update()`**（fix8 堵）。
- **为何第一次正常、第二次消失**：第一次任务下达时显示链（rebuild → sv=true）在执行序上与 $8 竞态但被救；第二次 $8 任务在显示链之后执行且无后续重建 → 消失。

### 23.5 防线体系（v119 累计：4 道运行时守卫 + 7 件套静态校验）
**运行时守卫（smali 内联条件）**：
- ① `$23` 守卫（fix3c）：`ProvinceTouchExtraAction$23` 隐藏分支加 `selectedAirportProvinceID>=0` 或 `sel<0 && activeArmySize>0` 放行（`ub:afg2hid=0` 实测）。
- ② `AIRSKIP`（fix4）：`Game.updateActiveArmy_MoveUnits` 开头 key `startsWith("airhq_")` → return（空军任务不再被当陆军处理）。
- ③ `svHide caller` 探针（fix5/fix6b）：sv=false 时记录完整调用栈（诊断性）。
- ④ `$8` 守卫（fix8）：`InGame_ProvinceArmy$8.update()` 空军场景 return（**第八道防线，本轮闭环核心**）。
**静态校验（verify_dex 七件套，编译后必跑）**：CheckInvoke / CheckRegs / CheckInit / CheckSig / CheckRange / CheckCast（v2=49 固有误报）/ CheckUndef（15 条全第三方误报，改动类 0）。

### 23.6 版本对照表（fix1 → fix8 全链路）
| 版本 | 改动 / 探针 | 结果 |
|---|---|---|
| v119fix1/2 | 探针复位基线；sv=/spid= 定义处探针 | 首抓（sv 零次→完成探针体系建设） |
| fix3 | $23 守卫升级（新标签 :chk_gd） | VerifyError 闪退 ×2（新标签 CFG 合并 Undefined + python 转义吃掉 iget v5 行） |
| fix3b | 改纯顺序守卫（无新标签） | 仍 VerifyError（iget v5 未修） |
| fix3c | 补回 iget v5 + 官方 smali-2.5.2 汇编 | ✅ 稳定（PID 12909）；ub:afg2hid=0、ub:cond5=0 |
| fix4 | +AIRSKIP（airhq_ 跳过陆军移动链） | ✅ 无闪退；仍 3 次 sv=false |
| fix5 | +svHide caller 探针（Throwable 栈） | 拿到 caller=MenuManager.setVisibleInGame_ProvinceArmy <- update |
| fix6 | +frame4（第 4 层栈） | 💥 闪退（v0 被 const-string 覆盖后仍 aget-object） |
| fix6b | frame4 移到 v0=Throwable 时执行 | ✅ 稳定（PID 32534）；3 层栈=updateSimpleTask → SimpleTask.update |
| fix7 | +st:cls 类名打点（v2/.locals3） | ✅ 点名 InGame_ProvinceArmy$8（svHide 对齐） |
| **fix8** | **$8.update() 空军守卫（sel>=0 → return）** | ✅ **闭环（用户实测不再消失）** |

### 23.7 新教训（㊿20-㊿25，已同步 §22.3 教训表）
- **㊿20 最终隐藏点常在「延迟任务」里**：sv=false 类状态被「谁改的」通常不止同步调用链，还埋在 SimpleTask 队列（Game.updateSimpleTask → Game$X 匿名类 .update()）。治理：排查状态改动时把所有执行者（含延迟任务）纳入范围；用 st:cls 类名打点一锤定音。
- **㊿21 探针污染寄存器 = VerifyError**：fix7 的 st:cls 打点用 v0 覆盖了循环计数器 i（方法 .locals 2 无余量）→ 循环失效；fix6 的 frame4 同理（v0 已被 const-string 覆盖）。治理：插桩前先画寄存器用途表，临时值一律用 .locals+N 新增寄存器。
- **㊿22 python 多行模板替换=转义地狱**：smali 模板含 \1 等序列被 python 当字面量吃掉（fix3 吃掉 iget v5）；模板空行/缩进差异导致 count==0。治理：优先「行号切片 + 列表替换」；必要时 cat -A 看真实空白。
- **㊿23 ART `cmd package compile -m verify` 懒验证不可靠**：坏 dex 装机后 compile 报 Success、启动不崩，$23 运行时才爆 VerifyError。治理：ART 验证仅作参考，静态防线（CheckUndef 等）必须兜底 + 真启动跑复现路径。
- **㊿24 smali 汇编器版本陷阱**：apktool 内置 smali（shade 版）与官方 2.5.2 汇编产物可能不同；官方 smali-2.5.2.jar 缺 org.jf.util.jcommander（被 shade 成 com.android.tools.smali.*）→ classpath 必须加 smali-debian.jar 补齐。治理：固定汇编命令写入构建脚本，勿混用。
- **㊿25 探针频率必须受控**：um_enter / afd:in / um_all 每帧刷屏（日志 60MB/530 万行），检索与传输成本高。治理：每帧探针只在状态变化时打点；高频探针独立开关（构建参数控制）。

### 23.8 APK 编辑经验沉淀（快速构建管线，v119 起全面取代 §22.5 旧 apktool 全量流）
**核心思路**：我们只改主 dex（classes.dex），smali_classes2-6 与资源从不变 → 无需 apktool 全量打包。

**完整命令流（单次构建 ~3 分钟，旧 apktool 全量 ~15 分钟）**：
```
# 1) 汇编主 dex（46s）：官方 smali-2.5.2 + smali-debian.jar 补 jcommander
java -cp /tmp/smali-2.5.2.jar:/usr/share/maven-repo/org/smali/smali/debian/smali-debian.jar \
     org.jf.smali.Main assemble /tmp/v113/smalidec/smali -o /tmp/classes_new.dex
# 2) 替换进原 APK（rebuild.py：逐条 raw copy，compresslevel=1 快 3 倍）
python3 /tmp/rebuild_v119fix.py
# 3) 对齐 + 签名（证书 = debug.keystore.bak，指纹 d6d886f1）
zipalign -f -p 4 /tmp/v119fix_unsigned.apk /tmp/f8_aligned.apk
apksigner sign --ks '/sdcard/GLG/历史23/debug.keystore.bak' --ks-key-alias androiddebugkey \
     --ks-pass pass:android --key-pass pass:android \
     --out '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119fixN.apk' /tmp/f8_aligned.apk
# 4) 装机 + 启动验证
cp <apk> /data/local/tmp/g.apk && pm install -r /data/local/tmp/g.apk && am start -n age.of.history3.qiamxi.zhiri/aoc.kingdoms.lukasz.jakowski.AndroidLauncher
```
**要点**：① 防线上新（CheckUndef 等）与新 dex 汇编并行跑；② 签名必须复现 d6d886f1（v79 证书续用），否则覆盖安装失败要卸载重装；③ 每版产物归档到 /sdcard/GLG/历史23/build_apk/dbg_signed77_v119fixN.apk。

### 23.9 对该包（AoH3 改版）架构的理解沉淀（v119 dex 实证）
- **MenuManager**：菜单中枢。`update()` 每帧；`hideMenus_RecruitArmy:17713`（getVisible→setVisible(false)，"若可见则隐藏"无守卫）；`rebuildInGame_ProvinceArmy(ZZ):30200` 统一管理军队栏三件套；`setVisibleInGame_ProvinceArmy(Z):40161` 定义处（全库 8 个调用点）。
- **InGame_ProvinceArmy**：军队栏本体。`draw():3057` 内 595 区（activeArmySize!=0 → 排队 $8 隐藏；==0 且 iActiveID 越界 → 重置+$9 重建）；`actionCloseMenu:3051`（clearActiveArmy+sv false）；关键字段 iActiveID/iProvinceID。
- **ProvinceArmyUnits**：军队行（战斗机行）构建（探针 um:larmy 所在地）。
- **AirForceManager**：单例 `getInstance()`；字段 `selectedAirportProvinceID`（机场选中省 ID：空军场景 >=0，陆军 -1/实例空）——第八道防线与 $23 守卫的判断依据。
- **Game / GameThread_Update**：`updateSimpleTask():19978` 消费 `ConcurrentLinkedDeque<SimpleTask>`；SimpleTask 匿名类分层：Game$1/$2（=updateActiveArmy_MoveUnits 方法引用）、**Game$X 任意匿名任务**（如 InGame_ProvinceArmy$8 隐藏、$9 重建）；`activeArmySize`（当前军队数，空军师也计入）；空军师 key 前缀 `airhq_`。
- **AirMission.update():2359**：每帧刷 um_enter（烟雾弹源）；任务状态机 PLANNING(0)→EN_ROUTE(1)→EXECUTING(2)→RETURNING(3)→COMPLETED(4)。
- **GameActiveProvince:1550**：getActiveDivKey（v73 TAPG 修复点，本轮基线确认仍在）。
- **ProvinceTouchExtraAction$23**：$23 守卫所在（机场省点击链 extraAction）。

### 23.10 工具链更新（固化清单）
- 防线七件套代码：工作区 `/sdcard/GLG/历史23/toolchain/verify_dex/`（CheckInvoke/CheckRegs/CheckInit/CheckSig/CheckRange/CheckCast/CheckUndef + run_verify.sh 一键）；容器副本 /tmp/verify_dex/。
- **CheckUndef 设计历程**（第七道防线）：v1 线性扫描 545 误报 → v2 CFG must-defined 数据流（块化+前驱+交集传播+try handler=params）480 误报 → 关键修正 3 点：① dex 参数寄存器在**最高编号**（registerCount-total+i）非从 0 起；② getCodeOffset() 返回**相对偏移**须 +addr；③ SwitchPayload.getSwitchElements() 取 offset、handler 块 in=params → **定稿「全局 never-defined 简化版」0 误报**（15 条全为 mozilla/universalchardet 等第三方库，改动类 0 条）。
- 探针基建：AirDbgLog.dKey(key,value) 写 airdbg_key.txt；dbgCaller（Throwable 栈 caller/frame3/frame4）；st:cls（getClass().getName）。
- **证据链**：airdbg_key.txt（基线行号法抓增量）＋ logcat（FATAL/VerifyError/dropbox data_app_crash）。

### 23.11 探针矩阵（v119 最终清单）
| 探针 | 位置 | 含义 |
|---|---|---|
| f6sz= | actionUp_SetActiveArmy 链 | 用户点军队（选中链） |
| rpz:vis/hid | rebuildInGame_ProvinceArmy 入口 | 重建/隐藏触发器 |
| um:larmy | ProvinceArmyUnits 构建 | 军队行（战斗机行）渲染 |
| um_mvsw | 任务移动 | 空军师任务移动事件 |
| um_enter | AirMission.update | 每帧刷屏（烟雾弹，勿用于时序） |
| ub:cond5 | $23 隐藏条件 | size<=0 隐藏 |
| ub:afg2hid | $23 守卫路径 | 守卫是否放行隐藏 |
| sv= / svHide | setVisibleInGame_ProvinceArmy 定义处 | 最终显示状态 + caller 栈(caller/frame3/frame4) |
| spid= | setActiveProvinceID | 清选省 |
| afp:st / afp:offm | AFKeep 状态探针 | 空军面板状态（sel/mode/ahp） |
| AFDIV:picked | 空军师选中 | 选中空军师 |
| st:cls= | Game.updateSimpleTask | 当前执行 SimpleTask 类名（匿名类点名） |

### 23.12 遗留与下一步
- **M0-1 主线（未开工）**：《飞机师移动系统重构计划书_v0.1_套皮陆军式.md》——newMove 放行 airhq_ → MoveUnits（空军师移动与陆军完全一致，废除 AirMission 任务状态机驱动）。本专案为其最小前置（军队栏显示稳定是移动重构的基础）。
- **探针清理/降频**：um_enter/afd:in/um_all 每帧刷屏（airdbg_key.txt 已 60MB/530 万行）——建议状态变化才打点，或编译开关关闭；svHide/st:cls 建议保留为回归探针。
- **§22.5 旧构建流（apktool 全量）**：已被 23.8 快速管线取代，仅作历史参考。
- **CheckUndef v3 展望**：CFG 真数据流实现在真实工程误报极多（switch/handler/寄存器别名），若需精确版须完成「类型传播+别名分析」，当前 0 误报简化版已够用。

---

## 24 空军基础属性专案（A 属性生效化 + C 数值校准 + E 代际体系）（2026-09-02 立项）
> ⚠️ **空战机制重做专案已另立文档**：《空军空战机制重做专案_设计v1.md》（推倒重做：P1 实时化+公式化 → P2 拦截任务 → P3 巡逻/护航/制空+敌AI；**燃油属性逻辑层废除**，航程 CombatRadius 覆盖）。§24 的 A1-A8 为属性层方案，空战行为层以该文档为准。（A 属性生效化 + C 数值校准 + E 代际体系）（2026-09-02 立项）
> 决策记录（用户拍板）：做 **A（属性生效化）** + **C（数值校准）** + **E（代际体系）**；**D（机型扩充 AWACS/EW）不做**；**B（UI 属性显示）已实现**（机库/面板已有，本轮不动）。
> 调研依据：2026-09-02 属性现状调研（见 24.2）+ `ICBM_空军数据调研报告.md`（飞机属性/代际原文）。

### 24.1 背景：属性系统「骨架全、半身瘫」
- **已有**：`game/AirUnit/AircraftTypes.json`（4 机型 × 19 字段）+ `AirUnit` 全字段注入（AircraftDataManager.applyType）+ 空战/对地结算骨架 + 机场生产队列（Airport.startBuild/updateBuild）+ 工期（ConstructionTime 已用）。
- **问题（实证）**：① Agility/Stealth/Ecm **0 使用**；② Defense 空战不参与；③ FuelConsumption 油耗永不减少；④ Speed 无使用点；⑤ CostGold 生产不扣钱；⑥ RequiredTechID 无科技门控；⑦ 数值与 ICBM 原文量级脱节（CombatRadius 400-800 vs ICBM Range 2400-6000km 语境）。

### 24.2 现状全景（2026-09-02 dex 实证）
| 属性 | JSON | 注入 | 使用点 | 状态 |
|---|---|---|---|---|
| AirAttack | ✓ | ✓ | airCombatOne:242/270（hp -= 对方×0.5） | ✅ |
| GroundAttack | ✓ | ✓ | AirMission:1206（damage+=）+payload 消耗 | ✅ |
| maxHp/hp | ✓ | ✓ | 空战扣血 | ✅ |
| Defense | ✓ | ✓ | — | ❌ 未接入 |
| Agility | ✓ | ✓ | — | ❌ 0 使用 |
| Stealth | ✓ | ✓ | — | ❌ 0 使用 |
| Ecm | ✓ | ✓ | — | ❌ 0 使用 |
| Speed | ✓ | ✓ | —（移动=任务状态机插值） | ✅ 已接入（R4c118：进度 ×800/speed） |
| CombatRadius | ✓ | ✓ | AFM:~1845 航程检查；ProvinceDraw:991 画圈 | ✅ |
| RadarRange | ✓ | ✓ | AFM:197；ProvinceDrawArmy:6320/6361 画圈 | ✅ |
| MaxFuel/fuel | ✓ | ✓ | AirMission:1489/2745 | ✅ |
| FuelConsumption | ✓ | ✓ | — | ❌ 0 使用 |
| MaxPayload/currentPayload | ✓ | ✓ | AirMission 投弹递减 | ✅ |
| CostGold | ✓ | — | — | ❌ 生产不扣钱 |
| ConstructionTime | ✓ | — | Airport.getBuildTime | ✅ |
| RequiredTechID | ✓ | — | — | ❌ 无门控 |
- 结算方法锚点：空战=`AirForceManager.airCombatOne(Airport,AirUnit,I)`（AFM:146-298）；对地=`AirMission` 打击段（:~1200）；生产=`Airport.startBuild`（:385）。

### 24.3 C 数值校准（先做，独立低风险）
**原则**：以 ICBM 原文为基准重排 4 机型数值；先定「游戏单位换算」再改数（CombatRadius/RadarRange/Speed 的游戏内实际单位须实测：一次任务里 400 半径 = 几个省距）。
**ICBM 参考（Units.txt 实证）**：Fighter Speed700/Range2400/Power0.65；Attack Speed650/Range2200；Bomber Speed400/Range6000/Power2（CanCrossBorderDuringPeaceTime No）；Interceptor Speed1200/Range3000/MaxAutoEngageRange3000（CanPatrolPoint）；改进后（Gen4）Speed1000/Range3750/Power1.2/Size0.03。
**校准目标（草案，待单元换算定稿后微调）**：
- Speed：拦截 1000+ > 战斗机 700 > 攻击 650 > 轰炸 400（km/h 语境）
- CombatRadius（航程）：轰炸 2500 > 拦截 1500 > 战斗机 1200 > 攻击 1000（量级对齐 ICBM Range，换算后按游戏单位缩放）
- AirAttack/GroundAttack 比例：拦截全空（GroundAttack0）、战斗机 5/25、攻击 30/10、轰炸 60/4（ICBM Power 语境：Power=主责输出）
- MaxFuel/FuelConsumption：轰炸续航最长；拦截油耗最高（Speed 快）——按 ICBM Range/耗油常识成比例
- CostGold：轰炸 500 > 攻击 320 > 战斗机 260 > 拦截 200

### 24.4 A 属性生效化（核心工程，7 个子项）
| 子项 | 属性 | 接入点 | 设计公式（草案） |
|---|---|---|---|
| A1 | Defense | airCombatOne | 减伤：hp -= 对方 airAttack×0.5×(1 - defense/(defense+40))——防高者耐揍 |
| A2 | Agility | airCombatOne | 命中修正：击落伤害乘 (0.8 + 0.4×agility)；或闪避=agility×5% 免伤 |
| A3 | Stealth | airCombatOne + 发现链 | 先手/未被锁定：stealth 高者对方伤害×(1-stealth) 或雷达发现距离缩短 |
| A4 | Ecm | airCombatOne | 干扰：对方命中×（1 - ecm×3），上限 -30% |
| A5 | FuelConsumption | AirMission 飞行段（EN_ROUTE/RETURNING） | 每帧 fuel -= fuelConsumption×dt；耗尽 → 立即返航/坠毁（先做返航） |
| A6 | Speed | AirMission 移动插值 | 飞行进度速率乘以 Speed/基准（800），速度属性真实影响移动时间。**✅ 已实施（R4c118，2026-09-12）** |
| A7 | CostGold | Airport.startBuild | 生产前扣金（CFG.gold 相关），金不足拒绝；退回逻辑 cancelBuild |
| A8 | RequiredTechID | Airport.startBuild | 生产前查科技（hasTech/省 civ tech），未研发拒绝（UI 置灰可后补） |
**注意**：A1-A4 必须**对称生效**（敌方拦截我方机同样走 airCombatOne 双方循环——确认当前是否单向（§22.4 N5 敌机对称问题联动），一次性修掉。
**顺序**：先 A1+A2（空战核心，最容易验证）→ A5+A6（燃油/速度，移动体验）→ A7+A8（经济/科技门控）→ A3+A4（隐身/电子战，最后做平衡）。

### 24.5 E 代际体系（ICBM ImprovedBy 蓝本）
- **ICBM 原文机制**：同一 UNIT 用 `ImprovedBy \"Generation_N_Aircraft\" { Set Speed/Range/Power/Size ... Config ... }` 逐代覆盖，一个机型承载 6 代（Units.txt:277-292 实例：Gen4 Set Size0.03/Speed1000/Range3750/Power1.2 + Config 升级 AAM 8 发 Launch2）。
- **本 Mod 落地设计（简化但保留语义）**：
  1. `AircraftTypes.json` 每机型增加 `Generations` 数组（Gen1..Gen6：每代覆盖 Speed/CombatRadius/AirAttack/GroundAttack/Defense/Ecm/Stealth/MaxFuel/MaxPayload + `RequiredTechID` 逐代递增）——或独立 `AircraftGenerations.json` 按 (机型ID, genID) 索引；
  2. `applyType` 升级：按**当前国家已研发的最高代际**（查 RequiredTechID 对应的科技）取该代数值注入 AirUnit；
  3. 代际门控与 A8 共用科技检查；已出厂旧机不变（出厂时注入定格），新机按新代际；
  4. 战斗/飞行公式（24.4）全部按注入值跑，代际差异自动生效。
- **代际曲线（草案）**：Gen1=基准（24.3 校准值），每代攻击/防御 ×1.15，Speed/Range ×1.08，Ecm/Stealth 递增（Gen6≈×1.75 攻击 / ×1.5 航程）——具体倍数在实现时按 ICBM Gen4 实测值（Power0.65→1.2≈×1.85）对齐。
- **科技映射**：Gen_N 绑定现有科技树（RequiredTechID 逐代+1 或指定科技 ID），未研发时代只能造 Gen1。

### 24.6 实施步骤详解（M0 → M6，每步"干嘛/改哪/怎么验"）

**总览**：M0 定标（单位换算）→ M1 校准数值（C）→ M2 空战攻防（A1+A2）→ M3 油耗速度（A5+A6）→ M4 经济科技门控（A7+A8）→ M5 隐身电子战（A3+A4）→ M6 代际体系（E）。M1-M5 逐步让"19 个属性全部真的起作用"，M6 让属性可以"随时代升级"。每步独立可测、可回退（纯数值改动与公式改动分开，互不粘连）。

---

**M0：游戏单位换算定标（前置，不改游戏逻辑）**
- **干嘛**：先搞清楚「CombatRadius=400、Speed=800」在游戏里到底等于"多远的几个省""飞完要多长时间"。这决定 C（数值校准）该把 JSON 改成多少——不测就改等于拍脑袋。
- **改哪/怎么做**：
  ① 航程：读 `AirForceManager` ~1845 附近的航程检查（isInRange 类逻辑）——它拿"机场省到目标省的距离"与 combatRadius 比较。实测法：把 combatRadius 临时改成 50/100/200/400 各测一次，记录"能点到多远的敌省"，得出 1 单位半径 ≈ N 个省级距离（例如竞技高）。
  ② 速度：读 `AirMission` 移动插值段（flightProgress 推进），查推进速率与 speed 有无关系；用固定航线计时（战斗机 vs 轰炸机任务到达时间差）反推速度单位。
- **产出**：一张"游戏单位 ↔ km 换算表"（如：1 CombatRadius 单位 ≈ 0.35 km/省；Speed 1000 ≈ 70 秒/航线），写入 24.3 供 M1 使用。

---

**M1：C 数值校准（只改 JSON，不动代码）**
- **干嘛**：按 ICBM 原文量级重排 `game/AirUnit/AircraftTypes.json` 的 4 机型数值（Speed/CombatRadius/攻防比/燃油/造价），把"拍脑袋数"换成"ICBM 校准数"。这是最安全的一步：纯数据、改坏了随时改回来。
- **改哪**：`/tmp/w3/assets/game/AirUnit/AircraftTypes.json`（4 个机型条目的 Speed/CombatRadius/AirAttack/GroundAttack/Defense/Agility/MaxFuel/FuelConsumption/CostGold 等），数值按 24.3 目标表 + M0 换算表修正。
- **怎么验**：进游戏造 4 种机各 1 架 → 看机库面板数值（B 已实现）→ 派一次巡逻/打击确认航程圈（ProvinceDraw 画圈大小变化）→ 对地打击伤害量变化（AirMission:1206 groundAttack 生效）。回归：军队栏/任务/巡逻无异常。

---

**M2：A1+A2 空战攻防生效（Defense 减伤 + Agility 命中）**
- **干嘛**：让空战结算 `airCombatOne` 里"防御"和"敏捷"真的参与计算——目前双方互轰固定伤害（hp -= 对方 airAttack×0.5），防御/敏捷完全被无视。改完后：防高者耐揍、敏捷高者难被打中。
- **改哪**：`AirForceManager.smali` `airCombatOne`（:146-298），两处互轰公式：
  - Defense：`hp -= 对方 airAttack × 0.5 × (1 - defense/(defense+40))`（防 40=减伤 50% 封顶项，常数可调）；
  - Agility：伤害再乘 `(0.8 + 0.4×agility)`（攻方敏捷提升击打效率），或改为"守方闪避：agility×5% 概率免伤"（二选一，实现时拍板，推荐前者简单可测）。
- **顺带（联动 N5）**：确认 airCombatOne 双方循环对等（当前疑单向取单机场第 0 架取样 + recordKill 无调用者）→ 一并修正为"双方机场各出动拦截机对轰"。
- **怎么验**：新增探针 `afp:atk`（打点：攻/防/伤/存活）；人为把一架机 defense 拉到 999、另一架 0，对轰样本对比；双方对称样本（我方打敌机 & 敌机打我方机都走同一公式）。

---

**M3：A5+A6 油耗与速度生效（燃油递减 + 速度影响移动）**
- **干嘛**：现在飞机**永不缺油、快慢一样**（FuelConsumption 0 使用；**Speed 已由 R4c118 接入**、燃油待做）。改完：燃油按飞行递减、耗尽自动返航（护城河式伪真实），速度影响任务到达时间（快机先到）。
- **改哪**：`AirMission.smali` 飞行段（EN_ROUTE / RETURNING 进度推进处）：
  - 燃油：`fuel -= fuelConsumption × dt`（每帧），`fuel <= 0` → 强制进入 RETURNING（返航，先不做坠毁）；
  - 速度：飞行进度推进速率 `× (speed / 基准800)`，即 speed 越大越快到达；同时实际单页消耗对应减少（快机耗油量平衡）。
- **怎么验**：派超长航线（接近 combatRadius 上限）观察飞行中油量递减日志（探针 `um:fuel`）；油尽机自动返航；同航线战斗机（speed 600→校准后 700）比轰炸机（400）先到。

---

**M4：A7+A8 经济与科技门控（生产扣金 + 科技门槛）**
- **干嘛**：现在造飞机**不要钱、不看时代**（CostGold/RequiredTechID 纯摆设）。改完：造一架扣一架的钱、钱不够拒绝造；没研发对应科技不能造（UI 可后补置灰）。
- **改哪**：`Airport.smali` `startBuild`（:385 开头）：
  - 扣金：生产前读国家金钱（实现时确认字段：Game.gold / CFG 金钱），`gold >= CostGold` 才入队并扣款；`cancelBuild` 时退款；
  - 科技：`RequiredTechID` 查 civ 科技树（Game.getTech / hasTech 类）——未研发 → 不入队返回 false（调用侧 UI 提示）。
- **怎么验**：正常造机看金钱减少；把金钱改到不足 → 拒绝（无扣款）；未研发科技的机型（把 RequiredTechID 临时改成 999）→ 拒绝。

---

**M5：A3+A4 隐身与电子战生效（Stealth 发现 + Ecm 干扰）**
- **干嘛**：Stealth/Ecm 目前 0 使用。改完：隐身机更难被发现/锁定，ECM 机能干扰敌方命中——最"花哨"的两属性留到最后做（调平衡容易出戏）。
- **改哪**：`airCombatOne` + 发现链（雷达圈/锁定判断处，ProvinceDrawArmy:6320 雷达半径绘制）：
  - Stealth：敌方对我方伤害 `× (1 - stealth)`（上限 -30%），或"被发现距离 = radarRange × (1 - stealth)"（实现二选一，推荐前者简单）；
  - Ecm：敌方对我方命中 `× (1 - ecm × 3)`，封顶 -30%。
- **怎么验**：隐身机（stealth 0.15）vs 无隐身机对轰存活率对比；ECM 机（0.1）受击率对比；探针 `afp:atk` 看伤害分布。

---

**M6：E 代际体系（Gen1→Gen6 属性随时代升级）**
- **干嘛**：让一个机型能"换代"——ICBM 是以 ImprovedBy 让同一 UNIT 承载 6 代（Gen4 实例：Speed 700→1000、Range 2400→3750、Power 0.65→1.2）。我们目前只有一代数值。改完：研发新一代科技后，新造的飞机属性更强，代际差距自动体现在 M2-M5 的所有公式里。
- **改哪**：
  ① 数据：`AircraftTypes.json` 每机型加 `Generations` 数组（Gen1..Gen6：覆盖 Speed/CombatRadius/攻/防/Sealth/Ecm/燃油 + 每代 RequiredTechID 递增）——或独立 `AircraftGenerations.json`（按 机型ID+genID 索引，二选一，推荐后者不动原结构）；
  ② 逻辑：`AircraftDataManager.applyType` 升级——按**当前国家已研发的最高代际**（查 RequiredTechID 科技）取代数值注入 AirUnit；
  ③ 兼容：AirUnit 加 `genID` 字段，旧存档 load 缺省 = Gen1（LoadSavedGameManager 兼容）；已出厂旧机注入值定格不变，新机按新代际。
- **怎么验**：研发 Gen2 科技 → 新造机属性提升（机库/探针值）；旧机面板不变；未研发 Gen3 → 造不出 Gen3；存档读旧档不崩。

---

### 24.7 风险与防线
- Verify 风险：airCombatOne/AirMission 公式改动沿用**纯顺序流**（禁新分支标签，教训㊿）；改后必跑 verify_dex 七件套 + 真机复现路径。
- 数值平衡：每里程碑跑「对空/对地实战样本」记录（探针 afd 系列），数值偏斜由 24.3 校准表回调。
- 存档兼容：AirUnit 已有字段全保留，仅新增代际字段（GenID），旧存档 load 时缺省=Gen1（LoadSavedGameManager 兼容处理）。
- 回归探针：svHide / st:cls 保留；新增 `afp:atk`（空战结算打点：攻/防/伤）供 M2 验证。

### 24.8 验收标准（整体）
1. 4 机型数值与 ICBM 量级一致（换算表标注）；
2. 空战：高防/高敏捷/隐身/ECM 单位可感知优势（实测样本）；双方对称；
3. 燃油不足自动返航、速度影响到达时间；
4. 生产扣金+科技门控生效；
5. 代际升级后新机属性提升、旧机不变；
6. 军队栏/任务/打击/巡逻全回归（v119fix8 基线无回退）。

### 24.9 联动待办
- §22.4 **N5 敌机对称**：A1-A4 实施时一并处理（airCombatOne 双方循环 + recordKill 调用审计）。


---

# 25. 雷达体系 R1-R4 全链闭环登记（2026-09-06，装机基线 dbg_signed77_v119_R4c57）

> 雷达体系（机场圈+三建筑圈+位图法域融合+敌方隐藏）已全部落地，属主文档《雷达体系基础计划书_v1.md》（第 13 章攻坚全纪实+㊿43-50 八条新教训）。
> R4 剩余：R4b（D7 几何 km 化，后置）；R4c 位图法可选项（截断比例/多 pass）。
> 空战专案 P2（威胁判定）将消费本体系（radarProvinces/isEnemyProvince/RadarBitmap）。



## 25.1 续：雷达迷雾专案（R4c71→R4c84，2026-09-07）
> 雷达=开战争迷雾已落地（详见《雷达体系基础计划书_v1.md》第 15 章）：
> - R4c73 雾机制挂接（fogRefresh/fogFromRadar）→ R4c80 时序修复（挂 RadarBitmap.refresh 末尾）→ R4c81 师显示修复（Game.updateDrawArmy）→ R4c83 探测=绘制（÷iMapScale 根因）→ R4c84 高纬椭圆判定（calcCosK/calcInEllipse，待装机验证）。
> - 新教训 ㊿52-㊿59（探针位置/寄存器覆盖/alpha=浓度/纹理本色/坐标三态/时序挂点/绘制刷新/内容定位插桩）。
> - 关键决策：A 方案（迷雾=显示圈）；飞机盘不并入位图；迷雾开关跟随游戏设置；三圈统一 D7 椭圆+亮蓝。
> - R4c84 验证点：高纬椭圆消雾、赤道≈圆、圈内迷雾消除+师可见。


## 25.2 雷达迷雾闭环达成（2026-09-07，R4c85 验收✅）
> 雷达=开战争迷雾全链闭环（详见《雷达体系基础计划书_v1.md》第 15 章）：探测/显示/开图三合一几何同源（D7 椭圆 calcInEllipse = 绘制圈 = 迷雾范围）。R4c84→85 修复 4 处（v12 未定义/dxdy 缺失/civID 被覆盖/公式反向），教训 ㊿60-65。
> 后续消费：P2 威胁判定（雷达探测敌军）可直接复用 calcInEllipse + radarProvinces + fogFromAirports。


# 26. 空战专案推进登记（2026-09-07，R4c71→R4c86 + 空战设计 v2 定稿）

## 26.1 进度总表（本批）
| 项 | 状态 | 详档 |
|---|---|---|
| 雷达迷雾（圈内消雾+师可见） | ✅ 闭环（R4c73→R4c85 装机验收） | 雷达计划书 第15章 |
| 探测=绘制几何同源（D7 椭圆 calcInEllipse） | ✅ R4c85 | 雷达计划书 15.5-15.6/15.12 |
| 师 HP 池 + 9 档环 + xN/M 显示 | ✅ R6-6a（R4c86 验收） | 空战设计v2 9.6/12章 |
| 空战机制设计 v2 | ✅ 定稿（16 章：全链设计/ICBM 对标/限制体系） | 《空战重做专案_设计v2.md》 |
| 滞空/追击限制（目标制+弹药+兜底） | ✅ 设计定稿（对标 ICBM） | 设计v2 16.7 |
| R6-6b-A（探测+预警：敌机进圈→探针） | ✅ R4c87 验收（nDR_DET civ=8 prov=1375 type=radar） | 设计v2 21章 |
| R6-6b-B/C/D（自动起飞/师池对轰/导弹动画） | 📋 待启动 | 设计v2 19-20章 |

## 26.2 新教训登记（㊿52-㊿70，共 19 条）
> 详细版见《雷达体系基础计划书_v1.md》15.7/15.11（㊿52-65）与《空战重做专案_设计v2.md》12.3（㊿66-70）
- ㊿52 探针块放标签之后（goto 全跳过标签前指令=静默失效）
- ㊿53 探针寄存器不得覆盖后续仍用寄存器（v0=Set 被毁→iterator 对 String 调用）
- ㊿54 alpha=浓度（加深/减淡），亮度=RGB（用户纠错）
- ㊿55 纹理本色 vs setColor 乘色 vs Pixmap 填充色——三处同步（机场圈被坑 2 轮）
- ㊿56 坐标三态（真实/屏幕/绘制半径）——判定漏 ÷iMapScale=探测圈×4（最大根因）
- ㊿57 挂点选“数据就绪点”非“启动点”（rps=0 时序坑）
- ㊿58 setFogDrawArmy ≠ 画面刷新（须 Game.updateDrawArmy()）
- ㊿59 探针插入禁用硬编码行号（多次叠加漂移；用内容定位+计数核对）
- ㊿60 新方法调用前参数寄存器全定义审计
- ㊿61 循环长存变量（civID）与临时值（cosK）不得共寄存器
- ㊿62 判定段替换保留原语义（坐标差 vs 绝对坐标）
- ㊿63 数学公式极端值手算校验（R² 乘 cos² 是反向错）
- ㊿64 补丁脚本 strip 比较：模式字符串也要 strip
- ㊿65 smali 汇编器启动：java -cp ... org.jf.smali.Main（java -jar 不行）
- ㊿66 回边 join 类型流：改寄存器类型=新建独立方法
- ㊿67 行段替换边界：endidx 首个匹配可能吞必要行（锚点+尾行双重确认）
- ㊿68 替换段必须重放标签行（:goto_122 被吞→goto 悬空，汇编器不报=静默风险）
- ㊿69 分支逻辑反写（if-gez 方向）——写前口语化验证
- ㊿70 helper 多出口路径逐路径核对返回寄存器定义
- ㊿71 挂点选型必须运行时验证（AA_Game.render 才是真·每帧；RealTimeSim.updateFrame 仅 RendererGame$3 调）
- ㊿72 接口字段懒初始化：字段用具体类（HashSet）防 verifier join 成 Object；if 跳转方向写前口语化
- ㊿73 寄存器预算先行：smali 汇编器 v0-v15 硬限制，超限即拆 helper
- ㊿74 双通道探针：enter(logOnce→tick) 分离"没执行/没命中"

## 26.3 当前状态与下一步
- **装机基线**：dbg_signed77_v119_R4c86（HP 池显示层 ✅）
- **下一步 R6-6b**：①探测钩子（敌师进我方雷达圈→触发）②自动起飞拦截（createIntercept+最近机场+防重）③师池对轰（airCombatOne 签名扩展+扣池+等效损失+返航补池）④验收链路
- 衔接：R6-4/5 机炮/导弹武器（2发→4发代际）；M2-A/E 代际升级载体（AAM 对齐）


# 27. R6-6b 空战专案推进登记之二（2026-09-10，R4c87→R4c96）
## 27.1 进度总表（更新）
| 项 | 状态 | 详档 |
|---|---|---|
| 探测+预警（A 包） | ✅ R4c87 验收 | 设计v2 21 章 |
| 自动起飞拦截（B 包） | ✅ R4c87H/J/K 验收（另修：选机场方向/迭代器/两次“拦一次不来”）| 设计v2 27-29 章 |
| **师池对轰结算（C1）** | ✅✅ **2026-09-10 R4c96 完整闭环验收** | 设计v2 30-47 章 |
| 机炮测试效果（C2） | ✅ R4c98 验收（橙色闪光 + nGX shot 对账）| 设计v2 48 章 |
| 导弹动画（D 包） | 📋 待启动（依赖 R6-4/5） | 设计v2 18/19 章 |
| 返航时长方案 A/B/C | 📋 待拍板 | 设计v2 30/44 章 |
| 空军师不参陆战（拦截器） | ✅ R4c87W/X（startBattle/joinBattle 双口拦截）| 设计v2 42 章 |

## 27.2 C1 验收证据（R4c96 探针全链）
```
① nDSPT0 prov=2100 → nDR_DSPT ok k=airhq_73_2353_0_1
② nTRK upd ×4（追击目标随敌机换省更新）
③ 同省接战：nAC hit my=60.0 e=3.0 ep=0.0 mp=13.0
④ 击落：nAC kill k=1/2/3（敌机全灭）
⑤ 返航：nRT sw at=2333 src=2353 tgt=2333 ap=2353
⑥ 归位：nRH at=2333 src=2353 ap=2353
⑦ 修复：nRP n=1
```
完整链路：探测→调度→起飞→跟踪（跟随换省）→接战→扣池→击落→返航→归位→修复。

## 27.3 本轮教训汇总（㊿93-㊿103，条件跳转专题集中爆发）
> 本轮 R4c90→R4c96 集中修掉 **10 处条件反向/寄存器问题**；“同省能打”的巧合长期掩盖追踪链断裂。
| 编号 | 教训 |
|---|---|
| ㊿93 | **if-ltz=“<0 跳”/if-gez=“>=0 跳”**——同一坑累计 6+ 次（throttlePass→selend→updateAnimClock→nMD→airCombatTick→calculateDistance）|
| ㊿94 | invoke 传 long/double 必须列 **2 个连续寄存器**（wide 对）|
| ㊿95 | 实例方法 p0=v(N-1)；新局部寄存器优先扩 `.registers`（第二次踩）|
| ㊿96 | verify_dex 防线不覆盖 ART 全部规则（v16/wide对/p0被覆盖均漏）→ **每次装机先启动验证** |
| ㊿97 | 探针要能区分调用点（多调用点带来源标记）|
| ㊿98 | 加探针前先画“**寄存器活跃区间**”（v0 长活被探针毁）|
| ㊿99 | 条件跳转补丁改完必须**真值表回放全部路径** |
| ㊿100 | 探针标签**不要放方法尾部**（catch 路径流入→寄存器 Undefined）|
| ㊿101 | 热方法里的探针字符串拼接**一律抽成静态 helper**（一条 invoke）|
| ㊿102 | **“语义→真值表→指令”三步法 + 写完 grep 全量复核**（本轮一次错 3~6 处）|
| ㊿103 | **`if-eq`/`if-ne` 方向须“正例+反例”双回放（㊿93 家族再犯）**——R4c110 色环判定写反（“非我方→蓝／我方→isAlly(自身)=真→绿，红不可达”，实测才暴露）；涉“相等→A、不等→B”逻辑，落笔后必须两种输入各回放一遍 |
| ㊿104 | **短路“功能”必须核对其返回值的一切消费点**——①drawAirDivisions 短路返回 0，而调用方门控是 `if-nez`（非 0 才跳过）→0 **反向放行**⑤“类型汇总”（=用户所见“省份贴图没删干净”的真因）；R4c116 改返回 1 关闭。落笔前把“读该返回值”的条件按真值表回放（㊿103 同族）。|
| ㊿105 | **删/改任何贴图与视觉元素前，先查《工作进度.md》“省份空军图标对照表”**——R4c115 误删 `airUnit`（飞机场建筑图标）的教训；对照表=①飞机场/②反导/③长波雷达/④雷达/⑤飞机（省图标）。|
| ㊿106 | **症状归因改动前，先做“改动面↔症状面”因果核查；回滚前先验证“该改动是否真的触及症状链”**——本轮“建筑列表空”被归因 R4c124 并回滚，但三版 Buildings.json 完全一致、R4c124 仅动 AFM ⇒ 因果不成立；真因=R4c126（qianxi Details 缺 `CivDefault_Technology`→0→零科技→建筑全锁）。|
| ㊿107 | **状态探针必须打在“该状态的最终唯一写入点”**——本轮探针打在 `setFogOfWar`（有去重的主路），但灭/亮实际走 `Province.setFogDrawArmy` 直写 ⇒ `FOG_CHG=0` 假阴性。落钩前先定位“谁最后写这个状态”。|
| ㊿108 | **数据/配置“缺字段”≠“不生效”**——gdx 缺 int=0，而 0 常是有效值（qianxi 科技=0→全锁建筑）；写 scenario/config 时要么显式给值，要么核对代码对“0/缺省”的分支语义（要“不处理”应显式 -1）。|
| ㊿109 | **给贴图接入旋转前，先查“所用绘制方法”的旋转锚点**——本引擎 `drawFull` 锚点＝左上角(0,0)、`drawRot` 锚点＝中心；“原地转”必须用中心锚点（本次新增 `drawFullCenter`）。案例：R4c132b 偏心修复。|
| ㊿110 | **外观依赖素材原生朝向时：先例公式＋一处校准常量＋探针**——θ=atan2(dy,dx) 先例（箭头已验）→ `HDG_OFF` 单常量迭代（+180→镜像→定案 R=180°−θ）；配 `nHdg` 探针，一次目测收敛。|

## 27.4 方法论沉淀（本轮新增，后续包强制适用）
1. **条件跳转三步法**：写前口语化（“相等才命中”等）→ 真值表 → 指令；写完 `grep 'if-'` 全量复核
2. **比较双方防覆盖**：cmp 前确认两边寄存器没有被中途覆盖（如 v6 被 m.missionID 覆盖）
3. **getProvince 前置校验**：ID≥0 才调用（越界直接抛异常，不是返回 null）
4. **写入点审计**：给某状态设计的“一次性设置”，必须审计所有后续帧会改写它的路径
5. **探针三铁律**：热方法只传参给 helper；标签不落方法尾；多调用点带来源标记
6. **C1 验收最小集**：nDR_DSPT ok / nTRK upd / nAC hit+kill / nRT sw(src=机场) / nRH / 无卡无崩

## 27.5 当前基线
- dbg_signed77_v119_R4c98（724,237,651 B）——**C1 闭环 ✅ + C2 机炮测试效果 ✅**
- 下一步候选：返航时长方案 A/B/C / 导弹系统 R6-4/5 / 空军专有战斗框（设计v2 §35）

## 27.6 C2 机炮测试效果（R4c97→R4c98）
| 项 | 内容 |
|---|---|
| 目标 | “只做测试版机炮效果，旨在辨别飞机使用了机炮”（用户定稿）|
| 视觉 | 橙色闪光块16×16px（开火后250ms，位于图标上方）|
| 数据 | 复用 `airCombatLastMs`（零新逻辑字段；仅新增调试字段 gunFxDbgMs:J）|
| 实现 | 静态 helper `drawAirGunFx(SB,AirMission)` + 每帧循环一行挂点 |
| 双层探针 | `nAC hit`（逻辑层：机炮开火）↔ `nGX shot`（绘制层：效果已画）|
| 验收 | R4c98：nAC hit×1 ↔ nGX shot×1 对账一致；全链追击/击落/返航正常 |

## 27.7 R6-5 导弹系统实施计划就绪（2026-09-11）

- **详档**：《R6-5导弹系统_实施计划书v1.md》（含深度调研/落点/探针/验收）。
- **拍板合并**：1-2 代 0 弹｜3-4 代 2 颗｜5-6 代 4 颗；射程随代际（现 1 跳）；节流=回合制（N=2 回合冷却）；命中=T+1 回合；机炮节流统一为每回合 1 发。
- **关键发现**：全局回合号=`Game_Calendar.TURN_ID`（`GameThread:2239-2243`）；任务节拍 `throttlePass()`=每 `playSpeedTIME` ms 一次 → 墙钟节流受游戏速度影响（实锤）→ 战斗节流全面回合化。
- **拆包**：R6-5a（R4c99）=机炮回合化+导弹逻辑；R6-5b（R4c100）=方块动画。D 包动画依赖本包 → 顺带解锁。
- **探针打点**：9 核心 + 1 可选（标定组 `nT/nD` 先钉死回合语义；逻辑/绘制双层对账）；明细见详档 §六。
- **T0 标定完成 ✅（09-11）**：hpt=2 → 12 回合/天、TURN_ID 为天计数；五档节拍 1000/500/250/125/45ms；时标改用 `totalHours=TURN_ID*24+HOUR`（明细见详档 §3.4/§6.2）。
- **N 调整（09-11）**：导弹冷却 N: 2→6（=12 游戏小时）；R4c99d 验收已过；**R6-5b 复测中**；"卡机场"**修复 R4c102 已装机**（R4c101 探针实证：重定向清零动画→卡首段；修复=不清零，敌机移动期即可跨省追击）。
- **R6-5c（R4c103+R4c104b）已装机**：导弹动画"贴图锚定"（我方贴图→敌机贴图；实时追踪）；R4c104b 修复 VerifyError（独立持有寄存器）；装机验证零警告、冒烟零闪退（2026-09-11），待视觉验收。
- **R6-5d（R4c104→R4c105）导弹射程"距离制"已装机**：邻接跳 → Real 坐标距离 ≤ R（R=100，R4c105 下调；代际空位 `missileRangeForGen`；`fire` 探针带 `d=/r=`）；待实战校准（详档《导弹射程距离制_调研报告v1.md》）。
- **R6-6c（R4c106→R4c107）AI 自动拦截对称化已装机**：`dspCivForce` 覆盖 + `updateAIAutoIntercept` 扫描（防守方=目标省归属国）；R4c107 修复首测发现的派发判定反向；装机 Success + dex2oat 零警告（2026-09-11），待复测。
- **R6-7（R4c108）返航滞停＋零伤轰炸已装机**：`forceReturn` el=0（去 (1-fp) 前跳）＋三处返航切换重置段动画＋`executeAttack` 零伤守卫（根除击杀点幽灵核爆/战报）；八检对照无回归、装机 Success + dex2oat 零警告（2026-09-11），待复测。
- **R6-6c-R2（R4c109）AI 拦截雷达视野约束已装机**：无雷达视野（本国雷达省椭圆＋机场雷达圆，镜像玩家链）即不派发拦截（探针 `nAVS blk`）；八检对照无回归、装机 Success + dex2oat 零警告（2026-09-12），待复测。
- **（R4c110）飞机敌我识别环修复＋扩展已装机**：恒蓝→（我蓝／同阵营绿／敌与别国红）；新素材 `ringAlly.png`＋helper `getRingImageId`（3 处接驳）；八检对照无回归、装机 Success + dex2oat 零警告（2026-09-12），待视觉验收。
- **（R4c111）敌我识别环修正**：判定方向修复（`if-ne`→`if-eq`，纠正"我方绿/其余蓝"倒挂，红环恢复可达）＋环径放大（84→100 / 56→72，居中偏移 -30/-16）；装机 Success + dex2oat 零警告（2026-09-12），待复测。
- **（R4c112）敌我识别环实时性修复**：停放态飞机（无活动任务）曾走"兜底蓝"→ 改为从编队钥匙解析国别（新增 `getKeyCiv`）；全场景实时正确；装机 Success + dex2oat 零警告（2026-09-12），待复测。
- **（R4c113）飞机显示口径调整已装机**：取消驻场显示——`drawAirDivisions` 短路＋`drawAirDivisionAsPlane` 非飞行/无任务不绘制（新出口 `:r4c113_ret`）；“飞机只在飞行中显示”（机场 airUnit 标记保留）；八检对照零新增、724,245,935 B、装机 Success + dex2oat 零警告（2026-09-12），待复测。
- **（R4c114）飞机“静止鬼影”清除已装机**：无有效航段数据（`prev<0`/`prev==at`）→ 不绘制（只保留沿路径飞的显示）；新增 `r114 dr` 采样探针；八检对照零新增、724,245,935 B、装机 Success + dex2oat 零警告（2026-09-12）；复测反馈→R4c115 调整。
- **（R4c115→R4c116）显示收尾**：停放师显示恢复（R4c115）；⚠️误删的①airUnit（飞机场建筑图标）已由 R4c116 恢复；⑤“省图标”（每机型1架，行动时显示）经门控修正（v0=0→1）真正关闭（R4c116）；724,245,935 B、装机 Success + dex2oat 零警告（2026-09-12），待复测。
- **（R4c117）航线箭头已装机**：航线绘制由“5×5 方块线”改为“蓝色箭头串”（airDot 闲置槽注入 + Image.drawRot 绕中心旋转 + drawLinePts 重写；指向=`atan2(dy,dx)−90°`，去/返程自动掉头）；八检零新增、724,245,935 B、装机 Success（2026-09-12 12:18）+ dex2oat 零警告；待视觉验收；🔧 R4c117b：再逆时针 90°；🔧 R4c117c：修正 180°，角度=纯 atan2 定稿（12:51 装机）。
- **（R4c118）speed 接入飞行进度已装机**：新增 `AirMission.getLeadSpeedInt()`（活机首架 speed，缺省 800；探针 `nSpd`）+ 三处基准 ×（800/speed）（任务进度 / 段时长 / 返航前跳）；预期截击×0.8、战×1、攻×1.14、轰×2；八检零回归、724,245,935 B、装机 Success（2026-09-12 13:42）+ dex2oat 零警告；✅ 用户验收通过（同航线机型到达时间差生效）。
- **（R4c119）下达指令不再强制恢复时间已装机**：删除 `AirForceManager` 两处“任务创建后 `play=true`”（省份点击下达 / 开始巡逻）——暂停中下达指令将保持暂停；八检零回归、724,245,935 B、装机 Success（2026-09-12 14:08）+ dex2oat 零警告；待复测。
- **（R4c120）任务时长距离制（方案 A）已装机**：新增 `getSpeedScaleBase()`＝800×clamp(D×1000/300,500,3000)/1000（D=`distanceToTarget`）；3 处基准改为 ×t（先 t 后 spd）；等效时长 ×（0.5~3.0）×(800/speed)；采样探针 `nDsb`；八检零回归、724,245,935 B、装机 Success（2026-09-12 22:00）+ dex2oat 零警告；待复测。
- **（R4c120b）距离源修正已装机**：R4c120 的距离源 `distanceToTarget` 实为旧回合制“到达轮数”（min(像素/5,90) 封顶 → 系数恒 0.5×）；改用 `getAirDistPix()` 原始像素距离 + `800×clamp(P,600,2000)/1000`（0.6~2.0× 首版）；探针 `nDsb2`；八检零回归、装机 Success（2026-09-12 22:47）+ dex2oat 零警告；采样校准中。
- **（R4c120c）宽幅定标已装机**：`800×clamp(2P,600,3000)/1000`（P_ref=500，0.6~2.4×；面向大地图）；八检零回归、装机 Success（2026-09-12 23:28）+ dex2oat 零警告；换图后再采样微调。
- **（R4c121）大地图迁移＋qianxi 移植已装机**：Earth3（18,487 文件）注入、EarthM 与旧存档清除、qianxi 精简场景（图片＋2000 年）；产物 738,345,997 B；装机 Success＋pm clear＋冒烟零崩溃（2026-09-13 00:15）；待验收。
- **（R4c122）大地图移动校准已装机**：nDsb2 实测日常任务系数 0.69~0.74×（偏快）→ `getSpeedScaleBase` 乘数 2→3（P_ref≈333），日常≈1.0×、中长途 1.5~2.4×；八检零回归、738,345,997 B、装机 Success（2026-09-13 00:48，保留数据）+ dex2oat 零警告；✅ 用户验收通过（nDsb2 日常 t=775/878 ≈1.0×）。
- **（R4c123）qianxi 借入国家领土数据已装机**：从 ModernWorld 复制 Data（236 国）/DataProvinces/Characters，Details 补 Civs:236；产物 738,378,861 B；装机 Success（2026-09-13 01:17）+ dex2oat 零警告；需新开一局；待验收。
- **（R4c124）迷雾闪烁修复已装机**：syncRadar 曾每回合无条件 markDirty→fogRefresh（全图重建 ~2 次/秒）；改“集合快照比较”（仅变化才重建）；八检零回归、738,378,861 B、装机 Success（2026-09-13 01:35）+ dex2oat 零警告；待复测（迷雾不再闪）；⚠️后被误回滚（建筑误判），R4c127 重上并验收 ✅。
- **（R4c125）迷雾探针已装机**：玩家首都 FOG_CHG 探针（实测 0 条=落点未中直写路径）；随 R4c126/127 构建保留。
- **（R4c126）建筑列表空修复已装机**：qianxi Details 补 `Age:10`+`CivDefault_Technology:81`（缺→0→零科技锁建筑）；装机 Success（02:23）+ dex 未变。
- **（R4c127）迷雾闪烁修复重上并验收**：syncRadar 快照去重（此前误回滚）；✅ 用户验收通过（“不会闪了”）；装机 Success（02:40）+ md5 `76ccf16b…`。
- **（R4c128）A类三项已装机**：⑦选中循环轮选（同机场点击=切换师）+ ③敌方航线隐藏 + S2越界栈探针（afStkDump 首次全栈）；八检零回归（Cast/Undef 带 target=aoc 校验）；装机 Success（03:44:32）+ md5 `5ee8eb86…`；待复测。
- **（R4c129）师堆叠探针包已装机**：upyPr/upySk/hqP2/pu0/pl0/rhPr/sdPr/tsuP/tsuM + logArmyList 修复（师堆叠专案）；八检零回归；装机 Success（20:20）+ md5 `ef5e3351…`；待复现抓样。
- **（R4c129b）探针包闪退修复**：VerifyError（updateArmyPosY 类型冲突）已修——探针改挂“分支点”；八检零回归；装机 Success（20:36）+ md5 `720083c0…`；启动自验证通过（探针已输出），待复现抓样。
- **（R4c130）“师叠一起”修复（结案）**：根因=dedupAirhqDivision 收回师用 addArmy_Load（不重排）→同槽重叠；修复=收回后补 updateArmyPosY()；自测生效（-16/+18 恢复）；装机 Success + md5 `530b4d39…`；待用户复测。
- **（R4c131）“师叠一起”第二轮·结案**：根因=返航末段 addArmy 重复跳过（出发时幽灵副本）→不重排；修复=移动代码 addArmy 后强制重排；自测旧档恢复 -16/+18；装机 Success + md5 `3271ed09…`；✅ 用户验收通过（2026-09-13）。
- **（R4c132）⑨航向对齐已装机**：calcHeading+HDG_OFF+nHdg；八检零回归；装机 Success + md5 `e337459b…`；待目测校准（偏移常量）。
- **（R4c132b）航向 v2 已装机**：偏心修复（drawFullCenter 中心锚点）+ HDG_OFF=180°；八检零回归；装机 Success + md5 `c022c95f…`；待目测。**运维：装机后不自动启动游戏。**
- **（R4c132c）航向镜像已装机**：角度镜像（R=180−θ）；八检零回归；装机 Success + md5 `32bf994c…`；待目测。
- **（R4c133）航向平滑已装机**：dispHeading 状态 +270°/s 渐变（dt 钳制）；八检零回归；装机 Success + md5 `e6c112a0…`；待目测手感。；✅ 验收通过（2026-09-13）
- **（R4c134）④机炮·前向弹流已装机**：drawAirGunFx 重写（A2A 替换＋对地扫射新增；脉冲 0.2s/串·5块×2px·间距5px·420px/s·90px；方向=机头朝向）；八检零回归（Sig152221/15）；装机 Success（16:15:52）+ crash 空；未自动启动；md5 `a51d5924…`；**待目测验收**。 ✅ 用户验收通过（2026-09-13）。
- **（R4c135）“被击落时幽灵轰炸”二次根除（类型门控）**：根因=拦截机（含战斗机/对地攻击）EXECUTING 每 tick 跑 executeAttack；击杀/目标丢失同 tick 仍按旧状态分派投弹（实测 kill=5000/20000）；修复=executeAttack 类型门控（仅 ATTACK_ARMY/STRATEGIC_BOMBING）；八检零回归（Sig152221/15）；装机 Success（17:39:44）+ crash 空；未自动启动；md5 `60dfa75a…`；**待验收**。 ✅ 用户验收通过（2026-09-13）。
- **（R4c136）导弹“不射”排查 + 返航补给闭环**：发射五条件（见设计v2 §68）；returnToBase 补导弹补给（missilePerPlane 重算/missilesLeft 重填/干弹清零）；八检零回归（Sig152223/15）；装机 Success（18:55:26）+ crash 空；未自动启动；md5 `a5466908…`；待验收。 ✅ 用户验收通过（2026-09-13）。
- **（R4c137）导弹冷却 12h→2h（已装机）**：按用户拍板；八检零回归（Sig152223/15）；装机 Success（19:19:57）+ crash 空；未自动启动；md5 `1c8d6254…`；待验收。 ✅ 用户验收通过（2026-09-13）。
- **（后置·登记）导弹攻击时长×距离关联**——随⑧代差批次做（§68.4⑤，R4c137 登记）。
- **（⑥专案·计划书）未接入变量落实 · 专项计划书 v1 建档（2026-09-13）**：分档=def/agi（R4c138 拟）→ecm/stealth→科技/成本门控→代际（含导弹时长×距离）；修正落点（airCombatOne 已停用→airCombatTick/missileTick）；FlyingEntity=死脚手架（处置待拍板）。
- **（R4c138）⑥档1 def/agi 生效已装机**：`agilityMul`（0.8+0.4×agi，攻方）+ `defenseMul`（40/(40+def)，受方）；接空战双向 + 导弹（仅吃 def）；八检零回归（Sig152228/15）；装机 Success（20:06:55）+ crash 空；未自动启动；md5 `fe481e0f…`；待验收。 ✅ 用户验收通过（2026-09-13）。
- **（⑥档2）✅已拍板（2026-09-13）**：Stealth＝**B 被发现距离 ×(1-stealth)**（R4c139 实装：nAVS 链＋验收探针 P1/P2/P3）；**Ecm＝✂取消实装**（留档不动）。✅ R4c139已装机（2026-09-13深夜；md5 `91f73de5…`）——待实机抓样验收；施工计划＝专项计划书 §十·v2。
- **（讨论定稿）④机炮方案（§66.4）**：前向弹流·脉冲 0.2s/枚·2px·间距5px·420px/s·90px；实施押后。
- **（调研）导弹跟踪（§67）**：现机制已每帧重采样敌机贴图；三缺口与 A/B/C 升级案待选。
- **（研究登记·非构建）油耗机制调研（A5）完成**：见设计v2 §64（推荐里程制；3问待拍板）；④机炮=自绘（多方块前射、排“航向对齐”后）；**⑨航向对齐：调研完成（§65）·可开工(R4c132)**。
- **状态（2026-09-13 ·29）**：R4c134~138 ✅全部验收；⑥档1 结案；**⑥档2 ✅已装机：Stealth＝B（R4c139；待实机抓样验收）、Ecm ✂取消**；待拍板：①攻轰、②选中圈、⑤护航、§67、§68。

> 状态刷新（2026-09-16）：空战重做线当前基线 **R4c165**（飞机雷达实时开图）；导弹/雷达/切国系列已全部入档（见《空战重做专案_设计v2》§七十~§七十四）。
