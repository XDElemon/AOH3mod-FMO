# -*- coding: utf-8 -*-
# r5c044_verdict3.py —— 落盘：§44 抓样判读（r5c044 验收）+ 交接状态改 ✅ + 新待办
import io, time

TS = time.strftime('%Y-%m-%d %H:%M')
PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

TXT = u'''
## 44. r5c044 抓样判读 —— 「自动拦截」首次真派机（{TS}）
### 44.1 结论：里程碑达成（玩家已验证"真会飞"）
| 观测 | 值 | 含义 |
|---|---|---|
| `nDSPT8` | **12** | 自动拦截**首次选中机场**（历史首次；r5c043 之前恒 0） |
| `nDR_DSPT ok k=airhq_226_5715` | **12** | 每次选中都**成功建了拦截任务**并带上真实空军师键 |
| `nDR_AID ok k=airhq_226_5715 civ=226` | **12** | 与上一行逐条成对（同一次派发在两条链各留一条痕）|
| `no-divkey` / `create-null` / `no-aircraft` | **0 / 0 / 0** | 派发链**无一处失败**（有师才出兵、有飞机才起飞）|
| `um_mv0 … hq=1` | **104 / 104** | 抽样的任务推进**100% 绑定到真实"空军师"**（此前恒 `hq=0`） |
| `um_mv0 st=` | 1:27 / 3:77 | 在途与返航状态都在推进；`fp` 0→18 |
| `nDR_DET` | **444** | 雷达持续点亮（样例 `civ=73 prov=6335 type=radar`）|
| crash buffer | 本局 **0** 条 | 那 18 条是 12:39 的旧版（PID 6719/9151，`ProvinceDrawArmy` VerifyError，r5c038 时代）|
⇒ **r5c043（射程门方向）+ r5c044（活猎手门）落地后，"雷达看见 → 半径内起飞 → 用真实空军师执行"整条链路第一次真正跑通。**

### 44.2 未判到 / 待办（诚实记录，不当作成功）
1. **`nHAC` = 0**（内层活猎手门从未被触发）。两种解释**无法用现有探针区分**：
   (a) 两条链的外层门现在已在"调用 dispatchAutoIntercept 之前"就拦住了（本批把 FOW 首门修正后，`已侦测 ∧ 有猎手 ⇒ 跳过` 会先发生）⇒ 内层门成为冗余的第二道；
   (b) 我方拦截任务寿命短于 4 游戏小时冷却 ⇒ 下一次尝试时已无猎手。
   ⇒ 下一批在**两条链的跳过点**各加一个计数（如 `nSKIPa`/`nSKIPb`）即可区分。**本批既不算通过也不算失败。**
2. **448 次 `no-airport` 里有 432 次自检为 `nDSPT3 sz=1 ap0=5715 n0=-1`** ⇒ 防守方只有 1 个机场(5715)，而该机场所在省的 `Game.getProvince()` 返回 **null**；但同一机场在另外 12 次里能正常算出距离并成功派机 —— **自相矛盾，需下一批定位**（猜测方向：跨局/跨场景残留的机场列表，或 province 列表越界；`nDSPT4`=0 已排除"无机可用"这一路）。
3. **风险①**（取键顺序不复核战斗机半径）仍在，未改。
4. `nDSPT4`=0 与上批(547)相反 ⇒ 本局我方机场始终有可用机（飞机没被打光）。
5. P2（派发闸门细化）/ P3（空战对称与分工）/ P4（难度）/ P5（清探针）仍待排。

### 44.3 本批结论一句话
**"AI 会飞 + 我方会拦"这条主链路已闭环并通过实测；剩下的都是"闸门精细化"和"探针语义澄清"级别的收尾。**
'''.replace('{TS}', TS)


def main():
    s = io.open(PLAN, encoding='utf-8').read()
    if '## 44. r5c044 抓样判读' in s:
        print('SKIP §44')
    else:
        if not s.endswith('\n'):
            s += '\n'
        io.open(PLAN, 'w', encoding='utf-8').write(s + TXT)
        print('[OK] 计划书 §44')

    h = io.open(HAND, encoding='utf-8').read()
    old = '| r5c044 | 活猎手去重门修正（if-eq→if-ne）+ FOW 配对门 + nHAC 探针 + 门禁㉗/㉗b | `323fdab0…` / `317c8ac2…` |'
    if old in h:
        h2 = h.replace('⏳待抓样验收', '✅已验收（§44：拦截首次真派机 12 次 / um_mv0 hq=1 100%）', 1)
        io.open(HAND, 'w', encoding='utf-8').write(h2)
        print('[OK] 交接状态 ✅')
    else:
        print('WARN 交接行未匹配（可能已被改）')
    print('DONE', TS)


if __name__ == '__main__':
    main()