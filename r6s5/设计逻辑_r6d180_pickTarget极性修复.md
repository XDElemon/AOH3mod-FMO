# 设计逻辑 · r6d180 —— AD-1“不开火”根因：pickTarget 索引极性反写

## 装机信息
- 设备安装 **2026-10-03 23:34:26 Success**；设备 dex md5 `1a2cbc69fbbbecd1952cee76acb3757d` = 构建 dex ✓
- 八件套：`Invoke/Regs/Init/Range BAD=0`；`Cast=50 / Undef=10 / MISSING=14` 与基线一致；`Sig 153293`（1 行极修复，不增 invoke）
- 归档 `build_apk/dbg_signed77_v119_r6d180.apk`（apk md5 `3dbceb41…`）；目录保留 4：r6d137 / r6d158 / r6d179 / **r6d180**
- 环境：debug=1；探针归零；`.capture_baseline` 重置；未自动启动游戏；启动自证已升为 **`nABOOT v=r6d180`**

## 1) 版本号 + 定位
r6d180（承 r6d179）＝**根因修复**（1 行）：修 `AirDefense.pickTarget` 的索引判定极性。

## 2) 设计目标（玩家可见问题）
用户报告：**轰炸机从有防空阵地的省份上飞过去，也不开火**。目标：让 AAA 阵地真的开火、真的造成伤害。

## 3) 错误的规则 / 正确的规则 / 为什么之前会错
- **错误的规则**：`pickTarget` 用 `if-ne v1, p2, :found` ⇒ “计数器 ≠ 请求下标”时返回 ⇒ **v1==p2（正要取的那个）反而跳过**；只有一个合格目标时，循环走完 ⇒ 返回 **null**。
- **正确的规则**：`if-eq v1, p2, :found` ⇒ 计数器命中请求下标时返回该任务。
- **为什么会错（症状→原因）**：`countTargets` 极性是对的（`t=1` ⇒ “有目标”），而 `fireProvince` 在 `pickTarget` 为空时直接 `if-eqz v5,:snext` 跳过 ⇒ 两者不一致时表现为“**有目标却一枪不发**”；而汇总行 `nAD n=1 t=1 h=0 k=0` 看起来像“打了但没中” ⇒ 连续两轮被误导（前两轮的“18 发 0 中 / 28 发 0 中”其实是 **0 发**）。
- **症状与本次修复的对应**：`h1=0`（logHit 从未被调）+`nADH=0`+`h=k=0` → `pickTarget` 返回 null → 不进入发射分支。修 `if-ne→if-eq` 后目标可取到 ⇒ 进入发射分支。

## 4) 参数与阈值
| 名称 | 值 | 含义 |
|---|---|---|
| shots | = 阵地数（`airDefenseAt`） | 每回合每省发射次数 |
| pickTarget idx | `s % k` | 轮转取第 idx 个合格目标 |
| adHitChance | 0.5f（代际空位） | 命中率规格 50% |
| adDamagePerHit | 3.0f（代际空位） | 每发伤害 |
| nADM h1 | 命中探针计数 | 应随开火增长（新） |

## 5) 状态与生命周期
tickTurn（TURN_ID 守卫）→ 逐省 `fireProvince`：`countTargets`(k) → 逐发：`pickTarget(civ,prov,i%k)` → 非空 → `rng<chance` → `applyMdDamage` → 汇总 `logAD`。无字段变化。

## 6) 边界与不变量
渲染 4 处未动；`adHitChance/adDamagePerHit` 仍为代际空位；探针 `nADH`/`hitSeen`/`nADM h1` 保留（门禁 S6 守着）。

## 7) 玩家可感知
修复后 **AAA 阵地会真的开火并造成伤害**（此前 0 伤害）；但**仍无可见特效**（开火动画/弹道在 AD-3）。

## 8) 失败与回退
若仍无 `h>0`：先看 `nABOOT v=r6d180`（版本）、再看 `nADA inR/d/w`（目标是否真的进圈）。回退＝`AirDefense.smali.pre_r6d180`。

## 9) 验收（可证伪）
| 项 | 判据 | 状态 |
|---|---|---|
| 门禁 `check_r6d180.py` | 正检0失败；N1(改回 if-ne)/N2(删 :found 返回) 均变红 | ✅ |
| 模拟器 `sim_pick.py` | 真值表 (0,0)/（1,0)/(0,1)/(1,1) + 反转敏感性 | ✅ |
| 静态 | check_params / regtype / castorder 全绿 | ✅ |
| 八件套 | BAD=0；Cast/Undef/MISSING 与基线一致 | ✅ |
| 实测 | 期望：`nAD … h>0 k>0`、`nADH` 出现、`nADM … h1>0` | ⏳ 待用户 |

## 10) 变更清单摘要
- `AirDefense.pickTarget`：`if-ne v1, p2, :found` → **`if-eq v1, p2, :found`**（1 行）。
- `AirDefDiag`：启动自证串 `nABOOT v=r6d180`（便于分辨版本）。

## 11) 风险与待办
1. 命中率（规格 50%）这次才真正可测（探针 `nADH` 应首次出数据）。
2. AD-2（D1 雷达许可 / D2 同省+150px / D4 红圈 / D5 每阵地1发）排队。
3. 仍挂账：`aiVisAirportPass`、`÷iMapScale vs ×scale`、`planeFogR` 双补偿、哑火探针搬家、AD-3 可见特效、AD-6 科技。
