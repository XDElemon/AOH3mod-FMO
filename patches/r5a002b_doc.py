# -*- coding: utf-8 -*-
# R5a002b：给《B3-A1自动打击接活_具体方案书v1.md》追加 附-7（定案 + ICBM残影调研 + 存档bug登记 + 余项）
import io, os, shutil

F = '/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
BAK = F + '.pre_r5a002b.bak'
s = io.open(F, encoding='utf-8').read()

if not os.path.exists(BAK):
    shutil.copy2(F, BAK)
    print('BACKUP ->', BAK)

FOOT = '*（附-1~附-6 · 2026-09-20 · 与上文 §0–§8 互斥；上文为已取消路线存档）*'
assert FOOT in s, 'footer not found'
NEWFOOT = '*（附-1~附-7 · 2026-09-20 · 与上文 §0–§8 互斥；上文为已取消路线存档）*'

NEW = u"""## 附-7. 定案与新增（2026-09-20 第二轮讨论）

### 附-7.1 已定案（取代附-6 的 4 条待拍板）
| # | 议题 | 结论 |
|---|---|---|
| 1 | 第①步试验靶 | **缅甸首都**（省号待查；查到后先把"编号＋省名＋是否在航程内"报用户确认，再写死进代码） |
| 2 | 我方机场范围 | **默认开＝所有我方机场**（不判 `mode`）；开关态后做，落点＝旧案 **B3-A4 空军指挥部「出击频率」** |
| 3 | AI 战争判定 | **修那一行**（`AirForceManager.isAtWar(I)` 的循环守卫 `if-ne`→应为 `if-eq`；全树唯一调用点＝AI 出击段 `AFM:1012`）。与第①步**同批装机**（AI 尚无飞机构建能力，修后短期无可见影响）|
| 4 | 机型分工 | **轰炸机＝A**（盯省/建筑，不吃新鲜度）｜**攻击机＝B**（追部队，吃新鲜度） |
| 5 | 新鲜度窗口 | **6 回合**（＝12 游戏小时；实测 **1 回合 = 2 小时**，依据抓样 `nT h=… hpt=2 sp=…`） |
| 6 | 节奏 | **先 A 后 B** |
| 7 | 第②步限流 | **同一目标最多同时 2 架**（取代原"同省在飞不重复派"的写法：允许 1–2 架，第 3 架起不再派） |

> 附-7.1 补充：新鲜度实现口径＝记事本每行记「**最后看到的回合号**」，判断 `当前回合号 − 最后看到回合号 ≤ 6` 即视为有效。注意：飞机实际飞行走**真实时间**（`RealTimeSim`：推进量 = `GAME_SPEED × Δms ÷ 2000`），与回合制时钟不是同一把尺子，故该窗口受玩家点击节奏影响（已向用户说明，保留将来改为"真实时间/仅当前回合"的口子）。

### 附-7.2 ICBM「残影显示 + 扑空提示」调研（回答"到底怎么搞的"）

**有实据的部分**：
| 项 | 证据 |
|---|---|
| 记忆内容＝最后位置＋朝向 | 存档 `visinfo … pos … head …`（`Scenario/Main/Main-1.txt:812+`） |
| 三态 + 时间戳 | `ghost` / `precise` / `know_exists` / `ftseen` |
| 存在"残影可见"相关属性 | `ICBM.exe` 属性名清单中 `GHOSTVISIBLE`、`GHOSTVISIBLE_FOR` 与 `VISIBLE_FOR`、`POSITION`、`ALTITUDE`、`HAS_WEAPON`… 同批出现 ⇒ 更像"残影可被看见（多久）"的**时长属性**，不是渐隐动画参数 |
| **扑空是正式游戏事件** | `autopause.txt`：`2117 / 2153 // Pause when the enemy unit position is not confirmed (by satellite)`；另有 `2116 // …re-appears on the radars` |
| **玩家可见文案** | `lang/Eng/UI.lng:2217 / 2253 "Enemy %s of %s not found at its last known position (by satellite)."`；中文包：「在最后一个已知位置未找到敌人%s (%s)。」 |

**未证实**（用户记忆中的"残影透明度渐渐下降"）：ICBM 全目录 **无** ghost/fade 专用素材（`find -iname '*ghost*'/'*fade*'` 无命中），`ICBM.exe` 中也**未发现**与 ghost 绑定的透明度/渐隐字符串。
⇒ 结论：**"把残影画在地图上并随时间变淡"目前只能算一种设计选择，不是 ICBM 的已证行为**。

**对本项目的落地建议**：
| 做法 | 成本 | 建议 |
|---|---|---|
| **只做"扑空提示"**（弹一条消息：目标已不在原处） | 低 | ✅ 建议做（有 ICBM 实据支撑，且是 B 的验收依据之一） |
| **地图上画"残影标记"**（半透明图标/环）＋渐隐 | 中高 | ⏸ 需动省份/单位绘制（`ProvinceDraw` 等），且渐隐规则要自定；建议第③步 B 跑通之后再评估 |

### 附-7.3 新 bug 登记：存/读档后机场飞机丢失（用户 2026-09-20 报告）

**现象**：地图上多个机场、各造了飞机；**存档 → 读档后，只剩一个机场还有飞机，其余机场的飞机没了**。

**首轮只读调研（实据）**：
- 空军状态走**独立存档结构**：`SaveGameManager$Save_Airforce{ airports: List<Save_Airport> }`；每个 `Save_Airport` 存 `level / maxCapacity / mode / totalAircraft / totalLost / buildTurnsRemaining / buildTurnsTotal / buildingType / prefPayload`；**飞机另存为 `Save_AirUnit` 列表**（写盘侧 `SaveGameManager:395-479`，遍历 `Airport.aircraft` 的 Map→List）；
- 读盘侧：`LoadSavedGameManager.loadSave_Airforce()`（`3878-4905`，**1027 行**），以 `Gdx.files.absolute(...)` + `Json.fromJson(...)` 读回，随后恢复 `activeMissions` 与各机场；
- **可疑点（待证，非结论）**：
  ① 读盘侧用**什么键**把 `Save_Airport` 配回运行时机场（若键错/恒定 ⇒ 症状正是"全部飞机落到同一个机场"）；
  ② 该方法内有**硬编码省号的调试残留**（`const/16 v13, 0x90b`＝2307，打印 "province buildings size"），属旧探针遗留。

**需要的下一步（一笔专项，不占主路线）**：加一轮**存读档对账探针**——存盘时打「机场数 / 各机场飞机数」，读档后打同样内容 ⇒ 一次即可判定是"**根本没读到**"还是"**读到了但配错机场**"。

### 附-7.4 收尾剩余项（待用户一句话）
1. **扑空提示**：按附-7.2 的结论"**只做提示、不做地图残影**"来定 —— 同意吗？
2. **存档丢飞机 bug 的优先级**：**插在三步走之前**先修，还是**先跑第①步**再修？
"""

s = s.replace(FOOT, NEW + '\n' + NEWFOOT)
io.open(F, 'w', encoding='utf-8').write(s)
print('WROTE ok bytes=%d lines=%d' % (len(s.encode('utf-8')), s.count('\n') + 1))