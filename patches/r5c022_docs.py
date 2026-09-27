# -*- coding: utf-8 -*-
# §G.10.10 r5c022 施工记录 + 装机“磁盘满”教训 + 子代理“只审增量”方案
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
#### G.10.10 r5c022 施工记录（E5 修复，**已装机并核验**）
- **改动（全树仅 3 处，diff 已证）**：
 | # | 文件/方法 | 改动 |
 |---|---|---|
 | D1 | `SaveGameManager.Save_Airforce_Data` | 主文件写出 `FileManager.getSaveType(绝对路径)` → **`Gdx.files.absolute(绝对路径)`**（与读侧、以及同方法 dbg 那行一致）⇒ 修掉"写到 app 私有伪路径、读不到" |
 | D2 | `InitGame.initGame()` | **删除**"省建筑数据尚未就绪时"的那次 `loadSave_Airforce()`（实证 `bl2315=0`）⇒ `afRestored` 保持 false ⇒ 由 `AFM.updateAll` 的门（视图==IN_GAME、省数据已就绪）做**唯一一次** sync+load |
 | P | `AirForceManager.updateAll` | 门探针 `nE5 GATE a=1`（验证门真的触发） |
- **门禁**：assemble ✅、arity `BAD=0` ✅、dangling `0` ✅、指令级 diff＝仅上述 3 处 ✅。八件套 **Sig Δ=-1** —— **已知且已解释的例外**：`CheckSig` 只统计定义类以 `Laoc/kingdoms/lukasz/` 开头的 invoke，本次把 1 个游戏内 invoke（`FileManager.getSaveType`）换成了 libGDX invoke（`Gdx.files.absolute`，全树既有 30 处同写法）⇒ 计数 −1，不是改坏。
- **产物**：`build_apk/dbg_signed77_v119_r5c022.apk`；dex `b2b2d1243eaa01432088f0b1c0edb96c`／apk `da510467615fc606112c3b3842305a5f`；装机后 `pm path` 实测 apk/dex md5 **与构建产物一致** ✔
- **抓样基线已重置为 0**（见下条：调试日志被截断）。

#### G.10.11 装机踩坑：**`/data` 磁盘满**导致"弹窗一直呼出、却没人点"
- 现象：安装弹窗反复出现、`pm install`/三段式流式安装都失败（`InstallLocationUtils.resolveInstallVolume` 返回空），日志里 `INSTALL=Failure`。
- 真因：`/data` **100% 满（仅剩 0.9G）**⇒ 安装会话无法解析可用卷 ⇒ 弹窗永远走不完。
- 清理（**只清 AI 自己产物**，纪律①）：`build_apk/` 15 个归档 apk（**10GB**）保留最新 3 个（r5c022／r5c021／r5c020e）其余删除；调试日志 `airdbg_key.txt` 458MB→**截断为 0**（`airdbg_tick.txt` 同步）；`/data/local/tmp` 只留当批 apk ⇒ **释放约 9-10GB**（现 10G 可用）。
- 处置后：设备端 `nohup sh /data/local/tmp/autotap_install.sh <apk> <log> &`（每 2s 点 `540,2082`→`540,2228`）⇒ 日志 `Success` ✔
- ⇒ **纪律⑰（新增）**：**装机前先 `df -h /data`**（需 ≥3G 余量）；`build_apk/` 只保留最近 3 个归档；调试日志截断后必须同步把 `live_baseline.txt` 置 0。
- ⇒ **纪律⑱（新增）**：装机必须显式用**设备侧 `autotap_install.sh`（nohup 后台）**；不要依赖三段式流式安装（本机 `resolveInstallVolume` 会失败）。

#### G.10.12 子代理审核提速方案（"只审增量"）
用户提议"让子代理只检测增量"⇒ 采纳，落成固定流程：
1. **主代理先做增量包**（本地、秒级）：`diff A.pre_batch A` 得到变更行 + 变更方法的两版指令级 dump（用 `toolchain/verify_dex/DumpMeth`）⇒ 写成一个 `INCR.md`；
2. 调 `code_reviewer_tools:code_review` 时**只给**：`targets_json` = 变更的 1-3 个类；`dex_path`/`baseline_path` **显式给**；`max_tool_calls` **≤10**；`intent` 里直接贴 `INCR.md` 摘要 ⇒ 子代理无需全量反编译/diff。
3. 若仍超时 ⇒ 以 `selfcheck2.py`（指令配对）+ 八件套 + `diff` 三条本地证据兜底，并在文档记"sibling review 未产出"。
"""
t = io.open(P, encoding='utf-8').read()
if u'#### G.10.10 r5c022 施工记录' in t:
    print('已存在')
else:
    B = P + '.pre_g1010'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.10-12 已写入')
H = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
LINE = u'| r5c022 | E5 修复：D1 主存档写出改 absolute；D2 移除 initGame 提前读档（交给 updateAll 门）+ GATE 探针 | `b2b2d124…` / `da510467…` | 09-24 | ⏳待真机验收 |'
t2 = io.open(H, encoding='utf-8').read()
if u'| r5c022 |' in t2:
    print('交接文档已含')
else:
    B2 = H + '.pre_r5c022'
    if not os.path.exists(B2):
        shutil.copy2(H, B2)
    t2 = t2.replace(u'| r5c021 |', LINE + u'\n| r5c021 |', 1) if u'| r5c021 |' in t2 else t2.rstrip() + u'\n' + LINE + u'\n'
    io.open(H, 'w', encoding='utf-8').write(t2)
    print('OK 交接文档已登记 r5c022')