---
name: fmo-missile-types
description: FMO 导弹类型表（M2 地基，v104）：data/missiles.json 七类（AAM/SAM/ABM/AGM/ALBM/TAC_NUKE/ALBM_NUKE）的字段与口径、tools/gen_missile_types.py 生成 MissileTypes.smali、B47 闸门与红样本、能力→类型一对一映射。硬口径：中段反导雷达只探测不发射、反导阵地只拦核弹头、防空(SAM)拦飞机、常规 AGM/ALBM 不被反导拦。任何要加/改导弹类型、接 M2 弹道内核、M3 拦截、M4 AGM、M5 核的批次都先读它。
---

# FMO 导弹类型表（M2 地基）

> 2026-10-27 起：**先有类型，再有实体弹**。M2 内核（`AirProjectile` 独立飞行物表）还没落地；
> 旧 `msFx*/adFx*` 仍在跑。本表就是 M3/M4/M5 的共同底座。

> ⛔ **冻结线（2026-10-27 用户定，长期有效）**：凡与「弹道导弹」相关的**一律不做**——
> `ALBM` / `TAC_NUKE` / `ALBM_NUKE` / M5 核打击链路全部冻结，等用户拿到 ICBM 源文件后
> **全盘照抄 ICBM**；连带待确认：M3 的反导拦截（ABM 打核弹头）与中段反导雷达。
> 冻结期照常可做：M2 内核 `AirProjectile`（只实现追踪型 AAM/SAM/AGM）、M4 AGM、AAM/SAM 拦飞机、S1/S2/S3/S7。
> 数据侧那三类保留原样，B47 断言照旧要绿；**「没人调用」不等于「可以删」**。

## 1. 硬口径（用户拍板，改之前先对 B47）

| 规则 | 含义 |
|---|---|
| **中段反导雷达只探测/预警** | `launcher` 枚举里**没有 midcourse**；谁加谁红 |
| **反导阵地只拦核弹头** | 只有 `warhead=nuclear` 的类型带 `interceptableBy=["ABM"]` |
| **防空阵地拦飞机** | `SAM` 由 `ad_site` 发射、`target=air` |
| **常规 AGM/ALBM 不被反导拦** | 它们的 `interceptableBy` 必须为空 |
| 拦截弹本身不可再被拦 | 所有弹的 `interceptableBy` 只允许 ABM，且只对核弹头 |

## 2. 七张类型（`data/missiles.json`）

| id | 发射源 `launcher` | 目标 `target` | 战斗部 `warhead` | 可被拦 | 能力字段 |
|---|---|---|---|---|---|
| `AAM` | aircraft | air | air_damage | — | CanAAMissile |
| `SAM` | ad_site | air | air_damage | — | （AD 建筑，非机型能力） |
| `ABM` | abm_site | nuke_warhead | air_damage | — | 预留（M3/M5） |
| `AGM` | aircraft | ground | building | — | CanAGMissile |
| `ALBM` | aircraft | province | province | — | CanALBM |
| `TAC_NUKE` | aircraft | province | nuclear | **ABM** | CanTacticalNuke |
| `ALBM_NUKE` | aircraft | province | nuclear | **ABM** | CanALBMNuke |

- 每类自带 `speed / lifeTurns / turnRate / hitRadius`，这就是"种类分出来"的实质；
  `speed` 单位 **px/回合**（与飞机同一帧钟），AAM/SAM 保持 67.5（≈飞机的 1.7 倍）。
- 枚举：`launcher = aircraft / ad_site / abm_site`；`target = air / ground / province / nuke_warhead`；
  `warhead = air_damage / building / province / nuclear`；`interceptor = ABM`。

## 3. 生成物与用法

```bash
python3 tools/gen_missile_types.py          # data/missiles.json -> src/smali/.../MissileTypes.smali
python3 tools/gen_missile_types.py --check  # 闸门用：生成物必须与真源一致
python3 tools/gate_missile_types.py --red   # B47（含 6 红样本）
```

`MissileTypes`（生成，禁止手改）提供：

| API | 返回 |
|---|---|
| `count()` | 类型数 |
| `indexOf(String)` / `idOf(int)` / `nameKeyOf(int)` | 查 id |
| `speedOf/lifeOf/turnOf/hitRadiusOf(int)` | 数值 |
| `launcherOf/targetOf/warheadOf/interceptMaskOf(int)` | 枚举下标 / 位掩码（ABM = bit0） |
| `capabilityOf(int)` | 对应能力字段（无则空串） |

> 生成文件头有“由 tools/… 生成”标记，`gate_java_first` 靠它放行；**不要手改生成物**。
> 改类型 = 改 `data/missiles.json` → 生成器 → B47 → 出包。

## 4. 能力 ↔ 类型（一对一，生成器会拦重复）

- `CanAAMissile → AAM`、`CanAGMissile → AGM`、`CanTacticalNuke → TAC_NUKE`、
  `CanALBM → ALBM`、`CanALBMNuke → ALBM_NUKE`
- 两个机炮能力（`CanAAGun/CanAGGun`）**不映射**导弹类型
- 同一能力只能被一个类型占用（`AGM` 抢 `CanAAMissile` 会被生成器直接报错）

## 5. M2 内核的接法（下一步）

1. `AirProjectile`：字段 `typeIdx / x / y / vx? / targetKind / targetId / ttl / ownerCiv / warhead`，
   独立表（**不塞 activeMissions**），多枚同飞；
2. 每帧用 `AirMissileCore.speedDiv()` 换算 `dtTurns`，按 `MissileTypes.speedOf/turnOf` 推进
   （AAM/SAM 追踪、弹道类直线）；`interceptMaskOf` 由 ABM 判定；
3. 现有发射点（`AirMission.missileTick` 的 A2A、`adFx` 的 AD）改成 `spawn(type)`；
   旧字段**双跑一版**（只读不写，可回退），下一版删；
4. 新闸门 **B48**：多弹独立、类型参数生效、命中/脱靶、暂停冻结、加速同源。

## 6. 坑

1. **别把 midcourse 写进 launcher**：中段雷达没有反导能力（用户重复强调过）。
2. **别把常规弹标成可拦**：只有核弹头吃 ABM。
3. **capability 不许重复**：生成器/ B47 都会拦；加新类型先确认没有抢能力。
4. **数值范围**：speed (0,300]、life (0,5]、turn [0,720]、hitRadius [2,30]，B47 校验。
5. **生成物 payload 位置**：`.array-data` 必须放在 `<clinit>` 的 `.end method` 之前（踩过编译错）。
6. 目前**只是类型表**，不改战斗结果；装上去看不出变化是正常的。
