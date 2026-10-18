# 调研 · 初版 DEMO（终序千禧 0.0.1）分析

> 2026-10-18｜来源：`/sdcard/Download/QQ/终序千禧.apk.1`（用户提供）

## 一、身份

| 项 | 值 |
|---|---|
| 大小 | 738,381,797 B |
| 包名 | `age.of.history3.qiamxi.zhiri`（终序千禧） |
| versionName / versionCode | `0.0.1` / `14` |
| application | `com.pairip.application.Application`（PairIP 仍在） |
| 签名 | 作者私钥（`META-INF/ANDROIDD.RSA`） |
| dex | 6 个：classes.dex 5,519 类 ／ classes2 2,997 ／ classes3 2 ／ 4-6 空 |
| 素材 | Earth3 **18,510** 条、`AirUnitlmages` **111** 个、含 `AircraftTypes.json` |

## 二、与仓库源码的差异（关键）

`classes.dex` 5,519 类 vs 仓库 `src/smali` 5,530 类，**交集 5,518**。

| 方向 | 数量 | 内容 |
|---|---|---|
| 仓库有、DEMO 没有 | **12** | `AirTechEvents($Task)`、`AirDefDiag`、`AirDefense`、`AirLat`、`AirModelTables`、`AirPosProbe`、`TechTopTab`、`HoiBox`、`HoiButton`、`TnoBlock`、`TnoButton` |
| DEMO 有、仓库没有 | 1 | `RadarSDF`（仓库已删） |

⇒ 这个 DEMO 是**很早的版本**：防空诊断（AirDef*）、机型表（AirModelTables）、
钢四科技树 UI（HoiBox/TnoBlock/TechTopTab）都还没有。
⇒ 它相当于仓库当前状态（r6d319）的**祖先**，但共享 5,518 个类的骨架。

## 三、对方案的影响

1. **我们终于拿到了"原配"的壳**：作者的 classes.dex + classes2 + 素材是配套的，
   比之前用玄星包硬拼可靠得多。
2. 素材口径对齐了：Earth3 = 18,510（与 r6t007 声明一致），`AirUnitlmages` = 111
   （仓库快照里是 113，差的 2 个待查）。
3. 之前基线包崩溃（libgdx `DisplayManager` 空指针）很可能来自**壳与 dex 不配套**；
   用这个 DEMO 做底可以验证这个假设。

## 四、下一步（按顺序）

1. 用户手动安装 DEMO（Author 签名，可直接装）→ **能否在 Android 16 上启动**
   - 能 → 用它做新底包，重做基线
   - 不能 → 问题在游戏/libgdx 与 Android 16 的兼容性，与我们的改动无关
2. 若 DEMO 能跑：做「DEMO + 剥 PairIP + 原版 dex」的 A/B 包，确认剥离后仍能启动
3. 再换成本仓 5,530 类的 dex 验证代码通路

## 五、备注

- DEMO 仍带 `libpairipcore.so` / `libstub.so`，剥壳方式与此前一致（改 manifest + 删 lib）。
- 该包 `versionCode=14`，与我们此前的 debug 包（同包名？否，此前是 polaris.xuanxing）不冲突。
