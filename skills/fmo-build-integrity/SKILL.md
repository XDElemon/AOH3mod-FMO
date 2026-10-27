---
name: fmo-build-integrity
description: FMO 出包完整性（stage/bootstrap 资产同步、build/ 与 stage/ 不一致导致旧数据被打进包的历史 bug、build_candidate 的拦截、出包后 6 项核对：manifest/dex md5/资产逐字节/签名/对齐/结构指纹）。任何要"出可装机包"或怀疑"数据改了但游戏里没变"的批次都先读它。
---

# FMO 出包完整性

> **2026-10-27 更新**：新增生成物 `src/smali/.../MissileTypes.smali`（由 `data/missiles.json` +
> `tools/gen_missile_types.py` 生成）。出包前跑一次 `python3 tools/gen_missile_types.py --check`（B47 也会查）；
> 它只进 dex、不进 assets，所以**不影响 stage 同步规则**；其余 6 项核对不变。

**一句话**：`build/` 是生成器产物目录，`stage/` 是真正打进 APK 的资产树，两者**不会自动同步**。
所有数据闸门查 `build/`，所以"闸门全绿但包里是旧数据"完全可能发生（v66–v69 就发生过）。

## 1. 两条资产路径

| 路径 | 谁写 | 谁读 |
|---|---|---|
| `build/assets/game/AirUnit/*.json` | `gen_aircraft_models.py` / `gen_air_oob.py` / `gen_air_model_stats.py` | B20/B32/B33/B36 等闸门 |
| `/tmp/stage_v47/assets/game/AirUnit/*.json` | `setup_env.sh` 从模板包抽出来（一次性） | `baseline/build_candidate.sh` → 打进 APK |

`gen_air_oob.py` 默认输出到 `build/`，**不会**写 stage。所以改完数据必须：

```bash
cp build/assets/game/AirUnit/AircraftTypes.json /tmp/stage_v47/assets/game/AirUnit/
```

`setup_env.sh` 在 `gen_air_oob.py` 之后已经加了这条（v70 起），容器重置后会自动补；但**手动改数据后仍要自己拷**。

## 2. 出包前必查

1. 生成器按顺序跑完（`gen_aircraft_models` → `gen_air_model_stats` → `gen_air_oob`）且 `git status` 只剩预期改动；
2. `stage` 与 `build` 的 `AirUnit/*.json` 逐字节一致（`cmp`）；
3. `python3 tools/fmo.py gate` 4/4；
4. 变更范围白名单 `baseline/allow_v<NN>.txt` 覆盖所有变动方法；
5. 模板 APK 的 md5/大小与台账一致；manifest 不许变。

`build_candidate.sh` 现在会替你拦第 2 条：

```bash
# 不一致时直接退出，不会出包
❌ stage 里的 AircraftTypes.json 与 build/ 不一致（旧口径会被打进包）
```

## 3. 出包后 6 项核对（缺一不可）

```bash
APK=/sdcard/Download/fmo_baseline/fmo_vXX_air.apk
aapt dump badging "$APK" | head -1                       # 包名/版本
unzip -p "$APK" classes.dex | md5sum                     # == 本地 dex md5
apksigner verify "$APK"                                  # v1/v2/v3
zipalign -c 4 "$APK" && echo OK                          # 4 字节对齐
unzip -p "$APK" AndroidManifest.xml | md5sum             # == 模板的 manifest md5
unzip -p "$APK" assets/game/AirUnit/AircraftTypes.json | md5sum   # == build/ 那份
```

第 6 条是 v70 才补上的：**资产进包后要逐字节比一次**，不要只信 `build/` 的闸门。

大小：模板一致时约 **881,649,092 B**（v69 起因新增素材/JSON 会浮动几百到几 KB）；`fmo.py build` 打印的 size/md5 记进台账与批次 JSON。

结构指纹：`类 5550 / 方法 30772± / 字段 18855±`。**汇编非确定性，禁止拿 dex md5 判"没变"**；要比结构指纹或方法体指纹。

## 4. 常见故障

| 现象 | 先查 |
|---|---|
| 数据改了、游戏里没变 | stage 里的同名资产是不是旧的（`cmp build/... stage/...`）；**这是本 skill 的头号坑** |
| 开局闪退，`logcat -b crash` 有 Json 异常 | `AircraftTypes.json` 多了 DTO 没有的键（Gdx Json 未知键整表废） |
| 新增 PNG 后环/图标消失 | 素材没进 APK：`unzip -l "$APK" | grep 文件名`；`ImageManager.addImage` 找不到文件 |
| `zip error: Nothing to do` | stage 空 / 路径写错 |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | 签名不同（同签名覆盖装才不丢档） |
| 出包被 guard 拦 | 按提示 `cp build/.../AircraftTypes.json "$STAGE/assets/game/AirUnit/"` |

## 5. 历史事故（别重演）

- **v66–v69 的包都带着 10-22 的旧 `AircraftTypes.json`**（md5 `487d65b3…`）。后果：v52/v55 的 CN 加强（敏捷/隐身/对地/载荷/造价）实际没进游戏，面板一直显示旧值；而 B20/B32/B33 查 `build/` 全绿。
- **v69 新增 `ringCiv.png`**：模板包里没有这个文件，`setup_env.sh` 抽包后必须从 `assets_r6t007` 补拷，否则重置后 `addImage` 拿到空图、识别圈直接消失。

## 6. 相关脚本

| 脚本 | 作用 |
|---|---|
| `setup_env.sh` | 抽模板资产、跑生成器、拷 `ringCiv.png`、同步 `AircraftTypes.json` |
| `baseline/build_candidate.sh` | 拷模板/换 dex/注入 stage/对齐/签名，**含 build-vs-stage 拦截** |
| `tools/fmo.py build` | preflight → build_candidate → verify → 写 `baseline/batches/<名>.json` |
| `tools/dex_fingerprint.py` | 类/方法/字段数 + 结构指纹 |
