# 代差「靠数值」调研 v1（实证，不含猜测）

> 2026-10-18 ｜ 依据：本仓 `src/smali` 全量树 ｜ 方法：逐方法读字节码，不引用旧文档结论
> 用户口径：**代差只能体现在飞机自身数值上，不得用一个粗暴的伤害乘子**

## 一、先纠正一条旧结论（旧文档已过期）

`r6s5/设计讨论_C2代差压制_v1.md` 说伤害公式在 `AirForceManager.airCombatOne` 内（"hp -= airAttack×0.2"）。

**实测：`airCombatOne` 已被掏空** —— 方法体第一条指令就是 `return-void`，后面的代码不可达。

**而且这是底座时代就有意为之，不是后来改坏的**。仓库底座 `base/w3a_smali_20260918.tar.gz`（R4c176b）里同一方法：

```smali
.method private airCombatOne(...)V
    .registers 15
    # AA disabled: airCombatOne short-circuit (防空后续做)   ← 原作者注释
    return-void
```

⇒ **结论（关键）：r6d319 这个版本，空对空伤害根本不结算。** 拦截器与任务机互相扣血的代码全部是死代码。
⇒ 这直接决定：**"代差靠数值"在接上空战结算之前，填任何数值都不会产生任何效果**。

```smali
.method private airCombatOne(...)V
    .registers 15
    return-void               ← 第一条就是返回
    iget-object v0, ...       ← 之后全是死代码
```

⇒ 任何"在 airCombatOne 里加代差系数"的方案**不会生效**。这条必须先钉死，否则整批白做。

## 二、当前真正生效的空战伤害（拦截回合内）

位置：`AirForceManager` ~3200–3290，拦截器 `p2` 对任务机群逐个结算：

```smali
# 对任务里每架飞机 v7：
hp(v7) -= p2.airAttack * 0.2f          # 拦截方 → 目标
if hp(v7) < 0 → recordLoss(v7)

# 若拦截器还活着，目标反击（每架都反击一次）：
if hp(v7) > 0:
    hp(p2) -= v7.airAttack * 0.5f      # 目标 → 拦截方
    if hp(p2) < 0 → removeAircraft(p2); recordKill()
```

外加一道**雷达门**（进入结算前）：`cmpl-float` 比较后要求 `v6 > p2.radarRange` 才进入命中，即 `radarRange` 决定**能不能打到**。

### 结论：当前只有 3 个数值参与空战
| 数值 | 作用 |
|---|---|
| `airAttack` | 唯一伤害源（双向都用它），系数 0.2 / 0.5 |
| `hp` | 唯一耐久源 |
| `radarRange` | 交战门槛（能不能打） |

`defense` / `agility` / `stealth` / `ecm` / `speed` **在本路径里完全未被读取**。

⇒ **"代差靠数值"的落点只能是 `airAttack` × `hp`**（+ 雷达门决定交战机会）。想让防御/机动/电子战有意义，必须先给它们接上结算（属于机制改动，不是填数据）。

## 三、代际在引擎里已有的挂钩（可复用，不必新造）

| 位置 | 现状 | 说明 |
|---|---|---|
| `AirMission.unitGenOf(AirUnit)I` | **返回常量 3**（桩） | 代际入口已存在，但没接数据 |
| `AirMission.missileCountForGen(I)I` | gen≤2→0；3~4→2；≥5→4 | 真实生效，靠 `unitGenOf` 喂值 |
| `AirModelTables.genOf(I)I` | `((imageId-70)>>4)+3` | 已能从图号反推代际 |
| `AirModelTables.INFO[]` | 51 条，布局 `(country*4+type)<<16 \| techId<<8 \| imageId` | 机型表真身，硬编码在 `<clinit>` |

⇒ 把 `unitGenOf` 从常量 3 改成 `AirModelTables.genOf(unit.typeID)`，**代际立刻全线可用**（导弹数、后续数值选择都吃这个值）。这是一行改动，风险最低。

## 四、交换比与数值的关系（1v1 简化，用于反推倍率）

设 A 攻、D 守，同系数下：

- A 打死 D 一架所需回合：`hp_D / (0.2 × atk_A)`
- D 打死 A 一架所需回合：`hp_A / (0.5 × atk_D)`
- 交换比（D 损失 / A 损失） = `0.4 × (atk_A × hp_A) / (atk_D × hp_D)`

⇒ 定义 **综合战力 P = airAttack × hp**，则：
**交换比 ∝ P_A / P_D × 0.4**

要满足用户锚点：
| 锚点 | 需要的 P 比值 |
|---|---|
| 歼-8（3代） vs F-22（4代）≈ 八换一 | P₄ / P₃ ≈ 20 |
| 有歼-20 后（−2 代）≈ 18 换一 | P₅ / P₃ ≈ 45 |

⚠️ 注意：这是 1v1 简化；真实结算是 **1 架拦截器 vs N 架任务机**，且每架任务机都会反击，实际交换比对 N 敏感。所以 **P 倍率必须用模拟器标定，不能拍脑袋**。

## 五、下一步（按纪律）

1. 写一个**逐指令对齐**的结算模拟器（Python，镜像上面那段 smali），输入双方 `atk/hp/数量/radarRange`，输出交换比。
2. 用模拟器反解：给定锚点交换比，求 `P(gen)` 曲线 → 再拆成 `atk(gen)` 与 `hp(gen)`（拆分比例本身是设计选择，需确认）。
3. 数值表进 `AircraftModels.json`（唯一真源），生成器产出 `AirModelTables` 常量 + `AircraftTypes.json`，校验器查图号/代际/科技/键唯一。
4. 所有改动脚本化 + 门禁，禁止手改 smali。

## 六、待确认（不猜）

1. `atk` 与 `hp` 的拆分比例：同代内偏好"高攻低血"还是"均衡"？
2. `P(gen)` 曲线是否就用锚点外推（3→4：×20；3→5：×45；5→6：？）
3. 是否要给 `defense`/`agility` 接上结算（这是机制改动，会让"代差靠数值"更立体，但要动战斗链）。
4. `radarRange` 是否作为代际主要差异之一（决定谁先进入交战）？
