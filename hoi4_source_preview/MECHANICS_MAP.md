# 钢丝"可抄源码"地图（脚本层索引）v1.19.2

> 用途：要抄/移植任何机制，先在此定位文件。全部为文本文件，可直接读取与复制。
> 来源：本机全量副本（/sdcard/GLG/历史23/Hearts of Iron IV），版本 1.19.2 (Operation Postern a729 d245)

## 一、"程序代码类"文件清点（整个游戏只有这些）
- common/defines/00_defines.lua —— 4,712 行机制常量（科研槽位、公式系数、AI 权重……带英文注释）
- common/defines/00_graphics.lua、common/defines/01_career_profile.lua
- script/：ai_diplomacy.lua、autoexec.lua、diplomacy.lua、tweaks.lua、utils.lua
- （工具）tools/history_viewer 等 3 个 js
- 无 cpp / cs / py 等其它代码文件

## 二、机制主库 common/（90+ 项，重点索引）
- 科研/科技：technologies/（13 文件）、technology_tags/、technology_sharing/、scientist_traits/、special_projects/
- 国策：national_focus/｜决议：decisions/｜国家精神：ideas/、idea_tags/
- 脚本逻辑：scripted_effects/、scripted_triggers/、scripted_guis/、scripted_localisation/
- 事件钩子：on_actions/
- 动态修正：dynamic_modifiers/、triggered_modifiers.txt、modifiers/、modifier_definitions/
- 军事：doctrines/、combat_tactics.txt、equipment_groups/、units/、wargoals/、weather.txt 等
- AI：ai_areas/、ai_strategy/、ai_strategy_plans/、ai_templates/、ai_focuses/、ai_navy/、ai_equipment/、ai_personalities.txt
- 国家/政治：characters/、country_leader/、unit_leader/、ideologies/、factions/、bop/、peace_conference/、resistance_activity/、resistance_compliance_modifiers/、occupation_laws/、autonomous_states/
- 建造/资源/地形：buildings/、resources/、state_category/、terrain/、strategic_locations/
- 军工/情报：military_industrial_organization/、intelligence_agencies/、intelligence_agency_upgrades/、operations/、raids/
- 规则/常量：defines/、script_constants/、script_enums.txt、game_rules/、difficulty_settings/
- 其它：bookmarks/、frontend/、map_modes/、medals/、ribbons/、continuous_focus/ 等（common/ 全览）

## 三、其它顶层目录
- events/ —— 事件实例（机制触发的真实用法）
- history/ —— states / countries / units 初始数据
- interface/ —— GUI 定义（.gui + gfx 引用）
- localisation/ —— 文本（含机制提示语）
- map/ —— 省份/战略区/铁路等地图数据
- dlc/、integrated_dlc/ —— DLC 脚本与数据

## 四、"抄写"提示
- 机制 = 常量（defines）+ 结构（technologies/ideas/...）+ 触发/效果（scripted_*）+ AI/界面
- 引擎级过程（战斗逐帧结算、寻路等）不在这层；但数值与规则基本可由这些文件 + 实测定性复现
- 对当前"科技树移植"项目：重点 = technologies/*.txt + defines（研究常量）+ ideas/ 里科技相关加成

（生成：2026-10-10；配套预览包：hoi4_source_preview/）