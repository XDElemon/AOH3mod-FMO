# 状态快照 r6d216（AD-3 弹迹调试进行中）

## 当前装机
- **r6d216**：`2026-10-06 22:22:07`｜dex md5 `4cfc738180281859d25a161d231847f5`｜`nABOOT v=r6d216`
- 八件套通过（Δ=-2 已声明：撤掉 tag=0/3 探针）

## 已确认可用（勿回退）
- 伤害链：命中极性已修（roll<chance 才命中，实际 80%）+ 延迟=0 ⇒ `nADK` 出现、能打掉（用户确认“会打了”）
- 参数文件 `toolchain/act/addmg.expected`：行1=单发伤害(50) 行2=命中率(0.8) 行3=飞行小时(0)
- 红圈/蓝圈、射程 100/130、交战门（r6d199）均正常

## 唯一的未解问题：弹迹（AD-3）不显示
### 探针事实（取证）
- `nADZ`（入口前 3 守卫之后）：**有**，例 `nADZ s=9171 f=1 p=9172 sx=1421 sy=329` ⇒ 入口进得来、src 有效、目标 sprite 有效
- `nADW tag=3`（mapScale 守卫之后）：**有**（r6d214 已证）
- `nADW tag=4`（源坐标块之后）：**无** ⇒ **断点在源坐标块内部**
- 源坐标块内只有两个可能返回：`Game.getProvince(adFxSrc)==null` 或 `Game.mapCoords==null`
- key 日志无异常（不是抛异常）
- 教训：探针限流会把后面的 tag 饿死 —— 已把限额 8→64 并撤掉 tag0/3

### 下一步（下批直接做）
1. 在源坐标块内加两个探针：`tag=5`（province 非空后）、`tag=6`（mapCoords 非空后），一次定死是哪一个为空。
2. 无论哪一个为空，都把入口改成“不依赖可空对象”：
   - province 为空 ⇒ 源坐标退化为目标坐标（至少画出一段短尾迹）
   - mapCoords 为空 ⇒ 跳过“屏幕→地图”换算（直接用地图像素）
3. 定位后按需查绘制层（tint/图层/坐标变换）

## 关键文件
- 工作树 `/tmp/w3a/smali`（备份 `.pre_r6d2xx`）
- 补丁：`_patch_r6d206_adfx.py` / `_patch_r6d207_adfx_fix.py` / `_patch_r6d211_probe2.py` / `_patch_addmg.py` / `_patch_r6d208_when.py`
- 门禁：`check_r6d206.py`（10/10+4/4）
- 抓样：`/sdcard/GLG/历史23/diag_r6d216.txt`（含 nADZ/nADW）
- 归档：r6d137(长期回退)/r6d158(已验证)/r6d215(上一版)/r6d216(当前)

## 2026-10-07 绘制层调研（r6d227 之后）★
1. `Images.pix` = 1x1 白像素（ImageManager.buildPix_IMG 186-219: Pixmap 1x1 RGBA8888 + drawPixel(0,0,WHITE)）
2. `Image.draw(batch,x,y,w,h)` = `SpriteBatch.draw(tex, x, -(y+h), w, h)`（Image.smali 637-666）
3. 我们拷的 adFxDrawTrail（3489-3589）：tint setColor(1, 0.85, 0.15, 1.0) 行3526-3536；循环 idx=(TH-i)&0xf；屏幕=(map+pos)*scale-1；每点 3x3
4. 抓样事实：tag=19 被调 66+ 次、adFxTN=12、两端错开60 ⇒ 数据层全通
5. 用户反驳（正确）：飞机空战速度更快照样画 ⇒ “寿命太短”不是主因
6. 结论：需要“绘制时刻”数值真相 ⇒ r6d228 = 红色8x8测试版 + 在 adFxDrawTrail 循环内插 nADW t=21（TH/idx/x/y）
   - 若见红点 ⇒ 链路全通，恢复黄3x3收工
   - 若不见但 t=21 显示 x/y 在屏内 ⇒ 图层/批状态问题（查 draw 顺序与 batch 状态）
   - 若 x/y 在屏外 ⇒ 坐标换算 bug

