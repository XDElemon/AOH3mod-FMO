# -*- coding: utf-8 -*-
# 记录 R4c192→R4c205 全过程 + r5a001 回滚 + 新设计三步走 到四份现行文档
import io, os, time

D = '/sdcard/GLG/历史23/'
R = D + 'r6s5/'
STAMP = time.strftime('%Y-%m-%d %H:%M')

# ---------------------------------------------------------------- 1) 专档
P1 = R + '空战重做_进度与bug排查专档_v1.md'
S1 = u'''

---
## 四十、R4c192 → R4c205（2026-09-20）：自动打击最后 13 批 —— 全部作废，整层推倒

> 本段补录（此前 r4c192~r4c205 未登记）。**结论：这 13 批不解决问题，已由 `r5a001` 整层回滚删除。**

### 40.1 干了什么（时间顺序，只记结论）
| 批次 | 内容 | 结果 |
|---|---|---|
| r4c192 | NaN 安全比较＋first-valid 兜底＋分数探针 `nSV` | 仍恒返回 -1 |
| r4c193b | **配置文件驱动**（JSON：mode/watch/pin）＋事件驱动"证实" `cfgConfirmed` | 配置**从未真正生效**（见 40.3） |
| r4c194 | `nCL` 配置加载诊断＋`noteProvinceBuildings` 里做"证实" | 全是 `nCL skip=1`，`nCFG=0` |
| r4c195 | 候选层探针 `nPK ap= n= pin=` | 查明候选列表为 **空**（`getProvincesInRange` 提前 return） |
| r4c196 | 候选池"全收"（`if-nez v9,:hh_add` → `goto :hh_add`） | `nHC in=878 ho=878` 候选恢复，但**无人被选中** |
| r4c197 | **巡炸模式 `mode=rove`**：射程∩(登记表∪pin) → 最久没炸 → `createStrategicBombing` → `activeMissions.add` | 代码首次落地；两处自伤：`.registers 18`（pN 别名上限）＋挂钩 private 方法误用 `invoke-virtual` ⇒ **VerifyError 闪退**（r4c197b 修） |
| r4c198 | 巡炸全路径探针 `nRT k=1/2/4/5/6/7` | 探针极性写反；`k=1 in=0` ⇒ cfgMode 恒 0 |
| r4c199 | 修 `getProvince(-1)` 崩溃（探针未守卫）＋cfgStamp 延后 | **发现真凶**：每回合 `IndexOutOfBounds`，把 `updateOffensives` 整段打断（攻/轰都不飞） |
| r4c200 | 配置原文直录 `nRTXT` ＋ 失败可重试 | 重试分支极性写反，未生效 |
| r4c201 | 废掉 mtime 门（每次重解析） | 才看到真相：`nCL skip=2` ⇒ `lastModified()==0` |
| r4c202/b | 配置改读 **APK 资产** `assets/strike_config.json`（构建注入） | `Gdx.files.internal` 路径不通；且 `:lc_ok` 分支漏初始化 long ⇒ VerifyError（修） |
| r4c203/204 | 改走游戏自己的 `FileManager.loadFile`；异常留痕 `nRAXA` | `loadFile` 返回的 handle 静默为空 |
| r4c205 | 去掉多余的 `exists()`（internal handle 的 exists 不可信） | 仍然静默空 ⇒ **配置通道判定为死路** |

### 40.2 三条真凶（都已定位，供新设计避坑）
1. **`getProvince(-1)` 每回合崩溃**（r4c177t 时代探针未做 `if-ltz` 守卫）：异常沿 `tryStrikeForAirport → updateOffensives → update → updateAll` 冒泡，**攻击机、轰炸机、以及方法尾部的巡炸全部被跳过**。→ 早已修（r4c199）。
2. **配置通道在 scoped storage 下不可用**：app 侧 `File.lastModified()` 对我们写入 `Android/data/<pkg>/files/` 的文件返回 **0**（FUSE 对跨 UID 文件的桩行为）；改读 APK 资产 / 走游戏自己的 `FileManager.loadFile` 也拿不到内容。→ **结论：配置不要再走文件**。
3. **我方自伤**：`.registers` 过大时 smali 的 `pN` 别名上限；挂钩 private 方法必须 `invoke-direct`；`const/4` 只能 -8..7；条件跳转极性（本阶段又犯 4 次）。

### 40.3 决策（用户拍板 2026-09-20）
**"这些关于自动打击的全部删掉，重新设计这一部分。"**
- 自动打击整层（配置系统 / 登记表 / 情报门 / 评分 / 选择器 / 巡炸 / 全部探针）**全部删除**；
- 底座换成 **自动打击之前** 的整树快照，即 R4c176b（A4攻轰分家验收版）；
- 保留：飞机矩阵与出击基建（`AircraftDataManager`／`Airport`／`AirUnit`／`AirMission`／雷达／巡逻／渲染／A1 系列 UI／R6-5 导弹等）。

### 40.4 回滚执行（批次 `r5a001`）
| 项 | 值 |
|---|---|
| 底座快照 | `build_inputs/w3a_smali_20260918.tar.gz`（5520 个 smali；`cfgMode/afMilReal/strikeScore/pickStrikeTarget/roveTick` 痕迹全 0）|
| 旧树备份 | `/tmp/w3a_bak_r4c205/smali_full/`（含 `AirForceManager.smali` 单文件副本）——**13 批工作未丢，可取回** |
| 产物 | dex / apk `dbg_signed77_v119_r5a001.apk` |
| **关键佐证** | 汇编后 **Sig = 152403**，与文档记录的 **R4c176b** 签名**完全一致** ⇒ 树确为回滚点状态 |
| 门禁 | Invoke/Regs/Init/Range=0；`Undef=4`、`Cast=50`（白噪）；`Δ=-205`（删代码的预期值，校验脚本"只增不减"判据在回滚场景不适用）|
| 装机 | `DEX_MATCH=1`／`APK_MATCH=1`；启动无 VerifyError（crash=0）；`am force-stop` 后重启自检通过 |
| 磁盘 | `/data` 一度 100% 满导致装机建会话失败 ⇒ 清 `/tmp/*_aligned.apk`、`*_signed.apk` 旧包与旧归档回收约 30G（**构建输入一律不动**）|

### 40.5 新设计（三步走，待第 1 步开工）
| 步 | 内容 | 验收 |
|---|---|---|
| **① 最小可飞** | 每回合对我方机场：`pickIdleDivKey(BOMBER)` → `createStrategicBombing(airport, 常量目标省, key)` → `instance.activeMissions.add`；一行日志 `nA1 ap= tgt= ok\\|no-div\\|no-aircraft` | 游戏里**看到轰炸机起飞** |
| **② 目标来源** | 目标改**编译期常量数组**（点名清单）；同省在飞不重复派 | 点谁打谁 |
| **③ 自动挑** | 只用可靠输入：射程集合＋省份归属＋**事件驱动建筑登记**（只记不断言）；**无**瞬时表/多层判据/评分/随机门 | 自动打"有军事建筑的省" |

> 记录时间：''' + STAMP + u'''（DSH）
'''
io.open(P1, 'a', encoding='utf-8').write(S1)
print('1) 专档 ok')

