# -*- coding: utf-8 -*-
# §H.7 追加：开关范围的第二次调研（两条自动打击线 / 单份记忆的证据 / 各唯一落点）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
B = P + '.pre_r5c019g'
ADD = u"""
### H.7 第二次调研补充（开关范围与落点唯一性）

**H.7.1 「自动打击」实为两条线**（`strikeTick_A1` 的调用顺序，AFM:6894-6898）：
```
a1bClock() → a1Snap(civID,-1) → a1Scan(civID) → a1bScan(civID)
```
| 线 | 方法 | 特征调用 | 语义 |
|---|---|---|---|
| 轰炸/军事线 | `a1Scan`（AFM:6108-6296） | `a1HasMil` + `a1Dispatch` + `getProvincesInRange` | 按"有军事建筑且有情报"派轰炸（=方案书 附-2x 的轰炸机线） |
| 攻击机线 | `a1bScan`（AFM:6844-…） | `a1bPick`/`a1bDispatch`/`a1bInflight` | 对陆军省派攻击机（r5c019 选靶分散化所在线） |
| （非派发） | `a1Snap` | `a1E` 快照 | 只是情报记忆快照，建议**不**纳入开关 |

**H.7.2 ⇒ 开关范围需你拍板（新）**：
- ① **只控攻击机线**（`a1bScan`）——最小、最贴 r5c019 的语境；
- ② **控对地全部**（`a1Scan` + `a1bScan`）——语义上最像"自动打击"的总开关；
- ③ 连 `a1Snap` 一起（不建议）。
（按钮文案可随之写成"自动打击：开/关"；若选①，建议文案改为"自动打击（攻击机）：开/关"以免歧义。）

**H.7.3 记忆数组是全局单份（§I 约束①的证据补齐）**：`a1Known:[B` 与 `a1Gsee:[I` 在 `a1Scan` 初始化段**按省数惰性重建**（AFM:6119-6129），无 civID 维度 ⇒ 若让 AI 共用同一条链，会覆盖玩家情报记忆。

**H.7.4 落点唯一性核对（都已查实）**：
| 项 | 结论 |
|---|---|
| `Airport` 创建点 | **只有 1 处**（AFM:4913）⇒ 默认值只需在构造器给（Java 默认 false 即"开"，另加显式 `iput` 作防御） |
| 存档字段拷贝 | **只有 1 处**（`SaveGameManager` 425-427 附近）；`LoadSavedGameManager` 4340+ 那处是按 `AirUnit.airportID` 匹配**飞机**，不涉及机场字段 ⇒ 只需改 H.3 的第 5/6 项各一行 |
| `Airport.mode` 持久化 | 走同一 JSON 路径（`Save_Airport.mode`），本次不动 `mode` |
| `iActiveID` 写入点 | 4 处：`MenuManager:38659`、`InGame_AirForce$BtnAirport:48`（点机场按钮）、`InGame_AirForceOptions:26`、`InGame_Destroy:626`（建筑被毁时重置）⇒ 按钮的"当前机场"语义与现有 `missionType==0` 完全一致，可直接复用 |

**H.7.5 避免混淆（快捷栏不是开关）**：点飞机出现的 `InGame_AirForceQuick$BtnCmd` 四个按钮是**手动指令**——`打击`=`pendingMissionMode`+`selectedAirportProvinceID`（点省=指派打击目标）、`巡逻`=`startDivisionPatrol`、`返航`=`AirMission.forceReturn`、`取消`=清空选择 ⇒ 与本次"自动打击开关"无关，改动时不要碰到它。

**H.7.6 开工前只剩一个待拍板**：H.7.2 的开关范围（①/②/③）。
"""

t = io.open(P, encoding='utf-8').read()
if u'### H.7 第二次调研补充' in t:
    print('已存在，跳过')
else:
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## I. 「AI 自动打击」', ADD + u'\n---\n\n## I. 「AI 自动打击」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK 已追加 H.7（%d 行）；备份 %s' % (len(ADD.split('\n')), os.path.basename(B)))
