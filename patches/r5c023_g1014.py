# -*- coding: utf-8 -*-
# §G.10.14：为什么这类"跳转写错"没被任何审查/门禁抓到 + 新门禁 check_loopexit.py
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
#### G.10.14 复盘：为什么"跳转跳到错的循环头"这类 bug 之前没被任何工具抓到
##### 三层原因（都不是"工具失误"，而是能力边界）
1. **子代理那次根本没产出报告**：r5c021 调用 `code_reviewer_tools:code_review` 超时中断（`/tmp/review_r5c021` 只留中间产物），所以严格说是"没跑完"，不是"跑完没发现"。
2. **即便跑完，也不在它的射程内**：它按设计是**审查"本批增量"**（baseline→本批 dex 的 diff + 指令级走查）。而 E5 真凶是**原版就有的既有 bug**，r5c019～r5c022 的增量里**从未触碰** `Save_Airforce_Data` 的循环 ⇒ 增量审查天然看不到它。
3. **既有门禁都不建模"循环嵌套语义"**：
 | 门禁 | 能抓什么 | 为什么抓不到这条 |
 |---|---|---|
 | `check_arity.py` | invoke 寄存器个数 vs 签名 | 与本 bug 无关 |
 | `check_dangling.sh` | 跳转目标是否存在 | `:cond_22` 存在 ⇒ 不悬空 |
 | `check_branch.py` | 提供极性对照 | 只解释极性，不判语义 |
 | `reach.py` | 不可达代码 | 这条跳转是**可达**的 |
 | 八件套 | 指令/寄存器/Cast/Undef/Init/Range | 不建模 CFG 语义 |
 ⇒ "**语法合法但语义错**"的跳转（跳到祖先循环头）此前只能靠**数据**发现：这正是 E5 的发现路径——探针 `R4dto a=1` vs 内存 `apts=4` ⇒ 再人工读循环骨架才定位。
##### 新增门禁：`check_loopexit.py`（已放进 `toolchain/`）
- **判据**：对每个 `…iterator()` 创建的迭代器，找其 `hasNext()` 测试点 h；**循环头区域** = `[创建点, h]` 之间的标签；若在 h **之后**没有任何跳转指回该区域 ⇒ 该迭代器循环**永远回不了头（最多跑一次）** ⇒ 报可疑。
- **验证**：`bug.smali`（.pre_r5c023 备份）**准确报出** `create@367 hasNext@371 (v5) 出口=cond_22`（＝E5 真凶）；`fixed.smali`（现版）**不再报它** ✔
- **局限（诚实记录）**：全树扫描得 **136** 个候选，其中同一文件里有 7 个同族候选（`出口=cond_54` 等）属**误报**（循环头标签被放在创建点之前）⇒ 该工具定位为"**缩小排查范围的线索器**"，需人工/探针复核，不能当硬门禁。
- ⇒ **纪律⑲（新增）**：凡"迭代器循环"改动，构建前跑 `check_loopexit.py`；凡新增门禁，必须先在一个**已知 bug 样本**上证明"能报出来"、再在**修复后样本**上证明"不再报"，才准入库。
"""
t = io.open(P, encoding='utf-8').read()
if u'#### G.10.14' in t:
    print('已存在')
else:
    B = P + '.pre_g1014'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.14 已写入')