# 候选批次 · r_cand_gen2：每代数值接入（路线 A）

> 分支 `candidate/gen-stats`（基于 `candidate/gen-wireup`）｜**未装机**｜基线仍为 `main`
> 产物：`fmo_candidate_stats.apk`（776,916,438 B，md5 `c41ebfa60a2d6daddaef028721cf717c`）

## 一、本批包含

| # | 改动 | 说明 |
|---|---|---|
| 1 | `AirMission.unitGenOf` | 常量 3 → 按 (civID, 国组, 机型) 现算（来自 gen-wireup） |
| 2 | `AircraftTypeData` +2 字段 | `AirAttackByGen[I` / `DefenseByGen[I` |
| 3 | `applyType` +1 行 | 末尾 `invoke applyGenStats`（仅加载成功分支执行） |
| 4 | 新增 `applyGenStats` | 按 gen 覆盖 atk / maxHp(=def×2)，越界/空数组全部回退 |
| 5 | assets 注入 | `AircraftTypes.json` 追加两个数组（4 类型 × 7 档） |

数值来源：`data/aircraft_stats.json`（曲线 absolute 1/20/45/112.5、拆比 0.5/0.5）→
`tools/aircraft_stats.py --emit` → `tools/gen_aircraft_types.py` → `build/assets/...`

## 二、验证（静态，已做）

| 项 | 结果 |
|---|---|
| 汇编 | 成功，5,530 类 / 30,656 方法（+1）/ 18,788 字段（+2） |
| **语义门禁 v2** | 变更方法 **3 个**（unitGenOf / applyType / applyGenStats）+ 1 个类字段，**全部白名单内** |
| 包内 config | `AircraftTypes.json` 含 8 处 `ByGen`（4 类型 × 2 数组） |
| 素材计数 | Earth3 18,439 / AirUnitlmages 113 / airs_* 36（与基线一致） |
| 签名 | debug，apksigner 通过 |
| 自检 | 数据层 9/9 |

## 三、装上去应该看到什么

1. **5/6 代机拿到 4 发导弹**（`missileCountForGen` 吃真实 gen）
2. **同机型跨代对打**：4 代打 3 代 ≈ 8:1（数值差距来自 atk/def，不是伤害乘子）
3. 3 代机数值不变（数组 0~2 下标回退三代值）

## 四、可能与预期不符的地方

- `bestIdx` 找不到机型时回退 3 代 → 看起来"没变化"，属预期
- 如果 `AircraftTypes.json` 里数组字段导致加载失败，飞机数值会退回默认（hp=30）→ 表现为"所有飞机一样脆"
- 存档兼容：未新增字段到 AirUnit，旧档可读

## 五、回滚

```bash
adb install -r /sdcard/Download/fmo_baseline/fmo_baseline.apk   # 回基线
```

## 六、门禁复跑

```bash
python3 tools/gates/gate_change_scope.py \
  --base /sdcard/Download/fmo_baseline/fmo_baseline.apk \
  --new  /sdcard/Download/fmo_baseline/fmo_candidate_stats.apk \
  --allow-file baseline/allow_gen_stats.txt
```
