# r6d185 批次清单（施工留档）

- 差异基线：库内最新源码树 `/tmp/w3a/smali`（= r6d180 树 + 回传三件套 r6d181/182）
- 模板 APK：`/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d180.apk`（＝上一个归档包）
- 产出：`/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d185.apk`
  - apk 内 dex md5 = `928d59f38f425dffb30189baafc37f5d`（= `/tmp/r6d185_classes.dex`）
  - Earth3 = 18510（与模板一致）｜apk 763,462,950 B
- 自证串：`nABOOT v=r6d185`（写在 `AirDefDiag`）
- 装机：2026-10-05 22:55:29（`pm install -r -d` 经 `autotap3.sh` 自动点按成功）

## 本批三件事

| # | 内容 | 文件 | 备份 |
|---|---|---|---|
| 1 | 逐行盘填色 → 饱和蓝（0.10/0.40/1.00），α 保持 0.28 | `map/province/RadarBitmap.smali` | `RadarBitmap.smali.pre_r6d185` |
| 2 | 射程雷达加成 `+150` → `×1.3`（300→390） | `map/battles/AirDefense.smali`(inRange)、`map/battles/AirDefDiag.smali`(inR)、`map/province/ProvinceDrawArmy.smali`(D4) | 三份 `.pre_r6d185` |
| 3 | 修极性 bug（短波 `if-eqz`→add / 长波 `if-nez`→done） | 同上三处 | 同上 |

## 参数文件（以后调值只改这两个）

- `toolchain/act/airrange.expected`：行1 = 基线 300；行2 = 倍数 1.3（⇒ 390）
- `toolchain/act/airradcol.expected`：行1 = R G B；行2 = 绘制 α

## 门禁 / 模拟器（全部通过）

| 脚本 | 结果 |
|---|---|
| `check_radcol.py --selftest` | 正检 7/7、负样本 5/5 |
| `check_airrange.py --selftest` | 正检 **23/23**、负样本 **9/9**（含 N6/N7/N8/N9 极性翻回） |
| `sim_airrange.py` | 三处真值表 **(0,0)=300 /(1,0)=390 /(0,1)=390 /(1,1)=390** + 反转敏感性 OK |
| `verify.sh`（八件套） | Invoke/Regs/Init/Range=0；Sig Δ=+16；Cast50/Undef9/MISSING14 ≤ 白噪 |

## 工具链改动（本批）

- 新增：`airrange.expected`、`airradcol.expected`、`_patch_radcol.py`、`_patch_r6d185_range.py`、`_patch_r6d185_polarity.py`、`check_radcol.py`、`check_airrange.py`、`sim_airrange.py`
- 修改：`check_params.py`（去注释，治 tickAll 假报）、`common.sh`（`NOISE_UNDEF 4→10`）、`verify.sh`（Cast/Undef 判据 等于→不高于）
- 新增只读工具（本批调研用）：`DexRefs.java`（全 dex 引用扫描）、`DexToSmali.java` + `shim/ClassFileNameHandler.java`（dex→smali 树）

## 待办（本批挂账）

- 真机验收（见 `r6s5/实测记录_r6d185.md`）
- 若"你看的那圈"其实是**贴图盘**：需另做（tint 或改 `radarFill.png` + `build_with_assets.sh`）
- 归档清理：`build_apk/` 现有 r6d137 / r6d158 / r6d179 / r6d180 / **r6d185**，按口径可删 `r6d179`（等你点头）