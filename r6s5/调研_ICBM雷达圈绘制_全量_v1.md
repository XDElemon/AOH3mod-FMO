# 调研：ICBM 雷达圈「怎么绘制」全量（只看绘制，不看探测）

日期：2026-10-04｜对象：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER/`（ICBM: Escalation 的 AoH3 版数据 + PC 版游戏目录）
> 边界声明：本文**只调研"圈怎么画出来的"**（几何 / 投影 / 颜色 / 显隐 / 层叠）。**不涉及探测判定**（谁能看见谁）。

## 0. 一句话结论
**ICBM 的射程圈＝把"球面圆帽（spherical cap）"网格，用顶点着色器从"经纬度"投影到地图/地球。**
- 半径是**球面上的角半径**（`Range ÷ SphereRadius`），不是屏幕像素；
- **纬度变扁是投影的自然结果**：着色器把每个顶点 `球面3D → (纬度,经度) → 归一化地图坐标 → 屏幕像素`，没有任何"乘以 cos(纬度)"的手写补偿；
- 圈本身是**扇区**（数据里 `Sector 360` 才是整圆，可小于 360°＝扇形），颜色/透明度来自雷达类型的 `RadarColor`。

## 1. 绘制链（从数据 → 网格 → 着色器 → 屏幕）
```
Units/Radars.txt   [TYPE] "ShortWave"  RadarColor 0.0 0.0 0.16 0.15  GlobalShowType SW_RANGES
Units/Radars.txt   [RADAR] "STD Short Wave"  Type "ShortWave"  Range 2400  Sector 360  DoNotShow?
        │  ① 取「类型颜色」+「本例射程(km)」+「扇区角」
        ▼
引擎：生成/复用球面帽网格（Maps/sphere.mesh；CAP_HEIGHT / SMALL_CAP_SIZE 控制细分与尺寸）
        │  ② 放到单位的球面位置、法向朝外、角半径 θ = Range / SphereRadius
        ▼
顶点着色器 ext_vertex_rd (HLSL+GLSL 同构)
        │  ③ 若 map 视图(ProjectSphere=false)：Sphere3DToMap() → AnglesToCoordinates() → MapToScreen()
        │     若 globe 视图(ProjectSphere=true) ：直接用 rotate_scale_matrix × projview 画在球上
        │  ④ 颜色 = RangeColor；透明度/渐隐 = FadingInfo；scale_value 做"从 0 长到 1"的展开动画
        ▼