## 飞机导弹绘制逻辑 全面调研（2026-10-07）★
原版 drawAirMissileFx（ProvinceDrawArmy 3982-4373）结构：
1. 守卫：p1!=null；strikeKind==1；strikeTargetMissionID!=0；AirForceManager.activeMissions 非空；airDivisionAtProvinceID>=0；mapScale!=null
2. 源端=本 mission 屏幕坐标（getAirSprite 优先→getAirDrawPos(省)；<0 即 bail）；目标端=其打击目标 mission（sprite 优先→目标省 msFxTgtAt；<0 即 bail）
3. 四个坐标各 +0x14(20px) → 屏幕→地图：map=(int)(screen/scale - posX/Y)（4155-4209 段）
4. msFxLastScale!=scale → msFxTN=0（缩放变化重置尾迹）
5. msFxStep(p1,srcMap,tgtMap) 每帧推进；if msFxInit==1 → msFxDrawTrail(p0,p1)（4224-4232）
6. 4234+ 还有一段按玩家 civ 的绘制【未读完，待查】

我方 drawAdMissileFx（3161-3488）对照：
- 换算段 3307-3347：同样 +0x14 → map=(int)(screen/scale-pos) ✓ 与原子级一致
- 插值 3413-3449：i=0..11, v=(d*i)/12+src（整数）→ 存地图坐标 ✓
- adFxTH=0x10、adFxTN=12、adFxInit=1 → adFxDrawTrail
- 疑点：TH=16 & TN=12 ⇒ 绘制索引 (16-i)&15 = 5..15,0 ⇒ 索引12..15为未写入的0（幽灵点，非主因）
下次：r6d228 红8x8 + 循环内 tag=21(x,y) + tag=22(TH,TN)
## r6d228 已装机（2026-10-07 13:54:17）
- 修补：抄原版弹头绘制（14x14 Images.pix，civ双色）+ tag=23 探针（bodyX/bodyY/rawAdFxX/rawAdFxY）+ 自证串 r6d228
- dex b90323b8…；八件套通过 Δ=5；模板 r6d227
- 待验收：见红色/蓝色 14x14 弹头从阵地飞向飞机（本体+黄尾迹）
- 探针判读：tag=23 无 → 未到达；有且 x/y 屏外 → 坐标；屏内但不可见 → 图层
## r6d229 已装机（2026-10-07 14:05:29）★双bug修正
- B1: adFxScaleX/Y 投影字段错（getCenterX_Real→iCenterShiftX；对齐原版 getAirDrawPosX）
- B2: 源端投影错传 v1（=目标省）→ 重载 adFxSrc 到 v2；解释“源≈目标恒成立”
- 由 r6d228 tag=23 数据反推：body≈-21000（出屏）⇒ 投影链错
- dex 65500301…；八件套通过（Δ=-2已在delta_allow声明）；模板 r6d228
## r6d236 已装机（2026-10-07 20:51:55｜dex `e9a00603…`｜包Sig `d07bf9a7…`｜模板=r6d235｜八件套通过 Δ=-2 已声明）

### 本版三处改动（回应“不动 + 颜色蓝→应红”）
1) scheduleHit：弹迹启动挪到“开窗”时机；写 lastMissileMs=now（时间基准）；adFlyHours=2*距离小时（clamp>=2，供 adFxStep 的 /2 用）。
2) tickHits 到达：清 adFxTN=0 + adFxX/Y=-100000f（防“到达后残留幽灵点”）。
3) adFxStep：adFxSrc<0 直接 return（同上防幽灵）；弹头颜色改按“射手省(adFxSrc).getCivID()”对比玩家 ⇒ 敌国打的弹头=红色（原按任务 civ ⇒ 玩家挨打时永远蓝）。

### 本批工具链血案（都已拦截）
- A-old 正则零匹配被 assert 拦下（原因：文件里指令间有空行 + `# ` 带空格）⇒ 未写盘，修正则后重跑 ✓（“锚点逐字含空行”铁律再次立功）。
- 建包因 /data 100% 中断（copy 到一半 398MB）⇒ 清盘后重出包成功（763MB 完整）。

### 磁盘清理（2026-10-07）
- /tmp 中间包（r6d231-236 signed/aligned/work ×18）≈13.7G；build_apk 旧归档16个≈11.4G；旧 diag/capture ≈0.4G。
- /data：529M → 25G 可用；归档保留：r6d137（长期回退）/ r6d158（已验证）/ r6d235（上一版）/ r6d236（当前）。
- 素材与文档（钢4/ICBM/加载图/r6s5/build_inputs）未动。

### 待用户实测验收
- ① 弹头**从阵地飞向飞机**（会动）② 墨西哥打出的弹头=**红色**、尾迹黄。
- 验收过 ⇒ 收尾版（清探针、还原正式参数）+ 设计逻辑11项 + 实测记录 + 推 GitHub。
## r6d237 已装机（2026-10-07 21:29:35｜dex `4040450b…`｜包Sig `e4f368d8…`｜模板=r6d236｜八件套Δ=3 已声明）

