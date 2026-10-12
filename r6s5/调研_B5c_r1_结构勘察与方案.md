# 调研 · B5c R1：科技树顶部栏——结构勘察与落地方案

> 2026-10-12｜只读勘察（InGame_TechnologyTree / Menu / ButtonTechnology / MenuManager）。

## 一、UI 结构（绘制与点击的管线）
1) **元素体系**：菜单把 `List<MenuElement>` 交给 `Menu.initMenu(...)`；`Menu.drawMenuElements` 逐元素调用 `element.draw(SB, menuPosX+iTranslateX, menuPosY+iTranslateY, …)`；点击由 `MenuManager → Menu.actionElement(i) → element.actionElement()` 分发——**新元素只要进列表，即可自动获得绘制与点击**。
2) **菜单平移**：技术树打开时用 `setMenuPosX()` 自动居中到某个研究节点（构造函数尾部）；元素屏幕坐标 = 自身 pos + `menuPosX/menuPosY` + 全局 translate。
3) **节点**：每个节点是 `ButtonTechnology`（含 `iTechnologyID`，`getCurrent()` 可取）——未来做"按栏过滤/暗化"直接遍历元素即可。
4) **树视口**：`Images.insideTechTree` 矩形 = `getPosX()/getPosY()+v16`（v16=顶部偏移，含标题高度等）——该矩形上缘就是"标题区"与"树内容区"的分界线。

## 二、顶部栏放哪里（三个候选）
| 方案 | 位置 | 评价 |
|---|---|---|
| **A（推荐·钢四同款）** | **标题图正下方、树视口上缘之上，横跨面板的一行三枚标签**（陆军/空军/民用） | 与钢四 folder_tabs 位置一致；不遮挡节点；一眼可见 |
| B | 面板右侧竖排 | 省上部空间，但不像钢四、遮挡部分节点列 |
| C | 面板底部横条 | 离视线远、与底部按钮可能冲突；不推荐 |

**几何草案（A）**：行高 ≈ `BUTTON_HEIGHT` 级别（约 60–72px）；三枚等宽（面板宽/3）或固定 220px 左对齐 + PADDING 间距；上缘贴树视口上缘内侧 ±PADDING；**固定在面板上（不随 tree 拖动/居中平移）**——实现时每帧把元素 pos 校正为「目标屏幕坐标 −（menuPosX,menuPosY）」。

## 三、绘制与素材
- 免新素材方案：**填充**用 `Images.pix`（白像素）+ `SpriteBatch.setColor` 着色；**描边/选中框**用 `Renderer.drawBoxCorner`；**文字**用 `Renderer.drawText(SB, String, x, y, fontID, Color)`（字体用 `CFG.FONT_REGULAR_SMALL` 等）。
- 选中态：亮色底 + 描边；未选中：暗底；hover：微亮。后续若要美术风格化，再换贴图。

## 四、交互（建议 MVP；请选）
1) **仅切换+高亮**（最小）：点击切换"当前栏"，选中的标签高亮；
2) **+暗化非同栏节点**（推荐）：遍历 `ButtonTechnology` 元素，把不属于当前栏的节点叠一层半透明黑（不改原绘制代码，只在 draw 里补罩）；切回"全部/民用"再恢复；
3) **+点击定位**：点击某栏后自动把菜单平移/滚动到该栏首个节点（用 `setMenuPosX`）。

## 五、实现草图（B5c-α）
- 新类 `TechTopTab extends MenuElement`（smali）：字段 `sTopID、w、h、selected`；`drawButtonBG` 画底/边/文字；`actionElement` 写回 `InGame_TechnologyTree` 的静态选中态；
- `InGame_TechnologyTree`：构造器里创建 3 枚标签（land/air/civil，**名称建议走语言键**），加入 `menuElements`；`draw()` 里在 `super.draw` 前校正三者 pos（钉住）；
- 选中态可存 `InGame_TechnologyTree` 静态字段（后续 B5c-β 供节点暗化/过滤使用）。

## 六、待答（给用户）
（已答复，见下节）

## 七、用户裁定（2026-10-12）
- **交互**：①基础＝点击切换栏 + 选中标签高亮；②筛选＝**钢四式"只显示所选栏"**（非同栏节点与连线隐藏），并提供**"取消/全部显示"**入口（默认显示全部）；③**标签文字＝新增语言键**（中/英/繁）。
- **位置**：待用户查看 A/B/C 标注图后拍板（图：`B5c_ABC_位置示意.jpg`）。