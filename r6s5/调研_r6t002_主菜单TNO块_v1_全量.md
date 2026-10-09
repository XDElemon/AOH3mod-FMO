# 调研 · r6t002 主菜单 TNO 块（B2）v1 全量

> 项目：《终序千禧》· FMO（age.of.history3.qiamxi.zhiri，v119 底座，对外 1.035-DEMO.1）
> 课题：B2＝把 TNO 式「三图+三按钮+底座横条」块画进 FMO 主菜单（分层渲染：框图作底→三图叠加→底座→三按钮）。
> 轮次：第一轮「全量」＝从当前主菜单绘制链到 TNO 块的每一环：接口、坐标、元素、素材、插入点。
> 本文件为只读调研产物；写码须待第三轮（定稿）。所有行号＝/tmp/w3a/smali 工作树。
> 侦察证据文件：r6s5/recon_b2.txt、recon_b2b.txt、recon_b2c.txt、recon_b2e.txt、recon_b2f.txt、recon_b2g.txt、recon_b2g_assets.txt、recon_b2h.txt、recon_b2h2.txt、recon_b2i.txt、recon_b2j.txt、recon_b2k.txt、recon_b2l.txt

---

## §0 目标（本版范围）

- B2（r6t002）：主菜单出现 TNO 式块——
  1. 框图 `tno_frame`（1981×793）作底；
  2. 三张定制图 `tno_pic{1,2,3}`（296×330）按已锁定窗位叠加（覆盖框内示例照片）；
  3. 底座横条 `tv_button_edge`（163×71）两段式画法；
  4. 三按钮 `button_edge`（9×36）元素（可点击、有文字、hover 换 `button_h_edge`）。
- 三按钮行为（沿用现有主菜单按钮同款，零新增逻辑）：
  - ① 新的游戏 → `View.SCENARIOS` + `setOrderOfMenu_Scenarios()`（＝现有 $5 同款）
  - ② 编辑器 → `ProvinceBorderManager.clearProvinceBorder()` + `View.EDITOR`（＝现有 $10 同款）
  - ③ 退出 → `Dialog.setDialogType(Dialog$DialogType.EXIT_GAME)`（＝现有 $12 同款）
- 非目标：加载画面；分辨率档机制改动；旧按钮删改。

---

## §1 现主菜单绘制链（入口→出口）

