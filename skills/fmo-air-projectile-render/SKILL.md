---
name: fmo-air-projectile-render
description: FMO 弹体/尾迹渲染（M3a，v125 验收）：人字弹体 = 两根 Images.pix 箭杆（不走贴图）、24 段 pix 方块尾迹沿历史轨迹插值、朝向必须用世界坐标差（屏幕差会被镜头污染）。含 ImageManager.getImage 恒 null 的坑、Image.drawFullCenter 的左上角落笔与逆时针旋转语义、nFX 诊断三件套、B52 静态闸门，以及"闸门绿但不显示"的四条真机事故。
---

# 弹体 / 尾迹渲染（M3a）

> 2026-10-29 **v125 真机验收**：人字弹体 + 24 段尾迹，朝向随目标、镜头平移不影响、转弯尾迹会弯。
> 动这块（画法/朝向/尾迹/颜色/尺寸）之前先读完，这里每条都是真机踩出来的。

## 1. 数据流（谁算什么）

```
AirProjectile（世界坐标/朝向/类型/归属）
  → AirProjectileFx.prepare()（Java，纯数值）    每帧：
       屏幕坐标 (world+cam)*zoom、方向（世界差）、国家色、
       24 段尾迹坐标（沿历史折线插值）、人字两根箭杆的中心/旋转
  → AirProjectileRender.drawAll(SpriteBatch)（smali 例外类，只 setColor + Image.draw*）
       · 尾迹：Images.pix 拉伸成 6→2px 方块，颜色黄→暖白
       · 弹体：Images.pix 拉伸成 4×16 箭杆两根（±38°），颜色=国家色
```

**挂载点**：`AirUx.drawAll` 末尾（画完飞机图标之后、`:try_end_0` 之前），整段在 try/catch 里。

## 2. 硬口径（改之前对一遍）

| 项 | 口径 |
|---|---|
| 朝向 | **必须用世界坐标差**（`p.x - PREV_WX`）。v123 用屏幕坐标差，镜头一平移导弹就"转向" |
| 尾迹 | **沿历史折线按边长插值**（每帧记一个世界点，缓冲 72；方块间距只由尺寸阶梯决定，与速度无关） |
| 历史长度 | 24 点尾迹、每帧 1 点、最多留 72 点 ⇒ 高速转弯也够长 |
| 弹体 | 两根 `4×16` `pix` 箭杆，±38°，尖端在 `中心 + dir*8`；**不用贴图** |
| 颜色 | `Game.getCiv(ownerCiv).getR/G/B()`，`setColor(r,g,b,1.0)`；**alpha 必须独立给 1.0** |
| 尾迹色 | 尾端黄 (1, 0.53, 0.02) → 弹头端暖白 (1, 1, 1)；线性按段号 |
| 旋转 | `Image.drawFullCenter` 的 rot **逆时针为正**；竖直杆 art=90° ⇒ `r = 90 − θ`（θ=屏幕方向，y 向下） |
| 尺寸 | 弹体 26px（`AirProjectileFx.bodySize()`），尾迹 6→2px |

## 3. 四条真机事故（全都"闸门绿、日志正常、屏幕没有"）

### 3.1 计数门写反
`if-gtz v0, :ret` = "大于 0 就跳" ⇒ **有弹直接 return**，一笔不画。
正确：`if-lez v0, :ret`（<=0 才返回）。B52 钉死这一行。

### 3.2 `.registers 16` 静态单参 ⇒ p0 == v15
把 v15 当临时寄存器会 **把 SpriteBatch 覆盖成 int** ⇒ ART 校验失败（VerifyError），
而它被 `AirUx.drawAll` 的 `catch Throwable` 吞掉 ⇒ 不崩、不报、没图。
规矩：这类方法里**只许用 v0–v14**；写 `.registers 16` 之外的更大值也不行（35c 只寻址 v0–v15）。

### 3.3 `ImageManager.getImage(id)` 在本机恒 null
`addImage` 返回合法 id、`getImagesSize()`=684，但 `getImage(id)` 每帧返回 null（不是异常）。
⇒ 新素材一律：
- 用 `Images.pix`（**Image 对象**字段，不是 id）；或
- 自己 `loadTexture` + `new Image(Texture)` 缓存（`AirProjTex.smali` 有现成实现）；
- ⚠️ `loadTexture` 对取不到的文件**静默返回空纹理**——对象非 null 但画出来透明。
  "加载成功"≠"有图"，必须靠 `nFX texfail` / 肉眼确认。

### 3.4 `Image.drawFullCenter` 的两个语义
- `(x, y)` 是**落笔左上角**：想画在中心要传 `x - w/2, y - h/2`；
- `rot` **逆时针为正**（由飞机 `180 − heading` + 左向素材反推）。

## 4. 诊断三件套（一次装机定死）

| 日志 | 放在哪 | 含义 |
|---|---|---|
| `nFX enter n=` | 所有门**之前** | 进了绘制（若没有 = 方法没被调用或计数门写反） |
| `nFX drawn` | 循环末尾 | 循环走完（只有 enter 没 drawn = 循环内抛异常） |
| `nFX noimg` / `nFX texfail` / `nFX ERR` | 取图/异常处 | 取不到对象 / 文件读不到 / 异常类型 |

预算各 20–40 条，避免刷屏拖慢。
**根因级帮凶**：`AirUx.drawAll` 的 `catch Throwable` —— 现在接了 `AirDbgLog.rtCatch`，日志出现 `RTCATCH ex=…` 就是它抓到的。

## 5. 闸门 B52（`gate_behavior.py` 内联）

静态钉死：①计数门必须 `if-lez`；②文件里不许写 `v15`/`p0`；③贴图必须 `AirProjTex.get()` 或 `pix`、禁止 `ImageManager.getImage`；
④尾迹必须 `Images.pix` + `Image.draw(SB;IIII)V`；⑤`AirUx` 的 catch 必须调 `rtCatch`。

## 6. 调参速查

| 想改 | 改哪 |
|---|---|
| 弹体大小 | `AirProjectileFx.bodySize()`（26）与 `BAR_LEN/BAR_W` |
| 人字张角 | `prepare()` 里 `barAng`（38°） |
| 尾迹长短 | `TRAIL`（24）与 `HIST_LEN = TRAIL*3` |
| 尾迹粗细/渐变 | `TRAIL_SIZE[]`、`TRAIL_RGB` 的 0.47/0.98 系数 |
| 方块间隙 | `TRAIL_DIST` 的 1.02 系数（1.0=相接，>1 出缝） |
| 颜色来源 | `prepare()` 里 `Game.getCiv(ownerCiv)` |
