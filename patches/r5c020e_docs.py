# -*- coding: utf-8 -*-
# 附-29.9（r5c020e 修夹取块三处方向）＋ §G.6 教训新增一条
import io, os, shutil
PLAN = u'/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
NEXT = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### 附-29.9 **r5c020e：夹取块三处方向修正**（2026-09-24；外部复核发现 + 我方复核确认）

**❌ 真 bug（我方笔误，r5c020c 引入）**：`getTextToDraw` 的"夹取"块三处判定**方向全反**（与引擎 `actionElement` 的同类范式相反）：

| 行 | 我写的 | 应为 | 写反的后果 |
|---|---|---|---|
| 无机场回落 | `if-gtz v4, :gt1_super` | **`if-lez`** | ①列表非空时反而跳去静态标签 ⇒ **动态文案失效**（r5c020b 的修复被打回）；②**0 机场时反而落进取值路径** ⇒ `List.get(0)` 空列表 ⇒ **IndexOutOfBoundsException**（`drawText` 每帧调用，链路上无 try/catch ⇒ 刷异常甚至闪退） |
| iActiveID 夹取 | `if-ltz v3, :gt1_c2` | **`if-gez`** | 索引**恒被清成 0** ⇒ 多机场时文案显示的是"第 0 个机场"的开关 |
| 越界夹取 | `if-ge v3, v4, :gt1_ok` | **`if-lt`** | 同上（越界路径反了） |

**修**：三处按上表改正（r5c020e），并逐情形模拟验证：
```
size>0 & idx=-1 → if-lez(假)过 → if-gez(假)清0 → if-lt(0<size 真)跳过 ⇒ get(0)   ✓
size>0 & idx=2  → if-lez(假)过 → if-gez(真)跳过 → if-lt(真)跳过   ⇒ get(2)   ✓
size>0 & idx=9  → if-lt(假)清0                                   ⇒ get(0)   ✓
size==0         → if-lez(真) → :gt1_super 静态标签（不碰 List.get）⇒ 无 IOOBE ✓
```

**门禁（r5c020e）**：汇编 `a34fc14e…`；arity **BAD=0**；八件套**通过**；branch **方向可疑=0**；reach `getTextToDraw` **死区=无**；dangling **真悬空=0**；装机 apk `236f2c0b…`**DEX/APK MATCH=1**；抓样基线随装机重置。

**外部报告其余条目**（r5c020d 的 4 处、改名安全性）复核一致：特别是它实证了 `SaveManager:51-53 setIgnoreUnknownFields(true)` ⇒ **改名方案成立**（旧键被忽略、缺键取 DTO 默认＝关）；并确认全树无旧 DTO 名残留（不会 `NoSuchFieldError`）。
"""
LESSON = u"""5. **极性/夹取块必须"贴范式 + 抄四种情形"**：本轮（r5c019b→r5c020e）同类笔误共 **3 次**（探针护门 3 处、UI 入口门 1 处、夹取块 3 处）。**新规矩**：凡写 `if-*` 判定块，① 先找引擎里**同语义**的既有范式（如 `actionElement` 的夹取）逐条对齐；② 在文档里**手写 4 种情形模拟表**（边界/越界/空/正常）后才允许构建。
"""
def backup(p):
    b = p + '.pre_r5c020e'
    if os.path.exists(p) and not os.path.exists(b):
        shutil.copy2(p, b)
t = io.open(PLAN, encoding='utf-8').read()
if u'附-29.9' not in t:
    backup(PLAN)
    t = t.replace(u'### 附-29.8', ADD.strip() + u'\n\n### 附-29.8')
    io.open(PLAN, 'w', encoding='utf-8').write(t)
    print('OK 附-29.9')
t = io.open(NEXT, encoding='utf-8').read()
if u'极性/夹取块必须' not in t:
    backup(NEXT)
    t = t.replace(u'4. `reach_baseline.txt` 是 **AirMission 专用**；每个文件各自维护基线。',
                  u'4. `reach_baseline.txt` 是 **AirMission 专用**；每个文件各自维护基线。\n' + LESSON)
    io.open(NEXT, 'w', encoding='utf-8').write(t)
    print('OK §G.6 教训新增')