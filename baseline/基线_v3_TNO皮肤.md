# 基线 v3：TNO 主界面皮肤打通（实测通过）

## 结论
主菜单底部三按钮的底板由 `TnoButton` 绘制，取图来自 `Images.tnoButtonEdge` / `tnoTvButtonEdge`，
对应资源 `assets/ui/tno/*.png`（13 张）。初版 DEMO 缺这 13 张 → 按钮只有文字。
从仓库快照 `assets_r6t007/ui/tno/` 取回补齐 → 装机后自动出现暗金底板（用户已验证）。

## 坐标（无需改代码）
`TnoBlock.addButton` 公式：
```
strip = GAME_WIDTH * 5/11
each  = strip / 3
x0    = (GAME_WIDTH - strip)/2
x     = idx*each + x0      → 约 0.3485 / 0.5 / 0.6515 × 屏宽
```
真机截图实测 0.358 / 0.516 / 0.671，误差 1~2% —— 位置本来就是对的。

## 组成（fmo_tno.apk）
- 基线：初版 DEMO（保留 PairIP，manifest 不动）
- 代码：仓库 5,530 类（含 PairIP 桥类 `SgVOmPGqg`）
- 素材：TNO UI 13 张 + 加载图 63 张（黑边）+ 新环
- md5：aae393fd9fd8cb59f2e0aeebfc10317c

## 教训
「缺 UI」的答案不一定在外部素材包里；本仓库快照里就有原作者做的同名皮肤图。