# ---------------------------------------------------------------- 2) 设计v2
P2 = D + '空战重做专案_设计v2.md'
S2 = u'''

---

## 【R5a001 / 2026-09-20】B3-A1 自动打击：整层推倒重做（决策 + 底座 + 三步走）

**决策（用户）**：自动打击这一部分**全部删除、重新设计**（原话："这些关于自动打击的全部删掉，我们重新设计这一部分"）。

**为什么推倒**（三条已定位的真凶，详见专档第四十节）：
1. 每回合 `getProvince(-1)` 崩溃 ⇒ 整条 `updateOffensives` 被打断（攻/轰都飞不起来）；
2. 配置文件通道在 scoped storage 下**不可用**（app 侧 `lastModified()==0`；改读 APK 资产 / 走 `FileManager.loadFile` 亦拿不到内容）；
3. 我方自伤一串（`pN` 上限、`invoke-direct`、`const/4` 范围、条件跳转极性）。

**底座**：`build_inputs/w3a_smali_20260918.tar.gz`（= R4c176b 状态；汇编 Sig=152403 与文档记录一致）。
**备份**：`/tmp/w3a_bak_r4c205/smali_full/`（r4c192~r4c205 的全部工作，可回取）。
**已装机**：`r5a001`（`DEX_MATCH=1`/`APK_MATCH=1`，启动无 VerifyError）。

**新设计原则（硬约束）**：
- 配置一律**编译期常量**（不再引入任何文件读取）；
- 目标来源只用**可靠输入**：`getProvincesInRange` 射程集合 + `Province.getCivID` 归属 + **事件驱动**建筑登记表；
- 不读瞬时表、不做多层判据、不做评分、不加随机门；
- 每一步一行日志（`nA1…`），失败必须能一眼看出卡在哪一条。

**三步走**：①最小可飞（硬编码目标，先证明能起飞）→ ②点名清单（常量数组）→ ③自动挑（可信输入 + 登记表）。

> 记录时间：''' + STAMP + u'''（DSH）
'''
io.open(P2, 'a', encoding='utf-8').write(S2)
print('2) 设计v2 ok')

