# 设计逻辑 · r6d172「摘除旧探针 pap（修 r6d171 的回归闪退）」

装机：2026-10-03 16:19:57 ｜ 包名 `age.of.history3.qiamxi.zhiri`（v119 / 1.035-DEMO.1）
已装 md5 = 归档 md5 = `444a4551e19bd36800932ee9599aa354` ｜ dex `1a10d953…`（7,390,316 B）
模板 = 上一个归档包 `r6d171` ｜ **修 bug 版**

---

## 0) 修 bug 三件事（世界书强制）

### ① 错误的规则是什么
`AirMission.placeAirDivision` 里，在一段**允许空值**的游戏逻辑之前，插入了一行调试探针调用：
```
invoke-virtual {v0}, ... / iget airhqDivision → v0
invoke-static {p0, v2, v0, v1, p1}, AirPosProbe;->pap(...)V     ← 这行会在 v0 == null 时崩
if-eqz v0, :cond_39                                            ← 游戏自己这一行才是正确判空
```
探针 `pap` 内部虽有 `if-nez p2, :end`，但在该路径下仍触发
`NullPointerException: read field 'ArmyDivision.key' on a null object` ⇒ **游戏进程闪退**。

### ② 正确的规则是什么
**该探针本就不该留在这里**（它是早期"位置/堆叠"调查时插的取证点，用途早已完成：位置问题在 r6d168 修复并验收）。
⇒ 正确做法：**把调用整行摘除**，让游戏原逻辑（`if-eqz v0, :cond_39` 判空 + `addArmy/removeArmy`）原样执行。

### ③ 为什么之前会错（症状 → 原因）+ 症状与修复的对应
| 项 | 内容 |
|---|---|
| 症状 | 装了 r6d171（恢复开火）后**游戏闪退**，崩溃栈落在 `AirPosProbe.pap ← AirMission.placeAirDivision ← AirMission.update ← updateMissions`（渲染线程） |
| 原因 | **开火 ⇒ 敌机被击落 / 任务收尾 ⇒ 任务走进 `airhqDivision == null` 的路径** —— 这条路径游戏本来支持（下一行就有判空），但我们的探针在它前面做了非空假设 |
| 为什么以前没爆 | 该探针（`nPAP`）在**以往任何一批里都没触发过**（一直"哑火"），所以这个不健壮一直没暴露 |
| 性质 | **回归**（"改完才出现的闪退"）：不是既有 bug，是我方开火把游戏推进了新路径、暴露了我们探针的问题 |
| 修复对应 | 症状（闪退）↔ 原因（探针非空假设）↔ 修复（摘除该探针调用）三者一一对应，不是"碰巧好了" |

---

## 1) 版本号 + 一句话定位
**r6d172** —— 摘掉 `AirMission.placeAirDivision` 里的旧探针 `pap` 调用，消除开火后触发的闪退；**不动任何游戏逻辑、不动开火链**。

## 2) 设计目标
让"防空开火"这条新路径可以安全走通：任务收尾允许 `airhqDivision == null`，我们不能再往该处塞有非空假设的取证代码。

## 3) 设计规则与判定顺序（修改后）
```
placeAirDivision(provID):
  v2 = getAirDivKey()
  pl0(v2, airDivisionAtProvinceID, provID)            ← 游戏原有诊断（保留）
  v0 = airhqDivision                                   ← 可能为 null（合法）
  ✗ 已删除：pap(mission, v2, v0, at, provID)
  if (v0 != null) { … removeArmy / addArmy / 记录 airDivisionAtProvinceID … }   ← 游戏原逻辑，未改
```

## 4) 参数与阈值表
本批**不涉及**参数（纯删减）。

## 5) 状态与生命周期
本批不改变任何实体的生命周期；只减少一次"只读取证调用"。
（`pap` 方法定义仍留在 `AirPosProbe` 中，**无任何调用者**，等价于死代码，便于留档回溯。）

