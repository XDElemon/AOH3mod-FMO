# -*- coding: utf-8 -*-
# r5c042_docs.py —— 落盘：§38 自动拦截专题 + 探针批 r5c042 + 铁律68/69
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 38. 自动拦截专题：dispatchAutoIntercept 全部出口 + 判读探针批 r5c042（{TS}）
### 38.1 r5c041a 抓样（回答"自动拦截怎么没了"）
| 观测 | 值 | 含义 |
|---|---|---|
| `hq=1` | 137 | ✅ AI 任务拿到 airhq 师（真飞） |
| `nDR_DET` | 100 | ✅ 雷达侦测首次成功 |
| `nA4e k=0/5/6` | 14 / 20 / 7 | 派发成功 + "无空闲师"节流 |
| `nDSPT0` | 100 | 拦截调度已真正跑起来 |
| **`nDR_DSPT no-airport`** | **100** | ❌ **全部卡在"选不出机场"** |
| `nDR_DSPT ok` / `nDR_AID ok` | 0 | 成功拦截 0 次 |
| `nDSPT3` | `sz=1 ap0=5716` | 玩家只有 1 个机场（省 5716） |
| `dbgAirport` | `ap=5716 ik=(空) fk=airhq_226_5716` | 无 INTERCEPTOR 师、有 FIGHTER 师（不构成阻碍） |
**结论**：r5c040 之前 `airDivisionAtProvinceID` 恒 -1 ⇒ `dispatchAutoIntercept` **第一行就 return** ⇒ 自动拦截**从未真正工作过**；现在能进，但选不出机场。
### 38.2 `dispatchAutoIntercept` 的 18 个出口（其中 8 个静默）
- 前置闸门：①p0 空 ②省 ID<0 ③省对象空 ④`hasActiveChaser`（已有拦截机在追） ⑤**`dspRetryGate`＝同一任务 4 小时内只试一次** ⑥机组空（有 `dbgDSPTg`） ⑦AFM 空 ⑧机场表空（`nDSPT3`）
- 逐机场：⑨airport 空 ⑩**无可用机（静默）** ⑪**射程不含（静默）** ⑫**无空闲师键（静默，但 `dbgAirport` 已打 ik/fk）** ⑬距离落选
- 选后：⑭未选中（`no-airport`）⑮无师键（`no-divkey`/`nDSPT2`）⑯`createIntercept==null` ⑰机组空 ⑱成功（`nDR_DSPT ok`）
### 38.3 "4 个探针够不够"→ 收敛为 3 个新探针
- ⑫ 已被 `dbgAirport(ik/fk)` + `nDSPT2` 覆盖 ⇒ **不新增**
- ⑬ 仅多机场才有意义（玩家 1 个）⇒ 不适用
- **⑪ 用排除法**：⑩⑫ 探针都不响、又非"选不出" ⇒ 必是超程
- ⑩ 需新增，且要分开"没机 / 在忙 / 机型不符" ⇒ 用 `ta=totalAircraft`、`dp=aircraftDeployed`（后者＝`isInFlight` 计数，见 `Airport.updateDeployedCount`）
- ②③④⑤ 全静默 ⇒ 加**入口计数**，与 `nDSPT0` 对比即知被闸门吃掉多少
⇒ 最终新增 **3 个**：`nDSPTc`（入口计数）/`nDSPT4`（无可用机，打 ta/dp）/`nDSPT8`（选中机场）＋助手 `AFM.dspLogAp(String,Airport)`。
### 38.4 产物与校验（r5c042，已装机）
- dex **`690bce18ed54650c6174b5c7f00137f6`** / apk **`3eea2be22bb3c0f0cacec11d27ec8b4b`**；`Success` + DEX MATCH
- 门禁新增 **㉕**（三探针齐备＋助手存在）：负样本 `r5c041a` ⇒ FAIL；正样本 ⇒ 全 0（⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓㉔㉕）
- 八件套 `SIG CHECKS` +4，但**文件行数实点 +13 条 invoke** ⇒ 见铁律【68】
- 插入点寄存器：`v8/v9`（该体内为 temp）；**`v15 = p0`（参数）禁用**
### 38.5 下次抓样判读表（自动拦截）
| 观测 | 结论 |
|---|---|
| `nDSPTc` 远大于 `nDSPT0` | 被前置闸门吃掉（chaser / 4h 重试窗 / 省无效） |
| `nDSPT4` 出现且 `ta=0` | 机场根本没飞机 |
| `nDSPT4` 出现且 `ta>0, dp=ta` | 飞机全在飞（在忙）⇒ 非 bug |
| `nDSPT4` 出现且 `ta>0, dp<ta` | 有余机但**机型不符**（缺战斗机/拦截机）⇒ 需造对应机型 |
| `nDSPT4`、`nDSPT8` 都不出现 | 必是**超程** ⇒ 玩法参数（拦截航程 < 雷达圈） |
| `nDSPT8` 出现但无 `ok` | 落在后面 ⑮⑯⑰ 之一（已有对应探针） |
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c042 批）新增
- **【68】`verify.sh` 的 `SIG CHECKS` 是"去重签名"口径，不能当"新增调用点"用**：本批文件行数实点 **+13 条 invoke**，而 SIG 只 **+4**。
  ⇒ 对账一律用 `grep -c "    invoke-" 新文件 vs .pre_xxx 备份`；SIG 只作"是否有回归"的哨兵（配合 `Invoke/Regs/Init/Range BAD=0`）。
- **【69】给方法插探针前必读方法头的寄存器注释**：`dispatchAutoIntercept` 头部自带 `# p0=v15=… | v8/v9=tmp | v13=bestD | v14=best`；
  **`.registers 16` ＋ 1 参数的静态方法里 `p0` 就是 `v15`**，拿它当临时寄存器会直接破坏参数。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **批次 `r5c042` 已装机**（dex `690bce18…` / apk `3eea2be2…`，`Success`+DEX MATCH）：
  自动拦截判读探针 `nDSPTc`（入口计数）/`nDSPT4`（无可用机：`ta=总数 dp=在飞`）/`nDSPT8`（选中机场）＋助手 `AFM.dspLogAp`；门禁新增 **㉕**；八件套 SIG+4（**实点 +13 invoke**）。
- **上批关键结论**：AI 任务已 `hq=1`×137（真飞）、`nDR_DET`=100（雷达侦测成功）；自动拦截 **100/100 卡在 `no-airport`（选不出机场）** ⇒ 本批探针一局定论（没机 / 在忙 / 机型不符 / 超程）。
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


append(PLAN, PLAN_TXT, '## 38. 自动拦截专题')
append(LAWS, LAWS_TXT, '【68】`verify.sh` 的 `SIG CHECKS`')
append(HAND, HAND_TXT, '批次 `r5c042` 已装机')
print('DONE', TS)