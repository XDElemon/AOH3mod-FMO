---
name: fmo-patch-pipeline
description: FMO（终序千禧 / age.of.history3.qiamxi.zhiri）改包流水线：容器环境自举、数据/逻辑改动的生成与汇编、四道闸门、出包与签名、真机验收、台账。任何一次"改代码/填数据/换素材/出可装机包"的批次都先读它。
---

# FMO 改包流水线

仓库 `XDElemon/AOH3mod-FMO`（main），工作副本惯例在 `/tmp/fmo`，产物在 `/sdcard/Download/fmo_baseline/`。

## 0. 环境是临时的 —— 先自举，再干活

DSHA 容器**每次重启都会清空 `/tmp` 与 `/root`**（仓库、jar、keystore、技能全没）。只有 `/sdcard` 持久。

```bash
# 一条命令把环境拼回去（约 3–5 分钟；幂等，可反复跑）
bash /sdcard/Download/fmo_baseline/setup_env.sh
# 自定义模板/暂存：TEMPLATE=.../fmo_v47_air.apk STAGE=/tmp/stage_v48 bash .../setup_env.sh
```

持久家底（丢了就是真的丢了）：

| 路径 | 内容 |
|---|---|
| `/sdcard/Download/fmo_baseline/toolchain/` | 7 个 smali 系 jar + `r8_8.3.37.jar` + `fmo_debug.keystore` |
| `/sdcard/Download/fmo_baseline/setup_env.sh` | 自举脚本（apt / jar / clone / stage / 闸门 / preflight） |
| `/sdcard/Download/fmo_baseline/fmo_{full,v45c,v46}_air.apk` | 模板与回退包 |
| `/sdcard/GLG/DSHA/*.md` | 交接文档与雷达方案稿 |

工具链硬依赖（`tools/fmo.py` 的 `DEPS`，缺一个 preflight 就红）：
`/tmp/smali_cp.txt`、`/tmp/r8_8.3.37.jar`、`/tmp/debug.keystore`。

- JDK 必须 **17**（`update-alternatives --set java /usr/lib/jvm/java-17-openjdk-arm64/bin/java`）。
- jcommander 必须 **1.48**（1.72/1.78/1.82 会 `NoSuchMethodError`）；Maven 坐标是 `org/smali/*`，`com/android/tools/*` 会 404。
- 打包工具：`apksigner` `zipalign` `aapt` `zip` `unzip`（apt 装），图像生成还要 `python3-pil`。

## 1. 铁律

1. **逻辑必须写成 Java**（`src/java/**`），smali 只是产物。`gate_java_first` 会拦手写逻辑；真需要 smali（libgdx 桩是 `Object`）就往 `baseline/smali_exceptions.txt` 登记，且文件里必须真有 `Lcom/badlogic/gdx/` 引用。
2. **数据改动只改 `data/*.json`**，再跑生成器；生成器产物不许手改（文件头有 `# 由 tools/… 生成`）。
3. **改前取基线**：模板 APK 必须显式 `--template`，且 md5 与台账一致（用错模板 = 版本漂移）。
4. **每批过闸门**：`python3 tools/fmo.py gate` 4/4 绿才允许出包；门禁是新逻辑的第一道验收，不是形式。
5. **失败不沿用旧产物**：汇编必须出 dex 且尺寸合理；出包失败不要拿上一版改名充当。
6. **每批更新台账**（`baseline/待办_机场归属与代差_v1.md`）+ 提交 + 推送或出 bundle。
7. **打包前台跑**，`nohup` 会被杀。

## 2. 标准流程