### 本版四刀（回应“方块追着飞机跑 + 白色方块尾迹”）
A) adFxStep 步进闸极性修正：`if-gez`→`if-ltz`（r6d236 我写反 ⇒ 活跃时直接 return ⇒ 导弹永远不动）。
B) 删除 r6d226 的“插值画线”兜底（含其写反的 TN>=4 闸；trailAdd 自带 16 长数组分配 + 每移动≥4px 落点）⇒ 尾迹=纯动态拖尾（原版行为）。
C) 尾迹颜色 黄(0.85/0.15)→纯白(1.0/1.0)。
D) 新增探针 tag=90：入口活跃首帧（src>=0 且 TN==0）打一行——“入口没被调/被守卫拦”的定性依据。

### 未解悬念（下轮抓样看）
r6d236 整场 nADW=0（但同通道 nADH/nAD/nADF 正常）⇒ 入口在 tag15 前被拦或未被调。
下轮抓样优先看：`nADW tag=90` 是否有行（有 ⇒ 入口被调且活跃；无 ⇒ 查调用链 myOrDetectedMission/绘制循环）。

### 验收目标
① 方块从阵地追着飞机跑（会动）② 后面白色方块尾迹 ③ 到达后干净消失。
## r6d238 已装机（2026-10-07 22:11:23｜dex `e8bef230…`｜包Sig `566d228f…`｜模板=r6d237｜八件套Δ=1 已声明）

### 抓样定性（r6d237，tag=90 立功）
- nADW tag=90 有 2021 行；分布：`a=9097 b=-2 ×363`、`a=9171 b=-2 ×64`、`a=9171/9097 b=0`、`a=0 b=0 ×1468`。
- **b=adFlyHours=−2（负数）** ⇒ 入口第 3 道守卫（flyHours<=0 → return）每次弹回 ⇒ tag15/19/23 全 0 ⇒ 完全无绘制。

### 根因（两层极性叠错）
1) `adDistHours` 两处 |diff| 的 `if-ltz :ax/:ay` 写反 ⇒ 取“负绝对值” ⇒ 曼哈顿距离恒为负 ⇒ 延迟=负（−1 等）——自 r6d227 起“按距离折算”从未真正生效；
2) r6d236 的夹取 `if-lez v2,:fh_ok` 亦反 ⇒ 负值原样过闸存进 flyHours。
（r6d235 之所以还能闪两下：当时 flyHours=1 是硬编码常数，正数恰好活着。）

### 修复（r6d238）
A) adDistHours：`if-ltz→if-gez`（取正|diff|）；
B) 夹取 `if-lez→if-gtz`（≤0 才夹到 2）；
C) 双保险：延迟 v1 进 adHitAt 前 clamp ≥2 小时（飞行时长=2*delay 同步受益）；
D) nABOOT→r6d238。

### 验收目标
① 红方块从阵地追着飞机跑；② 白色方块尾迹；③ 到达后干净消失；④ nADW tag=15 应再次出现（下轮抓样核）。
## r6d239 已装机（2026-10-07 22:31:42｜dex `f41a3b4e…`｜包Sig `68d2f6cf…`｜模板=r6d238｜八件套通过（Sig无变化，属预期））

### 来源：外部审计报告（baksmali 逐指令核）两处硬伤，均已核实并修复：
- E1/F1 AirDefense.fireProvince 命中极性：`if-ltz→if-gtz`（实锤实测20%；改后 rnd<=chance ≈80%）
- E2/F2 源坐标分支：`if-nez v2,:src_fail → if-eqz`（原：阵地省“存在”时反而走“源=目标”退化 ⇒ 弹迹永远贴飞机≤60px；修后=真·阵地投影全路径）
- F3 投影 −1 兜底：v8/v9<0 时同样退化（两句 if-ltz, :src_fail）

### 审计未采信部分（留档）
- E3 探针IO放大（P2）：本批保留（下轮验收还需 tag15/19/23），收尾版统一降频/清理。
- E4 lastMissileMs 与原版 msFx 共享（P2）：本轮不改（隔离需新字段+回指），记入待办。
- E5/E6/E7（尾迹步长32px/回合-帧混排/寄存器用满16）：已知/接受，补丁前先重构。

### 验收目标（升级版）
① 红方块从**阵地**一路追着飞机（真全路径，不再贴脸60px）；② 白色方块尾迹；③ 到达后干净消失；④ 命中更频繁（~80%口径）。
下轮抓样看点：nADW tag=1 的 a,b(源) 应为**阵地省坐标**（远不同于 c,d−60）、nADF 占比升高、tag15/19/23 恢复出现。
## r6d240 已装机（2026-10-07 23:36:12｜dex `4a8771bc…`｜包Sig `a6c53b44…`｜模板=r6d239｜八件套通过）

