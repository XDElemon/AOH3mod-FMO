---
name: fmo-disc-overlay
description: FMO 地图范围盘（蓝=探测/雷达、红=防空火力）的叠放与裁剪：用户确认的分层口径、AirDiscQueue/AirRect 结构、按半径排序、CPU 扫描行差集（v89 定稿版）、v88 两个真机 bug 的根因与复现方法、B41 离线回归闸门、已证明的五条死路（描边环/半透明/stencil/每帧上传/椭圆旋转）。任何要动雷达盘/防空盘叠放、透明、裁剪、排序的批次都先读它。
---

# 地图范围盘：叠放与裁剪

> **2026-10-27 更新**：盘的叠放/裁剪不变；但飞机图标的绘制时机变了——现在由 `AirUx.drawAll`
> 在 `drawProvincesArmy` 尾部自绘（与旧省循环同位），机头来自 `AirMotion`。排查"盘正常但飞机图标不对"时先看 `fmo-air-motion`。

> 来源：2026-10-25~26，v77→v89。其中 v78–v87 是弯路，**v88 的两个实现 bug 到 2026-10-26 凌晨才定死**。
> 详细交接：`/sdcard/GLG/DSHA/FMO_雷达盘裁剪_交接_20261026.md`（§11 起是 v89）。

## 1. 用户确认过的口径（别再自己发明）

1. **红圈默认压在蓝圈之上**
2. **半径小的盘压在上面**（大的先画）
3. 防空阵地这种「蓝圈比红圈小」的：**小蓝圈可以压在该红圈之上**
4. 但这个小蓝圈若被**更大的蓝盘**覆盖：**被覆盖部分退到红之下（露出红）**，没覆盖的仍在红之上
5. **不要**描边环、**不要**半透明混色

用户认可的目标图：`/sdcard/GLG/DSHA/v85_mock_compare.png` 第 ① 张。

> 落成代码就是一句：**按半径降序画（小压大）；蓝盘只在「更大的蓝盘 ∩ 红盘」这块给红让位**。
> 因为红盘半径 ≥ 小蓝盘时它一定先画（在下面），挖掉小蓝的那块露出来的就是红。

## 2. 代码结构

| 文件 | 角色 |
|---|---|
| `src/java/.../province/AirDiscQueue.java` | 每帧收集四类盘 → 半径排序 → 需要让位的蓝盘求差 → 逐行落笔（**v89 重写**） |
| `src/smali/.../province/AirRect.smali` | 1×1 白纹理 + 纯色矩形 `fill(Object,int x,int y,int w,int h,int rgb)`，x=左边界、y=屏幕顶向下的 y |
| `src/java/.../province/AirRadarBld/AirRadarAD/AirRadarPlane` | 三类盘的收集端（`addBlue` / `addColor`） |
| `ProvinceDrawArmy.drawAircraftRadar` | 任务蓝盘入库；`RadarOverlay.end` 之前 `flush` |

盘半径口径：蓝 = 空军基地 200 / 雷达 600 / 反导阵地 300 / 中层反导 2400（世界单位×scale）；
红 = 100 或 130 × `iMapScale(=4)` ⇒ 400/520。**红比蓝大、比蓝小都会出现**，所以必须按实际半径排序。

## 3. v89 的实现（照抄，别自己再发明）

