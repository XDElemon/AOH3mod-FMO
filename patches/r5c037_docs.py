# -*- coding: utf-8 -*-
# r5c037_docs.py —— 落盘：P1b 真因（if-nez v6 极性反写）+ 门禁⑬ + 铁律
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 25. r5c037 —— ★P1b 真因定案并修复：「选机型判空」极性反写（{TS}）

### 25.1 定案过程（r5c036a 抓样，一次定位）
r5c036a 的探针把范围收死：

| 探针 | 抓样值 | 结论 |
|---|---|---|
| `p1bG` | **1,000,123** | AI 很有钱 ⇒ **"买不起"排除** |
| `p1bC` / `p1bL` | **20 / 1** | 容量、等级正常 ⇒ **"容量为 0"排除** |
| `p1bB` / `p1bQ` | 0 / 0 | 不在建、队列空 ⇒ 两道 guard 都通过 |
| **`p1bZ` / `p1bW` / `p1bS`** | **0 / 0 / 0** | **根本没走到 `startBuild`** ⇒ 阻塞在"机型选择/可负担挑选"这一段 |

再把 r5c036a 的实装 dex 反汇编出来读，真凶现形：

```
31| invoke-static {p1, v6}, Airport;->p1bPickAffordable(...)   # 选到机型返回非 null
32| move-result-object v6
33| if-nez v6, :cond_5e        ← ★v6 非 null（选到了）反而跳去"跳过"
```
⇒ **越"选得到"越不造**，只有"没得造(null)"才会继续。于是：金不掉、队列空、机队恒 0、`p1bZ/W/S` 恒 0 —— 与历次抓样完全吻合。

### 25.2 修复（r5c037）
`if-nez v6, :p1b_u_skip` → **`if-eqz v6, :p1b_u_skip`**（只有 null=没得造 才跳过）。

### 25.3 账：这个错从 r5c033 起就在，5 批没抓到
| 批次 | 当时的假设 | 结果 |
|---|---|---|
| r5c033 | 首版（错寄存器） | 闪退 |
| r5c034 | 修寄存器 p0→p1 | 不崩了，但 `p1bT/p1b` 零 |
| r5c035/035a/035b | 猜"买不起"（并把可负担极性改反又回退） | 抓样否掉"买不起" |
| r5c036a | 加"容量/等级/到达点"探针 | **钉死：没到 startBuild** |
| **r5c037** | 读 dex 第 33 行 | **真因=选机型判空极性反写** |

教训：**"探针零输出"时必须继续往上游找第一个没到的地方**（本轮 `p1bZ` 就是那一刀），而不是猜下游原因。

### 25.4 门禁新增⑬（含负样本证据）
- **⑬ P1b 选机型判空**：`p1bPickAffordable` ⇒ `move-result-object v6` ⇒ 之后第一条 if 必须是 **`if-eqz v6`**，且目标块 `return-void`；
- 负样本：对 r5c036a dex（`3e944acd…`）跑 ⇒ **恰好 1 FAIL**；修复后 **0 FAIL** ✓。

### 25.5 产物
| 项 | 值 |
|---|---|
| dex md5 | `3c61b45d8e49b6a7ac13302d4f81037d` |
| apk md5 / 归档 | `d07a85f3578db65b83484a91def00126` / `build_apk/dbg_signed77_v119_r5c037.apk` |
| arity / sitecheck / 八件套 | BAD 0 / **0 FAIL** / Δ=**0**（只换一个分支指令，无 invoke 变化，符合预期） |
| 装机 | `Success` + **DEX MATCH** ✓ |

### 25.6 下一步
用户推 1~3 回合 → 抓样。**预期首次出现**：`p1bZ`（到达 startBuild）、`p1bW=1`（入队成功）、`p1bS`（机型 ordinal）、`p1b`（扣钱后金）；随后 `p1bQ`/`p1bT`/`p1bM` 上升 ⇒ P1b 造机贯通。
'''.replace('{TS}', TS)

LAWS_TXT = u'''

## 新增铁律（{TS}，r5c037）

- **㊷ 判空分支一律按"跳过条件"写，写完立刻反读一遍**：
  * 跳过条件 = **为 null** ⇒ 用 `if-eqz`（等于 0 才跳）；
  * 跳过条件 = **非 null** ⇒ 用 `if-nez`。
  本轮 `updateAIBuildUp` 的"选机型结果 v6"跳过条件是"为 null"，却写成 `if-nez v6` ⇒
  **选到机型反而被跳过、AI 永不造机**，静默 5 个批次没抓到。
  ⇒ 同方法内其它三处是**对的**，可作对照：`if-eqz v0`(无玩家跳过) / `if-nez v3`(在建跳过) / `if-gtz v3`(队列非空跳过)。
- **㊸ 探针零输出 ⇒ 往上游找"第一个没到的地方"**：在关键链路上按顺序插"到达点"探针（本轮 `p1bZ`），
  用"最后一个生效 / 第一个失效"两点夹逼，比猜下游原因快一个数量级。
- **㊹ 判空/极性类错误，门禁要覆盖到"每个新增方法体"**：
  本轮 ⑬ 是补上的（此前门禁只覆盖 P1a 派发链与探针语义，没有覆盖 P1b 主流程的判空）。
'''.replace('{TS}', TS)

HAND_TXT = u'''

## §4 登记（{TS} 补充）

| 批次 | 内容 | dex / apk md5 | 状态 |
|---|---|---|---|
| **r5c037** | ★**P1b 真因修复**：`updateAIBuildUp` 选机型判空 `if-nez v6` → `if-eqz v6` | `3c61b45d…` / `d07a85f3…` | ✅ 已装机（DEX MATCH），待抓样验收 |
| r5c036a | 定位批：`p1bC/L`（容量/等级）、`p1bZ/W`（到达 startBuild / 返回值）、`p1bS`（改名） | `3e944acd…` / `67da59c4…` | 已被 r5c037 取代 |

**⚠️ 判读要点**：`p1bT` 是状态探针的"总机数"；造机成功用 **`p1bS`**（旧键已改名）。
'''.replace('{TS}', TS)


def append(path, txt, tag):
    s = io.open(path, encoding='utf-8').read()
    if tag in s:
        print('SKIP(已存在)', path.split('/')[-1])
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(path, 'w', encoding='utf-8').write(s + txt)
    print('OK', path.split('/')[-1])


append(PLAN, PLAN_TXT, '## 25. r5c037')
append(LAWS, LAWS_TXT, '㊷ 判空分支一律按')
append(HAND, HAND_TXT, '| **r5c037** |')
print('DONE', TS)