# -*- coding: utf-8 -*-
# r5c043_docs.py —— 落盘：§40 射程门反写修正 + 更正 §39 错误结论 + 铁律70/71
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 40. 【更正 §39】自动拦截真正的卡点＝射程门**两处反写**（批次 r5c043）（{TS}）
### 40.1 更正声明
§39 的结论"作战半径不够（超程）"**是错的**——那是我用"排除法"（⑩⑫探针不响 ⇒ 只剩⑪）推出来的，
而 **⑪ 本身方向就是反的**，所以"射程不含"其实是"**射程太含**"。用户当场质疑"这不可能是航程问题"是对的。
### 40.2 真实缺陷（第二份审查 + 我逐行复核，一致）
`AFM.dispatchAutoIntercept` 的射程判定（两个机型各一处）：
```
I 圈： v6 = getProvincesInRange(ap, INTERCEPTOR) … contains(敌师省) → v5
      if-nez v5, :dsp_rng_f     ← ★应为 if-eqz（不在 I 圈 ⇒ 才去试 F 圈）
F 圈： v6 = getProvincesInRange(ap, FIGHTER) … contains(敌师省) → v5
      if-nez v5, :dsp_loop      ← ★应为 if-eqz（不在 F 圈 ⇒ 才跳过该机场）
```
`if-nez`＝**值≠0 才跳**（同方法内 3517/3527 的 `isEmpty()` 用法、以及 3592 `if-nez v6,:dsp_selend2` 可自洽印证）。
代入后化简：**"成为候选" ⇔ 距离 > 战斗机半径(400)** ⇒ **敌机越近越被跳过**：
- 敌机贴脸（<400）⇒ **所有机场全被跳过** ⇒ 永不出拦截（`no-airport`）⇒ **正是用户看到的"轰炸机在我脸上却不拦截"**
- 敌机 >400 ⇒ 反而成为候选（方向错的另一半）
### 40.3 修法与校验（r5c043，已装机）
| 项 | 内容 |
|---|---|
| 改动 | 同批两处：`if-nez v5, :dsp_rng_f` → **`if-eqz`**；`if-nez v5, :dsp_loop` → **`if-eqz`**（标签不动、寄存器不动、invoke 数不变 Δ=0） |
| 门禁 | 新增 **㉖**（`contains` 之后必须 `if-eqz`）：负样本 `r5c042` ⇒ `if-eqz=0 if-nez=2` **FAIL**；正样本 ⇒ 全 0（⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓㉔㉕㉖） |
| 产物 | dex **`ddbcd8c0c989ad00162c3f022f169708`** / apk **`0cd9f5003fd3e486c69951ef5ae10007`**；`Success` + DEX MATCH |
### 40.4 次要注意项（未改，记待办）
选完机场后的取键顺序是"先试 INTERCEPTOR 键、再试 FIGHTER 键"，**不看该机型半径**：
⇒ 若敌师落在 400~500，可能在无空闲截击机时派出**够不到**的战斗机（F 半径 400）。严谨做法：F 分支额外要求 `dist ≤ 400`。
### 40.5 归责与底座问题
审查方报告：`/tmp/base_v119.apk` 的 classes.dex 与 `r5c026_classes.dex` **完全相同**（含 AirDbgLog 等补丁基础设施）
⇒ **我们的"基线 apk"不是原版**，无法用它判定这段代码是原版自带还是我们写的。可确定的是：**r5c037 起它就是这样**，本次 r5c042 的实质差异只有 3 个探针＋`dspLogAp`。
### 40.6 下次抓样（可证伪）
| 观测 | 期望 |
|---|---|
| 敌师贴脸（<400） | **首次出现 `nDSPT8`** → 随后 `nDR_DSPT ok k=` / `nDR_AID ok k=`；肉眼可见我方战斗机/截击机起飞迎击 |
| 敌师 >500 | **应被跳过**（真正的"超程"）⇒ `nDSPT8` 不出现（方向已修正） |
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c043 批）新增
- **【70】"排除法"不能替代逐条极性核对**：我曾用"⑩⑫探针不响 ⇒ 只剩⑪射程"下结论，结果 **⑪ 自身方向反了** ⇒ 得出完全相反的"航程不够"。
  **每个候选出口都要直接读它的判据、跳转边与目标标签**（`if-nez/if-eqz` 的正确含义：`if-nez`＝值≠0 才跳 ★易错点）。
- **【71】极性判定的"方法内自洽"手法**（审查方用得好，值得常驻）：
  用**同一方法里其它 `if-*` 的已知语义**做旁证（例：`isEmpty()` 结果 + `if-nez` 跳去"改试战斗机" ⇒ 只能解释为"非0（空）才跳"），
  再判**目标标签的语义**（"成为候选" vs "下一个候选"）⇒ 三问（判据/目标/意图）齐了才下结论。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **【更正】自动拦截真正卡点＝ `dispatchAutoIntercept` 射程门两处反写**（不是"航程不够"）：`contains` 之后应为 `if-eqz` 却写成 `if-nez`
  ⇒ 化简后"成为候选 ⇔ 距离 > 战斗机半径(400)" ⇒ **敌机贴脸反而全被跳过** ⇒ 永不出拦截。批次 **`r5c043`** 已修并装机（dex `ddbcd8c0…` / apk `0cd9f500…`）。
  新增门禁 **㉖**（负样本 r5c042 ⇒ `if-eqz=0 if-nez=2` FAIL；正样本 0 FAIL）；八件套 Δ=0。
- **底座提醒**：`/tmp/base_v119.apk` 实为 r5c026 时代的重打包（dex 与 r5c026 完全相同）⇒ **不能用它当"原版对照"**，需要真原版（商店包/底座 tarball）才能判定某些代码归属。
- **待办**：取键顺序不看机型半径（敌师在 400~500 时可能派 F 机够不到）⇒ 严谨化：F 分支加 `dist ≤ 400`。
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


append(PLAN, PLAN_TXT, '## 40. 【更正 §39】')
append(LAWS, LAWS_TXT, '【70】"排除法"不能替代逐条极性核对')
append(HAND, HAND_TXT, '【更正】自动拦截真正卡点')
print('DONE', TS)