```
flush():                                   # 每帧 2 次（drawAirForce 被调 2 次）
  discs = 本帧收集的盘；稳定插入排序，rx 降序
  blues=[]; reds=[]                        # 只含"已经画过"的（半径更大 ⇒ 在下面）
  for d in discs（单个盘 try/catch，互不连坐）:
     if 红: 整盘画；reds.append(d); continue
     need = ∃更大蓝盘 与 d 的 bbox 相交 且 ∃红盘 与 d 的 bbox 相交
     if !need: 整盘画
     else: drawClipped(d, blues, reds)
     blues.append(d)

drawClipped(d):
  ① 若 ∃(更大蓝盘 b, 红盘 r) 使 b 与 r 都完全包住 d ⇒ 整盘不画（同心的小蓝=反导阵地最常见，直接 return）
  ② 算 cutTop/cutBottom = ⋃ bbox(b ∩ r ∩ d)：
     三重都不相交 ⇒ 说明其实不该裁 ⇒ 走整盘纹理绘制（保留抗锯齿弧线，别切成台阶）
     cutTop≥cutBottom ⇒ 同上
  ③ 逐行 ya（行距 stepFor(ry)：≤260→1px，≤700→2，≤1400→3，否则 4）：
     半宽用**带内最窄的那一行**（dy+step-1）算 ⇒ 色带永不探出椭圆外（v88 用带顶 ⇒ 外溢残条）
     行完整在 [cutTop,cutBottom) 之外 ⇒ 整行一个矩形
     否则 collectBlocked() 求遮挡区间，裁到 [start,end) 后求差落笔
```

`collectBlocked`：先取每个更大蓝盘在该行的区间（`BI/BJ` 两个 int 数组，**不许打包回一个 int**），
再与每个红盘在该行的区间两两求交，按左端排序、合并重叠、裁到当前行 ⇒ `BS/BE`。

**求差循环**（v88 少了一句收尾，真机表现为右侧长条）：

```java
for k in [0,bn):
    bs=BS[k]; be=BE[k];
    if (be <= start) continue;
    if (bs > start) fill(start, ya, bs-start, step);
    if (be >= end) { start = end; break; }   // ★ 遮挡到行右端 ⇒ 必须收尾
    start = be;
    if (start >= end) break;
if (start < end) fill(start, ya, end-start, step);
```

## 4. v88 的两个真机 bug（已定死，别再怀疑取数/GL）

| # | bug | 机理 | 真机表现 |
|---|---|---|---|
| **B1** | `rowInterval()` 把区间编码成 `(left<<16)+right`，`collectBlocked` 解码写 `iv-(iv>>16)`（正确是 `iv&0xFFFF`） | 左端≥0 ⇒ 右端解成 ≈`left*65535+right`（10⁷ 量级）⇒ 遮挡段一路吃到行尾；左端<0 ⇒ 右端巨大负数 ⇒ 该行完全不裁 | **大蓝盘在左 → 小蓝盘整块消失**；换到右边/平移地图就在「全消失」与「完全不裁」之间翻转 |
| **B2** | 求差循环缺 `if (bs>=end) break;`（遮挡段整段跑出行右端时仍先画到 bs 再 break） | 遮挡段没裁到行内 | **大蓝盘在右且未包住小蓝圆心 → 右侧长条/平直边** |

**为什么离线模拟器复现不出**：之前的 Python 模拟器是按交接文档的伪代码（正确解码 + 已收尾）写的，
而真机跑的是上面这两行写错的 Java。⇒ **以后离线验证一律跑仓库里的真 Java 类，不要重写一遍算法。**

数值（`tools/gate_air_disc_clip.py` 的 A/B 场景）：v88 小蓝可见 3552 px，镜像场景 **0 px**；v89 两边都是 3544 px。

## 5. 五条死路（都真机验证过，别再试）

| 方案 | 结果 |
|---|---|
| 红盘改**描边环** | 用户明确否掉 |
| 半透明混色 | 用户否掉（颜色会混） |
| **stencil 裁剪**（FBO 带模板） | 真机**整帧画空**：带 stencil 的 `FrameBuffer` 在本机建不完整 |
| **旋转贴图**表现压扁椭圆 | 旋转后不再重合，会转出盘外 |
| 每帧 `new Texture` | 泄漏 + 卡顿；**「每帧上传不生效」是误判**（v79 是每帧新建纹理，不是上传） |

> `Texture.draw(Pixmap)` 这条上传路径在真机**是通的**（`RadarBitmap.refresh` 一直在用）。
> 所以「CPU 烘蒙版纹理」方案没有被证伪，只是没必要——扫描行已经够用。

## 6. 验证方法（动裁剪之前必须做）

