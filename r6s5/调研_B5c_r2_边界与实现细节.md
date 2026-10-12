# 调研 · B5c R2（拓展）：元素管线 / 点击命中 / 隐藏机制 / 语言键 / 重建语义

> 2026-10-12｜只读勘察（Button / MenuElement / Menu / MenuManager / TechnologyTree / languages）。

## 1. 元素管线（已实锤）
- `Menu` 持 `List<MenuElement>`；`Menu.drawMenuElements` 对每个元素：`getVisible()` → `getIsInView()` → `draw(SB, menuPosX+iTranslateX, menuPosY+iTranslateY, isActive, scrollableY)`（倒序绘制）。
- 点击：`MenuManager` 命中扫描 → `Menu.actionElement(i)` → `element.actionElement()`；命中公式（以 Y 为例）= `element.getPosY() + menu.getMenuPosY()` 的区间比较（A 路径另含 `menu.getPosY()`；本项目树菜单走 B 路径标准扫描）。
- 结论：**新元素只要加进列表，绘制与点击全自动**；把元素 pos 每帧设为 `home − menuPos`，即可"钉在面板上"（钉子公式与命中公式同坐标系）。

## 2. Button 基类（可复用）
- 构造器 8 参：`(String text, int fontID, int textPosX, int x, int y, int w, int h, boolean clickable)`；6 参版用 `BUTTON_HEIGHT`（=0x44=68）。
- `init` 设置 `typeOfElement=BUTTON`、pos/宽高、文本、textPosition（`textPosX<0` ⇒ 自动水平居中 `Button$1`）、`oCheckbox`（必须初始化，否则 draw NPE）。
- `draw(SB,IIZZ)`：`drawButtonBG` + `drawText`（子类覆写这两个即可）；`getColor(isActive)` 提供 hover/active 文字色。
- 结论：TechTopTab 继承 Button，覆写 `drawButtonBG`（自绘底/边）+ `actionElement`；文字用默认居中绘制。

## 3. 隐藏/恢复节点（钢四式"只显示所选栏"）
- 节点元素 = `ButtonTechnology`，字段 `iTechnologyID`，`getCurrent()` 可取。
- `Menu.drawMenuElements` 会 `getVisible()` 过滤 → `setVisible(false)` 即不画；配合 `setClickable(false)` 保证不可点。
- **连线**：`InGame_TechnologyTree.lines`（List<TechLine>）+ `iLinesSize` 为绘制循环双入口（draw 循环用 `iLinesSize` 计数、`lines.get(i)` 取条目；同循环还写 `nPath` 坐标）。
  ⇒ 过滤时**整体换列表 + 同步 iLinesSize** 最稳（不动 draw 循环）：`lAllLines` 备份全量，过滤时 new ArrayList 子集，恢复时换回。
- `TechLine.iTechID` = 该线所属（子）科技 → 按它的 top 归属过滤即可。

## 4. 语言键
- 三份：`Bundle.properties`（EN）、`Bundle_cn_sp.properties`（简体）、`Bundle_cn_tr.properties`（繁体）；格式 `Key = value`。
- 新增 4 键：`TopCategory_All / _Land / _Air / _Civil`。

## 5. 生命周期（重要）
- `MenuManager.rebuildInGame_TechnologyTree(ZZ)V` 每次打开**重建** `InGame_TechnologyTree` 实例（元素全新）⇒ 本批选中态设计为"每次打开重置为全部"，无跨局残留。

## 6. 探测
- 新增 `nTTG w=.. h=.. th=.. pad=..`（dWrite；用于校准布局，不在采样家族）。