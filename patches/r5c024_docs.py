# -*- coding: utf-8 -*-
# §G.11.5 r5c024 施工记录 + 子代理审核现状
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### G.11.5 r5c024 施工记录（2026-09-24，已装机）
- 三处改动（源码 diff 已证**只此三处**）：
  1. `SaveGameManager$Save_Airport`：新增 `.field public buildQueue:Ljava/util/List;` ＋ `Signature`＝`List<Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType>;`
  2. `SaveGameManager.Save_Airforce_Data`：`strikePaused` 之后 `iget-object v9, v6(Airport)->buildQueue` → `iput-object v9, v7(DTO)->buildQueue` ＋ 探针 `nE5 Qsave`
  3. `LoadSavedGameManager.loadSave_Airforce`：`autoStrikeOff` 回填之后 `iget-object v12, v7(DTO)->buildQueue` → `if-eqz v12, :e5_aptq_skip` → `iput-object v12, v11(Airport)->buildQueue` ＋ 探针 `nE5 Qload`
- 寄存器核实：写侧 v9/v12/v13 在方法 311–460 内**全程未被使用**；读侧 v12/v13 在插入点空闲。
- 门禁：assemble ✅／`selfcheck2` 真错=0 ✅／arity BAD=0 ✅／八件套 `Sig 152555→152557（Δ=+2 ＝两个新增 e5i）`、Invoke/Regs/Init/Range BAD=0 ✅／`check_loopexit` 无新增候选 ✅
- 产物：dex `74f43584449a3576d4f552b195889096`／apk `96f3cb85b124d387277e558bd4e2ddf9`（装机 `DEX_MATCH=1`／`APK_MATCH=1`）
- 备份：`SaveGameManager.smali.pre_r5c024`、`LoadSavedGameManager.smali.pre_r5c024`、`SaveGameManager$Save_Airport.smali.pre_r5c024`
- 验收口径：机场**排 2–3 个建造项** → 存档 → 读档 ⇒ 面板里队列还在且顺序不变；抓样 `nE5 Qsave` 与 `nE5 Qload` 一致。
### G.11.6 子代理审核（两轮）现状 —— 仍未产出报告
| 轮 | 结果 |
|---|---|
| r5c024（全量） | 沙箱 `/tmp/review_r5c024` 干了不少活（反编译两版、方法级 diff、自建极性样例 `t.smali`/`t.dex`），**未落报告** |
| r5c024b（收窄到 5 个是/否问题、`max_tool_calls=3`） | 沙箱 `/tmp/review_r5c024b` 有 `q5.txt`/`q5b.txt`，但**判据本身错**：把 23447 处「`List.add` 返回值不被使用」的正常写法全报成违规 —— 属噪声，不可采信 |
| **可采信的唯一独立产出** | 全树**方法级 diff**：`23576` 个方法中 **只有 2 个变化**（恰为本批改的 `Save_Airforce_Data`、`loadSave_Airforce`）⇒ 与我的源码 diff 互相印证 ✔ |
- 结论：本环境里 `code_review` **走不到出报告那一步**；它的自检判据需要和我们自己的 `selfcheck2` 对齐（只统计"结果被后续消费的 invoke"）才有意义。**暂时仍以 `selfcheck2`＋八件套＋源码 diff＋`check_loopexit` 为准**（§G.10.12 流程不变，标注"子代理产出不稳定"）。
"""
t = io.open(P, encoding='utf-8').read()
if u'G.11.5' in t:
    print('已存在')
else:
    B = P + '.pre_g115'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.11.5-11.6 已写入')

H = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
t2 = io.open(H, encoding='utf-8').read()
row = u'| r5c024 | 建造队列进存档：Save_Airport 新增 buildQueue 字段（List<AirUnit$AirType>）＋写侧序列化＋读侧 null 保护回填 | `74f43584…` / `96f3cb85…` | 09-24 13:52 | ⏳待真机验收 |'
if u'r5c024' in t2:
    print('交接文档已有 r5c024 行')
elif u'| r5c023 |' in t2:
    B2 = H + '.pre_r5c024'
    if not os.path.exists(B2):
        shutil.copy2(H, B2)
    i = t2.index(u'| r5c023 |')
    j = t2.index(u'\n', i) + 1
    io.open(H, 'w', encoding='utf-8').write(t2[:j] + row + u'\n' + t2[j:])
    print('OK 交接文档已登记 r5c024')
else:
    print('交接文档表未匹配，跳过')