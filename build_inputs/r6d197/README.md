# r6d197 批次清单（雷达盘着色终版）

- 模板 APK：`build_apk/dbg_signed77_v119_r6d196.apk`（＝上一版）
- 产出：`build_apk/dbg_signed77_v119_r6d197.apk`（apk 内 dex md5 `72576e6f…`，Earth3=18510）
- 自证串：`nABOOT v=r6d197`｜装机：2026-10-06 07:31:55｜用户颜色验收：✅

## 本版三处改动

| # | 内容 | 位置 | 备份 |
|---|---|---|---|
| 1 | **tint 类型根因修复**：`const/4` 整数1 → `const/high16 1.0f` | `RadarBitmap.draw` | `.pre_r6d194` |
| 2 | 填色 → `#3333FF`（0.20/0.20/1.00）、α → **0.20** | `RadarBitmap.refresh/draw` | `.pre_r6d185` |
| 3 | 作战半径环隐形（tint=Color.CLEAR）、贴图盘三段隐形（α=0，显式废弃+注释） | `ProvinceDrawArmy` | `.pre_r6d193` / `.pre_r6d195` |

参数文件：`toolchain/act/airradcol.expected`（行1=R G B，行2=α）

## 门禁 / 检查

| 脚本 | 结果 |
|---|---|
| `check_radcol.py --selftest` | 正检 **9/9**、负样本 **8/8**（含 N8"tint 退回整数写法"） |
| `check_airrange.py --selftest` | 正检 23/23、负样本 9/9 |
| `sim_airrange.py` | 真值表 300/390/390/390 + 反转敏感性 OK |
| `verify.sh`（八件套） | 通过：Invoke/Regs/Init/Range=0；Sig Δ=0；Cast50/Undef9/MISSING14 ≤ 白噪 |

## 抓样（实测）

- `aircfg_diag_r6d197.txt`：`nAD` 93 行、每省 1 发、命中 48/93≈0.5、`nADX`=0；无雷达省射程边界≈305（基线300生效 ⇒ 极性修复生效）
- `nRBM px=8cd1ffff`（当时填色亮蓝的 ARGB，用于证明"像素里有颜色、上屏被 tint 乘黑"）

## 附：本线踩坑与解锁（一句话版）

1. 颜色写 `Pixmap.setColor(FFFF)` 只决定**图里的像素**；上屏还要乘 **SpriteBatch 的 tint**。
2. tint 三通道必须是**浮点**（`const/high16`）；写成 `const/4 0x1` = 整数1 ⇒ 当浮点≈0 ⇒ 全黑。
3. 判定/极性点位要配**行为级模拟器**；颜色/绘制点位要配**真值/像素探针**（本批两者都救过命）。