### 抓样定性（r6d239 实测反馈“停止≠死亡、逐省移动”）
- 冻结实锤：tag2 显示 init=2 冻结持续 271/825 帧（≈4.5/13.7s）；冻结后 body 与飞机拉开 386px（tag23 与 tag26 对比）。
- 逐省实锤：1283 个周期 target≠sprite+20（含 −216px 跨省跳变）；950 个周期正确。根因=getAirSpriteX 的 state/prevProvince 门限在部分状态走“省中心”回退（游戏自身 FX 同口径）。
- 命中率已≈87%（nADH h=1 27/31，E1 修复生效）。

### r6d240 修复
A) 贴住半径 8px→16px；追上不再冻结＝每帧吸附目标 + 拖尾（跟随直到到达结算清除）；
B) ≤128px 内追赶加速：step=max(spd·dt, dist/4)；
C) nABOOT→r6d240。

### 待观察
① 导弹应“咬住”飞机直到伤害落下（停/亡同刻）；② 白尾迹沿飞机路径；③ 若仍见明显逐省跳变=游戏 getAirSprite 回退所致，下一步可自建插值（读 airDivPrevProvinceID/SegAnim/SegDur）。
## r6d241 已装机（2026-10-08 13:02:07｜dex `d6f0c823…`｜包Sig `42646ed1…`｜模板=r6d240｜八件套Δ=0 已声明）

### 本版=修1（用户拍板“先修1”）
A) adFxStep 追击段：spd 改为**每帧重算** = 剩余距离 / max(剩余时间,32ms)
   —— 导弹“恰好”在伤害落下的瞬间碰到飞机；不会提前抵达后“骑”在飞机上跨省。
B) 撤掉 r6d240 的“≤128px 追赶加速”（它导致“先飞上去→停留→跟着跨省”现象）。
C) nABOOT→r6d241。

### 过程血案（供后人）
- 首版配速块误用 v12/v13（=参数 p1/p2）被 check_params 拦下 ⇒ 改为纯局部 v0..v10 版本。
- Δ 计数理解修正：CheckSig 只按“唯一签名”计数 ⇒ 复用既有 currentTimeMillis 不计 Δ（本批声明 0）。

### 待观察
① 飞行段：导弹按配速滑向飞机（飞机停它也继续压近，但只在末尾瞬间贴合）；
② 飞机跑远时临近末尾会出现“末端加速扑杀”（因为要把剩余距离在剩余时间内走完）——预期效果；
③ 到达瞬间=伤害落下=与飞机同刻收场。
## r6d242 已装机（2026-10-08 13:47:33｜dex `14699179…`｜包Sig `a9eb9c75…`｜模板=r6d241｜八件套Δ=-1 已声明）

### ① 撤掉“16px 吸附跟随”（骑飞机元凶）
抓样实锤（r6d241）：dist(body→target)=0 持续上百帧、跨省跟随 = 吸附块所致 ⇒ 整块删除，回归**纯配速**（到达前不会提前咬住）。

### ② 延迟按现实速度换算（用户指定：尤瓦尔迪→乌尼翁镇）
- 标定：cities.json（玄星汉化表）+ 已知城市对 ⇒ US-MX 走廊 **1px≈2.05km**（1.88~2.23实测）
- 尤瓦尔迪(3454,3479) ↔ 乌尼翁镇(3411,3535) ≈71px ≈150km；现实 Uvalde→Villa Unión≈160km ✓吻合
- 现实防空导弹（Mach4≈4900km/h）飞 150km ≈ **1.8 分钟**
- 换算速率：4900/2.05 ≈ **2450 px/小时**（原 50 px/h ≈100km/h，慢 24 倍）
- 游戏钟最小粒度=1 小时 ⇒ 常规交战延迟=1 小时（画面≈8.5s；原2小时≈17s）

### 待观察
① 导弹不再“骑飞机”：一路飞、只在末尾自然合拢；② 延迟约减半；③ 若仍想更快，需改游戏钟粒度（另立项）。
## r6d243 已装机（2026-10-08 14:01:33｜dex `0bbf8bf1…`｜包Sig `3ace7c4d…`｜模板=r6d242｜八件套通过）

### 根因（回应“骑飞机每次都在”+“是否不受时间流速影响”）
- 旧配速按**真实毫秒**算：v3=(flyHours/2)×playSpeedTIME；实测 playSpeedTIME 走300ms兜底 ⇒ 导弹以为全程只剩0.6秒 ⇒ **每次都先冲到飞机上等十几秒**。
- 且真实毫秒与游戏流速脱钩 ⇒ 加速游戏时导弹不同步。

