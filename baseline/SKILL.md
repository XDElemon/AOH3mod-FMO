---
name: fmo-patch-pipeline
description: FMO/终序千禧（age.of.history3.*）smali 改包流水线：从原版 APK 建基线、改代码/填数据、汇编打包签名、门禁与结构指纹对账。任何一次"改逻辑/填数值/换素材"的批次都走这套。
whenToUse: 需要修改 XDElemon/AOH3mod-FMO 仓库的代码或数据、重新产出可装机 APK、或核对一次构建是否真的等价时。
---

# FMO 改包流水线

## 一、铁律

1. **禁止手写 smali 交付**。逻辑改动写成脚本/生成器；数据改动只改 JSON，由生成器出 smali。
2. **判据不是 md5**。smali 2.5.2 汇编**非确定性**：同源两次汇编结构相同、md5 全变。用 `tools/dex_fingerprint.py` 的结构指纹对账。
3. **每次构建回填台账**：类数 / 方法数 / 字段数 / 结构指纹 / APK 大小，旧值不得复用。
4. **门禁双查**：结构齐备 + 方向正确；只查结构会放过极性写反。
5. **失败不沿用旧产物**：汇编无 `result=true`（或产物为空）即中止，禁止拿旧 dex 继续打包。

## 二、环境（一次装好）

```bash
apt-get install -y openjdk-17-jdk-headless apksigner zipalign zip unzip
# Maven 坐标是 org/smali/*（不是 com/android/tools）
#   smali-2.5.2 / baksmali-2.5.2 / dexlib2-2.5.2 / util-2.5.2
#   + guava + antlr-runtime-3.5.2 + jcommander **1.48**（1.72+ 报 NoSuchMethodError）
# classpath 写入 /tmp/smali_cp.txt，务必用绝对路径（相对路径在不同 cwd 下会 ClassNotFound）
```

## 三、主流程

```bash
# 0) 稀疏克隆（避免拉 675MB 素材）
git clone --depth 1 --filter=blob:none --sparse <repo> fmo
cd fmo && git sparse-checkout init --cone
git sparse-checkout set src/smali toolchain assets_ring baseline data tools

# 1) 改数据（唯一真源）
vi data/aircraft_models.json
python3 tools/gen_airmodel_tables.py            # JSON -> smali
python3 tools/validate_aircraft_models.py       # V1-V6 + 覆盖率

# 2) 汇编
java -Xmx6g -cp "$(cat /tmp/smali_cp.txt)" org.jf.smali.Main assemble src/smali -o /tmp/x.dex

# 3) 指纹（签名 + 方法体，替代 md5）
python3 tools/dex_fingerprint.py /tmp/x.dex

# 3.5) 变更范围门禁（每个批次必跑：只允许声明的方法变）
python3 tools/gates/gate_change_scope.py --base 基线.apk --new 新包.apk \
  --allow 'Laoc/.../AirMission;->unitGenOf(Laoc/.../AirUnit;)I'

# 4) 基线打包（含剥 PairIP / 换 manifest / 注素材 / 签名）
bash baseline/build_baseline.sh /sdcard/Download/xuanxing.apk "$PWD/src/smali" /tmp/base/x.apk
```

## 四、判据

| 项 | 期望 |
|---|---|
| 结构指纹 | 与基线一致（改代码时只允许声明的那几个类变化） |
| 类数 | 基线 5,530；新增类按设计递增 |
| Earth3 条目 | 18,439（换素材后重算） |
| 签名 | `apksigner verify` 通过 |
| 包内 dex | 与本地产物**签名指纹 + 方法体指纹**一致（不是 md5） |
| 变更范围 | `gate_change_scope.py` 通过（白名单外零变化） |

## 五、踩过的坑（必读）

- **PairIP**：壳带 `com.pairip.application.Application`。改 manifest 的 `application` 为 `android.app.Application`（用字符串池重定向，别重写 AXML），并删 `lib/*/libpairipcore.so`、`libstub.so`。
- **baksmali 会重排**字段声明顺序、移动 `.catch`，所以"逐文件 diff"对 `src/smali` 会报 ~33 处假差异。
- **`airCombatOne` 自底座起被 `return-void` 短路**（注释 `# AA disabled`），空战不结算伤害；填数值前必须先接通。
- **`AirMission.unitGenOf()` 返回常量 3**（桩），且 `AirUnit.typeID` 是 `AircraftTypes.json` 的 ID(1..4)，**不是** `AirModelTables` 的下标(0..50)，不能直接拿去查表。
- `/sdcard` 是 FUSE：git 仓库放 Linux 侧；容器可写路径只有 `/tmp` 与 `/sdcard/Download`。

## 六、数据编码（机型表）

```
key     = country*4 + type      CN0 EU1 RU2 US3 ｜ F0 I1 A2 B3
imageId = 70 + (gen-3)*16 + key
packed  = (key<<16) | (techId<<8) | imageId
```
