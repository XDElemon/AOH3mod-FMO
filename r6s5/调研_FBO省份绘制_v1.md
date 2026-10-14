# 调研 · FBO 省份绘制（群友情报核实）v1
> 2026-10-13｜只读调研｜结论先行：**FBO 全链在本包里其实已接好，移动端只是被一个开关默认关掉**。

## 一、群友所指
"修复 FBO 省份绘制以带来更高的性能" —— 官方 PC 侧的性能补丁。核实结果：本包（v119 底座）中 FBO 机制的代码**没有缺**，缺的是"打开"。

## 二、全链清点（实测，全部存在）
1. **开关层**
   - `assets/game/gameValues/GameValues.json`：`MOBILE_DISABLE_FBO: true`。
   - `GameValues.updateSettingsFBO()`：若 `!CFG.isDesktop()` 且 `MOBILE_DISABLE_FBO` ⇒ 把 `SettingsManager.FBO_PROVINCES / FBO_PROVINCE_NAMES` 置 **false**（移动端强制关）。
2. **使用层**（缓存命中时全屏贴纹理，替代逐省直绘）
   - `RendererGame$3.drawWithoutScale_Provinces` / `drawCurrentScale`：当 `FBO_PROVINCES && texture!=null && inGame && activeMapMode==MODE_DEFAULT` 时 `FBOProvincesBG.drawPBG(sb, alpha)`。
3. **生成层**（把省份画进 FrameBuffer）
   - `ProvinceDraw ~12873`：位置变化 或 `fboNumToGenerate_PB ≥ FBO_NUM_TO_GENERATE_PB(=14)` 时重建：
     `new FrameBuffer(RGBA8888, GAME_W, GAME_H)` + `new Texture(...)` → `begin()` → `drawProvinces_Standard_LandProvinces_InGame(sb, 1.0f)` → `end()` → 取 colorBufferTexture；否则走直绘路径。
4. **失效层**
   - `FBOProvincesBG.redrawnProvinces()`（fog 变化 / 省份易主 / Formable / ColorPicker 等调用）把 `lastPosX` 设哨兵强制重建；`updateFBO()` 每帧 tick。
   - `ProvinceDraw` 选中态变化（afSig）→ `disposeProvincesTexture()` 触发重建。
5. **设置界面**
   - `SettingsProvince.updateSettings_FBO*()` 可运行时切换两个开关；`Settings_Menu` 的 FBO 设置行只在"桌面 或（移动且 !MOBILE_DISABLE_FBO）"时显示。

## 三、为什么现在没生效（三段论）
1. 移动端 `MOBILE_DISABLE_FBO=true` ⇒ 启动时两个 FBO 开关被强制 false；
2. `FBO_PROVINCES=false` ⇒ 使用层走直绘、生成层不建缓存；
3. 即使手动把 `FBO_PROVINCES` 置 true，若 `MOBILE_DISABLE_FBO` 仍 true，`updateSettingsFBO()` 还会把它按回去（在设置加载/应用时）。

## 四、开启方案（待用户拍板）
- **A（推荐·最接近官方开关）**：assets `MOBILE_DISABLE_FBO` 改 false ＋ 运行期令 `FBO_PROVINCES=true`（SettingsManager 默认 false，需在设置应用后补 true；可顺带 `FBO_PROVINCE_NAMES` 可选）。
- **B（纯 smali）**：改 `updateSettingsFBO()`：非桌面分支改为"允许时置 true"。
- **C（体验优先）**：只开 `FBO_PROVINCES`（省份底色缓存），`FBO_PROVINCE_NAMES` 先不动，分批验证。

## 五、风险与验证建议
- 风险：移动 GPU 兼容性未知（官方为何禁用未公开）；缓存纹理 ≈ GAME_W×GAME_H×4B（2318×1080≈10MB/份，含备用份）；首帧/移动后重建可能有一帧代价；fog/斜纹等叠加层是否与缓存层一致需实测。
- 验证：开/关各跑一局，对比"拖动地图 FPS / 缩放流畅度 / 省份配色与雾效正确性 / 无闪退"；异常一键回退归档。
- 建议流程：三轮调研（定稿锚点/开关路径/回退）→ 门禁+模拟器 → 装机 A/B → 由用户裁定是否保留。