### 新规则（游戏钟进度插值）
- 新增字段 `AirMission.adStartGh:I`（发射时刻= TURN_ID+HOUR，scheduleHit 写入）
- adFxStep：`p=(现在钟−发射钟)/(到达钟−发射钟)`；`位置=源+(目标_now−源)×p`
  ⇒ 伤害落下的同一刻（p=1）才与飞机重合；移动均匀铺满整个窗口（视觉上变慢、不再抢跑）；**游戏加速⇒钟快⇒导弹同步加速**。

### 过程血案
- 整段替换时切片起点撞上“引用行内的 :cond_21 子串” ⇒ 新块首行标签并进引用行、无独立定义 ⇒ smali 组装报“label hasn't been placed”。修复：显式补 `:cond_21` 定义行。
## r6d244 已装机（2026-10-08 14:13:45｜dex `3cb59557…`｜包Sig `588be739…`｜模板=r6d243｜八件套通过）

### 诊断（r6d243 抓样）
- 窗口节拍实测：窗口起点间距=360帧（重复出现）⇒ 1游戏小时≈6秒实际 ⇒ 1h 窗口动画≈6s（用户评“太快”）。
- “逐省移动”来源：飞机上报位置（getAirSprite）在换省时一跳≈200px（游戏自身粒度），导弹瞄准点随之间跳。

### 修复
① 延迟下限 1h→2h（动画≈12s）；
② 目标平滑：新增 adFxTgtX/Y 字段，瞄准点向原始值限速 ±8px/帧 ⇒ 200px 跳变变 ~0.4s 滑翔；正常微动不受影响。
③ nABOOT→r6d244。

### 备注
目标是“游戏自身粒度”的权宜平滑；若要真·全平滑追踪，需深挖飞机绘制位置来源（留待）。
## r6d245 已装机（2026-10-08 14:22:33｜dex `a39dcb83…`｜包Sig `fb8dca0c…`｜模板=r6d244｜八件套通过）

### 用户口径修正：伤害时间别动，只把飞行速度调慢
① 延迟下限 2h→1h（回退，伤害时间不变长）；
② 配速 ×2 减速（p=elapsed/(2×total)）⇒ 视觉速度减半；
③ 解耦：tickHits 不再清弹迹（只清到达点/伤害）；adFxStep 在 elapsed≥2×total 时统一回收
   ⇒ 伤害按原时间落，导弹继续把剩下的路“慢慢飞完”，到飞机处才消失。
④ nABOOT→r6d245。

### 设计备忘
- 视觉系数 K=2（0x40000000）、终点回收（2e≥4×delay）；两处需成对修改。
## r6d246 已装机（2026-10-08 14:53:05｜dex `4529882f…`｜包Sig `0c04781f…`｜模板=r6d245｜八件套通过）

### 用户指令：别再自创——“参考飞机那边的导弹追踪”
原版三件套已完整核对：
- missileTick（发射）：`msFlyHours=2×v9`（v9=(k/range)+2，封顶8）、`msFxTgtAt=目标当时所在省`、`msFxInit=0`、lastMissileMs=now。
- msFxStep（推进）：init0 首帧按时间比例 f（cap0.9）定位；init1 逐帧归航（spd=剩余距离/剩余时间）；dist<8 冻结(init2)。
- drawAirMissileFx：目标=sprite优先→msFxTgtAt省；两端+20；每帧 Step；init==1 画尾迹。

### 本版=机械照抄
A) `adFxStep` **整段替换为 msFxStep 的逐字克隆**（仅字段名 msFx→adFx），保留源闸 1 行；
B) 撤销 r6d245“保留弹迹”，tickHits 恢复完整清场；
C) 删除 r6d244“目标平滑”块。
⇒ 自创层（游戏钟插值/减速系数×2/飞完延长/平滑）全部移除，AD 弹迹的追踪引擎与飞机导弹**逐字一致**。
## r6d247 已装机（2026-10-08 17:54:22｜dex `bf089d24…`｜包Sig `ce0d717e…`｜模板=r6d246｜八件套通过）

### 闪退根因（logcat 铁证）
r6d246 照抄克隆时，源闸被插到 `:cond_13` 的**引用行**后面（`if-eqz v0, :cond_13` 之后），
把还是 MenuManager 对象的 v0 覆盖成 int → `VerifyError: [0x10] tried to get class from non-reference register v0 (type=Integer)`
→ ART 拒收 ProvinceDrawArmy → InitGame 阶段闪退。

