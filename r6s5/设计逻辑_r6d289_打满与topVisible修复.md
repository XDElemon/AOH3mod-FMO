# 设计逻辑 · r6d289（2026-10-13）
> 版本定位：B5c 十三修 —— **修掉"过滤永不生效"的真根因（topVisible 双守卫写反，模拟器实锤）** + 把点击链探针**一次打满**（本轮之后不再为同一问题加探针）。

---

## 1) 版本号 + 一句话定位
- 版本：**r6d289**（dex `033d5f6d…`；apk `b040d8ab…`；装机 i=12，10:52:38）
- 定位：动"顶部栏筛选的判定函数"（topVisible）与"点击链取证"两个系统；达成的目标 = **筛选第一次真正能隐藏节点**（待你实测确认），并把点击没派发的问题的证据一次收全。

## 2) 设计目标（玩家可见的问题 → 上层意图）
- 玩家问题 A："进科技树还是**全部态**"——无论怎么开都显示所有节点。
- 玩家问题 B："按钮**点不到**"——点页签无任何反应。
- 上层意图：让"选哪栏就只显示哪栏"成立；让点击能真正落到页签上（后续再修坐标/层级）。

## 3) 设计规则与判定顺序（人话版判定链）
**过滤链（每帧/每次打开都会走）：**
1. 打开科技树 → 菜单构造 → `addTopTabs` 建三页签，**默认 `sTopCat="land"`**（陆军）。
2. 第一次绘制帧 → `pinTopTabs` 的"首实例"标记（实例级）触发一次：
   `dumpPinGeom`（打 nTSESS/nTTG2）→ `applyTopFilter(sTopCat)`。
3. `applyTopFilter` 顺序：`syncTabSelection`（高亮）→ **`applyNodeVisibility`（本次修复的核心）** → `rebuildLines`（连线）。
4. `applyNodeVisibility`：遍历菜单元素 → 只对 `ButtonTechnology`：
   `top = getTopCategory(该元素的目标科技ID)`；`vis = topVisible(top, 当前选中栏)`；
   `setVisible(vis)` + `setClickable(vis)`。
5. **`topVisible(P, S)` 的规则（本次修正后）**：若 S == `"all"` → 显示；否则**P == S 才显示**。
   - 修正前：S != "all" 时**恒返回"显示"** ⇒ 一个都藏不住 ⇒ 就是"全部态"。
6. 点击页签 → `onTopTabClicked(栏)` → 重走 3～5（换 S）。

**点击链（现状，取证中）：**
1. 按下 → `MenuManager.actionDown(x,y)` 扫描"活动菜单"元素：元素须 `visible`，且 (x,y) 落在
   `[posX+menuPosX, +width] × [posY+menuPosY, +height]` 内；命中者记录进 `activeMenuElementID`。
2. 抬起 → `MenuManager.actionUp(x,y,…)`：若之前有选中元素 → 走
   `MenuManager.actionElement(菜单号,元素号,是否右键)` → `Menu.actionElement(元素号)` → 元素的 `actionElement()`。
3. 我们的页签覆写了最后一步（`TechTopTab.actionElement`）→ 应打印 `nTTCLICK` 并调用切换。

## 4) 参数与阈值表
| 名称 | 当前值 | 单位 | 含义 | 调大/调小会怎样 |
|---|---|---|---|---|
| sTopCat 默认 | "land" | 字符串 | 首次打开的选中栏 | 改 "air"/"civil" 即换默认视图 |
| 页签初始 w/h | 0x40 / 0x44（64/68） | px | 构造时的占位尺寸 | 仅供参考，pin 每帧会重算 |
| pin 宽度公式 | 面板宽/4 − 2×PADDING | px | 每枚页签宽 | 影响点击带 |
| nTTAF/nTTCNT | 每次打开各1条 | 行 | 过滤入口/元素总数 | 判读用 |
| nTTVB/nTTVS | 前32次 | 行 | topVisible 的入参 | 判读用 |
| 探针计数上限 | 24（nMMU/nMMD/nMMA/nMMB）、32（nTTVB/nTTCNT/…0x20）、16（nTTAE/nTTAP） | 次 | 防日志爆炸 | 调大更全但更吵 |

