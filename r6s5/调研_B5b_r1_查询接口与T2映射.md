# 调研 · B5b R1：类别查询接口 + T2 顶部映射（全量）

> 2026-10-12｜批次＝r6d271（B5b：查询接口 + 探针；纯 dex）｜用户裁定：**顶部大类先按 T2**，以后拓展（陆军/工业/建筑/海军）再调。

## 1. 目标
把 r6d270 已落地的 `Category`/`SubTag` 数据做成**可查询接口**，并定义 **T2 顶部大类映射**；为 B5c 顶部栏 UI 与未来"按类别加成"提供调用面。**本批不改 UI、不改数据文件。**

## 2. T2 顶部大类（本批落码的映射）
| 顶部 id | 中文 | 来源（band） |
|---|---|---|
| land | 陆军 | army、government |
| air | 空军 | air |
| civil | 民用 | foundation、industry、electronics、nuclear、society、economy、agriculture、future |
> 注：band 集不变（11 个）；顶部只是查询层映射。以后要"陆军/工业/建筑/海军"更细分级：改这一张表 + id 集即可（代码一处）。

## 3. 查询接口设计（4 个静态方法，均挂 TechnologyTree）
1. `getTopCategoryByCategory(Ljava/lang/String;)Ljava/lang/String;` —— band→top 纯函数（含 null→civil）。
2. `getTopCategory(I)Ljava/lang/String;` —— 节点下标→top（越界→civil；读 `lTechnology[i].Category` 后走①）。
3. `getTopTabs()Ljava/util/List;` —— 返回有序 tab 列表 `[land, air, civil]`（B5c 顶部栏直接消费）。
4. `dumpTopCategories()V` —— 探针：逐条 `nTOP id=.. top=..`（×75）+ 一行汇总 `nTOPSUM land=.. air=.. civil=..`。

## 4. 消费面（未来）
- B5c：`getTopTabs()` 画顶部按钮；`getTopCategory(i)` 决定节点归入哪栏；
- 加成/筛选（B13 等）：直接读 `Category`/`SubTag`/`getTopCategory(i)`。

## 5. 期望计数（用于验收）
land=21（army20+gov1）、air=47、civil=7（1+1+1+2+2）；合计 75。