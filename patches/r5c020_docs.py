# -*- coding: utf-8 -*-
# r5c020 文档登记：方案书 附-29（施工记录）＋ 设计v2 节 ＋ 专档顶部行
import io, os, shutil
R = u'/sdcard/GLG/历史23/'
PLAN = R + u'r6s5/B3-A1自动打击接活_具体方案书v1.md'
DESIGN = R + u'空战重做专案_设计v2.md'
PROG = R + u'r6s5/空战重做_进度与bug排查专档_v1.md'

FU = u"""
---

## 附-29 施工记录：批次 **r5c020**（自动打击开关，每机场；范围=②对地全部）2026-09-24

### 附-29.1 背景（按钮此前为什么"点了没用"）
- 按钮 = `InGame_AirForceOptions$BtnMission`（`missionType==1`，文本"自动打击"）；
- 原 `actionElement()` 只做：`airport.mode = OFFENSIVE`（=构造器默认值，**全树无消费者**）＋ `stopAirportPatrols` ＋ 重建面板 ⇒ 无任何实际效果；
- 真正的自动打击在 `strikeTick_A1`（`a1bClock→a1Snap→a1Scan→a1bScan`），`update(civID)` 末尾**无条件**调用（玩家门内）⇒ 恒开、与按钮/`mode` 无关。

### 附-29.2 口径（用户拍板）
每机场粒度；默认**开**；关掉只影响**新派发**（不召回在飞任务）；范围＝**②对地全部**（`a1Scan` 轰炸线 ＋ `a1bScan` 攻击机线）。

### 附-29.3 本批改动（9 组；全部有唯一锚点断言）
| # | 文件 | 改动 |
|---|---|---|
| 1 | `Airport.smali` | 新增字段 `autoStrikeOff:Z`（**反向语义**：false=开启） |
| 2 | `Airport.smali` 构造器 | `iput-boolean v0, …, autoStrikeOff:Z`（该处 v0 已为 0 ⇒ 旧档/新建机场默认"开"） |
| 3 | `AirForceManager.a1bScan` | 机场循环加门：`iget-boolean v3` ＋ `if-nez v3, :bs_ap_next` |
| 4 | `AirForceManager.a1Scan` | 机场循环加门：`iget-boolean v4` ＋ `if-nez v4, :sc_ap_next`（**不能用 v3**：它跨迭代持有 `AirType->BOMBER`） |
| 5 | `SaveGameManager$Save_Airport` | 新增字段 `autoStrikeOff:Z` |
| 6 | `SaveGameManager` | 存档拷贝 2 行（`prefPayload` 之后） |
| 7 | `LoadSavedGameManager` | 读档拷贝 2 行 |
| 8 | `BtnMission.actionElement()` | `missionType==1`：`iget-boolean → xor-int/lit8 0x1 → iput-boolean` **翻转**开关（保留原 mode/停巡逻/重建面板） |
| 9 | `BtnMission.getTextToDraw()` | `missionType==1`：动态文案 `自动打击：开/关`（新增 `:gt1` 块，未触碰 `:cond_9`/`:cond_37`） |

**存读档兼容**：机制=libGDX `Json`（按字段名）。用**反向字段**是为了让旧档缺键时保持"开"（正向字段会被 DTO 的 false 覆盖 ⇒ 旧档静默变关）。

### 附-29.4 门禁与工具修正
| 项 | 结果 |
|---|---|
| 汇编 | `result=true`，dex `4168f43c…`（7,350,424 B） |
| arity | **BAD=0** |
| 八件套 verify（对照 r5c019b） | **通过**；Sig 152538 → 152540（Δ=2） |
| branch | 6 个改动文件全部 **方向可疑=0**（见下"工具修正①"） |
| dangling | **真悬空=0** |
| 可达性 | `a1Scan`/`a1bScan`/`getTextToDraw`/`actionElement` **死区=无**；AirMission 基线仍通过（见"工具修正②"） |
| 构建/装机 | `dbg_signed77_v119_r5c020.apk`，apk `847a24c7…`；**DEX_MATCH=1／APK_MATCH=1** |

**工具修正（非游戏代码）**
1. `check_branch.py`：方向告警原判据"`iget*` 后紧跟 `if-nez → …next/skip`"会把**布尔位**（`iget-boolean`）误判 ⇒ 收窄为**仅 `iget-object`**（判空只对引用型成立）。修正后 AFM 方向可疑 2 → **0**，真类（对象判空）仍会报。
2. `reach.py`：把 **`.catch` 处理器标签**当作 CFG 入口（此前异常处理器被判死代码，`BtnMission.actionElement` 出现 17 行假死区）。

### 附-29.5 待验收（用户实测）
1. 空军栏 → 点机场 → 按钮应在 `自动打击：开` ⇄ `自动打击：关` 间切换；
2. 关掉某机场后：攻击机线 `nA1b ap=<该机场省>`、轰炸线 `nAS pk …` **不再新增**；其它机场照常；在飞任务照常返航；
3. 存读档：关掉→存档→读档仍为"关"；未动过＝"开"；
4. 回归：`nGA fire` 等弹药机制不变；`FATAL=0`（真机自检）。
"""

def backup(p):
    b = p + '.pre_r5c020doc'
    if os.path.exists(p) and not os.path.exists(b):
        shutil.copy2(p, b)

def append(path, marker, text, tag):
    if not os.path.exists(path):
        print('  SKIP(缺文件)', tag); return
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('  已存在，跳过', tag); return
    backup(path)
    io.open(path, 'w', encoding='utf-8').write(t.rstrip('\n') + '\n' + text + '\n')
    print('  OK', tag)

print('== r5c020 文档登记 ==')
append(PLAN, u'附-29 施工记录', FU, u'方案书 附-29')
append(DESIGN, u'【R5c020】', u"""
---

## 【R5c020 / 2026-09-24】自动打击开关（每机场，范围=②：轰炸线 a1Scan ＋ 攻击机线 a1bScan）

- 新字段 `Airport.autoStrikeOff:Z`（**反向语义** false=开启）＋ 构造器默认 ＋ `Save_Airport` DTO ＋ 存/读档各 2 行 ⇒ 存读档可持久。
- 两条线各自在"机场循环"加门（`a1bScan` 用空闲 v3；`a1Scan` **用 v4，不能用 v3**——v3 跨迭代持有 BOMBER）。
- 按钮 `BtnMission`（`missionType==1`）：`actionElement` 翻转开关；`getTextToDraw` 显示 `自动打击：开/关`。
- 门禁：arity BAD=0、八件套 Δ=2、方向可疑=0、真悬空=0、新方法死区=无；装机 DEX/APK MATCH=1。
- 工具修正：`check_branch.py` 判空告警仅对 `iget-object`；`reach.py` 把 `.catch` 处理器作为 CFG 入口。
""", u'设计v2 节')
if os.path.exists(PROG):
    t = io.open(PROG, encoding='utf-8').read()
    if u'r5c020' not in u''.join(t.split('\n')[:8]):
        backup(PROG)
        line = u'> 2026-09-24 批次 **r5c020**：自动打击开关（每机场；范围=轰炸线+攻击机线）已装机；按钮从此真生效并可在 开/关 间切换，存读档持久。详见方案书 附-29。\n\n'
        io.open(PROG, 'w', encoding='utf-8').write(line + t)
        print('  OK 专档顶部行')
    else:
        print('  专档已含，跳过')
print('== 完成 ==')