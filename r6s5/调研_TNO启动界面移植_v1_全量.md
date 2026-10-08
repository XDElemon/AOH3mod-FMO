# 调研 · TNO 启动界面移植 v1 全量（AoH2 / TNO 侧）

> 项目：《终序千禧》· FMO（手游侧 AoH3，age.of.history3.qiamxi.zhiri）
> 课题：把 tno_aoh2 的「启动界面」移植进 FMO。本文件＝源侧（AoH2/TNO）全量。
> 源：/sdcard/GLG/历史23/tno_aoh2.apk（baksmali 工作树 /tmp/tno_dex，共 5775 smali）
> 轮次：第一轮「全量」＝入口→出口整条链：应用启动 → MenuManager → 加载画面 → 主菜单 → 交互。
> 本文件为只读调研产物；写码须待第三轮（定稿）。

---

## §0 对象与域

- 域：`age.of.civilizations2.jakowski.lukasz`（AoH2 引擎 + TNO 补丁全部在此包）。
- 三块：
  1. **启动加载画面**（TNO 定制）：`Zetvl_Exclusive` + `Menu_InitGame`
  2. **主菜单**：`Menu_TNOMain`（三图 menupics + 三按钮 + 底座 tv_button_edge）
  3. **配套体系**：`Zetvl_Exclusive_ImageManager`（图片注册）、`MenuManager`（视图调度）

---

## §1 启动链（入口→出口）

1. 入口：AndroidLauncher → **AoCGame**（ApplicationListener）。
2. **MenuManager.<init>**（@952–1854）只预注册一个菜单：`new Menu_InitGame`（@1843–1847）→ `addMenu` 返回索引 → 存字段 `INIT_GAME`（@1851）。其余菜单全部**懒创建**（见 §3.4）。
3. `viewID` 字段（@930）在构造内重置（@1779，初始指向索引 0）；索引 0＝第一个 addMenu＝**Menu_InitGame** ⇒ 应用启动即停在「初始化菜单」。
4. 查询钩子 `getInInitMenu()`（@15535：`viewID == INIT_GAME`）被 4 处使用：AoCGame@5181、Game_Render@3350、Map_BG@650、Map_TouchManager@930（加载期特判）。
5. **Menu_InitGame 行为**（10284 行）：
   - 构造（@36–118）：`iNumOfSteps=0x21(33)`；`numToLoad=60/120`（桌面）或 30/75（移动）（@132–181）；全屏 initMenu（无元素）。
   - `draw()`（@10106–10284）：首帧 `Zetvl_loadAssets()`（@10115，一次性加载 TNO 全部图片+字体）；每帧 `postRunnable` 增量 `loadAssets()`（@10157–10161）；画随机背景图（`Images.backgrounds`→`CFG_Zetvl.drawBG`，@10232）；进度＝`iStepID / (iNumOfSteps + 2*省数)`（@10235–10257）→ `Zetvl_Exclusive.drawTNOLoadingscreen(batch, progress)`（@10259）。
   - **加载完成 → `setViewID(Menu.eMAINMENU)`**（@10093–10097，loadAssets 尾部 `:cond_2471`）。
6. **主菜单显示**：`MenuManager.getViewID(Menu)`（@17777）eMAINMENU 分支（@17804–18010）：若 `MAINMENU==-1` 创建 `Menu_TNOMain` 缓存；**否则把旧实例替换为新 `Menu_TNOMain`**（@18025–18029）再 `setVisible(true)` ⇒ 每次回主菜单都是新实例（状态重置）。

---

## §2 加载画面（Zetvl_Exclusive，1468 行）

- 静态字段：`TNO_White`（青色白 0x3f42c2c3/0x3f32b2b3/0x3f49c9ca）、`fontTNOSuper`（BitmapFont）。
- **`drawTNOLoadingscreen(SpriteBatch, float p)`**（@43–788）：
  1. 提示语轮换：每 3120ms（0xc30）从 `langManager.getLoading("L"+rnd(0..iLoading_NumOfTexts))` 取随机提示，追加 `..`，存 `CFG.sLoadingText`；
  2. 画 `TNO_clausewitz_logo`：x＝w/5*4、y＝H-h（底左）；`TNO_pdx_dev_logo`：x＝W-w-w/5*4、y＝H-h（底右）；
  3. 画 `TNO_LoadingScreen_loadingStatus`：居中 `W/2-w/2`、y＝0；
  4. 进度条：底＝`Progress_2`、填充＝`Progress_1`（scissor 按 p 裁剪），位置按 loadingStatus 高度计算；
  5. 文字：`CFG.sLoading`（Loading 字）+ `CFG.sLoadingText`（提示语），颜色 `0x59c7c2ff`；提示语底图＝`TNO_LoadingScreen_loadingTip`（居中、y＝H-h）。
