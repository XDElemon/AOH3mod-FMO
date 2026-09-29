# 调研 · 加载图"加载过程中轮换"（HOI4 机制实证 + 我方落地评估）v1

> 目标（用户）：钢4 的加载图会在加载过程中变化，想在我们的《终序千禧》MOD 里实现同样的效果。
> 本轮只做调研：①把 HOI4 的机制从工作区文件里实证出来；②对照我方引擎找出可挂点；③列出下一轮要定稿的点。
> **本文件不含任何代码改动。**

---

## 一、HOI4 侧：文件级实证

### 1. 图库与命名约定
- 目录：`gfx/loadingscreens/`
- 主库（9 张）：`load_1.dds … load_9.dds` + 每张配套小图 `load_1_small.dds … load_9_small.dds`
- 各 DLC/集成 DLC 各自带图（同目录结构）：
  | 位置 | 内容 |
  |---|---|
  | `integrated_dlc/dlc018_together_for_victory/gfx/loadingscreens` | `load_tfv.dds` + `load_tfv_small.dds` |
  | `integrated_dlc/dlc023_man_the_guns/...` | `load_mtg.dds`/`load_mtg_small.dds`、`load_mtg_2.dds`/`load_mtg_2_small.dds` |
  | `dlc/dlc043_gotterdammerung/...` | `load_ww.dds` |
  | …（dlc028/031/034/036/038/040/046/049 各 1–2 张） | — |
- 另有界面小件：`loading_screen_border_small.dds`、`gfx/interface/Loadingscreen_loadingstatus.dds`、`Loadingscreen_loadingtip.dds`、`LoadingScreen_Progress_1/2.dds`

### 2. 背景数据库（决定"池里有哪些图"）
文件：`common/frontend/backgrounds/base_backgrounds.txt`（注释即官方说明，逐条抄录要点）
```
# name_of_dds_file = {   (dds 必须放在 gfx/loadingscreens 目录)
#   dlc_allowed = (可选) 该 DLC 启用时才加入
#   locale      = (可选) 默认背景由"最新 DLC"决定；若设了 locale 则尽量匹配当前语言
#   gfx         = (可选) 默认覆盖 GFX_frontend_bg_basic，只在要换分辨率/特效时才写
# }
# 还需要为每张图创建小图 GFX，命名必须是 GFX_<name>_small
```
条目：
- **基础池（无条件）**：`load_1 = {}` … `load_9 = {}`
- **DLC 池**：`load_tfv`(Together for Victory)、`load_dod`(Death or Dishonor)、`load_tiger`(Waking the Tiger)、`load_mtg`/`load_mtg_2`(Man the Guns)、`load_lar`(La Resistance)、`load_botb`(Battle for the Bosporus)、`load_nsb`/`load_nsb2`(No Step Back)、`load_bba`(By Blood Alone)、`load_aat`/`load_aat2`(Arms Against Tyranny)、`load_toa`(Trial of Allegiance)、`load_ww`(Gotterdammerung)、`load_goe`(Graveyard of Empires)、`load_taog_ast`(Thunder at Our Gates)
- **带 locale 的特例**：`load_ncns_chi = { dlc_allowed = "No Compromise, No Surrender", locale = "simp_chinese" }`，同 DLC 另有 `load_ncns_jap`

### 3. 精灵与界面（"换图"换的是什么）
- `interface/frontendmainviewbg.gfx`：
```
spriteType = {
  name = "GFX_frontend_bg"
  texturefile = "gfx/loadingscreens/load_5.dds"
  #do not modify as it is swapped out in game trough the background manager, add new backgrounds in
  #game\common\frontend\backgrounds in the same way base_backgrounds.txt does it
  size = { x=1920 y=1440 }
}
```
⇒ **引擎有 background manager，运行时替换该精灵的贴图**；新增图只需"放 dds + 在 DB 登记"。
- `interface/small_background.gfx`：定义 `GFX_load_1_small … GFX_load_N_small`（小缩略图）。
- `interface/load_screen.gfx` + `interface/load_screen.gui`：加载页**只定义框架**——
 - `load_screen`（全屏容器，`backGround=""` ⇒ 背景由管理器画）
 - `status`：状态底图 `GFX_loadingstatus_bg` + 文字 `font=loadscreen_header` + `progressbartype GFX_loadingstatus_progress`（`steps=1000000`、`effectFile=gfx/FX/progress.lua`）
 - `tip`：提示条底图 `GFX_loadingtip_bg` + 文字 `font=loadscreen_tip`
 - 另有 `GFX_clausewitz_logo`、`GFX_frontend_dev_logo_s`
- 加载提示文案另存：`localisation/<lang>/loading_tips_l_<lang>.yml`

### 4. ★轮换参数（决定"多久换一次"）
文件：`common/defines/00_graphics.lua`，属于 `NDefines_Graphics.NFrontend`（该表起于第 1485 行）
```lua
TIME_TO_SWAP_BACKGROUNDS = 20, -- Amount of seconds before swapping to another background
NEW_BACKGROUND_DURATION  = 4   -- How often you get to see the new background first before it is inside of
                               -- the regular rotation, 1 means it will be automatically selected,
                               -- 0 means not selected at all, anything higher is the amount of start ups it will be prioritized
```
⇒ **每 20 秒换一张**；并有一套"新图优先展示 N 次启动"的策略。

---

## 二、从 HOI4 提炼出的设计逻辑（可直接照搬的部分）

