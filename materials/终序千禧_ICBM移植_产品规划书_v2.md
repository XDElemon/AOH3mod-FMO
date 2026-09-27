# 终序千禧 × ICBM 系统移植 —— 产品规划书 v2

- 文档版本：v2.0（当前状态基线版）
- 编写时间：2026-08-24
- 前版：《终序千禧_ICBM移植_产品规划书.md》（v1 调研基线），保留作对照
- 基线包：dbg_signed.apk（2026-08-24 装机，包名 age.of.history3.qiamxi.zhiri）
- 项目代号：Operation FALCON（空军）/ Operation DOOMSDAY（核战争）

---

## 1. 项目定位（不变）

将 ICBM（Escalation Endless October）的空军系统与核战争系统核心机制移植进终序千禧（AoH3 改版，libGDX + Java，721MB），最终形态：

    终序千禧 = AoH3 国策/回合文明底盘 + ICBM 级空军体系 + ICBM 级核战争体系

v2 起点：M1 已完成；空军“师级单位”模型 v1 已装机待验收；正式进入 M2 阶段。

---

## 2. 当前状态快照（v2 基线）

### 2.1 已完成并装机验证 ✅

| 模块 | 内容 | 状态 |
|---|---|---|
| 数据层 | assets/game/AirUnit/AircraftTypes.json 合法化（代码实际加载，含 RadarRange，ID 逗号已修） | ✅ |
| 建造 | 空军司令部面板 4 机型（拦截/战斗/攻击/轰炸）可建造，回合递减→建成入编 | ✅ |
| 机场 | 机场注册/显示正常；机场不自带飞机（飞机只通过建造获得） | ✅ |
| 地图图标 | 机场/雷达站/反导阵地/长波雷达图标正常（blend 修复、次日不消失修复） | ✅ |
| 视觉 | 机型图标放大（战斗机/拦截/攻击 40px、轰炸机 56px）；友军环 56px；HP 环 25/22/33px | ✅ |
| 选中 | 点击飞机命中检测（60px 范围）→ 黄圈选中（ringSel 88×88） | ✅ |
| 航程圈 | 白圈 = 选中机型 CombatRadius × scale × 0.25（drawAirForceCircles） | ✅ |
| 飞行动画 | 实时平滑飞行（去 3s / 回 2s，animStartMs 时间戳插值），取消“步步为营” | ✅ |
| 任务 | 巡逻“飞到目标再回来”（createPatrol，滞留 2 回合；无前进基地/搬迁移） | ✅ |
| 空战 | 血量制：hp -= 敌机空战力 × 0.5，hp≤0 击落；返航满血修复（hp=maxHp） | ✅ |
| HP 环形态 | 飞行中编队血量环 48×48，按 hp/maxHp×8 用 ringHP_0~8 分级 | ✅ |
| AI 机场 | 初始 4 拦截机 + 4 战斗机（玩家机场不带机） | ✅ |
| 师级单位模型 v1 | 建成战斗机 → 机场省自动生成真 ArmyDivision（key=airhq_{civID}_{provinceID}，编制=战斗机×10）；选中飞机→原版军队栏弹出 | 🆕 待验收 |

### 2.2 师级单位模型 v1（新增，验收中）

设计动机：飞机 = 特殊师级单位——选中飞机时左下角弹出原版陆军军队栏（将领位/军队编制/行进按钮），与原版“选中地图上的师级单位”一致。

架构（双层模型）：

    ┌──────────────────────────────────────────────┐
    │ AirUnit/AirMission 层（ICBM 机制层）          │
    │   血量/战力/雷达航程/巡逻任务/空战结算        │
    │   负责“战斗力”与“战术行为”                   │
    ├──────────────────────────────────────────────┤
    │ ArmyDivision 层（AoH3 交互层）                │
    │   真师级单位（key=airhq_*）挂机场省           │
    │   负责“选中/军队栏/行进按钮/金描边/多选”      │
    └──────────────────────────────────────────────┘

关键约定：
- 师 key 前缀 airhq_（代码内判定统一用该前缀，勿改动）
- 师军团：ArmyRegiment(uID=5 Fighter, num=10)（1 团 = 10 架）
- 师在地图上不画陆军旗（drawProvinceArmyWithFlag 拦截），飞机视觉仍由 drawAirForce 负责

已落地代码拦截点（6 处）：
1. Airport.updateBuild：建成 FIGHTER → 调 AirForceManager.syncAirDivisionAirport
2. AirForceManager.syncAirDivisionAirport（新增 public static）：按机场省生成/复用师
3. AirForceManager.trySelectAirUnit：命中飞机 → 构造 Game$HoveredArmy → addActiveArmy + actionUp_SetActiveArmy
4. MapTouchManager 军队 toggle 段：空军师跳过 toggle（防取消选中）
5. ProvinceDrawArmy.drawProvinceArmyWithFlag：airhq_ 师不画军旗
6. Civilization.newMove：airhq_ 师移动被拦截（return false）；出击由 handleProvinceClick→createPatrol 完成

