# -*- coding: utf-8 -*-
# 附-29.6：把 r5c020b 的修正记录写进方案书（外部报告发现的入口门笔误 + 连带工具加固）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
ADD = u"""
### 附-29.6 **r5c020b 修正**（2026-09-24；外部复核发现 + 我方确认）

**❌ 真 bug（我方笔误）**：`BtnMission.getTextToDraw()` 的入口门写成 `if-ne v0, v5, :gt1`
⇒ 后果：①`missionType==1`（自动打击）走不到新块 ⇒ 按钮看不到 `自动打击：开/关`；
②`missionType==3/4`（紧急召回/取消）反而跳进新块 ⇒ 标签被显示成 `自动打击：…`。
**修**：`if-ne` → **`if-eq`**（单行）。与同文件 `actionElement` 的 `if-ne v1,v2,:cond_59`（"≠1 才跳过"）属**相反语义**，是单点笔误。

**连带发现（工具脆弱点）**：修好后 `reach.py` 一度把新块 `:gt1` 判为死代码——原因是我在分支行**行内**写了 `# 注释`，而扫描器用"行内最后一个 token"当分支目标 ⇒ 被注释带偏。
**处置**：① smali 里把注释移到**上一行**；② `reach.py` 加固：取分支目标前先剥掉 `#` 之后的内容（`nt.split('#')[0]`）。

**门禁（r5c020b）**：汇编 `d0fc9634…`；arity **BAD=0**；八件套**通过**（仅换分支码，Sig 不变）；branch **方向可疑=0**；dangling **真悬空=0**；reach：`getTextToDraw`/`actionElement` **死区=无**、AirMission 基线**通过**；装机 apk `646ec14c…`**（与设备一致）**；抓样基线重置 `439,860,200`。

**外部报告其余条目**（1–8 与工具两条）经我方复核**一致**，无需改动；其提醒"开关管住轰炸线+攻击机线=每机场总开关"与 §H.2 口径一致；"无冷启动空转问题（`a1bPick` 先盖章后判新鲜度）"记录备查；"无机场时回落显示"关""沿用引擎既有风格（type0 同款），接受。
"""
t = io.open(P, encoding='utf-8').read()
if u'附-29.6' in t:
    print('已存在，跳过')
else:
    B = P + '.pre_r5c020b'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'### 附-29.5 待验收（用户实测）', ADD.strip() + u'\n\n### 附-29.5 待验收（用户实测）')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK 已写入 附-29.6')