1. **池化**：所有背景图进一个"可用池"；池内筛选条件 = DLC 启用情况 +（可选）语言。
2. **纯时间驱动换图**：与加载进度无关，`每 T 秒`换下一张。
3. **同一池服务多个界面**：主菜单背景与加载页背景来自同一 manager（同一池、同一轮换）。
4. **换的是贴图而不是布局**：UI 只引用一个固定精灵名，manager 换掉它背后的贴图。
5. **附加策略**：新加入的图在前 N 次启动被"优先展示"（避免新图永远抽不到）。
6. **每张图配一个 `_small` 缩略图**（用于小尺寸展示）。
7. **参数外置**：换图间隔是 defines 里的一个数字，改数值即可调手感。

---

## 三、我方现状（《终序千禧》/ age.of.history3，已实测确认）

| 项 | 现状 | 证据 |
|---|---|---|
| 图库 | `assets/ui/loading/0..29.png`（1920×1080 / 8bit / RGBA / 非隔行） | r6d064 包内实测 |
| 计数 | `assets/ui/loading/numberOfImages.txt`（**必须无换行**，`parseInt`） | r6d063 血案 |
| 选图 | `InitGame`：`Random.nextInt(backgroundSize)`，最多重试 5 次以避免与上一张相同 | InitGame 300–325 |
| 加载页绘制 | `Renderer.drawLoading(SpriteBatch, int, int, float)`，**每帧调用**（logo/文字/进度） | Renderer 3305 起 |
| 背景绘制 | `AA_Game` 中读 `InitGame.background`（`textures/Image`）绘制 | AA_Game 801 |
| 纹理接口 | `ImageManager.loadTexture_RGB888(String)`；`textures/Image` 可用 `Texture/Filter/Wrap` 构造，**有 `dispose()`** | Image.smali 15–142、422 |
| 名言 | **已有"每 4 秒轮换"机制**：`drawLoading` 里 `currentTimeMillis - 4000 > loadingTime` ⇒ 重抽文本并写回 `loadingTime` | Renderer 3348、3413 |
| 加载推进 | `InitGame.iStepID` 步进机（多步，18900–19900 区段）⇒ 天然"步间钩子" | InitGame grep |

结论：**要实现 HOI4 那种"加载中换图"，我方骨架已齐**——每帧绘制路径存在、纹理有 dispose、且"每帧路径里放节流计时"已有现成模板（4 秒名言）。

---

## 四、两种候选实现（下一轮定稿二选一）

- **方案甲（时间驱动，最像 HOI4）**：在每帧绘制路径（`AA_Game` 背景绘制处或 `Renderer.drawLoading` 内）加判定："距上次换图 > T" ⇒ `dispose()` 旧 `Image` ⇒ 取新随机 id（避开当前）⇒ `loadTexture_RGB888` ⇒ 替换 `InitGame.background`。
 - T 建议 **2–4 秒**（我方加载通常仅数秒，HOI4 的 20 秒适配它几十秒的加载，不适用）。
 - 风险：换图瞬间有 PNG 解码 + 纹理上传开销（1920×1080 ⇒ 约 8 MB GPU），需放在帧间隙/做预取。
- **方案乙（步进驱动）**：在 `InitGame.iStepID` 的若干步之间换图 ⇒ 与进度挂钩、卡顿风险最低，但"时间节奏"不如甲稳定。
- **可复用点**：4 秒文本轮换已证明"每帧路径 + 节流计时"安全 ⇒ 方案甲风险可控。
- **参数外置建议**：利用刚修好的配置机制，在 `files/strike_config.json` 新增一键（如 `load_swap_ms`）控制换图间隔 —— 与 HOI4 的 defines 思路一致，且玩家可自调。

---

## 五、待挖清单（第二轮/第三轮调研要补齐的）

1. `Renderer.drawLoading` **全文**（参数含义、是否被其它界面复用、寄存器余量、可否插 1 行调用）。
2. `AA_Game` 背景绘制的**确切指令行与调用顺序**（加载页与主菜单是否共用同一处）。
3. `Image.dispose()` 语义：是否释放底层 `Texture`；是否会误释放 `ImageManager` 缓存的纹理 ⇒ 决定"新建 Texture 直接包成 Image 再 dispose"还是"不 dispose"。
4. `ImageManager.loadTexture_RGB888` 内部：是否缓存/是否 clamp/filter/可否重复调用同路径。
5. **加载总时长实测**：决定 T 取值；若典型加载只有 2–3 秒，则"轮换"意义有限（可改成"每次加载换一次"或缩短 T 到 1–2 秒）。
6. 是否需要 HOI4 的附加策略（"不重复上一张"已有 / "新图优先 N 次启动"可选）。
7. **门禁设计**（真解释器）：输入"已过 T / 未过 T / T=0 / T 很大"，验证"换 / 不换"；负样本：把 `>T` 写成 `<T` 必须被判失败。

---

## 六、需要用户拍板的点

1. **是否要"加载中轮换"，还是只要"每次加载换一张"**（后者现在已经是）。
2. **换图间隔 T**：建议 3 秒；是否要做成配置项（`strike_config.json` 里可调）。
3. **是否要主菜单背景也轮换**（HOI4 是同池共用；我们可以只做加载页，或加载页+主菜单）。
4. 是否要"缩略图小图"机制（我方暂无此需求，建议不做）。