1. `MenuManager.getViewID(View)` MAINMENU 段（@15514–15573）：懒创建/**重建** `new MainMenu()` ⇒ **每次进入主菜单都是新实例**（状态重置；新元素类不得留静态残留——探针一次性计数除外，见 §5）。
2. `MainMenu.draw(SB, p2, p3, Z, Status)`（@3137–3548，`.registers 14`，locals v0..v7，params v8..v13）：顺序＝
   ① 黑幕淡入（bgAlpha 动画，@3137 区）→ ② `InitGame.background` 居中 → ③ `gradientHorizontal2`（shaderAlpha）→ ④ sparks 动画 → ⑤ 面板 chrome：`drawBoxCorner(iXPos+p2, iYPos+p3, iWidth, iHeight+mainTitle.h)` → `drawBox_EDGE_TOP_LR` → `gradientXY` → ⑥ 自动换背景任务（桌面/移动开关）→ ⑦ **`invoke-super/range {p0..p5}, Menu;->draw`**（@3544；⇒ `Menu.drawView`：`beginClip → drawMenu → endClip`）→ return。
3. `Menu.drawMenu` → `drawMenuElements(SB, menuPos+translate, active, scrollableY)`（@1314–1440）：**倒序**遍历 `menuElements`（size-1 → 0）逐个 `MenuElement->draw(sb, x, y, isActive, scrollable)`。
4. 元素坐标＝自身 `getPosX/getPosY`（构造时写入的统一坐标系，如 $15 用 `GAME_WIDTH-BUTTON_WIDTH` 绝对量）＋ `menuPos + translate`。
5. `Menu.drawView`（@224–232）：`beginClip` 的裁剪区＝菜单本体盒（MainMenu 为 `initMenu(title=null, 0, 0, GAME_WIDTH, GAME_HEIGHT, list, true)` ⇒ 全屏盒 ⇒ 全屏无裁剪风险）；元素/标题都在其中绘制。

## §2 坐标体系与度量来源（全部来自 CFG，运行期已初始化）

- `CFG.GAME_WIDTH/GAME_HEIGHT`：由 `Renderer.<init>(II)`（@250 区，`sput GAME_WIDTH=p1, GAME_HEIGHT=p2`）注入；本机横屏 2400×1080（宽高比≈2.22）。
- `CFG.BUTTON_HEIGHT`：`AA_Game`@1600 区：`BUTTON_HEIGHT = Images.buttonMenu.getHeight()` ⇒ 实测 `buttonMenu.png XXH = 44×110` ⇒ **BUTTON_HEIGHT=110**。
- `CFG.GUI_SCALE`：`AA_Game`@1660 区：`GUI_SCALE = BUTTON_HEIGHT/68` ⇒ 110/68 ≈ **1.6176**。
- `CFG.PADDING`：`= (int)(5 * (1 + max(GS-1,0)/2))` ⇒ (int)(5×1.3088)=**6**。
- `CFG.LEFT_MENU_WIDTH`：`AA_Game`@1750 区：`400 → min(400, GW/4)=400 → max(400,400) → ×GS` ⇒ **≈647**（int 647）。
- `CFG.BUTTON_WIDTH`：`AA_Game`@1630 区：XXH→**160** / XH→120 / 其余→90（本机 XXH=160）。
- `MainMenu.<init>`（@73–2068，`.registers 21`）：`iXPos=(int)(GW/(10×GS))`≈**148**；`iWidth=(int)max(LEFT_MENU_WIDTH, min(480, GW/4)×GS)`＝(int)max(647, 776.5)≈**776** ⇒ 面板盒 x∈[148, 924]，全高。
- 社交图标列（$15–$19）：`x=GW−BUTTON_WIDTH=2240`，宽 160 ⇒ **右侧保留区 x≥2240**。

## §3 TNO 块的目标几何（公式，初值按本机）

| 量 | 公式 | 初值@2400×1080 |
|---|---|---|
| 块宽 W1 | `(int)(GW/2.2f)` | 1090 |
| 框缩放 k | `W1/1981.0f` | 0.55023 |
| 框高 fh | `(int)(793×k)` | 436 |
| 块左 bx | `panelR + (iconL − panelR − W1)/2`（panelR=iXPos+iWidth=924，iconL=GW−BUTTON_WIDTH=2240） | 1037 |
| 条底距 | `stripY = GH − 71 − 8` | 1001 |
| 框顶 fy | `stripY − 6 − fh` | 559 |
| 三图窗（相对框，k 缩放） | 图1(19,64,619,705) 图2(676,64,623,705) 图3(1339,64,620,705) | 窗≈(10,35,340,387)/(371,35,342,387)/(736,35,341,387) |
| 按钮 | `btnW=(int)(W1/3)−16`；`btnX(i)=bx+(int)(W1/3)×i+8`；`btnY=stripY+17`；高=36 | w=347；x=1045/1408/1771；y=1018 |

- 对齐口径：TNO 原版为「块宽=屏宽/2.2、屏中央纵列布局（图在上按钮在下、底座横条最下）」；因 FMO 左侧面板必须保留，**块水平居中于“面板右缘→图标列左缘”的可用区**（与 TNO 等比例、等层级；B3 可凭效果微调，常量集中在 TnoBlock 内）。
- 三张图按「等比填满(cover)」语义贴合窗口；比例差：素材 296/330=0.897 vs 窗 619/705=0.878 ⇒ 差≈2%，**直接拉伸绘制＝视觉等价**（B3 若细看再改逐窗 overscan）。

## §4 素材（已入包，r6t001 注册，B2 只取用）

- 字段（textures/Images.smali @952–964）：`tnoFrame / tnoPic1 / tnoPic2 / tnoPic3 / tnoButtonEdge / tnoButtonHEdge / tnoTvButtonEdge`；`InitGame.loadImages_1` @1096–1152 注册 7 图（`ui/tno/*.png`），自证 `nTNO1` 已实测 ×2。
- 像素语义（ORIG vs CUSTOM 对照，r6s5/recon_b2h.txt）：
  - `button_edge` 9×36：竖切片（列0透明；中段蓝→亮渐变；上下行深色描边）——按“整片横向拉伸”使用＝一条蓝→亮渐变扁条。
  - `button_h_edge`：同结构、整体更亮（点击/悬停态）。
  - `tv_button_edge` 163×71：蓝底座，顶部有亮白横线（y≈4）、底缘亮蓝唇边（y≈65–68）。TNO 原版画法＝「左段拉伸 W1−163 + 右端头 163 原尺寸」两段式（Menu_TNOMain.draw @1239–1312），照搬为两笔。
- 取图 API：`ImageManager.getImage(Images.<field>)`；绘制 `Image->draw(SB, x, y, w, h)`（AoH3 内部已处理 y 翻转，x/y=屏幕坐标左上角，w/h=目标尺寸，纹理线性拉伸——r6d 系列雷达/图标已多次实战验证）。

## §5 元素与按钮机制（B2 复用的全部拼图）

1. **Button 基类**（menu_element/button/Button.smali）：
   - 构造：`<init>()V` + `init(String sText, int fontID, int nTextPositionX, int x, int y, int w, int h, Z clickable, Z visible, Z checkbox, Z checkboxState)V`（@727–811）。
   - **居中口诀**：`nTextPositionX < 0` ⇒ 自动居中策略 `Button$1`（width/2 − textWidth/2）；`≥0` ⇒ 固定偏移 `Button$2`。（@772–788，`if-gez p3, :cond_21`）⇒ **我们传 -1**。
   - `init` 中 `setText` 会量文本宽（iTextWidth）；`drawText` 用 `Renderer.drawText(SB, fontID, text, x, y, Color)`（@569–629）竖排居中。
   - `draw(SB,tx,ty,Z,Z)`：可点击 ⇒ `drawButtonBG`；悬停 ⇒ `getIsHovered()` 可用；随后 `drawText`。
   - 现状模板：`Button_MainMenuIcon`（@1–277，`.registers 20`）＝standalone 类、继承 Button、override `drawButtonBG/drawText`、ctor 里 `iput` 后调 `init`。**B2 的 TnoButton 即仿此**。
2. **动作接线模板**（现成三段，逐字抄）：
   - $5：`MenuManager.setViewID(View.SCENARIOS); setOrderOfMenu_Scenarios();`
   - $10：`ProvinceBorderManager.clearProvinceBorder(); setViewID(View.EDITOR);`
   - $12：`Dialog.setDialogType(Dialog$DialogType.EXIT_GAME);`
3. **元素挂载**：`MainMenu.<init>` 本地 `List v14` 持续 `invoke-interface {v14, obj}, List->add`（末尾 @~1965–2025 仍在加 $20/$21），随后 `initMenu(null, 0, 0, GW, GH, v14, true)`（@2040–2068，`invoke-virtual/range {v4..v11}`）。**插入点＝最后一个 add 与 initMenu 之间**。
4. **探针通道**（打探针指南 v1）：`AirDbgLog.dWrite(String)` ⇒ `files/aircfg_diag.txt`，免节流、诊断/自证专用；B2 用 `nTNO2`（块坐标回读）+ `nTNO2B`（按钮创建回读），各一次性（静态计数守卫）。

## §6 主菜单可用空间核对（本机初值）

- 面板 [148, 924]；图标列 [2240, 2400]；块 [1037, 2127]——与两者各留 ≈113px 净空；
- 顶部：块顶 559，与版本号（右上）/社交图标上半区无碰撞；底缘：条底 = GH−8；
- 无与既有元素重叠（$14 版本号在右上、$20/$21 制作名单在左下 x=PADDING×3、sparks 在底缘整宽——块覆盖其右半属预期）。

## §7 施工面清单（文件级，详见 v3 定稿）

| # | 内容 | 落点 |
|---|---|---|
| T1 | 新类 `menus/TnoBlock`（全静态）：drawAll/createButtons/几何getter/探针 | 新文件 `menus/TnoBlock.smali` |
| T2 | 新类 `menus/TnoButton`（extends Button）：ctor(String,int)/drawButtonBG/drawText(继承)/actionElement | 新文件 `menus/TnoButton.smali` |
| T3 | MainMenu.draw 插入 1 行（画块；`invoke-super` 前） | `menus/MainMenu.smali` @~3544 前 |
| T4 | MainMenu.<init> 插入 1 行（造三按钮入列；initMenu 前） | `menus/MainMenu.smali` @~2025 后 |
| T5 | 探针 nTNO2 / nTNO2B（dWrite，一次性） | T1/T2 内 |
| T6 | 门禁 check_r6t002.py + 模拟器 sim_r6t002.py | toolchain/act/ |

## §8 未决/待复核（交后续轮次）

1. 按钮端头语义：TNO 原版两笔（body 拉伸+右端头）在本素材上是否保留“右端头”一笔——B2 先按单笔整片拉伸实现，B3 对照实机观感再定（素材右端无独立端头细节，单笔视觉预期等价）。
2. 字体：初定 `CFG.FONT_REGULAR`（主菜单按钮同级字体）；若实机偏大可改 `FONT_REGULAR_SMALL`（B3 旋钮）。
3. hover 态：B2 用 `button_h_edge` 整片替换（简单可靠）；是否加叠色由 B3 定。
4. GUI_SCALE/BUTTON_HEIGHT 为推算值（1.6176/110），以装机后 `nTNO2` 回读为准校正。