## 6) 边界与不变量
- **对齐**：保留游戏原有 `if-eqz v0, :cond_39` 判空与后续 `removeArmy/addArmy/iput airDivisionAtProvinceID`（逐字未动）。
- **不修改**：`AirDefense`（开火链）、`AirDefDiag`（诊断）、`pap` 方法本体、其它任何类。
- **必须成立**：`AirMission` 里 `pap` 调用数 = 0；`AirDefense.tickTurn()` 与 `AirDefDiag.scanAll()` 的注入仍在（开火与诊断不能被本补丁带坏）。

## 7) 玩家可感知的表现
- **正常**：防空继续开火（`nAD` 行照常出现），**不再闪退**。
- **异常**：若仍闪退，则说明还有第二处非健壮探针 ⇒ 抓 crash 栈继续摘。

## 8) 失败与回退
| 情况 | 判定 |
|---|---|
| 仍闪退且栈里仍是我们的类 | 继续摘（下一批 r6d173） |
| 仍闪退且栈里没有我们的类 | 与 mod 无关（另案） |
| 开火行消失 | 说明误删了别的调用 ⇒ 回退：装 r6d171（上一版）或源码用 `AirMission.smali.pre_r6d172` 覆盖 |
| 回退动作 | 归档 4 个：`r6d137`（长期回退）/ `r6d158`（已验证）/ `r6d171`（上一版）/ `r6d172`（当前） |

## 9) 验收标准（可证伪）
**通过**：装 r6d172 后玩 2–3 回合
1. `aircfg_diag.txt` 继续出现 `nAD`（开火未坏）；
2. **不再闪退**（`logcat -b crash` 无 `age.of.history3.qiamxi.zhiri` 的新记录）；
3. `nADX` = 0；`nADM/nADG/nADA` 照常。

**不通过**：出现新的闪退（栈里含我们的类）；或 `nAD` 消失（说明误伤开火链）。

## 10) 变更清单摘要
- `AirMission.smali`：删除 `placeAirDivision` 内 1 行 `invoke-static … AirPosProbe;->pap(…)`（及其后空行）⇒ 净减 2 行；其余逐字未动。
- 新增门禁 `check_r6d172.py`（S1–S4 + N1–N4 负样本，进 `preinstall.sh` 清单）。
- 放宽旧门禁 `check_r6d154.py`：移除对 `pap` 调用存在的断言（形态已被本批取代），并把负样本 N2 改为"删 `adp` 调用"（等效且仍有效）。
- 工具链修复：**恢复误删的 `/tmp/RunSmali.class`**（汇编驱动）。

## 11) 风险与待办
- 风险：`AirPosProbe` 里其它探针可能同样"平时哑火、开火后被触发" ⇒ 建议后续做一次**探针全面体检**（把哑火/有非空假设的探针统一清理），已进挂账清单。
- 待办：AD-2（雷达参与开火 + 代际弹数与射程）｜AD-3（统一打击入口 + 建筑耐久）｜AD-4/5/6。

---

## 附：本批证据
| 项 | 结果 |
|---|---|
| 锚点核实 | ✅ 三行组合锚点命中 = 1；`pap` 调用行命中 = 1（唯一） |
| 补丁两阶段 | ✅ 先全量校验 → 写盘 → 写盘后 4 项复核全绿 |
| 门禁 `check_r6d172.py` | ✅ S1–S4 全过 |
| 负样本自检 | ✅ N1–N4 全被抓（含"把 pap 调用塞回去"的血案复原） |
| 静态检查 | ✅ `castorder` 0 处；`check_params`（AirMission）2 处噪声**改前=改后**（`moveDivisionAlongFlight`）⇒ 非本批引入 |
| 八件套 | ✅ BAD = 0 |
| 装机 | ✅ Success 16:19:57 ｜ 已装 md5 = 归档 md5 ｜ 配置(debug:0)/日志已重置 ｜ 未启动游戏 |
| 设备侧 ART 校验 | ⛔ 未做（本机长期不可用） |