---

## 3. v1 规划书对照进度

| 里程碑 | 状态 | 说明 |
|---|---|---|
| M0 调研冻结 | ✅ 完成 | 字段清单、壳验证（重打包可行）、调用链清单已出 |
| M1 空军基础修复 | ✅ 完成 | AircraftTypes.json 合法、4 机型可建造、出击/巡逻/返航、UI 修复 |
| M2-A 代差树（Gen1-6） | ❌ 未开始 | 素材零缺口（Gen3-6×CN/EU/RU/US + 机模图 + ring 在 kb_assets） |
| M2-B 挂载系统 | ❌ 未开始 | 武器枚举/挂载槽/弹药 |
| M2-C 作战任务系统 | 🔶 部分 | C1 仅 PATROL；C3 空战=血量制初版（敌机无战损）；C4 雷达探测未接 |
| M2-D 机场与雷达联动 | 🔶 部分 | 建筑存在+图标 OK；容量/毁损/跑道修复未做 |
| M2-E AI 空战 | 🔶 部分 | AI 机场初始机队有；AI 任务调度/编队压制未做 |
| M2-F 空军 UI | 🔶 部分 | 建造界面 OK；面板/战报/任务指派 UI 未完善 |
| M3 核战争基础 | ❌ 未开始 | 弹头/平台/发射/爆炸/污染/AI 核打击 |
| M4 核战争深度 | ❌ 未开始 | MIRV/拦截链/DEFCON/EMP/CBRN |
| M5 扩展武器 | ❌ 未开始 | 生化/盐弹/ASAT/核防空 |
| M6 平衡与测试 | 🔶 部分 | 稳定性持续验证中；换算系数表/存档兼容未做 |

---

## 4. 已知问题与待办（按优先级）

### P0（当前轮：师级模型打磨）

| 项 | 说明 |
|---|---|
| S1 | 师模型真机验收：选中弹栏/行进/取消选中等完整链路 |
| S2 | “行进”按钮链路：移动模式→点目标省→巡逻，确认无冲突 |
| S3 | 存档兼容：Save/Load 后空军师（会存）+ AirUnit/AirMission（AirForceManager 无序列化，预计丢飞机）→ 需接入档位 |
| S4 | AI 机场所属 airhq_ 师防止被 AI 调度误操作 |
| S5 | 多机种：拦截机/攻击机/轰炸机师化（或同师多团） |
| S6 | 敌方战损：敌机 hp/击落/损失统计（当前敌机不死） |
| S7 | 取消选中体验：点同一飞机再次取消、点空地关栏确认 |

### P1（进入 M2-A 前必做）

- S8：AirForceManager 数据序列化方案（存档字段 + 旧档默认值）
- S9：金描边/悬停样式与飞机黄圈/白环共存检查
- S10：RealTimeSim（实时模拟）与回合制冲突检查（若有启用）

---

## 5. 下阶段路线图

### 阶段一（P0，本周）：师级模型打磨与稳定
1. 用户真机验收 → 修复反馈问题（选中/弹栏/行进/取消）
2. S3 存档兼容（SaveGameManager + AirForceManager 序列化）
3. S4/S5 敌师与多机种扩展
4. 回归：黄圈/白环/HP环/巡逻/空战/图标 不受影响

验收：选中飞机→军队栏弹出→行进→往返巡逻→存档→读档后飞机/师状态完整。

### 阶段二（P1，1-2 周）：M2-A 代差树（Gen1-6）

| 子任务 | 内容 | 验收 |
|---|---|---|
| A1 数据结构 | AircraftTypes.json 增加 generation 1-6 子表 + 阵营字段（CN/EU/RU/US） | 1 机型完整定义 6 代 |
| A2 科技挂钩 | 新增科技节点（空军 Gen2-6 共 5 节点），整合 RequiredTechID | 科技解锁后机型升级 |
| A3 视觉替换 | 按 代次+阵营 自动切换贴图（Gen3-6 已有，Gen1/2 回退默认） | 4 阵营 x 6 代无缺图 |
| A4 数值演进 | 照 ICBM 倍率设计代差曲线（速度/航程/火力/防御） | 数值表过审 |

### 阶段三（P1，2-3 周）：M2-C 空战完善

| 子任务 | 内容 |
|---|---|
| C1 任务类型 | STRIKE（对地）/ INTERCEPT（截击）/ 护航 / 侦察（在 PATROL 上扩展） |
| C2 敌机战损 | 敌机 hp/击落/编队损失；战斗报告（击落/损失/返航统计） |
| C3 防空火力 | AAA 建筑 + 反导阵地对来袭机群结算 |
| C4 雷达探测 | 雷达建筑探测圈：圈外敌机不可见，圈内己方暴露 |