- **`drawTNOTextLineWrapRight(...)`**（@789）：文本换行工具（fontTNOSuper）。
- `loadFontTNO()`（@1208）：从语言键 `fontSpec` 生成字体；`loadImage()`（@1461）→ `Zetvl_Exclusive_ImageManager.load_Exclusive_Image_TNO()`。

---

## §3 主菜单 Menu_TNOMain（1437 行）

### 3.1 字段与尺寸（@7–21、@64–170）
- `Width1 = GAME_WIDTH / 2.2`（@70–80）；`buttonWidth/Height`＝`button_edge` 图尺寸（9×36）；`tvButtonWidth/Height`＝`tv_button_edge`（163×71）；`menupicsHeight = Width1 / 935 * 375`（@134–170）。

### 3.2 元素表（12 个，构造 @52–902；addMenu 顺序＝索引）
| idx | 类 | 角色 | 动作/目标 |
|---|---|---|---|
| 0 | `$1`（Button_Menu_LR_MainMenu） | 游戏 logo（gameLogo 图） | eABOUT |
| 1 | `$2`（Button_Menu_LR_MainMenu） | 单人游戏「Games」 | eGAMES |
| 2 | `$3`（Button_Menu_LR_MainMenu） | 游戏编辑器「Editor」 | eEDITOR |
| 3 | `$4`（Button_Menu_LR_MainMenu） | 退出游戏「ExitGame」 | Dialog.EXIT_GAME |
| 4 | `$5`（Button_Menu_LR_MainMenu） | TNO logo（logo_tno 图） | eABOUT |
| 5 | `$6`（Button_Menu） | 设置图标 | eSETTINGS |
| 6 | `$7`（Button_Menu） | 成就/制作图标 | eACHIEVEMENTS |
| 7 | `$8`（Button_Menu） | 生涯图标 | eABOUT |
| 8 | `$9`（Button_Menu_LR_MainMenu） | PDX logo（pdx_dev_logo 图） | eABOUT |
| 9 | `$10`（Button_Menu） | 文本元素：版本号（TNO_White） | hover=GameInfo |
| 10 | `$11`（Button_Menu） | 文本元素 | hover=EditorInfo |
| 11 | `$12`（Button_Menu） | 文本元素 | hover=ExitInfo |
- `$13`（TNO_info_button）**未被实例化、图片未加载＝死件**，移植时忽略。
- 元素位置公式：三个按钮（idx1–3）x 三等分中央块（`W/2-W1/2 + i*W1/3`）、y＝`H - tvButtonHeight + PADDING*3`；`$10/$11/$12` 同 x 三等分、y＝`H - tvButtonHeight - menupicsHeight`。

### 3.3 draw()（@970–1323）顺序
1. `beginClip` → 2. 背景 `bg_game`（两种画法 @1067–1179）→ 3. **menupics**：x＝`W/2-W1/2`，y＝`(H-tvBH-mH+P) - imgH`（按代码原样；施工时以实际渲染校准），尺寸 `W1×mH`（@1186–1237）→ 4. **tv_button_edge ×2**：左段 `(W/2-W1/2, H-2*tvBH, w=W1-163, h=71)`＋右端头 `(W/2+W1/2-163, 同, flag=1)`（@1239–1312）→ 5. `drawMenu()`（画 12 元素）→ `endClip`。
2. 三按钮自绘（如 `$2.drawButtonBG`）：用 `button_edge` 图两笔——①`draw2(posX+44, posY-36, w-97, 36)`；②原尺寸 9×36 于 `(posX+w-53, posY)`；`drawText` 重写（位置/颜色）；`actionElement` 切目标菜单。

