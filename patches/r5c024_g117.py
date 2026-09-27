# -*- coding: utf-8 -*-
# §G.11.7 「只审增量」流程落地（子代理不可用 ⇒ 本地确定性审查器）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### G.11.7 「只审增量」正式流程（2026-09-24 定型）
**背景**：用户要求"子代理只测增量"。实测结论——`code_reviewer_tools:code_review` 的工具定义里
`targets_json` 只写"**优先**审查的类/方法"（= 优先级，不限制范围），而它的定位是"以构建产物 dex 为唯一真值"，
所以**每轮它都会自行反编译两个 dex 整包**再做全量方法级 diff ⇒ 慢、且三轮都在"出报告"前被掐断。
### G.11.7.1 三轮子代理解果
| 轮 | 输入 | 结果 |
|---|---|---|
| r5c024 | 3 targets / max_tool_calls=8 | 自己整包反编译 + 23576 方法全量 diff；**无报告** |
| r5c024b | 1 target / 3 calls / 5 个是/否问题 | 仍整包反编译；判据错（23447 处正常 `List.add` 误报）；**无报告** |
| r5c024_incr | 只给 `INCR.md` ＋ `allow_exec=false` | 读了两行就断；**无报告** |
⇒ 子代理在本环境**不可用于"出结论"**；但它留下的**方法级 diff 可采信**（`23576` 方法中仅 2 个变化，与源码 diff 一致）。
### G.11.7.2 替代方案：`incr_audit.py`（本地确定性，秒级，只审增量）
用法：`python3 incr_audit.py <file.smali> <起> <止> [<file> <起> <止> ...]`
逐项检查每个新增块：
1. **Q2/Q3 寄存器活性**：块内**写入**的寄存器 ⇒ 块前最近提及须为「写」（或从未出现）、块后首个提及不得是「读」；块内**只读**的寄存器只核对来源定义。**含 `-wide` 双寄存器建模**（`iget-wide v12` 隐含写 v13）。
2. **Q4 极性**：块内 `if-* X, :L`，若 `[if, L)` 之间解引用 X ⇒ 必须是 `if-eqz`（null 跳过），否则报「极性可疑」。
3. **Q5 invoke/move-result**：`invoke` 与随后 `move-result` 之间被插入指令 ⇒ 报错（与 `selfcheck2` 同判据、按块限定）。
### G.11.7.3 两向验证（纪律⑲，已通过）
| 样本 | 期望 | 实测 |
|---|---|---|
| r5c024 真文件（2 块） | BAD=0 | **BAD=0** ✔ |
| 极性翻转（`if-eqz`→`if-nez`） | 报「极性可疑」 | 报 ✔ |
| `invoke` 与 `move-result` 之间插队 | 报 | 报 ✔ |
| 块内写 `v11`（破坏 Airport 活值） | 报「清掉后续要用的值」 | 报 ✔ |
过程中它的报错还揪出**我自己检查器的两个建模缺陷**（① 把"块内只读的接收者"误判为破坏；② 宽指令隐含寄存器未建模）——已修。⇒ 已入库 `toolchain/incr_audit.py` ✔
### G.11.7.4 新流程（每批固定走）
`补丁 → arity/selfcheck2 → assemble → 八件套 → 源码 diff →` **`incr_audit.py <本批块行号>`（= 只审增量）** `→ build → 装机`
（`code_review` 只在需要"全树方法级 diff"这一项时用——它那部分产出可信；不用等它的报告。）
"""
t = io.open(P, encoding='utf-8').read()
if u'G.11.7' in t:
    print('已存在')
else:
    B = P + '.pre_g117'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.11.7 已写入')