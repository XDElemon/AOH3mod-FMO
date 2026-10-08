# ICBM 雷达圈“绘制”全量调研 v1

- 日期：2026-10-03｜目标：**只查“雷达圈怎么画”**（不涉探测范围），作为重做雷达圈渲染的依据
- 调研对象：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER/`（ICBM: Escalation 本体）+ `/sdcard/GLG/icbm_src.tar`
- 结论一句话：**ICBM 的圈是“地表等距圈”→ 在球面（经纬）空间生成顶点 → 按视图模式投影（平面地图=等距圆柱 u=lon/2π+0.5, v=lat/π+0.5；球面=旋转矩阵投影）→ 用 `RangeColor` 填充 + `border_edges*` 描边**。屏幕上的形状因此**高纬横向变宽（X∝1/cosφ）、纵向=R**，而不是把半径整体乘一个纬度系数。

---

## 一、证据清单（逐条，可复现）

### 1) 射程“显示层”与颜色：数据侧
`Units/Radars.txt`（全文已读）——每个雷达类型带两行关键字段：
```
[TYPE] "ShortWave"
  RadarColor 0.0 0.0 0.16 0.15        // R G B A（A≈0.15 ⇒ 半透明填充）
  GlobalShowType SW_RANGES
  GlobalShowType OVERHORIZONT_RANGES
[TYPE] "LongWave"     RadarColor 0.02 0.05 0.16 0.15  GlobalShowType LW_RANGES
[TYPE] "OverHorizon"  RadarColor 0.12 0.10 0.05 0.01  GlobalShowType OVERHORIZONT_RANGES
[TYPE] "SpaceObserver"RadarColor 0.12 0.0  0.20 0.01  GlobalShowType SPACE_RANGES
[TYPE] "Sonar"        RadarColor 0.15 0.17 0.0  0.30  GlobalShowType SONAR_RANGES
```
文件头注释：`Modifier options: Range, MinRange, Precision` —— **射程数值来自单位的 `Range` 修正项**，颜色/图层来自这里。
注：`GameMode/Blitz/Units/Radars.txt` 是另一套（模式差异）。

### 2) 圈的绘制着色器（**关键证据**）
`shaders/GLSL/ext_vertex_rd.glsl`（170 行，已全文读；HLSL 版同构）
```glsl
uniform vec4 RangeColor;                 // ★ 圈的颜色（=RadarColor）
uniform mat4 rotate_scale_matrix;
uniform vec4 MapShiftInfo;               // x=MapShiftX, y=MapShiftY+DrawShiftY, z=DrawSizeX, w=DrawSizeY
uniform bool ProjectSphere;              // ★ 双模式：球面视图 / 平面地图

