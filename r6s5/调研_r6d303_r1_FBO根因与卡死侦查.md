# 调研 R1 · r6d303（FBO 未生效根因 + 右端卡死侦查启动）

## A. FBO「装了却没开」根因链（实测）
- 现象：r6d302 装机后 diag 探针 `nFBO p=false n=false`（省份/地名皆 false）。
- 已排除：资源无关——最终 APK 内 `MOBILE_DISABLE_FBO:false` 已字节级确认；构造器默认值 `FBO_PROVINCES` 也已改 true（v5）。
- 关键代码：`Game.loadSettings()`：
  1) `new SettingsManager()`（默认值）
  2) `loadSettingsDefault()`
  3) 若 `settings/Settings.txt` 存在 → **`Json.fromJson(SettingsManager.class, file)` 反序列化并整体替换 `Game.settingsManager`**（布尔字段会被文件里的旧值覆盖=true→false 或 false→false）。
- 结论：**用户设备上存在（或曾存在）设置存档**，其 FBO 两布尔为 false，反序列化把我们的默认值按回 false；与 `MOBILE_DISABLE_FBO` 无关（且 `FileManager$3` 的 local 根为 App 内部存储，shell 无法直读验证，但链路足以解释）。
- 附带发现：`updateSettingsFBO()` 只会"禁止"，不会"启用"（启用入口仅有设置界面开关）。

## B. 右端卡死（用户报告）初步侦查
- 拖动链：`MenuManager.actionMove(II)` →`menu_MoveInnerElements` 分支 →`actionMove_MenuInnerElements`：X 方向用 `updateSliderMenuPosX` 标志做"起锚/跟进"两态；`Menu.updateMenuPosX` 在撞边时会把标志置回并夹紧目标；`Menu.update()` 每帧把 `iNewMenuPositionX` 同步进 `iMenuPosX`。
- 已知历史坑提醒：`actionDown` 是按"元素类型 switch(1..4)"分派（按钮/滚动条/文本滚动/滑条）；标签引用 vs 定义、以及"按下命中按钮时是否进入菜单滚动模式"是最可疑的两处。
- 当前证据不足以定论（现有探针只能看到按下/抬起坐标与元素信息，看不到拖动中间态）。
- 本批对策：植入"看门狗"`nSCW`（每30帧一条：menuPos/上限/目标/可滚动位），复现一次即可定位断点。
