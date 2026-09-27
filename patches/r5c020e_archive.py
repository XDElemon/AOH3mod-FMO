# -*- coding: utf-8 -*-
# 归档登记：r5c018a ~ r5c020e（自动打击开关线）已验收 → 更新 5 份文档
import io, os, shutil
R = u'/sdcard/GLG/历史23/'
PLAN = R + u'r6s5/B3-A1自动打击接活_具体方案书v1.md'
NEXT = R + u'r6s5/下一步调研_选靶微调与C2代际v1.md'
DESIGN = R + u'空战重做专案_设计v2.md'
PROG = R + u'r6s5/空战重做_进度与bug排查专档_v1.md'
HAND = R + u'r6s5/交接文档_电脑端接手_v1.md'

def load(p):
    b = p + '.pre_archive'
    if os.path.exists(p) and not os.path.exists(b):
        shutil.copy2(p, b)
    return io.open(p, encoding='utf-8').read()

def rep1(t, old, new, tag, cnt=1):
    c = t.count(old)
    assert c == cnt, '%s 锚点命中 %d（期望 %d）' % (tag, c, cnt)
    print('  OK', tag)
    return t.replace(old, new)

ACC = u"""
### 附-29.10 **验收结论与归档**（2026-09-24）

- **用户实测**：r5c020e 装机后**功能全部正常**（自动打击按钮生效、开局关、可切换；其后确认"正常功能全部正常"）⇒ **本线结案**。
- **抓样证据**（`r6s5/cur_r5c020e.txt`，3.58MB 增量）：无新 FATAL／无 `IndexOutOfBoundsException`；会话内仅 2 个攻击机任务（`nGA init n=2`，`nGA fire r=0..3` 各 2＝投满 4 轮、`nRT sw` 2＝投完即走、`um_sr:0/1`=6/2），轰炸线 `nAS pk`/`nIK add`=0，`nB2 miss/gate/new`=1/1/1、`toast`=0 ⇒ **"默认关＋按机场启用"行为符合预期，弹药机制零回归**。
- **判读注意**：`nA1b`（`a1bDiag` 行，在机场循环之前打印）**不受开关影响**，不可当派发证据。
- **归档**：批次 **r5c018a / r5c018b / r5c018c / r5c019 / r5c019b / r5c020 / r5c020b / r5c020c / r5c020d / r5c020e** 全部装机并验收；现役 `r5c020e`（dex `a34fc14e…`／apk `236f2c0b…`）。
"""

