# 源码树说明（src/smali）

> 时点：**r6d023**（2026-09-27）｜ 包名 `age.of.history3.qiamxi.zhiri` ｜ 版本 `1.035-DEMO.1`

## 这是什么
**当前可用的完整 smali 源码树**（对 `base.apk` 反编译 + 本工程全部修正后的结果）。
- 文件数：**5519 个 `.smali`**（`find . -name '*.smali' | wc -l`）
- 顶层包结构：`aoc/`（游戏主体，如 `aoc/kingdoms/lukasz/...`）、`com/`、`org/`、`team/`
- 体量：未压缩 ≈ 99 MB ｜ 压缩（tar.gz）≈ 6.3 MB

> 这是**源码**，不是脚本。想读哪段逻辑直接打开对应 `.smali` 即可；用 VS Code / Sublime / grep 都能搜。

## 关键文件（本工程改动/常看的地方）
| 文件 | 作用 |
|---|---|
| `aoc/kingdoms/lukasz/map/battles/AirForceManager.smali` | ⭐ 空军总控：任务派发/结算、AI 造机（`updateAIBuildUp`）、选型混编、配置读取（`demoLoadCfg`）、静态默认值（`<clinit>`） |
| `aoc/kingdoms/lukasz/map/battles/AirMission.smali` | 单条任务（状态机、导弹特效状态 `msFx*`、`createStrategicBombing` 等工厂） |
| `aoc/kingdoms/lukasz/map/battles/Airport.smali` | 机场：排产（`startBuild`/`updateBuild`）、容量、扣费 |
| `aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali` | 调试探针 **总闸 `dbgOn`**（对外版默认关闭 ⇒ 全静默） |
| `aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali` | ⭐ 空军绘制：飞机/编队、**导弹动画** `drawAirMissileFx`、**机炮+轰炸动画** `drawAirGunFx`、雷达圈 `drawAircraftRadar`、"我的∪已探测"闸 `myOrDetectedMission` |
| `aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali` | 迷雾/雷达：`detectEnemyMissions`（谁能被看见）、`airDetSeen` |
| `aoc/kingdoms/lukasz/jakowski/AndroidLauncher.smali` | 启动 Activity（**DEMO 启动说明弹窗**） |
| `aoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver.smali` | 屏幕层（**底部居中水印**） |

## 从源码到装机（构建链）
```
src/smali  →  ① smali 汇编（RunSmali / smali-2.5.2）→ classes.dex
           →  ② 替换进 APK（保留 assets/资源与其他 dex）
           →  ③ 签名（build_inputs/debug.keystore，alias androiddebugkey）
           →  ④ 装机（adb install / 手机端）
```
- 工具链脚本在仓库 `toolchain/`（`act/assemble.sh`、`act/build_fast.sh`、`act/install.sh`、`act/capture.sh`、全部门禁 `check_*.py`）。
- 门禁约定：**每次改源码必须先过对应门禁脚本**（55…81，含"方向级断言 + 负样本"）再装机。
- 反向重放：`base/w3a_smali_20260918.tar.gz`（底座）+ `patches/` 里的补丁脚本（按序跑）也能得到同一棵树。

## 注意
- `.pre_*`（回滚备份）、`*.apk`、`*.dex` 不进仓库（见 `.gitignore`）。
- 与本工程无关的 `age.of.history3.TNO.yunsi` **勿混入**。
- 若只需要"最小可编译集合"，请用本目录；若只想看"某次改了什么"，去 `patches/r6d0*.py`（脚本里带逐字原文与位置）。