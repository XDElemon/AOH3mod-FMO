# 调研 · TNO 启动界面移植 v2 拓展（FMO / AoH3 侧 + 双侧对照）

> 轮次：第二轮「拓展」＝目标侧（AoH3/FMO）全量 + 与源侧对照 + 边界/风险。
> 工作树：/tmp/w3a/smali（5522 smali，v119 底座 + 我方补丁）；参照快照：/sdcard/GLG/分析/终序千禧_decompiled（2026-08-23）。
> 结论先行：FMO 侧**具备完整可注入点**——①图片注册（InitGame.loadImages_*，已有我方 radarFill 先例模板）②主菜单类（MainMenu 可直接改造/加元素）③加载画面（InitGame.draw 可叠加）④View 体系（懒创建+重建惯例，与 AoH2 同构）。

---

## §1 FMO 启动链（入口→出口）

1. 入口：AndroidLauncher → **AA_Game**（jakowski/AA_Game.smali；方法：create@433、initGame@1421、render@2056）。
2. `AA_Game.initGame()`：**`setViewIDWithoutAnimation(View.INIT_GAME_MENU)`**（@1862–1864）⇒ 启动进入「初始化菜单」。
3. MenuManager（41685 行）：字段 `INIT_GAME_MENU`@109；懒创建 InitGame @15864–15877；相关：INIT_GAME_MENU_LANGUAGE→Init_SelectLanguage@15796/15809、INIT_GAME_MENU_SELECT_MAP→Init_SelectMap/SelectMap2@15839/15853。
4. **InitGame**（加载器，23552 行）：
   - 方法表：loadImagesInit@489、loadImages_1..8@828→19003、loadSparks@19003、draw@19144、initGame@19531、loadMapOverlays@23512。
   - draw()（@19144–19509）：每帧 `initGame()`；`InitGame.background` 带进度透明度动画、gradientXY（shaderAlpha）、gradientVertical 上下条、super.draw（元素）、进度>0x8 后画加载进度。
   - 转出：setViewIDWithoutAnimation@19710/19746、setViewID@23457（含 →MainMenu 路径；开工时精确锚定）。
