# 初版 DEMO 素材缺口（实测）

## AirUnitlmages：111 vs 仓库快照 113

逐文件比对，差的**正好是两张选中环**：

| 文件 | DEMO | 仓库快照 |
|---|---|---|
| `ringSel112.png` | ✗ | ✓ |
| `ringSel84.png` | ✗ | ✓ |

其余 111 张完全一致（含 `ringAlly/ringEnemy/ringFriend` 三张敌我识别环）。

⇒ 佐证：初版 DEMO 早于「细环」那批工作（`assets_ring/` 是后来入库的）。

## 游戏实际使用的环资源（实测路径）

| 用途 | 路径 | 尺寸 |
|---|---|---|
| 选中环 | `assets/ui/graph/ringSel.png` | 256×256 RGBA |
| 敌我识别环 | `assets/game/AirUnit/AirUnitlmages/ring{Ally,Enemy,Friend}.png` | 256×256 RGBA |
| 血条环 | `assets/ui/graph/ringHP_0..8.png` | 256×256 |

## 占位环的两种形态（已修正）

生成器早期对 ≥100px 的环画了中心点（`filled_center=True`），
产生「带点/不带点」两套。**游戏内只有不带点的一种**，已改：
`tools/gen_placeholder_assets.py` 中 ringSel 统一 `filled_center=False`。