### 阶段四（P2，2 周）：M2-E AI 空战
- AI 建造（经济+威胁驱动，复用 AI_BuildNukes 评估模式）
- AI 任务（拦截玩家机群 CAP、对地打击选点）；编队数量优势修正
- 难度平衡参数

### 阶段五（P2+，按 v1 规划继续）：M3-M6 核战争体系
- M3：弹头分级（100kt-100M）/ 发射平台（陆/海/空）/ 发射 UI / 爆炸污染 / AI 核战略
- M4：MIRV / 三层拦截链 / DEFCON / EMP / CBRN 防护 / 核电站事故
- M5：化学 / 生物 / 盐弹 / 钴弹 / ASAT / 核防空（详细规格见 v1 文档第6节）

### 贯穿项（M6）
- 数值适配（1 格约等于 50km 换算协议、成本/科技/时间换算表）
- 性能（同屏 200 空中单位上限、渲染对象池、全图结算 1 秒内）
- 存档版本管理、48h 稳定性长跑、双 ABI 真机

---

## 6. 技术方案备忘（构建/部署管线）

```
解包/修改： 基线 /sdcard/GLG/历史23/终序千禧V33.1-fix4-aligned-debugSigned.apk（母本 721MB）
           → apktool d → /tmp/build_work/（smali-only，配合 mkzip 组装）
组装：     /tmp/mkzip.py（源包 /tmp/orig2.apk = 母本副本，保留）
          替换：classes.dex（新编译）、AndroidManifest_patched.xml、Buildings.json、
                buildingsImages/numOfImages.txt、AircraftTypes.json
                （来源 /sdcard/GLG/历史23/kb_assets/，原 decode_output 已清理迁移）
          追加：ringHP_0~8.png / ringSel.png / buildingsImages {H,XXH,XH}/{101,102}.png / provinceIcons/{antiAir,longwaveRadar}.png
签名：     apk_reverse_sign（debug；keystore=/data/user/0/com.ai.assistance.operit/files/pkcs12.keystore）
安装：     cp /sdcard/GLG/历史23/build_apk/dbg_signed.apk → /data/local/tmp → pm install -r
          （pm install 偶发 User rejected permissions，重试一次即成功）
调试：     logcat 标签 AIRDBG（Log.d 不写文件避免 EPERM）；Shizuku shell + proot terminal 双通道
代码修改： 仅 smali（无源码）；保持类名/方法签名最小改动
```

### smali 修改铁律（血泪教训，必须遵守）
1. 寄存器上限 v15；.locals 增量会导致 p0 偏移 → 用 p 别名引用参数
2. private 方法必须 invoke-direct
3. const/4 只能 -8~7；超过用 const/16
4. 寄存器列表必须升序
5. 寄存器类型必须全路径一致（禁止 double 写进 float 寄存器 → VerifyError 闪退）
6. if-lt 需两个寄存器；单寄存器比较用 if-ltz
7. 静态方法 p0 占用 .locals 之后的寄存器（.locals+参数 ≤16）
8. 构建成功 ≠ 数据生效；写 /sdcard 被 Android 10+ 禁止（EPERM）
9. smali 方法不能有重复 return-void/.end method
10. mkzip add_files 与 replace 重复会报错
11. 行号修改需先 grep 确认内容再改（多次行号漂移导致改错位置）
12. Python 锚点必须精确匹配空行（smali 文件行间有空行，模式里 \n 数量要一致）
13. 禁止在 proot 内 find/du 扫描 /sdcard 大目录（FUSE+ptrace 卡死会话）

### 空间清理记录（2026-08-24）
- /tmp：5.5G → 1.4G（删 orig.apk/full_aligned.apk/历史旧包/旧解包等；保留 orig2.apk 母本、build_work、工具 jar）
- /sdcard/GLG/历史23：删 decode_output(427M)、build_apk 旧 APK(约1.4G)、jadx_verify(796M 待删)
- 构建资产迁移至 kb_assets(18M)；母本与最新安装包（各 721M）保留

---

## 7. 附录：关键常量与约定
- 师 key：airhq_{civID}_{provinceID}
- 师军团：Fighter uID=5，num=10（10 架编队）
- 飞机机型图标尺寸：40px（战斗/拦截/攻击）、56px（轰炸）
- 选中命中半径：60px（trySelectAirUnit 距离平方 0xe10）
- 选中圈 ringSel 88x88（黄）；航程圈 = CombatRadius x scale x 0.25（白）
- 飞行时间：去 3s / 回 2s（animStartMs）；巡逻滞留 2 回合
- 空战扣血：hp -= 敌机 AirAttack x 0.5；hp<=0 击落；返航 hp=maxHp
- AI 机场初始：4 拦截机 + 4 战斗机

---
*附：v2 以 2026-08-24 装机基线为准；所有待验收项（S1-S10）将在本轮真机测试后更新为结论。*
