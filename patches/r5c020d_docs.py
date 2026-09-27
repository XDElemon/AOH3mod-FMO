# -*- coding: utf-8 -*-
# 附-29.8：两个开关「开局默认＝关」
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
ADD = u"""
### 附-29.8 **两个开关「开局默认＝关」**（r5c020d，2026-09-24 用户口径）

**需求**：用户要求 `自动巡逻` 与 `自动打击` **开局都是关**。

**调研结论**
1. **`自动巡逻` 本来就是关**：巡逻状态存于 `Airport.mode`，构造器默认 `Mode.OFFENSIVE`；全树只有玩家点"自动巡逻"按钮（`BtnMission` type0）与 `toggleAirportPatrol`（同按钮链）会写 `PATROL` ⇒ **无创建期 PATROL**，所以开局＝关，**无需改动**。
2. **`自动打击` 原本默认＝开**（`autoStrikeOff=false`）⇒ 按要求改为**默认＝关**。

**本批改动（4 处，均单行唯一锚点）**
| # | 位置 | 改动 |
|---|---|---|
| 1 | `Airport.<init>` | 默认值改 `const/4 v6,0x1` ＋ `iput-boolean v6, …, autoStrikeOff:Z` ⇒ **新机场＝关** |
| 2 | `SaveGameManager$Save_Airport` | 存档字段**改名** `autoStrikeOff` → **`strikePaused`**；其**无参构造器**（`.registers 1→2`）默认置 **1（关）** |
| 3 | `SaveGameManager` | 写出目标字段随之改名 |
| 4 | `LoadSavedGameManager` | 读入源字段随之改名 |

**为什么 DTO 要改名**：libGDX `Json` 按字段名存取 ⇒ 旧档里已写入过旧键（`autoStrikeOff:false`＝开）。改名后旧键被忽略、新键缺失时取 DTO 构造器默认＝**关** ⇒ **新档与旧档一律"关"**，且以后玩家手动开启会被正确持久化。

**行为影响（预期）**：开局两条自动打击线（轰炸 `a1Scan` ＋ 攻击机 `a1bScan`）**都不派发**，直到玩家在对应机场点开"自动打击"。玩家点按钮后一次性参与＝**已排除**。

**门禁**：汇编 `89ddd9d0…`；arity **BAD=0**；八件套**通过**；branch 四个文件**方向可疑=0**；dangling **真悬空=0**；reach `Airport.<init>`／`Save_Airport.<init>` **死区=无**；装机 apk `d2768402…`**DEX/APK MATCH=1**；抓样基线随装机重置。

**注**：`自动巡逻` 的显示块（引擎原块）仍保留"iActiveID 非法 ⇒ 回落显示关"的写法——在开局/未选机场时其显示为"关"，**与真实状态一致**，故未改。
"""
t = io.open(P, encoding='utf-8').read()
if u'附-29.8' in t:
    print('已存在，跳过')
else:
    B = P + '.pre_r5c020d'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'### 附-29.7', ADD.strip() + u'\n\n### 附-29.7')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK 已写入 附-29.8')