# ---------------------------------------------------------------- 3) 交接文档v2
P3 = D + '空战重做_交接文档_v2.md'
S3 = u'''

---

## 21. 【r5a001 · 2026-09-20】自动打击整层回滚（现役）

| 项 | 值 |
|---|---|
| 决策 | **自动打击全部删除、重新设计**（B3-A1 作废，含 r4c178~r4c205 的判据/评分/选择/巡炸/配置/探针）|
| 底座 | `build_inputs/w3a_smali_20260918.tar.gz`（R4c176b 状态；Sig 152403 与记录一致）|
| 旧树备份 | `/tmp/w3a_bak_r4c205/smali_full/`（可取回）|
| 现役装机 | **r5a001**（dex/apk 与设备一致；启动无 VerifyError；force-stop 后重启自检通过）|
| 回滚点 | r5a001 本身即"干净底座"；旧行为回滚点＝R4c176b（同状态）|
| 抓样基线 | `r6s5/live_baseline.txt` 已重置 |
| 保留 | 飞机矩阵与出击基建（AircraftDataManager / Airport / AirUnit / AirMission / 雷达 / 巡逻 / 渲染 / A1 UI / R6-5 导弹）|
| 新增铁律 | **配置不再走文件**（scoped storage 下 app 读不到）；清理只删 `*_signed.apk`/`*_aligned.apk`/旧归档，**构建输入（`base_v119.apk`/`/tmp/e3`/`w3a`/`toolchain`/文档）一律不动** |

**下一步**：新设计三步走 ①最小可飞 → ②点名清单 → ③自动挑（见设计v2 对应章节与专档第四十节）。

> 记录时间：''' + STAMP + u'''（DSH）
'''
io.open(P3, 'a', encoding='utf-8').write(S3)
print('3) 交接v2 ok')

# ---------------------------------------------------------------- 4) 常驻速查
P4 = D + '铁律与教训_常驻速查_v1.md'
S4 = u'''
| **R5a001** | 【回滚+决策】自动打击整层推倒重做：底座换 `build_inputs/w3a_smali_20260918.tar.gz`（R4c176b，Sig152403）；旧树备份 `/tmp/w3a_bak_r4c205` | 09-20 | ✅ 已装机 |
| **R4c192~205** | 【作废】自动打击 13 批（配置驱动/登记表/情报门/评分/选择器/巡炸）全部删除 | 09-20 | ❌ 已回滚 |
'''
S4 += u'''
### C-新增教训（2026-09-20）
- **配置不要走文件**：Android 11+ scoped storage 下，我们（uid 2000）写进 `Android/data/<pkg>/files/` 的文件，**app 侧 `File.lastModified()` 返回 0**（对跨 UID 文件是"桩"），`exists()/readString()` 同样拿不到；改读 APK 资产（`Gdx.files.internal`）与走游戏自己的 `FileManager.loadFile` 也都返回空。⇒ **配置一律编译期常量**。
- **`.registers` 不要超过 16**：超过后 smali 的 `pN` 别名触发 "Invalid register: v17. Must be between v0 and v15"。
- **挂钩 private 方法必须 `invoke-direct`**；写成 `invoke-virtual` ⇒ `VerifyError: invoke-super/virtual can't be used on private method`（闪退，堆栈在 `AA_Game.render`）。
- **`const/4` 只能装 -8..7**；更大的常数用 `const/16`。
- **libGDX `FileHandle.exists()` 不可信**：internal（资产）handle 的 exists() 会返回 false；游戏自己的 `FileManager$3` 只对 local handle 做 exists 检查，随后直接 readString。
- **避免在 pickXXX 返回值上裸调 `Game.getProvince()`**：必须先 `if-ltz` 守卫，否则 -1 会 `IndexOutOfBounds`，并且它会把**整条回合链**打断（攻/轰一起不飞）。
- **探针也要有极性真值表**：本阶段"强制重试/mode 判定"两处 `if-eqz/if-ne` 写反，导致诊断结果整体误导。
- **回滚场景下八件套 Sig 会下降**（Δ<0）；脚本的"只增不减"判据只适用于常规迭代。
'''
io.open(P4, 'a', encoding='utf-8').write(S4)
print('4) 速查 ok')

for p in (P1, P2, P3, P4):
    print('%-70s %d bytes' % (os.path.basename(p), os.path.getsize(p)))