片元着色器 simple_rd：无贴图时直接输出 Input.Color ⇒ **半透明色块填充**（不是描边线）
```

## 2. 逐字证据（文件 / 字符串 / 行）
### 2.1 顶点着色器 = 球的投影（**核心**）
`shaders/HLSL/ext_vertex_rd.hlsl`（GLSL：`shaders/GLSL/ext_vertex_rd.glsl`，逻辑相同）关键节选：
```hlsl
float2 Sphere3DToAngles(float3 In) {
  Out.x = acos(-In.y) - PI*0.5;              // 纬度
  Out.y = (In.z != 0.0) ? atan(In.x / In.z) : 0.0;
  if (In.z < 0.0) Out.y = PI + Out.y;        // 经度
}
float2 AnglesToCoordinates(float2 In) {
  Out.x = In.y/(2.0*PI) + 0.5;               // u = 经度/360 + 0.5
  Out.y = In.x/(PI)     + 0.5;               // v = 纬度/180 + 0.5
}
float3 MapToScreen(float2 src) {             // MapShiftInfo = (mapX, mapY, drawSizeX, drawSizeY)
  Out.x = MapShiftInfo.x + MapShiftInfo.z * src.x;
  Out.y = MapShiftInfo.y + MapShiftInfo.w * src.y;
}
...
VS_OUTPUT vs_main(VS_INPUT Input) {
  float4 tmp = Input.Position;
  if (scale_value < 1.0f) tmp = ScaleVertex(tmp, FadingInfo.y, scale_value);   // 角半径按比例收缩（展开动画）
  if (ProjectSphere) { tmp = mul(tmp, rotate_scale_matrix); ... }
  else { float2 Map = Sphere3DToMap(float3(-tmp.x, tmp.y, tmp.z)); tmp.xyz = MapToScreen(Map); }
  Output.Color = RangeColor;                                                // 颜色就是这个圈的颜色
  if (FadingInfo.z > 0.0) Output.Color *= FadingInfo.x * (Input.Position.z - FadingInfo.y)/(1-FadingInfo.y);
}
```
```hlsl
float4 ScaleVertex(float4 In, float ZeroAngle, float Scale) {   // 把角半径按 Scale 缩放（0→1 的生长动画）
  float3 cross = float3(In.y, -In.x, 0.0);
  float angle = acos(In.z);
  Out.xyz = RotateVector(cross, In.xyz, angle * (1.0 - Scale));
}
```
⇒ 顶点自带"从中心起算的角"（`In.z = cos(angle)`），着色器按 `Scale` 插值 ⇒ **圈的半径是"角"而不是像素**。

### 2.2 片元着色器 = 纯色填充
`shaders/HLSL/simple_rd.hlsl`：
```hlsl
if (al_use_tex) { ...tex2D... } else return Input.Color;   // 射程圈走"无贴图 ⇒ 纯 RangeColor"
```
⇒ 圈是**半透明填充面**（alpha 来自 `RadarColor.a`，如 0.15），不是描边圆环。

### 2.3 可执行文件里的绘制相关标识符（`strings ICBM.exe`）
| 族 | 字符串 | 含义 |
|---|---|---|
| 球体 | `SphereRadius`、`GlobeRadius`、`GlobeView`、`InGlobeView`、`ProjectSphere` | 世界是**球**；`ProjectSphere` 决定"画在地图上"还是"画在地球上" |
| 帽网格 | `Maps/sphere.mesh`、`CAP_HEIGHT`、`RAW_CAP_HEIGHT`、`SMALL_CAP_SIZE`、`RAW_SMALL_CAP_SIZE` | **预生成球面帽网格**并有"小帽"档（不同细分/尺寸缓存） |
| 颜色 | `RangeColor` | 顶点着色器的圈颜色 uniform |
| 渐隐 | `FadingInfo`（x=fade量, y=起点, z=开关, w=SetZByDistance） | 圈的**距离渐隐**与叠放 |
| 图层 | `RadarRanges`、`AttackRanges`、`SatelliteRanges`、`ABM_RANGES` | 全局显示开关（对应数据的 `GlobalShowType`） |
| 交互 | `ShowRangesForAllSelectedUnits`、`ShiftToMassShowRange`、`RangeSwitch` | **按 Shift 显示所有已选单位的圈** |
| 单位级 | `DrawFlightRange`、`DrawSafeRange`、`DrawSubmergedRangesEnabled`、`HideRange`、`DotRange` | 每单位的"航程/安全射程/潜航射程"等独立圈与样式 |
| 数据旋钮 | `Range`、`MinRange`、`MaxAutoEngageRange`、`AffectedRange`、`FullEffectRange`、`InRange`、`InRangeStringID`、`InRangeBitscale` | 射程本身与"受影响范围"等口径 |

### 2.4 数据侧（`Units/Radars.txt` / `Units/Units.txt`）
```txt
[TYPE] "ShortWave"          → RadarColor 0.0 0.0 0.16 0.15 ; GlobalShowType SW_RANGES / OVERHORIZONT_RANGES
[TYPE] "LongWave"           → RadarColor 0.02 0.05 0.16 0.15 ; LW_RANGES
[TYPE] "OverHorizon"        → RadarColor 0.12 0.10 0.05 0.01 ; OVERHORIZONT_RANGES
[TYPE] "SpaceObserver"      → RadarColor 0.12 0.0 0.20 0.01 ; SPACE_RANGES
[TYPE] "Sonar"              → RadarColor 0.15 0.17 0.0 0.30 ; SONAR_RANGES
[TYPE] "Optical"            → RadarColor 0.06 0.18 0.10 0.35 ; OPTICAL_RANGES
[TYPE] "FilmSat/DataSat..." → RadarColor 0.06 0.18 0.10 0.35 ; SATELLITE_RANGES
[RADAR] "STD Total Vision Air"  Type "... Air"  Range 2400  Sector 360  Precision 0.25
        AffectedBy Unit "Covert_Unit" Range 0.75      // 射程被单位/科技乘系数
```
- `Range … // in km`（`Units/Units.txt:211` 原注释：`Range 2400 // in km`；战机 `Set Range 2800…12000`）
- `Sector 360` ⇒ **圈默认是整圆，但数据支持扇区**（ICBM 的雷达/武器圈可以是扇形）
- `DoNotShow` ⇒ 该雷达**不画圈**
- `RadarColor` 是 RGBA，**A 就是那个圈的透明度**（短波 0.15、光学 0.35、声呐 0.30）