```bash
cd /tmp/fmo

# ① 数据改动后，按顺序生成（顺序不能乱）
python3 tools/gen_aircraft_models.py         # 机型表校验 + 派生
python3 tools/gen_airmodel_tables.py         # -> AirModelTables.smali（64 条）
python3 tools/gen_air_oob.py                 # -> build/assets/game/AirUnit/AircraftTypes.json
python3 tools/gen_air_model_stats.py         # -> AirModelStats.smali
python3 tools/gen_air_techs.py   /tmp/stage_v47/assets/game/technologies/Technologies.json
python3 tools/gen_air_units.py   /tmp/stage_v47/assets/game/units
python3 tools/gen_air_units.py                # 同时更新仓库 build/ 侧
python3 tools/gen_air_roster_icons.py --all /tmp/stage_v47 --apk <上一版apk>

# ② 逻辑改动后（Java -> smali，6 秒级）
bash tools/build_java.sh              # 全量
bash tools/build_java.sh AirMissileGate   # 只编一个类

# ③ 汇编 + 闸门
java -Xmx6g -cp "$(cat /tmp/smali_cp.txt)" org.jf.smali.Main assemble src/smali -o /tmp/xX.dex
python3 tools/fmo.py gate             # 行为/校验器/Java 基线/selftest 四道

# ④ 出包（前台）
python3 tools/fmo.py preflight --template <上一版apk> --stage /tmp/stage_v47 [--ensure-stage]
python3 tools/fmo.py build --template <上一版apk> --dex /tmp/xX.dex \
        --stage /tmp/stage_v47 --out /sdcard/Download/fmo_baseline/fmo_v47_air.apk

# ⑤ 台账 + 提交 + 推送（容器里没凭据 -> 出 bundle，见 baseline/PUSH_OFFLINE.md）
```

`fmo.py` 四个子命令的分工：

| 命令 | 干什么 |
|---|---|
| `preflight` | 模板 md5/包名、磁盘 ≥5G、三个 DEPS、stage 非空（空则 `--ensure-stage` 从模板抽 `numOfImages.txt`） |
| `verify` | aapt badging、apksigner、zipalign -c 4、包内 dex md5、结构指纹（**不比整包 md5**） |
| `build` | preflight → `baseline/build_candidate.sh`（拷模板→去旧签名→叠 stage→对齐→apksigner 签 v2/v3）→ verify → 写 `baseline/batches/<名>.json` |
| `gate` | 依次跑 `gate_behavior.py`（B1–B26）、`lint_verifier.py`、`gates/gate_java_first.py --include-worktree`、`selftest.sh` |

其它工具：

```bash
python3 tools/dex_fingerprint.py /tmp/xX.dex                  # 类/方法/字段/字符串数 + 结构指纹
python3 tools/gates/gate_change_scope.py --base 基线.apk --new /tmp/xX.dex \
        --allow '<白名单文本>'                                # 白名单外零变化（先过反汇编，格式化噪声自动抵消）
python3 tools/validate_aircraft_models.py --apk <app>        # 数据层 V1–V7
python3 tools/aircraft_stats.py [--emit]                     # 数值锚点/交换比矩阵
bash tools/selftest.sh --apk <app>                           # 数据层 12 项
```

## 3. 判据（验收不是"能装上就行"）

| 项 | 期望 |
|---|---|
| 结构指纹 | 与基线一致 / 只允许声明的那几个类变化（**汇编非确定性，禁止比 dex md5 判等价**） |
| 类数 | 基线 5,530 起，按设计递增（v46 后约 5,548） |
| 签名 | `apksigner verify` 通过；zipalign 4 字节对齐 |
| 包内 dex | 与本地 dex 的**指纹**一致 |
| 变更范围 | `gate_change_scope` 白名单内全中、白名单外 0 |
| 数据层 | `selftest` 12 项全绿、`validate` V1–V7 无错 |
| 真机 | 启动不崩（`logcat -b crash` 干净）+ 本批验收口径逐条过 |

## 4. 真机（vivo V2338A / Android 16，adb shell uid=2000）

```bash
adb install -r /sdcard/Download/fmo_baseline/fmo_v47_air.apk   # 同签名才可覆盖
adb shell am start -n age.of.history3.qiamxi.zhiri/.activity.MainActivity   # 入口以包内 manifest 为准
adb logcat -b crash -d | tail -40                              # 崩溃只信这个缓冲
```

