# 钢丝 · 科技专题包（源码+素材）v1.19.2

> 用途：研究与"抄写"HOI4 科技系统所需的全套文件（科技树/研究机制/界面/图标/文本）。
> 来源：《Hearts of Iron IV》v1.19.2 (Operation Postern a729 d245)，本机全量副本。
> 说明：本包为"科技专题"自包含副本；完整 common/ 预览见 hoi4_source_preview/。

## 目录速览
- source/common/technologies/ —— 科技树本体（13 文件：air_techs、industry、infantry、support、armor、NSB_armor、artillery、naval、MTG_naval、MTG_naval_Support、bba_air_techs、electronic_mechanical_engineering、special_projects_tech）
- source/common/defines/00_defines.lua —— 机制常量（研究相关：BASE_RESEARCH_SLOTS、BASE_TECH_COST、BASE_YEAR_AHEAD_PENALTY_FACTOR、MIN_RESEARCH_SPEED 等）
- source/common/technology_tags/、technology_sharing/ —— 科技标签 / 科技共享
- source/common/scientist_traits/、special_projects/ —— 科学家特质 / 特殊项目（1.16+ 研究扩展）
- source/interface/ —— 科技界面定义（Technologies.gfx、countrytechnologyview.gui/.gfx、countrytechtreeview.gui/.gfx、technology_sharing.gfx）
- source/localisation/english/、simp_chinese/ —— 科技文本（research_l_*.yml、technology_sharing_l_*.yml）
- assets/gfx/interface/technologies/ —— 科技图标（~39MB，.dds）
- assets/gfx/interface/techtree/ —— 科技树背景 / 标签 / 文件夹图标 / 动画（~29MB）
- assets/gfx/interface/archetypes/ —— 装备原型图标（272K）
- assets/gfx/interface/（含 tiles/）—— research_top_win.dds、wonderweapons_bg.dds、tiled_research_bg.dds 等单图

## 抄写指引
- 机制数值：defines → BASE_RESEARCH_* / BASE_TECH_COST 等
- 科技条目结构：technologies/*.txt（folder / categories / path(leads_to_tech + research_cost_coeff) / research_cost / start_year / 修正符效果 / ai_will_do）
- 研究界面：interface/countrytechtreeview.gui 等
- 图标复用：assets/gfx/interface/technologies/、techtree/

（生成：2026-10-10）
