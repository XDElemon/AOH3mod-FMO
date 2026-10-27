---
name: fmo-render-invisible
description: FMO "代码在跑、日志正常，但屏幕上什么都没有" 的排查手册：先用开关实验分清那张图是不是我们画的、日志通道的三个门控坑（dbgOn/dKey 1/64 采样/dWrite 白名单）、smali 桥的空判极性、原版内联重复绘制、batch/投影/scissor/图层/坐标的排查顺序，以及"一次装机就能定死"的诊断包设计。任何要排查"图标/贴图/文字不显示"的批次都先读它。
---

# 渲染不显示：排查手册（v76 血泪版）

> **2026-10-27 更新（M1c/M1d 后）**：飞机图标唯一入口是 `AirUx.drawAll(SpriteBatch)`（每帧一次）；
> 新增三类静默失败：①坐标空间用错（`getCenterX_Real` ⇒ 飞出屏幕）；②机头镜像（`heading−180`）；
> ③暂停时仍在飞（`RealTimeSim` 绕过 update 门）。排查顺序：先看 B46 是否绿，再看 `AirMotion` 的 `outX/outY`。

> 来源：v75 地图建筑圆盘"一张都不显示"，前后装了 **6 个诊断包**才定位。
> 根因是**两行代码**：桥里 `if-nez` 写成 `if-eqz` 的反面，外加一段没人注意的原版内联绘制。
> 这个技能存在的意义：下次 **2 个包以内**定位。

## 0. 先问三个问题（顺序不能乱）

1. **那段代码到底跑没跑？** —— 日志能证明"跑到了"，但不能证明"画出来了"。
2. **屏幕上那个东西是"我们画的"还是"别人画的"？** —— 90% 的误判在这里。
3. **如果是我们画的，为什么看不见？** —— 极性 / batch / 裁剪 / 坐标 / 图层。

## 1. 日志通道（三个门控坑，v76 全部踩过）

`AirDbgLog` 的门控不是"写了就有"：

| 通道 | 门控 | 结论 |
|---|---|---|
| `dKey(String,String)` / `e5i/e5ii/e5s` | **先判 `AirDbgLog.dbgOn`**；再看 key：`AIRDBG` 且消息不以 `nMS` 开头 ⇒ **1/64 采样** | 机器上 `dbgOn=0` 时**完全不写**，看着像"代码没跑" |
| `dWrite(String)` | 只对 `nMK `/`nAIF `/`nHIT `/`nUPX `/`nUPY `/`upy:`/`nADW ` 前缀做 1/64 采样 | **自己起一个前缀（如 `ADI `）就不受门控、也不看 dbgOn**，首选 |
| `CFG.exceptionStack` | 只进 logcat | 抓不到 |

- 日志文件：`/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt`
- **注意行数上限**：这类日志有 cap（曾 400 行），加载期会把额度刷爆 ⇒ 关键日志要**一次性**（static 标志位），不要每帧写。
- 读日志：`adb-shell grep -n PREFIX <file>`（**禁管道**；pattern 不带空格）。

## 2. 开关实验：证明"谁画的"（最省时间的一步）

把**自己的绘制整段关掉**，重新出包装机，看那个图还在不在：

```java
private static final boolean DRAW = false;
...
if (!DRAW) { return; }   // 放在 begin() 之前
```

- **图消失** ⇒ 是我们画的 ⇒ 去查为什么"部分可见/位置不对"
- **图还在** ⇒ **不是我们画的** ⇒ 立刻全 dex 搜那条贴图引用的所有使用者，
  重点找**原版内联绘制**（见 §3.2）。这一条能省掉后面所有坐标/图层分析。

## 3. smali 桥的两个经典静默失败

### 3.1 空判极性（v76 真凶）

```smali
invoke-static {p1}, ImageManager;->getImage(I)L.../Image;
move-result-object v1

if-nez v1, :ret      # ❌ 非零跳转 ⇒ 图非空直接 return，全都画不出来
if-eqz v1, :ret      # ✅ 零跳转 ⇒ 只有取不到图才 return
```

**`if-nez` = not equal zero = 非零跳转**；`if-eqz` = 等于零跳转。这个坑项目里已经踩过
两次（v62 导弹接触、v76 图标桥）。闸门 B38 ① 已钉死，但**新写桥仍要自己看一眼**。

### 3.2 原版内联绘制（v76 第二真凶）

删"方法调用"不等于删"绘制"：原版把一段 36×36 的 `airUnit → Image.draw` **内联**在
`drawAirForce` 的机场循环里。只删 `invoke-static drawAirportIcons` 这类调用，屏幕上照样
有旧图标，而且它**正好盖住新绘制的第一格**，把"全都没画"伪装成"只画了第一张"。

**做法**：`grep -n "Images;-><你的贴图字段>" <原版类>.smali`，逐个看**所在方法**；
凡是还活着的（不是 dead 方法）都要清。B38 ③ 已钉死 `drawAirForce` 里的 `airUnit`。

## 4. 如果确认是自己画的却看不见，按这个顺序排

1. **batch 状态**：`p1` 是不是正在渲染的 `oSB`？`renderer_resetScale` 是否已经 `begin()`？
   （本项目：`Renderer.oSB`，`Renderer.smali:7811 begin`，屏幕像素投影、y-up）
