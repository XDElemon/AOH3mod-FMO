# -*- coding: utf-8 -*-
# R5c018b 文档：订正 附-25.3 的 shouldReturn 极性 ＋ 追加 附-26
import io, shutil

A = '/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
shutil.copyfile(A, A + '.pre_r5c018b')
t = io.open(A, encoding='utf-8').read()

old = u"- `shouldReturn()` 真值（**订正**：此前附-24 写反）：**存在\"能对地且有弹\"的机 ⇒ 走 linger 判定（`lingerRounds < maxLingerRounds` ⇒ 不返航）**；**全打光／没有对地机 ⇒ 立即返航**。"
new = u"- `shouldReturn()` 真值（**2026-09-24 抓样实证后二次订正**）：现役字节码 `if-gtz v4, :cond_29`（`if-gtz`＝**大于 0 则跳**）⇒ **存在\"能对地且有弹\"的机 ⇒ `return true` ⇒ 立刻返航**；未打光的机不使其待命。也就是说：**附-24 原描述是对的**，本文件 r5c018a 阶段 AI 的\"订正\"才是错的（已由 r5c018b 修正字节码并把极性改到期望语义）。"
assert old in t, 'XX 附-25.3 极性行未命中'
t = t.replace(old, new)
assert t.count(new) == 1, 'XX 替换后命中数异常'

sec = u"""
## 附-26 施工记录：批次 **r5c018b**（翻转 `shouldReturn` 极性 —— 攻击机"投满 payload 才走"）2026-09-24

### 附-26.1 触发：r5c018a 抓样判读（样本 `r6s5/cur_r5c018a.txt`，18,118,634 B）
| 项 | 实测 | 结论 |
|---|---|---|
| `nGA init ar=16 lr=16 n=4`（78）／`n=2`（2） | 常量已生效 | ✅ |
| `nGA fire r=0`（**77 次，全是 r=0**） | **一趟只投 1 轮** | ❌ 未达成"投满4轮" |
| `nGA dry` = 0 | 轮数上限（16）从未触达 | 符合预期 |
| `nGA fire` 之后紧邻 `nB2 entry → nRT sw` | 开火下一帧即转返航 | 定位到 `shouldReturn` |
| 回归 | `nB2c nofire`=15＝`nB2 miss`=15；`nB2 gate/new/relaunch`=14；`nB2 cap hops=1`=1；`nB2 toast`=0；`nRT sw`=78 | ✅ 与 r5c015 一致 |

### 附-26.2 根因（防写反的又一次实证）
`shouldReturn()` 第 2896 行原为 **`if-gtz v4, :cond_29`**；`if-gtz` 的语义是"**大于 0 则跳**"（`if-lez`＝小于等于0则跳）。因此：
- 有弹的对地机 ⇒ 跳转 ⇒ 循环继续 ⇒ `v0` 保持 1 ⇒ **`return true`（立刻返航）**；
- 于是"还有弹"反而让它马上回家 ⇒ 一趟永远只投 1 轮。
⇒ **教训入档**：本项目"条件跳转极性"事故再 +1。**判定极性的唯一可靠方式＝真值表 + 字节码操作码语义 + 抓样实证**，不能凭"读起来像"。

### 附-26.3 改动（一个字节级条件翻转）
| 位置 | 原 | 现 |
|---|---|---|
| `shouldReturn`（AirMission:2898） | `if-gtz v4, :cond_29` | **`if-lez v4, :cond_29`**（payload≤0 才跳过 ⇒ 有弹走 linger、打光即返航） |

- 影响面核对：只有 `createAttackArmy` 的 `maxLingerRounds=16`；其余任务类型 linger=1 ⇒ **行为变化只落在攻击机任务**（轰炸机/拦截/制空不受影响）。
- 期望行为：一趟连续投 `payload`（4）轮 ⇒ `payload` 归零 ⇒ `shouldReturn` 走"无有弹对地机"分支 ⇒ **立刻返航**（D-C 语义）⇒ 回基地补满。
- 滞留有界：`maxLingerRounds=16`（帧）⇒ 不会永久滞空；无交战陆军时由 B2c 门 + re-hunt + 16 帧上限兜底。

### 附-26.4 门禁与装机
| 项 | 结果 |
|---|---|
| assemble | `/tmp/r5c018b_classes.dex`，md5 `479054bf47de566b7b928e64df678dab` |
| check_arity | **BAD=0**（WARN=3 白噪） |
| verify 八件套 | **ΔSig=0**（未新增 invoke，符合"只翻条件"）＋ **BAD 合计=0** |
| check_branch（单文件） | `shouldReturn`：条件跳转 10、**方向可疑=0**、探针内分支=0 |
| build | `build_apk/dbg_signed77_v119_r5c018b.apk`（738,370,740 B；APK md5 `2a61a190…`） |
| install | `DEX_MATCH=1`；设备 base.apk md5 `2a61a190…`（与产物一致） |
| 真机启动自检 | **VerifyError=0、FATAL EXCEPTION=0**；基线重置＝232719344 |

### 附-26.5 待抓样验收（第二轮）
1. `nGA fire r=0` → **`r=1` → `r=2` → `r=3`**（一趟 4 轮）然后停；
2. 停火后出现 `nRT sw`（投完即走）；
3. 下一趟 `nGA fire` 又从 `r=0` 开始（payload 已补满）；
4. 回归四项：`nB2c nofire`＝`nB2 miss`；半程 185；上限 N=1；雷达内无重复提示；
5. 表现观察：机炮 FX 持续帧数、战报条数（≤4）；
6. 若第 1 轮就把目标陆军打空 ⇒ 后续轮次会走 re-hunt 换靶（`nB2 relaunch`）或直接返航（带余弹）——两种都算正常。
"""

assert '附-26' not in t, 'XX 附-26 已存在'
io.open(A, 'w', encoding='utf-8').write(t.rstrip('\n') + '\n' + sec)
print('OK 附-25.3 已订正；附-26 已追加（备份 .pre_r5c018b）')
print('OK 行数:', len(io.open(A, encoding='utf-8').read().split('\n')))