⚠️ **签名身份**：v45c/v46 用的是已丢失的旧 debug key；2026-10-23 起项目密钥是
`/sdcard/Download/fmo_baseline/toolchain/fmo_debug.keystore`（alias `androiddebugkey` / 口令 `android`，证书 sha256 `0400d9fd…`）。
换 key 后**必须卸载重装**（`INSTALL_FAILED_UPDATE_INCOMPATIBLE`），会丢应用内部存档 —— 装机前先确认。

## 5. 踩过的坑（省时间用）

1. **汇编非确定性**：判等价用结构指纹，不能比 md5（本次重打 dex 尺寸相同、md5 不同）。
2. **stage 目录不能空**：空 stage 会 `zip error: Nothing to do`；用 `--ensure-stage`。
3. **打包必须前台跑**。
4. **中段插 smali 前先确认寄存器在该点已定义**（v43 把 `sput` 插在 `v15` 赋值前 → VerifyError 闪退）。
5. **按文本 `replace(...,1)` 会插错方法**（同一指令多处出现）；必须先按 `.method/.end method` 切片。
6. **`check-cast p0` 会被 lint 判真机 VerifyError**：桥方法用 `move-object v0, p0` 中转。
7. **先写 smali 桥，再跑 `build_java.sh`**：桩生成器只认磁盘上已存在的 `.smali`。
8. `fb.end()` 会重置 `glViewport`；FBO 尺寸用 `CFG`；合成坐标不除 scale（详见 `fmo-air-rendering`）。
9. **生成器写 `build/`，出包读 `stage/`**：`AircraftTypes.json` 这类“数据驱动 + 打包资产”的产物，
   生成器只更新 `build/`，**stage 里那份不会自动变**。v66–v69 的包一直带着 10-22 的旧编制表，
   CN 加强的敏捷/隐身/对地/载荷实际没进游戏，而所有闸门查的是 `build/` ⇒ 查不出。
   现在 `build_candidate.sh` 会在出包前 `cmp` 两边，不一致直接拒绝；出包前记得
   `cp build/assets/game/AirUnit/AircraftTypes.json "$STAGE/assets/game/AirUnit/"`。
10. **真机崩溃只信 `logcat -b crash`** —— 静态闸门抓不到 ART 校验器错误的全部形态。
11. **`/sdcard` 是 FUSE**：git 仓库放 Linux 侧，容器可写路径只有 `/tmp` 与 `/sdcard/Download`。

## 6. 常见故障

| 现象 | 先查 |
|---|---|
| `zip error: Nothing to do` | stage 为空 / 路径写错 |
| `INSTALL_FAILED_UPDATE_INCOMPATIBLE` | 签名不同 → 卸载或换回旧 keystore |
| `NoSuchMethodError` (jcommander) | `/tmp/jars/jc-*.jar` 版本不是 1.48 |
| `cannot find symbol` | 被引用的 smali 类不存在 ⇒ gate_java_first 规则，先补 smali 桥 |
| `命令被 POLICY_BLOCKED` | 设备侧管道/重定向/嵌套命令被拦；分条执行 |
| 打开游戏闪退 | `adb logcat -b crash -d` 里的 `VerifyError` 行 → 对照第 5 节第 4/6 条 |

## 7. 渲染类改动的排查与纪律（v76 起）

### 7.1 两个"闸门全绿但屏幕上什么都没有"的静默坑

1. **smali 桥的空判极性**：`if-nez v1, :ret` 是**非零跳转** ⇒ 取到图反而 return。
   正确是 `if-eqz v1, :ret`。汇编过、校验器过、指纹不变、四道闸门全绿，只能靠 B38 ① 或人眼。
2. **原版内联绘制**：删了方法调用不等于删了绘制。原版会把图标 `Image.draw` **内联**在
   业务方法里（例如 `drawAirForce` 里的 36×36 `airUnit`），而且位置常常**恰好盖住新绘制的第一格**，
   把"全都没画"伪装成"只画了第一张"。B38 ③ 已钉死这一类。