## 5) 状态与生命周期
- **页签（TechTopTab）**：菜单构造期创建（构造器打 `nTTNEW`；`addTopTabs` 打 `nTTIX`=它在菜单列表中的下标）→ 每帧 pin（尺寸/位置/InView/Clickable）→ 绘制（`nTTD` 前3次记录坐标）→ 点击（`nTTCLICK`）→ 随菜单销毁。
- **过滤态（sTopCat）**：构造期置 "land" → 打开时首实例置一次（打 `nTTAF`）→ 点击切换时更新 → `applyNodeVisibility` 消费。
- **点击候选（activeMenuElementID）**：`actionDown` 写入 → `actionUp` 读取并派发 → 派发后由被点元素自行处理。

## 6) 边界与不变量（对齐/不改/必须成立）
- 对齐既有机制：筛选只动 `visible/clickable` 两个基类标志；不改科技树的搜索/排名/AI 逻辑。
- 不修改：`ButtonTechnology` 本体、科技数据、存档结构。
- 必须成立的约束：`Menu.actionElement(I)` 的虚分派链保持原样；我们只在 `InGame_TechnologyTree` 子类与 `TechTopTab` 子类上覆写。
- 探针安全：全部"独立块 + 寄存器分区核对"、`const/16` 防 nibble 溢出、守卫 `if-ge`=≥上限跳过。

## 7) 玩家可感知的表现
- 正常（本版期望）：
  1) 打开科技树 → **只剩陆军系节点与连线**；点"空军"→只剩空军；点"民用"→只剩民用。
  2) 页签高亮跟随选中栏。
  3) 日志出现 `nTTAF land`、`nTTCNT …`、`nTTVB/nTTVS`、`nTTV off>0 vis<75`。
- 异常（判读用）：
  - 仍"全部态"：看 `nTTV off` 是否仍为0 / `nTTVB/nTTVS` 输入是否反常。
  - 页签点击仍无反应：看 `nMMU id` 是否=-1（没选中）、或 `nMMA/nTTAE/nTTAP` 是否缺失（没派发）。

## 8) 失败与回退
- 正常节流：所有探针均有计数上限（本次分别为16/24/32），到量即静默——"日志少"≠"没发生"。
- 回退点：`InGame_TechnologyTree/MenuManager/Menu/TechTopTab` 的 `.pre_r6d289` 备份；归档包 r6d288 为回退版本。
- 已知不覆盖：本地八件套不覆盖 ART 级异常，需真机启动验证（本次装机已验证不闪退）。

## 9) 验收标准（可证伪）
- 看日志：`nTTAF land` 1条、`nTTCNT` 一条且≈48、`nTTV off=X vis=Y` 且 **X>0**。
- 看画面：打开即"陆军态"；点"空军"→节点与连线只剩空军；点"民用"→同理。
- 看到什么=不通过：仍全部节点可见；`nTTV off=0`；页面闪退。

## 10) 变更清单摘要（只列规则/判定）
- **修正** `topVisible`：两处 `if-nez` → `if-eqz`（语义从"恒真"改为"相等才真"）。
- **新增探针**：`nTTVB/nTTVS`（topVisible 入参）、`nTTCNT`（元素总数）、`nTTIX`（每枚页签的菜单下标）、
  `nMMU px/py/w/h`（抬手时选中元素的几何）、`nMMD`（按下坐标）、`nMMA`（派发入口的参数）、`nMMB`（任意菜单的 actionElement）。
- **修正门禁**：S5f 口径（if-eqz×2+无 if-nez）、新增 S19/N13；门禁内置小解释器语义修正（if-nez/if-eqz）。
- **模拟器**：新增 D 组（真机 topVisible 六用例 + 反转敏感性），整体 13→18 项全绿。

## 11) 风险与待办
- 风险：点击链的"选中了谁"尚未证实（id43 反复出现，疑似事件被同带上的其它元素吃掉）；`nMMU id` 的几何数据将直接定位。
- 待办：①读完本轮日志后修点击（坐标/层级）②布局改造（标题上顶/内容下移/中间放三按钮）③验收后把这套探针按需摘除。