5. **MainMenu 显示**：MenuManager MAINMENU 段 @15514–15573：懒创建/**重建** `new MainMenu()`（与 AoH2 同款「重进重建」惯例）。
6. **View 枚举**（menu/View.smali，1665 行，`final enum`）：CLOUDS_MENU / CREATE_CIV / EDITOR_* / GAME_LOST / **INIT_GAME_MENU** / INIT_GAME_MENU_LANGUAGE / INIT_GAME_MENU_SELECT_MAP / IN_GAME* / …（MAINMENU 等其余条目）。

---

## §2 主菜单现结构（menus/MainMenu.smali，3548 行）

### 2.1 元素表（构造 @73–2068；$1–$22）

| # | 基类 | 角色/文本 |
|---|---|---|
| $1 | ButtonMainTitle | 主标题（mainTitle 图） |
| $2/$3 | Button_LoadGame_MainMenu | Continue: <civ> <date>（续玩/最佳存档） |
| $4 | ButtonGame2 | （无 const 文本，待核） |
| $5 | ButtonGame2Sparks_Hovered | "NewGame" |
| $6 | ButtonGame2Sparks_Hovered | Campaign（依赖 game/Multiplayer.txt） |
| $7 | ButtonGame2Sparks_Hovered | "Multiplayer" |
| $8 | ButtonGame2Sparks_Hovered | （待核） |
| $9 | ButtonGame2 | "LoadGame" |
| $10 | ButtonGame2 | "Editor"（自带 InstalledMods 信息） |
| $11 | ButtonGame2 | "Settings" |
| $12 | ButtonGame2 | "ExitGame" |
| $13 | ButtonGame2_IMG | HallofFame |
| $14 | Text_Static | — |
| $15–$19 | Button_MainMenuIcon | QQ / YouTube / Android / iOS / Steam（URL 跳转） |
| $20/$21 | Text_Static | 制作名单（含底包 "Polaris AoH3 by Team Rainfall"） |
| $22 | Game$SimpleTask | "loadBackground"（自动换背景异步任务） |

### 2.2 draw()（@3137–3548）
淡入黑遮罩+bgAlpha 动画 → `InitGame.background` 居中（灰调） → gradientHorizontal2（shaderAlpha） → sparks 动画（MenuManager.sparksAnimation） → 菜单盒 chrome（drawBoxCorner / drawBox_EDGE_TOP_LR / mainBox / gradientXY） →（桌面）定时 post "loadBackground" → super.draw（元素）。

### 2.3 布局常量（构造 @118–200）
iXPos=W/(GUI_SCALE*10)；iWidth=max(LEFT_MENU_WIDTH, min(240, W/4)*GUI_SCALE)；iHeight≈标题+6 行按钮；左侧竖排。

---

## §3 资源与加载体系（AoH3）

- 路径拼法：`"ui/" + CFG.getRescouresPath() + ...`；`getRescouresPath()`＝`interface/XXH/` | `interface/XH/` | `interface/H/`（按 dpi；CFG @5719 起）。
- 装机 APK 实测（r6d258 包）：`assets/ui/interface/{H,XH,XXH}/mainMenu/`：mainTitle.png(15997B)、mainBox.png、mainBox2.png、android/app/fb/pc/twit/yt.png。
- 图片注册：`textures/ImageManager.addImage(path)` → index → `sput Images.<字段>`（textures/Images.smali）；加载点＝`InitGame.loadImages_1..8`。
- **我方先例（加图模板）**：`radarFill` 插入 @menus/InitGame.smali:1088（loadImages_1 内）：`const-string path → addImage → move-result → sput Images.radarFill`（同批还有 ringSel84/112 等）——移植素材照抄该模式即可。

---

## §4 双侧对照表

| 概念 | AoH2 / TNO | AoH3 / FMO | 移植含义 |
|---|---|---|---|
| 视图枚举 | Menu（eMAINMENU…） | View（final enum） | 目标菜单=View.* 条目 |
| 菜单容器基类 | SliderMenu | Menu | 元素挂载方式同构 |
| 主菜单类 | Menu_TNOMain | menus/MainMenu | 改造/加元素对象 |
| 加载菜单 | Menu_InitGame | menus/InitGame | 叠加绘制对象 |
| 懒创建+重建 | getViewID(Menu)@17777 | getViewID(View)@15514 | 同款惯例 |
| 图片注册 | Zetvl_Exclusive_ImageManager | textures/ImageManager | 已有我方模板 |
| 元素体系 | MenuElement / Button_* | menu_element/ + button/* | 自绘按钮可仿写 |
| 资源 res | H/XH/XXH/XXXH/XXXXH | interface/{H,XH,XXH}/ | 需按目标 dpi 档投放 |
| 背景 | bg_game 静态 | InitGame.background+sparks+自动换 | 可复用或替换 |

---

## §5 素材现状（用户侧，tno_ui_extract/定制三图/）

- 三张图：296×330 裁切版（原图 296×375）；
- 三个框：设计图 1 张（原样保存）；
- 按钮两态：9×36（＝原版同尺寸）；
- tv_button_edge 底座：163×71（＝原版同尺寸）。

## §6 边界与风险

1. **分辨率档**：ui/interface/{H,XH,XXH}——素材按目标档投放；或走直链「ui/…」绕开 res 机制（radarFill 先例）。
2. **加载清单插入必须原子+先验锚点**（老规矩：repr count==1 才写盘）。
3. 主菜单每次重建实例——新元素类必须无静态残留。
4. PairIP/签名链不变（走既有 build 链）。
5. 屏幕比例：AoH3 用 GUI_SCALE/PADDING 体系；TNO 的绝对像素公式需换算迁移。
6. 不得破坏原主菜单功能（NewGame/Load/Settings/Exit 等保留与否＝待拍板）。

## §7 历史与现状

- FMO 构建链/装机链/推送链（见《交接_新人上手指南》与 sync_and_push）。
- 截至 r6d258，我方补丁未触碰任何菜单类（菜单＝全原版结构）。
- 本课题素材已备；仓库 AOH3mod-FMO。

## §8 未决点（待用户拍板）

1. 移植范围：仅主菜单？加载画面（进度条/双 logo/提示）是否也要？
2.「三个框」素材的最终用法（用户后续会发最终组装件？）。
3. 布局方向：完全 TNO 化（中央三图+下方按钮+底座）还是局部替换。
4. 按钮动作映射（单人游戏→AoH3 新游戏流程？编辑器→View.EDITOR？退出→退出对话框？）。
5. 资源投放档位与尺寸规范（H/XH/XXH 三档）。