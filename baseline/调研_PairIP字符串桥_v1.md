# PairIP 字符串桥（实测）

## 现象
剥离 PairIP 后启动崩溃：
`AndroidGraphics.getDisplayMode` → `displayManager.getDisplay(null)` NPE。

## 根因
libgdx（classes2）里 20 处形如：
```smali
sget-object v2, Laoc/kingdoms/lukasz/menus/NewGame/Snn/SgVOmPGqg;->JMuHmlSsnIk:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
```
`"display"` 等字符串被 PairIP 抽到 `SgVOmPGqg` 的静态字段，由 PairIP 运行时填充；剥壳后全为 null。

## 结论
- PairIP **不校验签名**：原包仅重签可直接运行（实测）。
- 因此保留 `com.pairip.application.Application` 与 `libpairip*`，只替换 `classes.dex` 即可。
- 替换 dex 时必须**带上 `SgVOmPGqg`**（仅 1 个类），否则 classes2 的 20 处引用断链。

## 已落地
`src/smali/.../menus/NewGame/Snn/SgVOmPGqg.smali` 已入库，作为「PairIP 字符串桥」随 dex 一起构建。