def main():
    # 1) 方案书
    t = load(PLAN)
    if u'附-29.10' not in t:
        t = rep1(t, u'### 附-29.9', ACC.strip() + u'\n\n### 附-29.9', u'方案书 附-29.10')
        io.open(PLAN, 'w', encoding='utf-8').write(t)

    # 2) 计划书：§H 结案 + §G.4 第17项
    t = load(NEXT)
    if u'### H.9 状态：已验收归档' not in t:
        t = rep1(t, u'### H.8 第三次调研定稿',
                 u'### H.9 状态：**已验收归档（2026-09-24）**\n'
                 u'- 批次链：`r5c020`（开关本体）→ `r5c020b`（UI 入口门笔误）→ `r5c020c`（显示与 actionElement 夹取对齐）→ `r5c020d`（**开局默认＝关**）→ `r5c020e`（夹取块三处方向修正）。\n'
                 u'- 用户实测：**功能全部正常**；抓样：无新 FATAL／无 IOOBE，仅按开启的机场派发，弹药机制零回归。\n'
                 u'- 口径：**每机场**；**开局＝关**（新档与旧档一致）；关掉只影响新派发（不召回在飞任务）；范围＝**②对地全部**（`a1Scan` 轰炸线 ＋ `a1bScan` 攻击机线）。\n'
                 u'- 遗留：`自动巡逻` 显示块（引擎原块）保留"iActiveID 非法⇒显示关"的回落——与真实状态一致，未改。\n\n'
                 u'### H.8 第三次调研定稿', u'计划书 §H.9 结案')
        t = rep1(t, u'| 17 | 自动打击开关（**已定稿 → §H**，每机场粒度，待开工）＋ 设置面板（B3-A6） |',
                 u'| 17 | ~~自动打击开关~~ **✅ 已完成（r5c020 系列，2026-09-24，见 §H.9）**；**设置面板（B3-A6）仍未做** |',
                 u'计划书 §G.4 第17项')
        io.open(NEXT, 'w', encoding='utf-8').write(t)

    # 3) 设计v2
    t = load(DESIGN)
    if u'（已验收，2026-09-24）' not in t:
        t = rep1(t, u'## 【R5c020 / 2026-09-24】自动打击开关',
                 u'## 【R5c020 / 2026-09-24】（已验收，2026-09-24）自动打击开关', u'设计v2 验收标注')
        io.open(DESIGN, 'w', encoding='utf-8').write(t)

    # 4) 专档顶部
    t = load(PROG)
    if u'r5c020e 已验收归档' not in t:
        line = u'> ✅ 2026-09-24 **r5c018a ~ r5c020e 全部验收归档**（自动打击开关线：默认关、每机场可切换、存读档持久；选靶分散化；弹药=payload 投满 4 轮）。现役 `r5c020e`（dex a34fc14e／apk 236f2c0b）。详见方案书 附-29.10。\n\n'
        io.open(PROG, 'w', encoding='utf-8').write(line + t)
        print('  OK 专档顶部行')

    # 5) 交接文档：进度表补充 + 待办项更新 + 顶部未归档行
    t = load(HAND)
    NEW22 = u"""### 2.2b 近期批次（r5c0xx，2026-09-23 ~ 24，**均已验收归档**）
| 批次 | 内容 | 装机 | 归档 |
|---|---|---|---|
| `r5c018a` | 攻击机弹药＝每机 `payload`（甲1'）：抬轮数/滞空上限，一趟投满 | ✅ | ✅ |
| `r5c018b` | 同上第二翻（极性订正 + 探针换 `dKey` 通道） | ✅ | ✅ |
| `r5c018c` | 解锁 `shouldReturn` 死循环体（甲1' 真正生效）＋ **可达性门禁 `reach.py`** | ✅ | ✅ |
| `r5c019` | **攻击机选靶分散化**：排序键＝(在飞数↑,距离↑,同档随机)；取消"每省≤2" | ✅ | ✅ |
| `r5c019b` | 三处探针护门极性修正 ＋ 修 `applyArmyDamage` 探针 CME 闪退 | ✅ | ✅ |
| `r5c020` | **自动打击开关**（每机场；轰炸线 `a1Scan` ＋ 攻击机线 `a1bScan`；存读档持久） | ✅ | ✅ |
| `r5c020b/c` | UI 入口门笔误修正 ＋ 显示与 `actionElement` 夹取对齐 | ✅ | ✅ |
| `r5c020d` | **开局默认＝关**（新档/旧档一致：DTO 键改名 `strikePaused`） | ✅ | ✅ |
| `r5c020e` | 夹取块三处方向修正（消除动态文案失效与空列表 IOOBE 风险） | ✅ | ✅ |

> 工具侧同批新增/加固：`reach.py`（可达性门禁，含 `.catch` 入口）、`check_branch.py`（判空告警仅对 `iget-object`）、分支目标剥离行内注释。

"""
    if u'### 2.2b 近期批次' not in t:
        t = rep1(t, u'### 2.3 待处理事项（优先级序）', NEW22 + u'### 2.3 待处理事项（优先级序）', u'交接 2.2b')
    if u'自动打击开关：已由 r5c020 系列完成' not in t:
        t = rep1(t, u'3. `B3-A6`：自动打击开关 + 设置面板（"自动打击设置"按钮）—— 已登记在计划书附-9，未开工。',
                 u'3. `B3-A6`：**自动打击开关：已由 r5c020 系列完成（2026-09-24，默认关、每机场可切换、存读档持久）**；剩**设置面板**部分未做。',
                 u'交接 2.3 第3项')
    t2 = t.replace(u'| 未归档批次 | `r5b003 / r5b004 / r5b005 / r5b006 / r5b006c / r5b007` |',
                   u'| 未归档批次 | 无（r5b003~r5b014、r5c015~r5c020e 均已登记归档；现役 `r5c020e`）|')
    if t2 != t:
        t = t2
        print('  OK 交接 顶部未归档行')
    io.open(HAND, 'w', encoding='utf-8').write(t)
    print('== 归档登记完成 ==')

main()