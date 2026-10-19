# 基线 v2：以初版 DEMO 为准（实测可用）

> 2026-10-19｜上一版（玄星壳）作废

## 一、基线定义

| 项 | 值 |
|---|---|
| 基线包 | 初版 DEMO `终序千禧.apk.1`（包名 `age.of.history3.qiamxi.zhiri`，v0.0.1 / code 14） |
| 基线特征 | **保留 PairIP**（`com.pairip.application.Application` + `libpairipcore.so`/`libstub.so`） |
| 签名 | 可任意重签（实测 PairIP 不校验签名） |
| 代码 | 每次构建的 `classes.dex`（当前 = 仓库 5,530 类，含桥类 `SgVOmPGqg`） |
| 素材 | 可替换（加载图 63 张 / 环 / TNO UI …） |

## 二、铁律（血泪）

1. **不要改 manifest**。v1 那次 AXML 补丁缺 UTF-16 终止符，aapt 直接判 corrupt，MT 不显示安装项。
2. **不要剥 PairIP**。剥掉后 libgdx 的 20 处 `getSystemService(字段)` 拿到 null，启动即 NPE。
3. **替换 dex 必须带 `SgVOmPGqg`**（PairIP 字符串表，仅 1 个类），否则 classes2 断链。
4. **每次出包先跑 `aapt dump badging`**，解析不过不出包。

## 三、验证链（每次必跑）

```bash
aapt dump badging  out.apk | head -1      # 必须打印 package: name=...
apksigner verify --verbose out.apk         # v2/v3 通过
```

## 四、当前产物

| 文件 | 说明 | md5 |
|---|---|---|
| `fmo_full.apk` | 基线 + 仓库代码 + 63 加载图 + 新环（830MB） | `e762f277…` |
| `fmo_repo_code.apk` | 基线 + 仓库代码（702MB，已验证可玩） | `f0dd9e72…` |
| `test_resign_only.apk` | 基线仅重签（验证 PairIP 用，702MB） | — |
