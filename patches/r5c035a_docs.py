# -*- coding: utf-8 -*-
# r5c035a_docs.py —— 落盘：P1b 审计修正 + 状态探针（r5c035a）
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

PLAN_TXT = u'''
## 23. r5c035a —— P1b 审计修正 + AI 造机状态探针（%s）

### 23.1 本批定位
r5c035 构建后做了一次**全面审计**（对照真实字段/API/寄存器），抓到 **4 个问题**并把它们与本批一起交付。
其中 ① 是"AI 从不造机"的头号嫌疑。

### 23.2 四项修正
| # | 位置 | 原文 | 改为 | 为什么 |
|---|---|---|---|---|
| ① | `Airport.p1bPickAffordable` | `cmpg-float` 后 `if-ltz v4, :next` | `if-gez v4, :next` | cmpg 结果为 **-1 表示 gold<cost**。原写法 ⇒ **买得起就跳走、买不起反而返回** ⇒ **AI 富有时永远返回 null ⇒ 永不造机**（与 r5c034 抓样"p1bT 零/机队全 0"完全吻合） |
| ② | `Airport.p1bStat` 的 `B` 标志 | `if-nez v2, :p1b_st_b0` | `if-eqz v2, :p1b_st_b0` | 使 **B=1 表示"在建"**、B=0 表示空闲（原写法语义相反） |
| ③ | `AirDbgLog.p0Tag` | `private static` | `public static` | `Airport.p1bStat` **跨类**调用它；private 跨类 invoke 是 ART 校验/访问错误句式的来源（与 r5c033 闪退同类） |
| ④ | `AFM.updateAIBuildUp` 机型选择 | `if-lt v4, v5, :bomber`（2×轰炸机 < 总数） | `if-le v4, v5, :bomber`（≤） | 原写法在 **total=0 的空机场**落到"攻击机"分支；改为含 total=0 ⇒ 空机场优先造**轰炸机**（P1a 的唯一阻塞项就是缺轰炸机） |

### 23.3 探针（r5c035 内容，随本批一起装）
`Airport.p1bStat(Airport,String)`：每个 AI 机场**每回合**在"AI 判定之后、任何跳过之前"打一条决策前状态：
`G`=金（float→int）、`B`=是否在建(1/0)、`Q`=建造队列长度、`T`=总机数、`M`=轰炸机数、`A`=攻击机数、`CB`=轰炸机成本、`CA`=攻击机成本。

### 23.4 产物与门禁证据
| 项 | 值 |
|---|---|
| dex md5 | `1011fb5fad2d8869adf8523ac2ac5809` |
| apk md5 / 归档 | `91e10a51ca49057a6d0b971f307db4e4` / `build_apk/dbg_signed77_v119_r5c035a.apk` |
| arity（check_arity.py） | BAD **0**（WARN 3 为历史白噪） |
| sitecheck | **0 FAIL**（含新增 ⑩/⑪/⑫） |
| 八件套 verify | Sig=152681，Δ=**+20**（与本批新增 invoke 一致） |
| 负样本（铁律⑲） | 未修正 dex `bda4adb1…` 上 **⑩/⑪/⑫ 恰好 3 FAIL**，修正后 0 FAIL |
| Earth3 条目 | 18510（=18510） |
| GV 注入 | `GV_Advisors.CHANCE_OF_DEATH` 全 0；`GV_GameUpdate.GAME_UPDATE_DEATH_RULER_MIN_TURN_ID=999999999`；`GAME_UPDATE_DEATH_*_EVERY_X_DAYS` 保持 1818/772/842/942（**未设 0**） |

### 23.5 门禁新增（r5c029_sitecheck.py v3）
- **⑩ P1b 可负担判定**：`cmpg-float` 之后第一条 if 必须是 `if-gez v4`，且目标块含 `goto`（循环推进）。
- **⑪ P1b 状态探针 B 标志**：读 `Airport.buildingType` 之后第一条 if 必须是 `if-eqz v2`，且紧随有 `const/4 v3,0x1`。
- **⑫ 跨类可见性**：`AirDbgLog.p0Tag` 必须是 `public static`。

### 23.6 人物不死（GV 方案）键名核对
- `CHANCE_OF_DEATH` 数组**只存在于 `GV_Advisors.json`**（15 元素，已全 0）⇒ 覆盖**顾问**；
- **元首/将领**走的是总闸门 `GAME_UPDATE_DEATH_RULER_MIN_TURN_ID`（已设 999999999）——调研结论是元首/顾问/将领的死亡**都在该闸门之内**，故闸门一并覆盖；
- 验收方式＝**行为**（不插探针）：新档/老档连推若干回合，观察是否老死。

### 23.7 下一步（未完成）
1. **装机 r5c035a** → 用户跑几回合 →「抓」；
2. 抓样判读目标：`p1bG`（金）、`p1bB/Q`（在建/队列）、`p1bT/M/A`（机队）、`p1bCB/CA`（成本）⇒ 定案"为什么没造机"（若 ① 已修好，应看到 `p1bT`/`p1b` 首次出现、`M` 逐步上升）；
3. P1b 完整验收：`bm` 上升 → 开战 `nA4e k=0` → `activeMissions` 含 AI 任务 → 真的炸到玩家；
4. 人物不死行为验收（连推回合）；
5. 之后：P2（去重/频率上限）、P3（空战对称）、P4（难度接 `difficultyID`）、P5（清探针）。
''' % time.strftime('%Y-%m-%d %H:%M')