vec2 AnglesToCoordinates(vec2 In){       // 经纬 → 贴图(0..1)
  Out.x = In.y/(2.0*PI) + 0.5;           // u = lon/2π + 0.5
  Out.y = In.x/(PI)   + 0.5;             // v = lat/π   + 0.5   ⇒ ★等距圆柱（plate carrée）
}
vec2 Sphere3DToAngles(vec3 In){           // 球面点 → 经纬
  Out.x = acos(-In.y) - PI*0.5;           // lat
  Out.y = atan(In.x / In.z); if (In.z<0.0) Out.y = PI+Out.y;  // lon
}
vec2 Sphere3DToMap(vec3 In){ return AnglesToCoordinates(Sphere3DToAngles(In)); }
vec3 MapToScreen(vec2 src){
  Out.x = MapShiftInfo.x + MapShiftInfo.z*src.x;
  Out.y = MapShiftInfo.y + MapShiftInfo.w*src.y;
}
void main(){
  ...
  if (ProjectSphere){ tmp = rotate_scale_matrix*tmp; ... }        // 球面视图：直接投影
  else { tmp = rotate_scale_matrix*tmp;
         tmp.xyz = MapToScreen(Sphere3DToMap(vec3(-tmp.x,tmp.y,tmp.z))); }  // ★平面地图：球面→经纬→等距圆柱→屏幕
  varying_color = RangeColor;                                     // 填充色
  if (FadingInfo.z > 0.0) varying_color *= 按距离的淡出值;         // 可选淡出
}
```
旁证：`shaders/HLSL/occupation_area_v.hlsl`（占领区/圈形面积）同样内置 `AnglesToCoordinates`、`Sphere3DToAngles`、`GlobeRadius`、`InGlobeView`、`InTerrainView`、`ScreenToTerrainTransform` ⇒ **同一套“球面几何↔投影”管线**。

### 3) 引擎侧符号（从 `ICBM.exe` / `ICBM_MOD.exe` 的字符串表）
```
PointPlusRadius              ← 圈的基本构造：点 + 半径
RadarRanges  AttackRanges  SatelliteRanges
DrawSafeRange  DrawFlightRange  DrawSubmergedRangesEnabled
ShowRangesForAllSelectedUnits  ShiftToMassShowRange  HideRange
OccupationRadius  UnitPlacementRadius  MaxAutoEngageRange
RadarColor …（与数据侧的 RadarColor 对应）
```
描边/轮廓相关着色器与符号（⇒ 圈是“**填充 + 描边**”两套几何）：
```
ext_vertex_border  ext_vertex_border_edges  ext_vertex_border_edges_split/plain/dimmable
simple_border  border_edges*  silhouette  simple_silhouette
```

### 4) 不存在的证据（同样重要）
- **全库无 `*circle*` / `*ring*` / `*range*` / `*disc*` 贴图**（仅 Discord.png 噪音）⇒ 圈**不是贴图/精灵**，而是**程序化几何**。
- 无任何“按纬度乘系数”的字符串或 Shader 片段 —— 纬度效应是**投影的副产品**，不是人为乘法。

---

## 二、ICBM 的圈绘制算法（重构结论）

1. **几何在球面生成**：给定圆心的经纬度与射程（换算成地心角 Δ），取 N 个点构成**地表等距圈**（greate-circle/distance ring）；（引擎符号 `PointPlusRadius` 即“点+半径”）。
2. **两种视图模式**
   - 平面地图（`ProjectSphere=false`）：每个顶点走 `Sphere3DToMap`（lat/lon）→ `AnglesToCoordinates`（**等距圆柱**）→ `MapToScreen`（`MapShiftInfo` 缩放平移）。
   - 球面视图（`ProjectSphere=true`）：顶点乘 `rotate_scale_matrix` 直接投到球面。
3. **颜色**：`RangeColor`（← `RadarColor`，alpha≈0.15），支持按距离/可见性淡出（`FadingInfo`）与缩放动画（`scale_value`）。
4. **填充与描边分离**：填充用 `ext_vertex_rd`；轮廓用 `border_edges*`/`simple_border`。
5. **屏幕形状的直接后果（等距圆柱下）**：地表圆 → **横向半径 R/cosφ、纵向半径 R**（即高纬横向变宽、纵向不变）；φ=0处是正圆。

---

## 三、对我们（AoH3 侧）的含义 —— 强调：不要沿用旧画法

- 我们当前屏幕上画的是一个“半径被乘了纬度系数”的椭圆（整体缩小），所以高纬处**圈比真实覆盖小**；用户本次反馈的“**雷达比之前版本小了一圈**”正是这个方向的偏差。
- 按 ICBM 口径，同一射程 R 在等距圆柱地图上应当是：**X半轴 = R / cosφ、Y半轴 = R**（φ=0 时 X=Y=R）。
  这恰好等于“地表等距圈”在等距圆柱投影下的足迹，也**与游戏自身 `calcInEllipse(dx,dy,R,cosK)`（不给 R 乘纬度）得到的椭圆 `(R/cosφ, R)` 同形**。
- ⚠️ 关键纪律：**半径 R 必须“一处定义、多处同源”**（绘制与判定用同一个 R，不允许一处乘纬度、一处不乘）。

## 四、落地建议（两选一，均不改探测范围）
| 方案 | 做法 | 优点 | 代价 |
|---|---|---|---|
| **① 经纬折线（最贴近 ICBM）** | 以圆心 (lon₀,lat₀) 与地心角 Δ 生成 N 段点（Δ 与 R 同源）→ 逐点 `lat/lon → 屏幕`（等距圆柱）→ 画成**多边形填充 + 轮廓线** | 任意纬度都正确，形状与 ICBM 一致；顺带解决“圈与判定不一致”的历史问题 | 需要新绘制代码（分段/三角扇） |
| **② 椭圆修正（最小改动）** | 现有椭圆绘制保持，但半轴改为 `X=R/f, Y=R`（f=cosφ 钳制） | 改动小 | 仍是近似（非真球面），极端纬度略有误差 |

> 推荐先 ②（快速止血）→ 再 ①（与 ICBM 对齐）。无论哪个，**都必须与判定半径同源**。

## 五、未证实项（需 PC 端反汇编 `ICBM.exe`）
1. 分段数 N、描边粗细/是否虚线、填充的三角扇构造方式。
2. `ext_vertex_tr.glsl`（同样带 `RangeColor`）的具体用途（tr = trail/terrain?）。
3. `JAMMER_RANGES / SPACE_RANGES / SONAR_RANGES` 等其它层的颜色未逐一摘录（格式同上）。
4. 若需要精确定位实现：在 ICBM.exe 里对字符串 `PointPlusRadius`、`ShowRangesForAllSelectedUnits`、`RadarRanges` 做交叉引用（xref），即可落到绘制函数；ICBM.exe 为**原生 C++**（依赖 tbb12.dll/DirectX），不是 .NET。

## 六、复现命令
```bash
G='/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER'
cat "$G/Units/Radars.txt"
cat "$G/shaders/GLSL/ext_vertex_rd.glsl"
grep -a -o -E '[A-Za-z_]{4,28}Range[A-Za-z_]{0,24}' "$G/ICBM.exe" | sort -u
find "$G" -iname '*circle*' -o -iname '*ring*' -o -iname '*range*'   # 预期：仅噪音，无贴图
```
