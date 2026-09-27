# -*- coding: utf-8 -*-
# §G.10.8 施工记录（r5c021）＋ 交接文档 §4 登记
import io, os, shutil

P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
REC = u"""
#### G.10.8 r5c021 施工记录（2026-09-24，**已装机**）
- **产物**：`build_apk/dbg_signed77_v119_r5c021.apk`；dex `3a11806531a3096e7e90c2c35ba0bc22`／apk `e6f63c3cf5daf87bf7b6613e8d70dfca`（装机 `DEX_MATCH=1`／`APK_MATCH=1`）。
- **改动**（3 文件、共 11 处探针 + 3 个日志辅助方法，**零行为改动**）：
 | 文件 | 内容 |
 |---|---|
 | `AirDbgLog.smali` | 新增 `e5i(String,I)V`／`e5ii(String,I,I)V`／`e5s(String,String)V`（仿 `provArmySz` 范式；`e5s` 内含 null→"-" 保护） |
 | `SaveGameManager.smali` | `Save_Airforce_Data`：W0（`allAirports.size()`）／W1（`getSaveType` **move-result 之后**打印输入路径串）／W2（句柄非空分支）／W3（主文件 writeString 之后）／W4（dbg writeString 之后）／W5（catch 内异常简名） |
 | `LoadSavedGameManager.smali` | `loadSave_Airforce`：R1main（`goto :goto_77` 之前＝主文件命中）／R2dbg（`:goto_77` 标签前＝回退 dbg）／R4civ＋R4dto（DTO airports 迭代前打印内存文明数、DTO 机场数）／L1hit（机场 provinceID 匹配**落穿点**）／L3unit（AirUnit 挂回**落穿点**） |
- **门禁**：assemble ✅；arity `BAD=0`（WARN3 为既有）✅；dangling `真悬空=0` ✅；八件套 `Sig 152541→152556, Δ=+15, Invoke/Regs/Init/Range BAD=0` ✅。
- **本轮自审抓到并修掉 1 个真错（重要教训）**：W1 最初被插在 `FileManager->getSaveType(...)` 与它的 `move-result-object v3` **之间** ⇒ ART 会 `VerifyError`（**本地八件套不覆盖此类**）。已挪到 `move-result` 之后；并新增自审脚本 `r5c021_selfcheck2.py`（判据：前一条 invoke 返回**非 void** 且探针后紧接 `move-result` ⇒ 真错）扫全批 = **0**。
 ⇒ **纪律⑯（新增）**：探针/新代码**不得插在 `invoke-*` 与其 `move-result*` 之间**；插入后必须跑 `selfcheck2`（或等价检查）确认配对关系。
- **审核流程**：`code_reviewer_tools:code_review(batch=r5c021)` **本轮未产出报告**（子代理在反编译/diff 阶段超时，`/tmp/review_r5c021` 留中间产物）。⇒ 本批以**自审脚本 + 八件套 + 精确极性核对**替代；下次调用该子代理时**先缩小 targets/max_tool_calls**。
- **判读入口（等你操作）**：①**手动存一次档**（看 `nE5 W0..W5`）；②**读一次旧档**（看 `nE5 R1main/R2dbg/R4civ/R4dto/L1hit/L3unit`）⇒ 一次抓样即可判 R1（写侧不落地）/R2（读档后 sync 重建）/R3（在建期漏登记）。
"""
t = io.open(P, encoding='utf-8').read()
if u'#### G.10.8 r5c021 施工记录' in t:
    print('§G.10.8 已存在')
else:
    B = P + '.pre_g108'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', REC.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.8 已写入')

# 交接文档 §4 登记行
H = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
LINE = u'| r5c021 | E5 诊断批：写侧 W0-W5 + 读侧 R1/R2/R4/L1/L3 共 11 探针（零行为改动）＋ AirDbgLog.e5i/e5ii/e5s | `3a118065…` / `e6f63c3c…` | 09-24 12:43 | ⏳待真机判读 |'
t2 = io.open(H, encoding='utf-8').read()
if u'| r5c021 |' in t2:
    print('交接文档已含 r5c021')
else:
    B2 = H + '.pre_r5c021'
    if not os.path.exists(B2):
        shutil.copy2(H, B2)
    if u'| r5c020e |' in t2:
        t2 = t2.replace(u'| r5c020e |', LINE + u'\n| r5c020e |', 1)
    else:
        t2 = t2.rstrip() + u'\n' + LINE + u'\n'
    io.open(H, 'w', encoding='utf-8').write(t2)
    print('OK 交接文档已登记 r5c021')