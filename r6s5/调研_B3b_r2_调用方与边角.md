# 调研 · B3b R2：调用方、相邻系统与边角（拓展轮）

> 2026-10-11｜只读。

## 1) 路由表复用（唯一来源）
- `AirForceManager.artGroupOf(civID)`：chi/chn→0（中）；usa/jap/kor/tai→3（美）；rus/sov/prk/ind/vnm/irn→2（俄）；ger/fra/eng/ita/spa/pol/ukr→1（欧）；**默认→2（俄）**。
- 与 B3 发放路由、C2 贴图路由完全同表 ⇒ 门禁、发放、贴图三者永远一致。

## 2) 全入口复核（今日实证）
| 入口 | 走闸门? |
|---|---|
| AI 选科技（AI_SelectTechnology） | ✅ @40 |
| 研究队列（PlayerTechQueue 加/校验） | ✅ @347/@742 |
| 选择界面（InGame_TechnologyChoose 列表） | ✅ @857（只列 available） |
| GameThread AI 备选研究 | ✅ @973 |
| 树点击（ButtonTechnology.actionElement） | 按钮状态=techAvailable 才可点（隐藏后无按钮） |
| addTechnology 完成后自动续研 | 读玩家队列（队列本身已受闸门） |

## 3) `lTechnology` 的其它引用面（不受影响/已核）
- `InGame_Civ_UnlockedTechnologies`：玩家**自己**的已解锁科技列表（civ=player）——门禁后玩家只会拥有本组节点 ✅
- `InGame$4`：悬停显示**玩家当前研究**名 ✅
- `InGame_ShareTechnology`：分享列表=**给出方"已研究"**的科技（门禁后无人持有他组，自然无跨组）✅
- ChangeIdeology / HRE / ProvinceInfo 等：只读"需求文本"，与我们的节点无引用关系 ✅

## 4) 边角与已知取舍
1. **过渡期存档**：若某国在门禁前已研了他组科技（单位已解锁）→ UI 仍会隐藏该节点（看不到但已有）——边缘，声明不处理（旧档本来就不支持）。
2. **中局新生文明**：路由=默认俄（与既有口径一致）。
3. **多人**：n/a。
4. 旧 32 节点：所有人可见（用户诉求只针对"国家科技树"新块）。

## 5) 注入点最终清单（进 R3 定稿）
- **A**：`TechnologyTree.smali` 新增 `isTechAllowedForCiv(II)Z`（getTechBG 之后）。
- **B**：`InGame_TechnologyTree.smali` 构造器循环顶部 5 行（跳过隐藏迭代）。
- **C**：`Civilization.smali` `getAvailableToResearch` 尾部（范围守卫 + 判定）。