## 3. 与我们（AoH3 MOD）的映射：ICBM 口径 vs 我们现状
| 维度 | ICBM | 我们现在的做法 | 差异性质 |
|---|---|---|---|
| 半径定义 | 球面**角半径** θ = Range / SphereRadius | 地图像素 R（300/450/600/2400） | 单位不同；可换算 |
| 形状来源 | **投影派生**（球面帽 → 经纬度 → 地图） | 手写椭圆 `(R, R·cosφ)`（`AirLat`） | **形状比例相同**（高:宽 = cosφ）；ICBM 不需要手写 cos |
| 高纬行为 | 角半径不变 ⇒ 地图上**水平变宽**（1/cosφ） | 水平固定 R ⇒ 竖直压扁 ⇒ **占地更小** | 这是"圈会不会变大"的分歧点（你此前裁定：不要变大） |
| 颜色 | 每雷达类型 `RadarColor`（RGBA），填充半透明 | 统一 `radarFill` 白/色 + 我们自定 | 可照搬（数据驱动） |
| 图层开关 | `GlobalShowType` + `RadarRanges/AttackRanges/...` + Shift 全显 | 无 | 可借鉴（AD-3 之后再谈） |
| 扇区 | `Sector` 度数（可非整圆） | 无（全向圆） | 可借鉴（防空扇区） |
| 渐隐 | `FadingInfo` 距离渐隐 | 无（纯色） | 可借鉴 |
| 半径动画 | `scale_value` 0→1 生长 | 无 | 可借鉴 |

**可直接照抄的思想**：①"半径＝角，投影自然变扁"；②颜色/透明度**数据驱动**（每类雷达自己的 RGBA）；③渐隐与生长动画；④扇区（Sector）。
**不能照抄的**：ICBM 的投影是**球面→等距圆柱**（`u=经度/360`、`v=纬度/180`）。AoH3 的地图不是严格等距圆柱（地图是贴图 + 省份多边形），若真按 ICBM 口径做，会把"水平固定"变成"水平随纬度变宽"，与你"圈不能变大"的要求冲突 ⇒ **只能借它的"形状原则"，不能借它的绝对尺寸口径**。

## 4. 尚未证实（必须上电脑反编译才能定案）
| # | 待证问题 | 建议抓手（PC 端） |
|---|---|---|
| 1 | 帽网格的**细分段数**与 `CAP_HEIGHT/SMALL_CAP_SIZE` 实际取值 | Ghidra/IDA 搜字符串引用 `CAP_HEIGHT`、`SMALL_CAP_SIZE`、`Maps/sphere.mesh`；或 hook `glDrawElements` 统计三角形数 |
| 2 | 角半径公式是否就是 `θ = Range / SphereRadius`（是否有"视距/地平线"修正，尤其 `OverHorizon` 型） | 搜 `SphereRadius` 的除法/乘法链；或直接读 `Maps/*` 的半径与实测圈宽对照 |
| 3 | `DotRange` 与 `DrawFlightRange/DrawSafeRange` 的**画法差异**（虚线？描边？另一层？） | 搜 `DotRange` 引用；看是否有第二套 `*_rd` 着色器/描边 |
| 4 | `Sector` 的实现（扇形） | 搜 `Sector` 定义与 `Range` 的联合使用 |
| 5 | 圈的 z 序/叠放规则（`FadingInfo.w` = SetZByDistance） | 搜 `SetZByDistance` |

## 5. 本报告的证据清单（可复核）
```
shaders/HLSL/ext_vertex_rd.hlsl          ← 顶点：球→地图投影（核心）
shaders/GLSL/ext_vertex_rd.glsl          ← 同构 GLSL 版
shaders/HLSL/simple_rd.hlsl              ← 片元：纯色填充
Units/Radars.txt                         ← RadarColor / GlobalShowType / Range / Sector / DoNotShow
Units/Units.txt                          ← Range … // in km
ICBM.exe 内字符串                        ← SphereRadius/GlobeRadius/ProjectSphere/CAP_HEIGHT/Maps/sphere.mesh/RangeColor/FadingInfo/RadarRanges/ShiftToMassShowRange/DotRange/…
Maps/EARTH256K/{HeightMap.cmap,map.e5i,Default.jxl,config.txt}  ← 地图资源（压缩/加密，未解）
```