### 修复
- 源闸移到 `:cond_13` **标签定义**之后（独立成行的标签 + msFxFrameDt 调用之间）；
- 新增**位置断言**（label_def < gate < msFxFrameDt）防再犯。
- 教训第三次：**按子串找标签必区分“引用/定义”**（:cond_21、:cond_13 已各中招一次）。
## r6d248 已装机（2026-10-08 18:15:39｜dex `d1f36033…`｜模板=r6d247｜八件套通过Δ=-1已声明）

### 调研定稿（r6s5/调研_r6d248_时间倍率与航速定稿.md）
- GV_GameSpeed.json：1000/500/250/125/45 ms/tick；nT实测：用户用5档(45ms)、hpt=2 ⇒ **每游戏小时=22.5ms（88h/秒）**。
- ⇒ 1h窗口≈1.35帧、原版公式全程=playSpeedTIME≈3帧 —— “飞快+停留”一次解开。
- 另：airdbg_key.txt 曾达2.9GB（nT每tick写入），已清空；后续可考虑给nT加限流。

### 本版实现
A) adFxStep 简化引擎：p = 已过毫秒 ÷ (航程小时 × playSpeedTIME÷HOURS_PER_TURN)（运行时实时读取 ⇒ 与时间倍率联动）；位置=源+(目标−源)×p；到点即结算、无冻结分支；
B) 航速旋钮：航程小时 = 欧氏px×0.6（300px→135h→当前档≈3.0s）；
C) 下限4h；
D) nABOOT r6d248。

### 验收
① 导弹滑行数秒（非3帧闪现）；② 改游戏速度→导弹速度随之变；③ 抵达即消失、无停留。
## r6d250 已装机（2026-10-08 18:36:55）

### 关键修复（回应“方块运动速度太快”）
1) 时钟口径修正：now 由 `TURN_ID+HOUR`（跨天会倒退！）改为 **`TURN_ID*24+HOUR`**（原版一致、单调），scheduleHit/tickHits 两处；
2) 方块减速：航程小时 = 欧氏px × 2 ⇒ 方块速度 ≈ **30 px/秒**（speed5档；300px 约10s 滑完）；
3) 下限 4h；目标平滑块（±8px/帧）回归。

### 根因回顾
r6d248 的 B/C 曾“静默未落盘”（锚点空格差异 + indent 取错），实际只带了引擎 ⇒ 航程=1h=22.5ms ⇒ 方块瞬移 ⇒ 本次全部落盘并经 CHECK 全绿验证。

### 磁盘
清至 25G 可用；build_apk 保留 r6d137/r6d158/r6d248/r6d250。
## r6d251 已装机（2026-10-08 18:45:18｜dex `6d2c8388…`）
- 用户口径：太慢，速度×2.5 ⇒ 航程旋钮 2.0 → 0.8（欧氏px×0.8，≈75px/s@speed5）。
- 单点改动（AirDefense adDistHours 尾部常量），自证串 r6d251。
## r6d252 已装机（2026-10-08 19:17:53）

### 用户两项判断 → 修复
1) “速度不止一个量控制”确认：旧引擎是 位置=源+(目标-源)*p —— 目标移动/跳省会“拽动”导弹 ⇒ 突发快追。
   ⇒ 本版改 **纯追踪(pure pursuit)**：每帧只朝目标方向移动 V*dt；**速度只由 V 决定**，目标只影响转向。
2) “追的是飞机师不是贴图”部分成立：目标是 贴图优先→退化到该师所在省中心（与游戏自带特效同源）；纯追踪下退化跳变不再造成瞬移。

### 技术
- V = 1.6875 px/gamehour ÷ (playSpeedTIME/HOURS_PER_TURN)（运行时实时 ⇒ 与时间倍率联动；speed5 时≈75px/s）。
- 到达（dist≤V*dt）即 applyMdDamage + 清场 —— **命中即结算即消失**；窗口机制退位（gate 改 adFlyHours>0；tickHits 停用仅保留占位）。
## r6d253 已装机（2026-10-08 19:24:36）
- 速度×5：V0 1.6875→8.4375（0x41070000）⇒ speed5 档 ≈375px/s。
- 确认伤害条件：**仅当弹头到达目标点（dist≤V*dt）才 applyMdDamage + 清场**（贴图优先的目标点；没碰到=无伤害）。
## r6d254 已装机（2026-10-08 19:32:31）
- 速度×8：V0 8.4375→67.5（0x42870000）⇒ speed5 档 ≈3000px/s。
- 调研结论（只读）：**飞机导弹=时间驱动**：发射记 lastMissileHours+msFlyHours，到点 missileTick 直接 applyAirDamage（ΣairAttack×2×defMul；目标消失则 nMS miss），弹迹仅装饰、随 strikeKind 清零消失——与我们的“接触驱动”机制不同（我们 = 碰到才结算）。

