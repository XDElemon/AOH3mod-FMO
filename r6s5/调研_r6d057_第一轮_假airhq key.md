# 调研 · r6d057（第一轮）：为什么"普通陆军师被画成飞机图标"

> 用户观察（关键）：**图标是飞机、点开是正常陆军师、编制里没有飞机、不会动、像"凭空出现"、像"把原先师的图标替换了"**。
> 结论：**不是任务/僵尸问题**，而是 **`ArmyDivision.key` 被"继承"到了不含飞机的新师上**；而绘制层只用 `key` 前缀 `airhq_` 判"是否飞机"。

## 1. 绘制判据（唯一的"画飞机"入口）
`ProvinceDrawArmy.drawProvinceArmyWithFlag`（第 5701 行）：
```java
key = division.key;
if (key != null && key.startsWith("airhq_")) {
    drawAirDivisionAsPlane(oSB, posX, posY, key);   // ★ 只看 key
    return-void;
}
…否则画普通陆军图标
```
⇒ **只要一个师的 key 以 `airhq_` 开头，它就一定被画成飞机**（与它的编制、与任务是否存在都无关）。

## 2. `ArmyDivision.key` 的**全部写入点**（全树 grep `iput-object …ArmyDivision;->key`）
| # | 位置 | 写什么 | 判定 |
|---|---|---|---|
| 1 | `ArmyDivision` 构造器 ×2（206/324） | `CFG.extraRandomTag()`（随机标签） | 正常 |
| 2 | `ArmyDivision`(存档构造器，577) | 从存档 `k` 还原 | 正常 |
| 3 | **`AirForceManager:7011`** | `airhqKey4(...)`（我们的空军师） | 正常（真空军师） |
| 4 | **`Civilization:23331 / 23611`** | **`ArmyRecruit.toArmyKey`** ← 继承"来源师"的 key | ★★ **病灶** |
| 5 | **`InGame_ReorganizeUnits:1087`** | 复制所选师的 key 给重组成的新师 | ★★ 病灶 |
| 6 | **`InGame_Disband:1035`** | 同上（解散后剩余部分继承 key） | ★ 病灶 |

### 病灶 4 逐字（游戏自己的招募）
```java
new ArmyDivision(civID, provinceID, regiments);
nArmyDivision.key = armyRecruit.toArmyKey;      // ← 直接继承来源师的 key
Game.getProvince(provinceID).addArmy(nArmyDivision);
```
⇒ 若"来源师"是空军师（`airhq_…`），**新招出来的普通师就带着 `airhq_` key** ⇒ 被画成飞机。
（我们 r6d045 的栏杆只拦"兵种是航空"，**拦不住"兵种是陆军、但 key 来自空军师"** 这一路 ⇒ 所以它照样出得来。）

## 3. 与用户观察逐条对应
| 观察 | 机制 |
|---|---|
| 图标是飞机 | 该师 `key` 前缀 `airhq_` ⇒ 走 `drawAirDivisionAsPlane` |
| 点开是正常陆军师、编制没飞机 | 它本来就是普通陆军师，只是 key 被继承 |
| 不会动 | 它不属于任何任务：`getAirMissionByKey(key)` 可能为 null；即使非 null，`drawAirDivisionAsPlane` 用**任务的 prev/at** 插值画，而师本身不动 ⇒ 图标钉住 |
| 凭空出现 | 招募/重组新建了一个师，**出生就带 airhq_ key** |
| 像把原先师的图标替换了 | 同名 key 的师共存/顶替 ⇒ 同一位置/同一 key 的图标"变成飞机" |

**附带风险（同一根因）**：其它按 `key` 判定的入口也会被"假 key"误导——全树共 **14 个文件**用到字面量 `"airhq_"`（`MapTouchManager`、`Province`、`BattleManager`、`Game`、`AI_SplitArmy`、`InGame_ProvinceArmy`、`InGame_RecruitSameType$1`、`InGame_ReorganizeUnits$3`、`ProvinceDraw`、`ProvinceDrawArmy`、`Civilization`、`AirMission`、`AirForceManager`、`AirDbgLog`）⇒ 可能出现"点普通师弹出空军界面/空军逻辑掺进陆军"。

## 4. 治本方案（待用户拍板）

### 方案 B（数据层集中清洗，推荐·治本）
在 `AirForceManager` 的每回合/每秒扫描里遍历所有文明/省份的师：
```
若 key 以 "airhq_" 开头，且（getAirMissionByKey(key)==null 或 mission.airhqDivision != 该师）
   ⇒ 该师 key ← CFG.extraRandomTag()      # 摘掉"飞机身份"，图标立即回归陆军
```
- 一处修改，把**所有按 key 判定的入口一起治好**；
- 只改"假身份"的师，真空军师（`mission.airhqDivision == 该师`）不动。

### 方案 A（绘制层身份校验，兜底·零数据风险）
`drawProvinceArmyWithFlag` 判定加一层：
```
if (key.startsWith("airhq_")) {
    m = getAirMissionByKey(key);
    if (m != null && m.airhqDivision == division) { 画飞机; return; }
    /* 否则落到普通绘制 */
}
```

### 方案 C（源头）——暂不推荐
在 `Civilization:23331/23611`、`InGame_ReorganizeUnits:1087`、`InGame_Disband:1035`、`AI_Merge` 里当"要继承 airhq key"时改发随机 tag。改动点 4+ 处、都在游戏核心逻辑里，风险高于 A+B。

## 5. 建议
**A+B 同批交付**：B 治本（清洗假 key，连带修好点击/战斗/AI 的误判），A 兜底（绘制层防漏网）。
验收（可证伪）：
① 地图上不再出现"点开是普通陆军却画成飞机"的图标；
② 抓样：清洗计数**首次 > 0**、其后长期为 0（说明源头已被堵住/或持续产生需再堵源头）；
③ 正常空军师照旧画飞机、照旧能出击。