2. **裁剪**：那个 pass 有没有 `glScissor`/`ScissorStack`？（本项目这个 pass 没有）
3. **投影**：`setToOrtho(false, W, -H)` ⇒ `Image.draw` 内部 `y=-(y+h)`，传的是**屏幕顶往下的 y**。
   自己另设投影会让 FBO/图标上下颠倒。
4. **坐标**：`getAirDrawPosX` 用 `mapCoords.getPosX`（缺接缝平移）；
   `RendererGame.getDrawPosX` 用 `translateProvincePosX`（与城市/军队同源）——**新代码用后者**。
5. **图层**：本项目顺序 = 地图 → 城市 → 圆盘 → 军队 → 飞机/导弹/雷达盘。
6. **颜色/alpha**：城市层会 `setColor(1,1,1,DRAW_CITIES_ALPHA)`；桥的 `begin()` 必须重设白色。

## 5. 诊断包设计（一次装机拿全信息）

```java
// 1) 一次性日志（static 标志位，别每帧写）：常量、贴图 id、图库大小、纹理宽高
log("ADI cfg bid=" + AIRPORT_ID + "," + RADAR_ID + " img=" + Images.airUnit + " nimg=" + getImagesSize());
log("ADI dim " + dim(imgAir) + " " + dim(imgRadar));     // getImage(id).getWidth()x getHeight()
// 2) 固定位置测试图：一排 4 张，画在**地图坐标**上会随相机跑掉，别放屏幕边缘（会被 HUD 盖）
// 3) 大标记：100×85 放在省中心正下方 —— 不可能看不见
// 4) 逐张 try/catch + log("ADI err k=.. img=..")，一张坏图不拖垮整盘
```

判定表：

| 现象 | 结论 |
|---|---|
| 大标记也不出现 | 这段绘制没执行，或 batch/投影不对 |
| 大标记在、图标不在 | 桥的极性/取图写错 |
| 只有第一张 | 原版内联图盖住了第一格（§3.2） |
| 全都不出现但日志正常 | 优先怀疑 §3.1 极性 |

## 6. 真机侧的硬限制（别浪费时间）

- `android_screenshot` / `/app/ui/*` 依赖无障碍，**常不可用**（本会话 4 次里 4 次不可用）
- `adb-shell screencap` 被策略拦（不认识的命令）
- `logcat` 只允许读 crash 缓冲；`logcat -d -s TAG` 会被 `POLICY_BLOCKED`
- `adb-shell` 禁管道/重定向 ⇒ 只能 `grep -n PATTERN file`
- 结论：**让用户截图**是最快的；先把要看的区域算出来再请他截。

## 7. 提交前的自检

- [ ] 桥里 `getImage` 之后的 `if-*` 是 `if-eqz`
- [ ] 原版类里没有同贴图字段的内联绘制残留
- [ ] 诊断代码（`ADI `/`DBG`/`drawIcon` 测试排）全部删干净 —— B38 ⑤ 会拦
- [ ] 闸门 4/4 + 变更范围白名单
- [ ] 真机验收：有军队时军队压住圆盘；缩放不漂移；一栋一图

## 8. 第二类症状：「部分图形错乱 / 残条 / 洞」（v85–v88 血泪）

不是"整块不显示"，而是**大部分对、局部错**。这类错误都在几何/打包/循环收尾上，逐个记：

| 症状 | 真因 | 修法 |
|---|---|---|
| 形状整体偏一段 | 矩形函数形参是**左边界**，却按"圆心-半径"又减了一次 | x 直接用左边界 |
| 大片"洞"或月牙（露出地图） | 裁剪条件过宽：把不需要让位的地方也裁了 | 只裁「会露出另一色」的那块交集 |
| 裁剪"完全没生效" | 区间求差循环里遮挡段伸出末端时 `break` 没把 `start=end`，收尾又画回去 | `if (be>=end){start=end;break;}` |
| 圆形底部多一条 | 椭圆边缘行宽只剩 1~2px，仍按行高画 | 行宽 <2 跳过 |
| 颜色变成青绿/不透明 | `Pixmap.drawPixel` 要 **RGBA8888**（R 最高字节），不是 ARGB | `0xFFFFFF00 | alpha` |
| 一帧几十~几百个小矩形后整块消失 | 可能超过 SpriteBatch 单批容量 / 绘制调用过多 | 分行合并、降分辨率、或改整盘判断 |

**共同点**：都能在**离线几何模拟**里复现（除批超限）。所以：

> 任何"按行/按段"的绘制逻辑，先写 Python+PIL 复刻同一算法出图对比，再出包。

## 9. GL 层方案的两个反射性警惕

1. **带 stencil 的 FBO 可能整帧画空**：`FrameBuffer(fmt,w,h,false,true)` 在本机建不完整，
   表现为"画进去等于没画"，而 `glClear`/`begin/end` 全都正常返回、不报错。
2. **每帧 `Texture.draw(pixmap,0,0)` 上传可能不生效**：现象是"纹理停在第一次的内容"，
   只有某个周期回绕时视觉跳一下（否则完全静止）。

两条都**不报错**，只能靠"离线做对照图形 + 真机看变化"来证伪。能用 CPU 几何算的，优先 CPU。