LAWS_TXT = u'''

## 新增铁律（%s，r5c035a）

- **㉟ 跨类调用必须 public**：被**别的类** `invoke-static/invoke-virtual` 的方法必须是 `public`。
  本轮 `Airport.p1bStat` 跨类调用 `AirDbgLog.p0Tag`，而后者原本是 `private` —— 这正是 ART 校验/访问错误句式的来源。
  ⇒ 加探针前先确认"被调方法在目标类里是 public"。
- **㊱ cmpg/cmp 方向必须与"数据含义"对账，不要信注释**：`cmpg/cmp` 比较浮点后，**-1 表示左<右**。
  `if-gez` = **≥0 才跳**、`if-ltz` = **<0 才跳**。
  本轮 `p1bPickAffordable` 的注释写着"if-ltz = 小于0才跳"（**注释本身写错**），代码照它写 ⇒ 判据全反 ⇒ **AI 富有时永不造机**。
  ⇒ 写新判据时，先写"什么情况下应该跳去哪"，再选助记符，最后用抓样验证。
- **㊲ 边界用 `if-le/if-ge` 而非 `if-lt/if-gt`**：`2*bombers < total` 在 `total=0` 时**不成立** ⇒ 空机场会落到 else 分支。
  涉及"空集合/零值"的占比判据一律先想 0 的情形（本轮改成 `≤`）。
- **㊳ 构建命令的正确用法（避免踩坑）**：
  `bash toolchain/act/assemble.sh <批次名> [输出dex]` —— **第一个参数是批次名**（传 dex 路径会拼出 `/tmp//tmp/...` 而报 FileDataStore 错）；
  arity 门禁 = `python3 toolchain/act/check_arity.py`（`/tmp/selfcheck2.py` 那种临时脚本会被清掉，别依赖 `/tmp`）。
- **㊴ 抓样遇到"探针零输出"先做四问**（并入㉗）：①方法真在跑吗；②日志通道节流吗；③插桩是否在分支体内；④**上游判据是否把路径掐死了**（本轮就是 ① 的可负担判据把 AI 永远挡在门外）。
''' % time.strftime('%Y-%m-%d %H:%M')

HAND_TXT = u'''

## §4 登记（%s 追加）

| 批次 | 内容 | dex / apk md5 | 时间 | 状态 |
|---|---|---|---|---|
| r5c035a | P1b 审计修正（可负担极性/B 标志/p0Tag 可见性/机型边界）＋AI 造机状态探针 `p1bStat` | `1011fb5f…` / `91e10a51…` | %s | ⏳待装机/验收 |

**当前设备状态**：设备上仍在跑 **r5c034**（无探针 `p1bStat`、且 `p1bPickAffordable` 极性仍是反的）。
**下一步**：`bash toolchain/act/install.sh r5c035a --yes` → 用户跑回合 → 抓样判读 `p1b*`。
''' % (time.strftime('%Y-%m-%d %H:%M'), time.strftime('%m-%d %H:%M'))


def app(path, txt, tag):
    s = io.open(path, encoding='utf-8').read()
    if tag in s:
        print('SKIP(已存在)', path.split('/')[-1])
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(path, 'w', encoding='utf-8').write(s + txt)
    print('OK', path.split('/')[-1])


app(PLAN, PLAN_TXT, '## 23. r5c035a')
app(LAWS, LAWS_TXT, '㉟ 跨类调用必须 public')
app(HAND, HAND_TXT, '| r5c035a |')
print('DONE', time.strftime('%m-%d %H:%M'))