## r6d255（2026-10-08）A2A 空空导弹统一：纯追踪+接触结算+乙兜底+速度钩子（已装机待验收）

- dex md5 `e7cd6edc…`；APK `dbg_signed77_v119_r6d255.apk`（763,462,950B，apk 内 dex 与汇编产物一致）。
- 装机 `lastUpdateTime=2026-10-08 20:45:21`（autotap3.sh 第 6 次点按成功）。
  ⚠️ 教训：装机前**必须**拉启动 autotap3.sh（vivo 安装弹窗需自动点按：先勾"已了解风险"→"继续安装"），装完再关。
- 改动 4 类：ProvinceDrawArmy（msFxStep=纯追踪+接触；adFxStep 寄存器卫生）、AirMission（新增 msFxStepMs 字段 + msFxContact + missileTick 在飞块重写）、AirDefense（msSpd/adSpd 两个 TECH-HOOK 速度入口）、AirDefDiag（nABOOT="r6d255"）。
- 门禁：check_params / regtype_gate（22/22、31/31，无新增）/ check_castorder 全绿；check_r6d255（S1-S6+N1-N3）与 sim_r6d255（C1-C7+反转敏感性）全过；八件套 **Δ=5 已声明**（msFxStep 净+1、msFxContact 4 处、missileTick 净 0）；DexDiff=恰好 4 类（5522 类无丢失）。
- 工具改进：check_params.py 现剥离字符串字面量（修 " p1=" 假报，负样本仍可抓）；regtype 常态收敛（msFxStep/adFxStep 的 v6、msFxContact 的 v0 改为"对象寄存器不沾数值"）。
- 待用户实测：空空导弹从载机起点出发恒速追踪、触碰即结算即消失（无"半路出现/停住等时钟"）；
  探针关键字：`nMS hit`（接触结算）、`nMS lost`（目标先丢=无伤害）、`nMS fb`（离屏兜底）、`nMS gx`（首次绘制）。
- 后续：**r6d256 = AD 补乙**（tickHits 桩复活兜底 + adSpd 接入）。
### r6d255 验收（2026-10-08）✅ 通过

- 用户视觉验收：**良好**（方块从载机出发、恒速追踪、触碰即结算即消失）。
- 探针（diag 末段 518,134 行）：`nMS hit=22`、`lost=18`、`fb=1`、`miss=0`；崩溃词全 0。
- 探针（key 增量 137MB）：`nMS fire=89`、`gx=64`、`init=83`、`dry=5`、`miss=0`。
- 判读：接触结算真实发生；旧的到点伤害彻底消失（miss=0）；乙兜底仅触发 1 次（离屏 AI 战场，符合设计）；绘制链正常。
- 归档：保留 r6d137 / r6d158 / r6d254 / r6d255；删除 r6d248、r6d250、r6d251、r6d252、r6d253。
## r6d256（2026-10-08）AD 补乙：迷雾兜底（tickHits 复活）+ 出入迷雾衔接 + adSpd 接入（已装机待验收）
- ❌ 坏版警示（2026-10-08）：装机后开局 VerifyError 闪退（adFxStep 寄存器别名 v11=p0）；归档已删除，修复版=r6d257。
- dex md5 `1c90b524…`；APK `dbg_signed77_v119_r6d256.apk`（apk 内 dex 与汇编产物一致；apk md5 `381de8b8…`）。
- 装机 `lastUpdateTime=2026-10-08 21:39:04`（autotap3.sh 第 7 次点按成功）。
- 改动 4 类：AirDefense（tickHits 空桩→迷雾兜底闸：未到期等待/宽限12h/硬顶48h/从未步进/近10秒步进判定；日志 nADK fb=1）、AirMission（新增 adFxStepMs:J）、ProvinceDrawArmy（adFxStep 每帧写 adFxStepMs；速度常量→adSpd() 调用）、AirDefDiag（nABOOT=r6d256）。
- （“可见”= 自己/曾侦测/打我方省 —— 与是否在屏幕内无关；兜底只针对迷雾内。）
- 门禁：check_params / regtype_gate（0/31/22 无新增）/ check_castorder 全绿；check_r6d256（S1-S6+N1-N3）与 sim_r6d256（C1-C9+反转敏感性）全过；八件套 **Δ=1 已声明**（仅 adSpd 调用点；tickHits 重写净 0）；DexDiff=恰好 4 类（5522 类无丢失）。
- 待用户实测：可见弹照旧接触结算；入雾弹迹消失；出雾恢复；迷雾战伤害按期兜底。
  探针关键字：`nADK fb=1`（兜底结算）、`nABOOT v=r6d256`（自证）。

