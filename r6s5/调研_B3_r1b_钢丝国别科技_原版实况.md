# 调研 · B3 R1b：钢丝"国别科技"原版实况（本机完整版实测）

> 2026-10-10｜对象：`/sdcard/GLG/历史23/Hearts of Iron IV`（完整版：原版框架 + DLC 内容）
> 目的：验证"主要国家专有科技树 / 小国通用科技树"是否为原版设计（Q1 调研）

## 0) 结论速览
1. **国策系统：成立** —— 无专属国策树的国家自动落"通用国策树"（`generic_focus`，`default = yes`）；主要国家+有内容国家有专属树（`common/national_focus` 共 81 个文件）。
2. **科技系统：不成立** —— 原版全文明**共用同一棵科技树**；普通科技的 `allow` 块里**没有任何国家条件**（13 个技术文件全扫、放宽 15 行窗口复核）；`allow_branch` 只做 DLC 门禁；所有 `tag / original_tag / is_major` 都出现在 `ai_will_do`（AI 优先权重），不是可研究性闸门。
3. 原版"国家专属科技"的真实形态 = **隐藏科技**：`allow = { always = no }`，由国策/事件授予，例：
   - `NOR_rikstanken_tech`（挪威·事件坦克，NSB_armor.txt:1876）
   - `MUN_anti_tank_development_tech` / `MUN_horska_artillery`（捷克系，infantry.txt:3134/:3149 附近）
   - `SWI_saint_bernard_tech`、`NORDIC_supportCollaboration_tech`（support.txt:1391+，注释 "Only obtained through Focus"）
   - 另有 RAJ / PHI / CZE 系列（infantry.txt 多处）
4. 特殊项目：`allowed` 块全为 `has_dlc`；国家差异在国家专属效果/AI 权重（GER Amerika-Bomber 效果 air:434；ITA 喷火坦克模板 land:45；`is_major = no → factor 0`，land:256 注 "Pointless unless we are big enough"）。
5. ⇒ 若你在别处见过"整棵专有科技树"，那基本是 **mod** 的实现（mod 用 tag/allow 门禁）；原版没有。

## 1) 关键证据索引
- `common/national_focus/generic.txt`：`id = generic_focus`、`default = yes`
- `is_major` 全在 ai_will_do：MTG_naval.txt:1045/1049（重船体：minor=0）、air_techs.txt:31/64/92…
- `allow_branch` 例：air_techs.txt:626（GOT）、infantry.txt:999（NOT AAT）——均为 DLC 门禁
- tag 权重例：MTG_naval.txt:61（ENG×4）、bba_air_techs.txt:1909（USA/JAP×3）、air_techs.txt:692-701（GER/SOV）

## 2) 对 B3 的映射
- "每国专有"：AoH3 为单棵全局树 ⇒ 必须加**国别代码门禁**（唯一闸门 `Civilization.getAvailableToResearch` @8257）才能实现"中国只研究中国分支"。原版用"隐藏科技+国策授予"绕开树结构，我们不采用该路线。
- "小国通用"两案待拍板：
  - **甲**：另立一条"通用"分支（不含具体型号）。
  - **乙**：小国直接挂靠路由主国分支（日→美系、德→欧系、印→俄系、兜底俄系）＝Q3 原案；省节点、与美术路由同表。

## 3) 裁定记录（2026-10-10）
- Q2：CN 的"SU-27或J-11"取 **J-11**。
- Q3：次要国家美术路由维持（日→美、德/法/英/意→欧、印→俄…，小国兜底俄系）。
- Q1：调研完成（本文档）；A/B 节奏待拍板。

## 4) 待办
- 拍板：Q1 A/B（建议 A：资源先行、门禁 B3b 紧跟）｜小国 甲/乙（建议乙）。
- 随后启动 R2（树布局与节点接线）+ 门禁批所需的"国家分组表"设计（全文明 → 4 组映射）。