### 3.4 调度与语言
- `updateLanguage()`（@1362–1438）：idx1＝"Games"、idx2＝"Editor"、idx3＝"ExitGame"、idx(size-3)＝`$10`＝"VersionCode"（均语言键）。
- `setVisible()`（@1332–1346）：记录 `lTime`。

---

## §4 素材全表（gfx/interface/TNO/，26 件；尺寸实测）

| 文件 | 尺寸 | 用途 |
|---|---|---|
| menupics.png | 935×375 | **三图整图**（三张各 296×375，分隔带 x[0..8)/[304..319)/[615..631)/[927..935)） |
| tv_button_edge.png | 163×71 | **按钮底座横条**（左段铺满+右端头） |
| button_edge.png | 9×36 | 三按钮**常态**贴图 |
| button_h_edge.png | 9×36 | 三按钮**高亮**贴图（本版未接线） |
| button_left/right.png | 24×36 | 超级事件弹窗按钮两端 |
| picture_frame_dark.png | 423×308 | 相框素材（本版未用） |
| logo_tno.png | 401×278 | 右上 TNO logo（$5） |
| pdx_dev_logo.png | 128×192 | $9 / 加载画面右下 |
| clausewitz_logo.png | 128×128 | 加载画面左下 |
| icon_settings/credits/career_profile.png | 41×45 级 | $6/$7/$8 |
| LoadingScreen_Progress_1/2.png | 934×40 | 进度填充/底 |
| Loadingscreen_loadingstatus.png | 1400×92 | 加载横幅 |
| Loadingscreen_loadingtip.png | 1400×148 | 提示语底图 |
| tiled_bg_left/right.png | 28×190/29×190 | 平铺背景条 |
| tiled_window_bigevent_border_Dleft/Dright/Uleft/Uright.png | 19×68/19×174 | 超级事件边框 |
| superevent_text_underlay.png | 550×137 | 超级事件文字底 |
| interface_filter.png / interface_filter2.png | 627×431/500×300 | 滤镜 |

---

## §5 图片注册与加载体系

- `Zetvl_Exclusive_ImageManager`（350 行）：`List<Image>`；`addImage(path)`＝`Gdx.files.internal(path)`→Texture→Image（失败抛 `IllegalStateException("load Assets Failed! [Zetvl] ...")`）；`getImage(i)`。
- 两个加载口：`load_Exclusive_Image_TNO()`（@223：tiled_bg×2、superevent_text_underlay、tiled_window_border×4、picture_frame_dark、button_left/right、interface_filter）＋ **`Menu_InitGame.Zetvl_loadAssets()`（@119–420：其余全部**＋@383 `loadFontTNO`）。
- 文件路径根＝`assets/gfx/interface/TNO/`。

## §6 语言键表

`Games` / `Editor` / `ExitGame` / `VersionCode`（＝"TNO1.0.0.当代托德西利亚斯"类串）/ `GameInfo` / `EditorInfo` / `ExitInfo` / 加载提示 `L0..Ln` / `fontSpec`。

## §7 关键行号索引（施工前逐字复核）

- MenuManager：构造 @952；Menu_InitGame 注册 @1843–1851；`getViewID(Menu)` @17777；eMAINMENU @17804/18025；`getInInitMenu` @15535；`setViewID(Menu)` @109790
- Menu_InitGame：Zetvl_loadAssets @119；loadFontTNO 调用 @383；loadAssets @912；setViewID(eMAINMENU) @10093–10097；draw @10106–10284
- Zetvl_Exclusive：drawTNOLoadingscreen @43；loadFontTNO @1208
- Menu_TNOMain：构造 @52；menupics draw @1186–1237；tv strip @1239–1312；updateLanguage @1362
- Menu 枚举：eMAINMENU @382（Menu.smali 4329 行）

## §8 备注/待复核

1. menupics 的 y 公式含 `-imgH`（@1224–1228），与直觉不符——施工移植时按「实际截图位置」校准一次。
2. `button_h_edge` 本版未接线；`$13`/`info_button` 死件；`$11/$12` 无文本设置（仅 hover）。
3. 主菜单每次进入会**重建实例**（MenuManager @18025），如需保留状态要注意。