### 7.2 诊断包（Diagnostic APK）流程

排查"不显示"时允许出**临时诊断包**，但必须：

```bash
# 1) 诊断开关放 Java 源码里（DBG/DRAW 常量），用完删
# 2) 日志走 dWrite（前缀自定义，不受 dbgOn/采样门控），一次性写，不要每帧
# 3) 出包命名 fmo_vNNx_diag.apk，不写台账、不提交，验收完删源码里的诊断
# 4) 装机确认：adb-shell ls -la /data/app/.../base.apk 看 size/mtime
#    （诊断包与正式包大小差 4096B，一眼能认）
```

诊断代码清理后 **B38 ⑤** 会拦 `AirProvinceIcons` 里的 `ADI ` 残留；其它类自己 grep 一遍。

### 7.3 真机侧限制（别浪费时间）

无障碍截图常不可用、`screencap` 被策略拦、`logcat` 只能读 crash 缓冲、`adb-shell` 禁管道。
**让用户截图最快**：先把要看的区域坐标算出来（本批是省中心 +120px），再请他截。

### 7.4 极性别自己推

项目里 `if-nez` 的坑踩过两次（v62 导弹接触、v76 图标桥），两次都是"汇编能过、闸门全绿"。
新写任何 `if-eqz/if-nez`：
- 先在注释里写一句"I want: 空就返回"，再对照汇编看跳转方向；
- 能写成 Java 的一律写 Java（`javac` 决定极性）；
- 必须手写 smali 的，配一条闸门断言 + 红样本。

### 7.5 当前闸门清单

`python3 tools/fmo.py gate` 四道：行为（B1–B38）、校验器、Java 基线、数据层自检。
B38 = 地图建筑圆盘：桥空判极性 / 无内联机场图 / 挂点存在 / 无诊断残留。

## 8. 修 bug 的闭环（本周期验证有效）

2026-10-25~26 这一轮（v75→v88）走通了一条闭环，建议照用：

1. **先分清"谁画的"**：把嫌疑绘制整段关掉（`DRAW=false`）出诊断包 →
   图还在 ⇒ 不是我们画的（去找原版内联/其它路径）；图没了 ⇒ 才是我们的
2. **要数据就用 `dWrite`**（前缀别落进 1/64 采样名单），别用 `dKey`（`dbgOn=0` 时完全不写）
3. **几何/循环类 bug 先做离线模拟**（Python 复刻同一算法出图），别直接装机试
4. **最小补丁 + 闸门红样本**：新判断写成断言前，先手动造一次红（否则闸门是装饰）
5. **出包 → 真机 → 交接文档**：一次修复至少更新 台账 + 技能 + 交接文档三处

## 9. 交接文档纪律（2026-10-26 起）

- **每个周期一份合并版**：`/sdcard/GLG/DSHA/FMO_交接文档_<日期>.md`，开头写明"取代上一版"
- 必须带：现状一句话、本周期版本流水（含失败与被回档的）、可用产物+md5、待办进度（含旧版沿袭）、
  新增的坑、待拍板事项、文档索引、开工命令
- 专题太厚的单独成文（例：`FMO_雷达盘裁剪_交接_20261026.md`），总交接只留摘要 + 指针
- 仓库里 `baseline/` 同步一份，保证 clone 就有

## 10. 闸门现状（2026-10-26）

`python3 tools/fmo.py gate` 四道：行为 **B1–B39** / 校验器 / Java 基线 / 数据层自检。
新增的两条：
- **B38** 地图建筑圆盘：桥空判必须 `if-eqz`、`drawAirForce` 不许内联 `airUnit`、挂点存在、无 `ADI ` 诊断残留
- **B39** 拆建筑后雷达注册表：`destroyBuilding` 不许直接调 `unregisterRadar`，必须走 `AirRadarSync` 对账
