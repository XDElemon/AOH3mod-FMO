---
name: fmo-patch-pipeline
description: FMO/终序千禧 smali 改包的标准流水线：从原版 APK 建立基线、汇编、打包、签名、门禁与台账。用于任何一次"改代码/填数据/换素材"的批次。
---

# FMO 改包流水线（Skill）

## 何时用

需要对这个仓库（`XDElemon/AOH3mod-FMO`，包 `age.of.history3.*`）做任何一次改动时：
改 smali / 填数据 / 换素材 / 重新出可装机包。

## 铁律

1. **禁止手写 smali 交付**。所有改动由脚本生成（生成器 / Java 编译 / 补丁脚本），smali 只是产物。
2. **改前先取基线**：`baseline/build_baseline.sh` 产出的包是唯一 diff 基准，不得拿旧 md5 对账。
3. **每次构建回填台账**：APK md5、包内 classes.dex md5、类数、Earth3 条目、字节数。
4. **门禁双查**：结构齐备 + 方向正确；只有结构检查会放过极性写反。
5. **失败不沿用旧产物**：汇编必须看到 `result=true`，dex 为空或异常即中止。

## 环境

```bash
# JDK + 签名/对齐
apt-get install -y openjdk-17-jdk-headless apksigner zipalign zip unzip
# smali 工具链（Maven Central 正确坐标：org/smali/*）
#   smali-2.5.2 / baksmali-2.5.2 / dexlib2-2.5.2 / util-2.5.2
#   + guava + antlr-runtime-3.5.2 + jcommander-1.48（注意必须 1.48，1.72+ 会 NoSuchMethod）
# classpath 写入 /tmp/smali_cp.txt
```

## 流程

```bash
# 0) 取代码（稀疏克隆，避免拉 675MB 素材）
git clone --depth 1 --filter=blob:none --sparse <repo> fmo
cd fmo && git sparse-checkout init --cone
git sparse-checkout set src/smali toolchain assets_ring baseline

# 1) 汇编
java -Xmx6g -cp "$(cat /tmp/smali_cp.txt)" org.jf.smali.Main assemble src/smali -o /tmp/x.dex

# 2) 基线构建（含剥 PairIP、换 manifest、注素材、签名）
bash baseline/build_baseline.sh /sdcard/Download/xuanxing.apk "$PWD/src/smali" /tmp/base/fmo_baseline.apk

# 3) 反向验证（可选但推荐）：baksmali 回去逐文件 diff，必须 0 处差异
java -cp "$(cat /tmp/smali_cp.txt)" org.jf.baksmali.Main disassemble /tmp/x.dex -o /tmp/x_smali
diff -r src/smali /tmp/x_smali
```

## 判据

| 项 | 期望 |
|---|---|
| 类数 | 5,530（改动后按新增数递增） |
| **结构指纹** | `tools/dex_fingerprint.py` 比对一致（md5 不可靠：smali 汇编非确定） |
| Earth3 条目 | 18,439（基线值；换素材后重算） |
| 往返 diff | 以 baksmali 产物为输入时 0 处差异；对 `src/smali` 树会有 33 处格式性差异（字段顺序/`.catch` 位置），不算错 |
| 签名 | `apksigner verify` 通过 |

## 注意

- 壳（`xuanxing.apk`）带 PairIP：必须改 `AndroidManifest` 的 `application` 为 `android.app.Application`，并删 `lib/*/libpairipcore.so`、`libstub.so`。
- AXML 改动用**字符串池重定向**（`baseline/patch_manifest.py`），不要重写二进制 XML。
- `/sdcard` 是 FUSE，git 仓库必须放 Linux 侧；容器内可写路径仅 `/tmp` 与 `/sdcard/Download`。
