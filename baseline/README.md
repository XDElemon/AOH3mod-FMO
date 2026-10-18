# 临时更新基线（Baseline）· 构建与判据

> 立项：2026-10-18 ｜ 原因：原 FMO 装机包已不存在，手上只有**官方/AOH3 系原版 APK**。
> 本目录定义「可复现的临时基线」：**原版壳 + 本仓 src/smali 的代码 + 占位素材**，作为后续所有改动的 diff 基准。

## 一、基线是什么

| 组成 | 来源 | 说明 |
|---|---|---|
| 壳（res/resources.arsc/lib/classes2.dex） | `/sdcard/Download/xuanxing.apk`（`age.of.history3.polaris.xuanxing` v1.0 versionCode 4） | 与仓库底座同源同版本，见「三、同源性证据」 |
| 代码（classes.dex） | 本仓 `src/smali/`（5,530 类） | 由 `smali-2.5.2` 汇编，非手写 |
| 素材 | `assets_r6t007` 快照 + `fmo_placeholder_assets`（149 张文字占位图） | 占位图按源码/配置里的真实名生成 |
| 签名 | debug keystore（`androiddebugkey` / `android`） | 自用；与官方包签名不同，安装需先卸载 |

## 二、一次构建

```bash
bash baseline/build_baseline.sh \
  /sdcard/Download/xuanxing.apk \
  "$PWD/src/smali" \
  /tmp/base/fmo_baseline.apk
```

依赖：JDK、`smali-2.5.2` + `baksmali-2.5.2` + `dexlib2-2.5.2` + `util-2.5.2` + `guava` + `antlr-runtime-3.5.2` + `jcommander-1.48`
（classpath 写在 `/tmp/smali_cp.txt`；仓库 `toolchain/lib/` 里是同一批 jar）。

## 三、同源性证据（为什么这个壳能接这套代码）

| 验证 | 结果 |
|---|---|
| 类集合 | 壳的 `classes.dex` 5,476 类，**0 个**是本仓没有的；本仓 5,530 类 = 5,476 + 54（空战系统 44 + FMO 新增 10） |
| 方法签名 | 抽 300 个同名类比对，重合 **99.60%**（仅 `Image` 90.91%、`Game` 99.17% 有少量差异） |
| 资源 ID | 本仓 R 类 145 个常量，**144 个**在壳的 `resources.arsc` 里 id 一一对应（缺 `notify_panel_notification_icon_bg`，通知栏小图） |
| 框架 | `aoc/com/org/team` 包结构同构；`team/rainfall`（Rainfall 字体修复）18 类一致 |

## 四、工具链准确性判据（往返测试）

对壳的 `classes.dex` 做 `baksmali → smali → assemble` 往返：

| 项 | 原始 | 往返后 | 差 |
|---|---|---|---|
| strings | 25,837 | 25,837 | 0 |
| types | 5,746 | 5,746 | 0 |
| fields | 18,116 | 18,116 | 0 |
| methods | 29,912 | 29,912 | 0 |
| classes | 5,476 | 5,476 | 0 |
| 字节 | 7,221,012 | 7,221,016 | +4（对齐） |
| 逐文件 diff | — | — | **0 处差异** |

⇒ 结论：工具链**语义等价**，可以承担后续改动。

### ⚠️ 判据修正：md5 不可复现（实测）

- 同一份 smali 连续汇编两次，**结构完全相同、md5 每次都变**（smali 2.5.2 非确定性）。
- baksmali 反汇编会重排字段声明顺序、移动 `.catch` 位置 ⇒ 对 `src/smali` 树做"逐文件 diff"会报 33 处差异，但全部是格式性差异。
- **所以 dex md5 不能作为"可复现"判据**（旧仓库的"三对齐 = dex md5"只对同一份产物成立）。

改用**结构指纹**（`tools/dex_fingerprint.py`）：对排序后的类/方法/字段集合做 sha256。

| 产物 | md5 | 结构指纹 |
|---|---|---|
| classes_fmo.dex | `6c8d2c13…` | `c71a3d563cdb0b59a67fccd9f9fd5dec` |
| 重新汇编 #1 | `e7c0094f…` | `c71a3d563cdb0b59a67fccd9f9fd5dec` |
| 重新汇编 #2 | `269f82d8…` | `c71a3d563cdb0b59a67fccd9f9fd5dec` |

⇒ 判据：**结构指纹一致 = 代码没变**；md5 只用于登记"这一份文件"。

## 五、基线台账

| 项 | 构建 #1（手工） | 构建 #2（脚本） |
|---|---|---|
| APK | `fmo_baseline.apk` | `fmo_baseline_v2.apk` |
| 大小 | 776,916,354 B | 776,916,354 B |
| APK md5 | `7300cd045c439b299e69713121c923b0` | `7871a9c19120e01cdbe6f021ae4664ff` |
| dex md5 | `6c8d2c13bab3917660ad9899d0ba1267` | `8f4d45166c5bcbc125f2aed55ac32777` |
| **结构指纹** | `c71a3d563cdb0b59a67fccd9f9fd5dec` | `c71a3d563cdb0b59a67fccd9f9fd5dec` |
| 类数 | 5,530 | 5,530 |
| Earth3 / AirUnitlmages / airs_* | 18,439 / 113 / 36 | 18,439 / 113 / 36 |
| application | `android.app.Application` | `android.app.Application` |

> 两次构建**大小完全相同、指纹完全相同，md5 不同** —— 这既是"可复现"的证据，
> 也是"不能拿 md5 对账"的证据。判据看结构指纹。

### 一键复现

```bash
bash baseline/setup_toolchain.sh          # 自举 jar（幂等）
bash baseline/build_baseline.sh \
  /sdcard/Download/xuanxing.apk \
  "$PWD/src/smali" \
  /tmp/base/fmo_baseline.apk
```

## 六、已知限制

1. PairIP 已按「改 manifest + 删 `libpairipcore.so`/`libstub.so`」剥离，**尚未真机验证**是否还拦。
2. 壳缺 44 个空战类 + 相关 assets/数据表 → 由本仓 dex 与占位素材补齐；`assets/map/Earth3` 与快照差 52 条。
3. 本基线**不是**原 FMO 那份包，功能等价 ≠ 字节等价。

## 七、纪律

- 任何批次改动只能通过脚本生成（禁止手改 smali 交付）。
- 每次构建必须回填台账（APK md5 / dex md5 / Earth3 / 类数 / 字节数），旧值不得复用。
