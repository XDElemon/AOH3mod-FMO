# 调研 · B5c R3（定稿）：r6d273 施工图（锚点 / 寄存器 / 门禁 / 验收）

> 2026-10-12｜批次 r6d273（改码 + 资源混合批：InGame_TechnologyTree + 新类 TechTopTab + 语言键）｜模板=上一归档 r6d272。

## 1. 目标
- 科技树顶部栏（方案 A）：**标题下方一行四枚标签：全部 / 陆军 / 空军 / 民用**；
- 点击 = 钢四式筛选：选中某栏**只显示该栏节点与连线**；"全部"=取消筛选恢复；
- 标签文字走语言键；选中标签高亮；标签固定在面板上（不随树平移）。

## 2. 编辑点（唯一锚点，命中数=1）
| # | 文件 | 锚点 | 插入 |
|---|---|---|---|
| E1 | InGame_TechnologyTree.smali | `.end field\n# direct methods` | 3 个新字段（lTopTabs/lAllLines/sTopCat） |
| E2 | 同上 | `...->initMenu(Laoc/…MenuTitle;IIIILjava/util/List;ZZ)V` 调用行 | 之后插 `addTopTabs(v11)`（单行） |
| E3 | 同上 | `.line 264` + `move-object/from16 v0, p0` 组合 | 插 `pinTopTabs()`（单行） |
| E4 | 同上 | 文件尾 | 追加 9 个方法（addTopTabs/newTopTab/pinTopTabs/applyTopFilter/syncTabSelection/applyNodeVisibility/rebuildLines/topVisible/dumpTreeGeom） |
| E5 | 新建 | `menu_element/button/TechTopTab.smali` | 新类（继承 Button） |
| E6 | 语言 ×3 | 文件尾追加 | 4 个键 ×3 语言（同时写入 assets_r6t007 与 out 暂存） |

## 3. 注册表分配（新增方法，上限 16）
- `addTopTabs`(.registers16：loc v0..v13，p0/p1=v14/v15)：v0=cell、v1=margin/y、v2=w、v4=h、v3=常量1、v5=列表temp、v6..v8=obj块、v9..v12=int块、v13=结果obj。
- `newTopTab`(.registers16：loc v0..v8)：v0=文本obj、v1=实例obj、v2..v4=obj、v5..v8=int。
- `pinTopTabs`(.registers8)：v0=i、v1=list、v2=size、v3=tab、v4=menuPos、v5=home-menu。
- `applyTopFilter`(.registers16)：三段式（标签选中 → 节点可见/可点 → 连线列表重建）；全为直线代码，无对象↔数值混用。
- `topVisible`(.registers5)：`sel=="all" || top.equals(sel)`。
- `TechTopTab` 构造器(.registers15)：v0..v7 连续块调用 Button 6 参构造（自动居中、BUTTON_HEIGHT）。
- `drawButtonBG`(.registers16)：v0..v3=x/y/w/h；v4=Color；v5=数值temp；v6=obj(temp/img/WHITE)；v8..v11=数值块；v7=obj(sb 拷贝)。

## 4. 判定与极性（重点）
- `topVisible`：`if-nez`=≠0 跳（"等值失败才跳下一检查"）；反转任一 `if-nez→if-eqz` 将导致"选中栏全部隐藏/全显示"类故障 → **模拟器双跑道（正/反）**。
- 钉子公式：`posX = homeX − menuPosX`（**home 在前、menuPos 在后**；顺序反了标签会跑到屏幕外/反向移动）→ 门禁顺序断言 + 数值敏感性检查。
- 过滤分支顺序：先判 `"all"`（恢复全量）再有过滤分支。

## 5. 门禁（check_r6d273.py）
- S1 新类结构（字段/方法/父类）；S2 三字段存在；S3 ctor 单行调用且位于 initMenu 之后；S4 draw 单行调用且位于 super.draw 之前；S5 六方法齐备 + pin 的 (home→menu→sub) 顺序 + applyTopFilter 含四要素（getMenuElementsSize/setVisible/setClickable/lAllLines）；S6 语言键 3×4。
- 模拟器：`topVisible` 6 用例 + 反转敏感性；pin 数值敏感性。
- 负样本 N1 删 pin 调红 S4；N2 addTopTabs 移到 initMenu 前红 S3；N3 删 1 语言键红 S6；N4 交换 sub 操作数红 S5。

## 6. 验收（可证伪）
1. 打开科技树：标题下出现 4 枚标签，默认"全部"高亮；`nTTG` 行出现（aircfg_diag.txt）。
2. 点"陆军"：只剩陆军系（军队+政务）节点及连线；点"空军"只剩空军；点"民用"只剩其余；点"全部"恢复。
3. 切换时无崩溃、无残留连线；关闭重开恢复默认"全部"。
4. 原有研究/建造功能无回归。