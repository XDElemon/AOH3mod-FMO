# -*- coding: utf-8 -*-
# 附-29.7：开局显示"关"的成因 + r5c020c 修法
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
ADD = u"""
### 附-29.7 **"开局显示 关"的成因与修正**（r5c020c，2026-09-24）

**现象**：开局（或尚未点任何机场时）按钮显示 `自动打击：关`。

**成因（源码实证，非状态错）**
1. `InGame_AirForceOptions.<clinit>` 把 `iActiveID` 初始化为 **-1**；点机场（`InGame_AirForce$BtnAirport.actionElement`）才写入真实索引；`MenuManager:38657` 在收起面板时又置回 -1。
2. `getTextToDraw()` 的实现是"查到合法机场才读开关，否则回落默认文案" ⇒ `iActiveID=-1`（或越界/无机场）时**一律回落成"关"**——**与开关字段无关**（字段此时其实是 false＝开）。
3. 而 `actionElement()`（按钮真正干活的地方）**会把 `iActiveID` 夹到 0**（<0 或越界都取第 0 个机场）⇒ **显示与实际作用对象不一致**：显示"关"，按下却作用于默认"开"的那个机场。

**修法（r5c020c，仅 `missionType==1`）**：让显示侧与 `actionElement` 对齐——
- `iActiveID < 0` 或 `>= size` ⇒ **取第 0 个机场**（与按钮实际作用对象一致）；
- 玩家**没有任何机场** ⇒ 回落到**基类静态标签**（不再误显"关"）；
- 开关位为 0/1 时分别显示 `自动打击：开` / `自动打击：关`。

**门禁**：汇编 `af0ee0e4…`；arity **BAD=0**；八件套**通过**（Δ=1＝新增 1 处 `invoke-super`）；branch **方向可疑=0**；dangling **真悬空=0**；reach `getTextToDraw` **死区=无**、AirMission 基线**通过**；装机 apk `eb6a79ad…`**DEX/APK MATCH=1**；抓样基线随装机重置。

**未动项（留待用户点头）**：`missionType==0`（自动巡逻）是**引擎原块**，存在同样的"iActiveID=-1 ⇒ 显示关"回落；本次未改（同款三行即可一致化）。
**待确认**：若用户本意是"要开局默认＝**关**"（需玩家手动开启），那属于另一改动＝把 `Airport` 构造器里的默认值改成 1（一行）；它会同时影响所有新机场与旧档，需明确后再做。
"""
t = io.open(P, encoding='utf-8').read()
if u'附-29.7' in t:
    print('已存在，跳过')
else:
    B = P + '.pre_r5c020c'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'### 附-29.6', ADD.strip() + u'\n\n### 附-29.6')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK 已写入 附-29.7')