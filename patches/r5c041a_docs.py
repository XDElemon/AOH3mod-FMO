# -*- coding: utf-8 -*-
# r5c041a_docs.py —— 落盘：ART"常量喂引用形参"事故 + 门禁㉔ + 铁律66/67
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 37. r5c041a：修 ART 校验错误「整数常量喂给引用形参」（＋门禁㉔）（{TS}）
### 37.1 审查指出、我复核确认为真
- `AFM.pickIdleDivKey(Airport, **AirUnit$AirType**)String` ⇒ 第 2 参是**引用类型**；
- 我在 r5c041 的两处派发点写成 `const/4 v6, 0x1` / `const/4 v6, 0x2` ⇒ 该寄存器类型是 Integer ⇒ 传给引用形参必被 ART 拒
  （预期 logcat：`Verifier rejected class …AirForceManager…: register v6 has type Integer but expected Reference`）⇒ **启动即崩**（r5c041 已装机，属未爆弹）。
- **全树 9 个既有调用点全是 `sget-object v?, AirUnit$AirType;->BOMBER/ATTACKER/INTERCEPTOR/FIGHTER` 后传寄存器** ⇒ 我这两处是全树唯一异类。
- 审查补充的边界确认正确：`const/4 vX, 0x0` 是 **Zero**，可赋引用（故上一批 `createStrategicBombing(...,0x0)` 传 null 合法）；**非零才违规**。
### 37.2 修法（同形替换，寄存器与 invoke 数不变）
```
1064| const/4 v6, 0x1  →  sget-object v6, …AirUnit$AirType;->BOMBER:…AirUnit$AirType;
1142| const/4 v6, 0x2  →  sget-object v6, …AirUnit$AirType;->FIGHTER:…AirUnit$AirType;
```
### 37.3 新增常驻门禁 ㉔：`check_invoke_argtype.py`
- 判据：`invoke-*` 实参寄存器，其**上一条有效指令**若是 `const/4|const/16|const|const/high16` 且**同寄存器、字面量非零**，而该位形参是引用（`L…;` / `[`）⇒ FAIL。
- **负样本（含错的当前树）⇒ 恰好 2 FAIL / 5520 文件**（无其它误报）；修正后 **0 FAIL**。
### 37.4 产物与校验
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c041 | `a367f556…` | `de359aee…` | ❌ ART 校验崩（作废） |
| **r5c041a** | **`93e9dafca55866c433f022834b6b32b3`** | **`4dab3fbc9e2471b8279ef90123ce56a9`** | ✅ 现役（`Success` + DEX MATCH；门禁㉔⑯ 0、sitecheck 全 0；八件套 Δ=0） |
### 37.5 三连 ART 层事故复盘（工具链已补两道专用门禁）
| 批次 | 错型 | 现由谁兜住 |
|---|---|---|
| r5c033 | 寄存器用错 | 八件套 Regs/Init ＋ 人工 |
| r5c038 | `move-result` 形态错 | **门禁⑯ `check_moveresult.py`** |
| r5c041 | 非零常量喂引用形参 | **门禁㉔ `check_invoke_argtype.py`** |
⇒ 三连都属 ART 校验层，**本地八件套不覆盖** ⇒ 每批「门禁⑯㉔ ＋ 真机启动」双保险。
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c041a 批）新增
- **【66】给"引用形参"传常量只有一种合法写法：`const/4 vX, 0x0`（Zero＝可赋引用，作 null）**。
  传**非零常量**（如 `const/4 v6,0x1`）⇒ 类型是 Integer ⇒ ART 必拒：`register vX has type Integer but expected Reference`。
  **给枚举/对象形参一律 `sget-object vX, L你的类;->FIELD:L你的类;`**（照引擎既有调用点抄——本作对 `pickIdleDivKey` 的 9 个调用点都是这样）。
- **【67】新常驻门禁 ㉔ `check_invoke_argtype.py`**：紧邻的非零 `const*` 喂给引用形参 ⇒ FAIL（全树 5520 文件秒级；负样本恰好 2 FAIL、修正后 0 FAIL）。
  与门禁⑯（move-result 形态）配对使用——**这两类错本地八件套都抓不到**，只有 ART 会在真机启动时拒。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **批次 `r5c041a` 已装机**（dex `93e9dafc…` / apk `4dab3fbc…`，`Success`+DEX MATCH）：
  修 r5c041 的 **ART 校验错**——`pickIdleDivKey(Airport, AirType)` 第 2 参是引用，我原先写 `const/4 v6,0x1/0x2`（整数）⇒ 必崩；已改为 `sget-object v6, AirUnit$AirType;->BOMBER/FIGHTER`（与引擎 9 个既有调用点同形）。
  新增常驻门禁 **㉔ `check_invoke_argtype.py`**；门禁⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓ 全 0；八件套 Δ=0。**r5c041 作废。**
- **ART 层三连复盘**：r5c033 寄存器用错 / r5c038 move-result 形态 / r5c041 常量喂引用 ⇒ 已由 ⑯＋㉔ 两道常驻门禁覆盖，但仍**必须真机启动验证**。
'''.replace('{TS}', TS)


def append(path, txt, tag):
    s = io.open(path, encoding='utf-8').read()
    if tag in s:
        print('SKIP', path.split('/')[-1])
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(path, 'w', encoding='utf-8').write(s + txt)
    print('OK', path.split('/')[-1])


append(PLAN, PLAN_TXT, '## 37. r5c041a：修 ART 校验错误')
append(LAWS, LAWS_TXT, '【66】给"引用形参"传常量')
append(HAND, HAND_TXT, '批次 `r5c041a` 已装机')
print('DONE', TS)