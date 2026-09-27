# -*- coding: utf-8 -*-
# r5c035b_docs.py —— 落盘：回退①（可负担极性）+ 更正上轮错误结论 + 铁律㊱修订
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

PLAN_TXT = u'''
## 24. r5c035b —— 回退①（可负担极性）＋ 更正上轮错误结论（%s）

### 24.1 以实装 dex 为准的事实（r5c035a，md5 `1011fb5f…`）
```
move-result v4              # v4 = cost
if-lez v4, :cond_31         # cost<=0 ⇒ 跳过该档 ✓
int-to-float v4, v4
cmpg-float v4, v2, v4       # v2 = gold ⇒ v4 = sign(gold - cost)
if-gez v4, :cond_31         # ✗ v4>=0（gold>=cost，买得起）时跳走
return-object v3            # ⇒ 返回的是"买不起"的机型
```
⇒ **r5c035a 的 ① 是回归**：买得起的机型全被跳过。**正解 = `if-ltz v4`**（v4<0 = gold<cost = 买不起 ⇒ 换下一候选）。

### 24.2 更正上轮的错误结论（作废）
- §23.2 表格里 ① 写的"原写 if-ltz ⇒ 富有时永不造机"**是错的**，作废；
- 事实：`if-ltz` = **<0 才跳**（铁律②的助记符），原文注释 `if-ltz = 小于0才跳` **本来是对的**；我凭印象把助记符记反，去"修"了正确的代码。
- ⇒ r5c035b 已把 ① 回退；②③④ 保留。

### 24.3 关于"AI 从不造机"的真因（据子代理报告 + 我方 logcat 实证）
- r5c033 的 `updateAIBuildUp` 把**实例方法的参数寄存器用错**（`this` 与 `Airport` 混用）⇒ **类校验被拒 → `java.lang.VerifyError` 闪退**（logcat 实证，非"静默跳过"）；
- r5c034 的逐条 diff 恰好是 `v10→v11` 全量改写 ⇒ **r5c034 才是寄存器修复**；
- 但 r5c034 抓样仍是 `p1bT`/`p1b` 零、机队全 0 ⇒ **真因仍未定案**，必须靠 r5c035 引入的"决策前状态"探针（`p1bG/B/Q/T/M/A/CB/CA`）来定。

### 24.4 本批产物与门禁
| 项 | 值 |
|---|---|
| dex md5 | `fbab9edc60a0b0d7dcf8f1a020def865` |
| apk md5 / 归档 | `1692e7a4e7fad564e154c43940c76cd5` / `build_apk/dbg_signed77_v119_r5c035b.apk` |
| arity | BAD 0 |
| sitecheck | **0 FAIL**（⑩ 已改为断言正解 `if-ltz v4`） |
| 负样本 | 对 r5c035a dex（`1011fb5f…`）跑新⑩ ⇒ **恰好 1 FAIL**；回退后 0 FAIL ✓ |
| 八件套 | Sig=152681，Δ=+20（与 r5c034 对照，含探针新增 invoke） |

### 24.5 下一步
装机 r5c035b → 用户推回合 → 抓样判读 `p1bG/B/Q/T/M/A/CB/CA`（+ `p1bT`/`p1b`）⇒ **一次定案"为什么没造机"**。
''' % time.strftime('%Y-%m-%d %H:%M')

LAWS_OLD = u'''  本轮 `p1bPickAffordable` 的注释写着"if-ltz = 小于0才跳"（**注释本身写错**），代码照它写 ⇒ 判据全反 ⇒ **AI 富有时永不造机**。
  ⇒ 写新判据时，先写"什么情况下应该跳去哪"，再选助记符，最后用抓样验证。'''

LAWS_NEW = u'''  ⚠️ **更正（r5c035b）**：上一版我在这里写反了——**`if-ltz` 就是"<0 才跳"，原文注释是对的**；
  我误按"if-ltz=≥0"去"修"正确的代码 ⇒ 造成 r5c035a 的回归（买得起反而被跳过）。
  ⇒ 不要用"注释写错了"当改判据的理由；冲突时**以铁律②的助记符为准**。

- **㊵ 比较类判据先写"真值表"再落码**：`cmp/cmpg/cmpl` + `if-?z` 这类判据，落地前必须先用三档取值
  （`<` / `==` / `>`）写清"哪一档跳、哪一档 fall-through"，再用实装 dex 反汇编复核一次。
  例（本轮）：`cmpg v4, gold, cost` ⇒ v4=sign(gold-cost)；**买不起 = v4<0 ⇒ `if-ltz` 换候选**，等号/富有则 fall-through 返回。
- **㊶ 定点门禁必须"对着正解"写**：门禁里断言的方向一旦写反，会把错的判成对的（本轮 ⑩ 就曾如此）。
  ⇒ 每次改门禁，必须先在**已知有 bug 的旧 dex** 上证明"报得出来"，再在修复版上证明"不报"（铁律⑲）。'''

HAND_TXT = u'''

## §4 登记（%s 补充）

| 批次 | 内容 | dex / apk md5 | 时间 | 状态 |
|---|---|---|---|---|
| r5c035b | **回退** r5c035a 的 ①（可负担极性 if-gez→if-ltz）；保留 ②探针B语义 / ③p0Tag public / ④占比边界 | `fbab9edc…` / `1692e7a4…` | %s | ⏳待验收 |
| ~~r5c035a~~ | 含 ① 回归（可负担极性写反） | `1011fb5f…` / `91e10a51…` | 09-25 02:17 | ❌ 已作废，勿用 |

**判读要点（抓样时）**：`p1bG`=AI金、`p1bB`=在建(1/0)、`p1bQ`=队列、`p1bT`=总机数、`p1bM`=轰炸机、`p1bA`=攻击机、`p1bCB/CA`=轰炸机/攻击机成本。
''' % (time.strftime('%Y-%m-%d %H:%M'), time.strftime('%m-%d %H:%M'))


def append(path, txt, tag):
    s = io.open(path, encoding='utf-8').read()
    if tag in s:
        print('SKIP(已存在)', path.split('/')[-1])
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(path, 'w', encoding='utf-8').write(s + txt)
    print('OK', path.split('/')[-1])


def replace(path, old, new):
    s = io.open(path, encoding='utf-8').read()
    if old not in s:
        print('WARN 未找到待替换片段:', path.split('/')[-1])
        return
    io.open(path, 'w', encoding='utf-8').write(s.replace(old, new, 1))
    print('FIXED(铁律㊱ 更正)', path.split('/')[-1])


append(PLAN, PLAN_TXT, '## 24. r5c035b')
replace(LAWS, LAWS_OLD, LAWS_NEW)
append(LAWS, u'\n', 'x')  # no-op 保序
append(HAND, HAND_TXT, '| r5c035b |')
print('DONE', time.strftime('%m-%d %H:%M'))