## r6d257（2026-10-08）r6d256 闪退修复（adFxStep 参数寄存器别名）——已装机待验收
- 症状（r6d256）：开局闪退；`VerifyError: ProvinceDrawArmy.adFxStep [0x21] instance field access on object ... Long (Low Half)`。
- 根因：adFxStep（.registers 16 / 5 参）中 v11..v15 即 p0..p4；`move-result-wide v11` 覆盖 p0（对象），`iput-wide v11, p0` 把 long 当对象用 ⇒ ART 拒类。
- 修复：stamp 改走 v9/v10（与 msFxStep 同款）；nABOOT=r6d257；坏版 r6d256 归档已删除。
- 工具修复：check_params.py ① vN 检查缩进 bug（只查最后一个方法）已补回；② 新增 wide 写跨界检查（vN+1 覆盖参数槽报红）。真实坏样本校准（坏版红 / 修复版绿）。
- dex md5 `452fe027…`（钉版）；APK `dbg_signed77_v119_r6d257.apk`（md5 `65e52677c3cc63964ca9de9eedaae69e`；包内 dex=452fe027… 一致）。
- 装机 `lastUpdateTime=2026-10-08 22:03:01`（autotap3.sh 第 9 次点按）。
- 门禁：check_params(修复版)/castorder/regtype(0/31/22) 全绿；check_r6d257(S1-S7+N1-N3) 与 sim_r6d257(C1-C9+反转) 全过；八件套 Δ=1 已声明；DexDiff=4 类（5522 无丢失）。
- 待用户实测：开局不闪退 + 按 r6d256 验收标准（`nADK fb=1`、自证 `v=r6d257`）。

- 审计加强（2026-10-08·r6d257 期）：check_params → v2.1a（数组槽修正 / .locals / lookbehind / wide 全集 / 死参过滤 / `--gate` 增量模式）＋全树基线 5522 播种（存量 12 处入账）；check_r6d257 的 S7 改顺序断言；审计报告归档 `r6s5/审计_r6d257_字节码复核_2026-10-08.txt`。

### r6d257 验收（2026-10-08）✅ 通过
- 用户视觉：**体验正常**（开局不闪退、弹迹正常）。
- 探针（基线 diag=79,669,546 / key=56）：diag 增量 20.99MB：`nABOOT v=r6d257`✓；`nADH` 262（h=1 **215**/h=0 47）、`nADF` 215、`nADX` 0、`nADK fb=1`**×3**。
- 崩溃缓存：装机后**零新崩溃**（最后一条为 21:52 r6d256 旧案）。
- 存量异常（与修复无关）：IOBE(-1/@13892) 48→125、CME 4→7（均捕获记录）⇒ 挂账 r6d258 追源。
- 归档：保留 r6d137 / r6d158 / r6d255 / **r6d257**；删除 r6d254（r6d256 坏版此前已删）。

### r6d258 验收（2026-10-08）✅ 通过
- 探针（基线 diag=100,658,449 / key=0）：**IOBE=0**（对照125）、**CME=0**（对照7）；`nABOOT v=r6d258`✓；装机后零新崩溃。
- **采样闸实测**：diag +1.79MB（-91.5%）、key +370KB（-99.2%）；验收键全部存活。
- 归档：保留 r6d137 / r6d158 / **r6d257**（上一版）/ **r6d258**（当前）；删除 r6d255。

## r6t001（TNO启动界面移植 · B1 素材入库与图片注册）
- 装机：2026-10-09 02:13:47（SUCCESS i=7）；归档 dbg_signed77_v119_r6t001.apk（766,105,389B）
- 三对齐：apk = 26bd535a… / dex = f029963b… / Earth3 = 18510 ✅
- 变更：InitGame.loadImages_1 +7图注册（ui/tno/*）+1自证探针；Images.smali +7字段；工具链 +_patch_r6t001.py +check_r6t001.py；delta_allow 声明Δ=+8
- 门禁：S1-S6全过 + N1-N4全捕获；静态三件全绿；八件套通过（MISSING=14 / Cast=50 / Undef=9 / Invoke·Regs·Init·Range BAD=0）；DexDiff=恰2类（menus/InitGame、textures/Images）
- 验收：nTNO1 v=r6t001 assets=7 ×1；装机后零新崩溃；✅ 通过
- 下一步：B2 主菜单 TNO 块（分层渲染：框图作底 + 三图叠加 + 三按钮 + 底座，TNO 布局）