```bash
python3 tools/gate_air_disc_clip.py          # B41：真 Java 类 + 逐像素理想裁剪，10 场景
python3 tools/gate_air_disc_clip.py /path/to/别的版本.java   # 红样本：换一份源码跑
python3 tools/fmo.py gate                    # 四道闸门（B41 在行为闸门里）
```

B41 判据：结构差异（离盘边界 >2.5px 的不一致）== 0、SPILL（画到所有蓝盘之外）== 0、
A/B 与 C/D 镜像场景的小蓝可见像素数一致、完全被盖住的盘必须 0 可见。

**已验证红样本**：把 `git show 516b3577:src/java/.../AirDiscQueue.java` 喂进去 ⇒ 9 项失败
（B 结构差 2679px、C 差 9102px、K/L SPILL 240/195px、A/B 可见 3552 vs 0）。

## 7. 验收清单（真机）

- [ ] 蓝蓝重叠处没有洞、没有月牙
- [ ] 大蓝盘在左：小蓝盘还剩左侧那块（不是消失）
- [ ] 大蓝盘在右、且没包住小蓝圆心：只剩右侧那块、边缘是弧形不是直边长条
- [ ] 大蓝盘完整包住小蓝圆心：小蓝盘只剩外面一条月牙，红露出来
- [ ] 被裁盘与未裁盘**大小一致**（裁剪用的是 `rx/ry`，纹理盘实际半径是 127/128·rx，差 0.8% ≈ 5px，未修）
- [ ] 缩放/拖动地图时不抖、不错位、不闪
- [ ] 红盘（防空/导弹射程）永远画满、不被裁

## 8. 已知遗留（P2，没修，别当新 bug 查）

1. **FBO 降级时 `AirRect` 没有回退**：`RadarOverlay.active==false` 时整盘走 `RadarDisc.drawTint`（α 0.078），
   但裁剪矩形仍是 α=1 的实心块 ⇒ 只有当 FBO 建失败时才出现“纯色块”。概率低，先记着。
2. **纹理盘半径 127/128**：裁剪椭圆用满值 rx ⇒ 裁剪盘比正常盘胖 0.8%（r=600 时 ~5px）。
3. **`RadarOverlay.begin()` 里的“自愈”块是死代码**（`active==true` 已经 return 了），FBO 泄漏只能等 `end()`。
4. **`glClear` 受 scissor 影响**（未验证）：进 drawAirForce 时若残留 scissor，FBO 可能只清一部分 ⇒ 拖影。
5. `AirDiscQueue.MAX=256` 超了就静默丢盘（一屏远小于此）。

## 9. 下一步

- v89 已出包（`/sdcard/Download/fmo_baseline/fmo_v89_air.apk`，md5 `6def569e…`），等真机验收。
- 若真机还有错：**先看是不是上面 §8 的第 1/2 条**，再按 §6 加场景复现，不要直接改代码试。
- 保底方案仍在：v83 纯半径排序（`fmo_v83_air.apk`），不会出洞/错位/消失。

## 10. 建筑蓝盘 / 防空红盘的半径口径（v139 定稿）

- **蓝盘（建筑）** = `DetectRangeReal × DiscScale × zoom`；`DiscScale` 默认 **1**
  （只留给美术性放大），Earth3 的 `iMapScale = DefaultMapScale = 1`，**别再乘它**；
- **红盘（交战）** = `EngageRangeReal × iMapScale × zoom`（有雷达取 bonus）——这条一直是对的；
- **实际探测**（`PlayerFogOfWar.detectEnemyMissions`）是三个硬编码常量，必须与 `DetectRangeReal` 同值，B49 会查；
- 蓝盘"怎么都对不上"的两次根因：① 配置链在 ART 上初始化失败 → 全走兜底（日志 `nBld r=300 s=1.0`、`nCfg ERR`）；
  ② 曾经用固定倍数（DiscScale=8）硬放大，和探测值脱钩。详见 `fmo-air-defense` §7/§8。

