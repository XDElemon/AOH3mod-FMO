# -*- coding: utf-8 -*-
# §G.8：E5「存档丢飞机」调研记录 + r5c021 诊断批计划；并回填 §G.7 的 E5 行
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### G.8 E5「存档丢飞机」调研记录（2026-09-24）＋ r5c021 诊断批计划

**一、结构（已逐段读实）**
- 存档 DTO：`Save_Airforce{ airports:List<Save_Airport>, airunits:List<Save_AirUnit>, missions }`
 ⇒ **飞机不在机场里**，而是**平铺**在 `airunits`，每条带 `airportID`。
- `Save_Airport` 无飞机字段（只有 level/capacity/mode/prefPayload/…/strikePaused）。
- **存档侧**（`SaveGameManager` 432-478）：先 `airports.add(dto)`，再遍历 `airport.aircraft`（Map<AirType,List>）把所有 AirUnit 追加进 `airunits` ⇒ 结构对称。
- **读档侧**（`LoadSavedGameManager` 4159-4205 / 4330-4380）：① 逐 DTO 机场：`aircraft.clear()` 后按 4 个 AirType 补空表；② 逐 AirUnit：在机场表里找 `provinceID == unit.airportID` 的机场，塞进 `aircraft[type]` ⇒ 逻辑看起来**正确**。
- **登记侧**：`registerAirport(prov,civ)`（AFM:4908）＝取/建该 civ 的 List 后 add ✔；`syncAllFromProvinces()`（AFM:5304）＝**先 clear `allAirports`**，再扫全部省的 `buildings` 找 `AIRPORT_BUILDING_ID` → `registerAirport(省, 省.civID)` ✔；`Province` 三处建筑钩子也会调 `registerAirport`。
 ⇒ **代码静态看不出"只留 1 个机场"的原因**，必须**探针定位**。

**二、抓样侧已有的强线索（live 证据）**
| 样本 | `nA1e … apts=`（该文明登记机场数） | `nA1b ap=` 去重值个数 |
|---|---|---|
| `cur_r5c018c.txt` | **11** | — |
| `cur_r5c019b.txt` | **12** | **61** |
| `cur_r5c020e.txt` | **1** | **2**（6335×610、6256×6） |
⇒ 最近这一局里**玩家的空军体系只剩 1 个机场登记**，与"多机场读档后只剩一个有飞机"的现象**高度吻合**（也可能那一局是新开档——需用户确认）。

**三、r5c021 诊断批（只加探针、零行为改动，供一次定位）**
| # | 位置 | 打印 |
|---|---|---|
| 1 | `loadSave_Airforce` 入口 | `nE5 L1 dtoApts=<airports.size()> dtoUnits=<airunits.size()>` |
| 2 | 读档末尾 | `nE5 L2 apts=<Σper-civ 机场数> air=<Σ各机场 aircraft 条目> allciv=<allAirports.size()>` |
| 3 | AirUnit→机场匹配失败处 | `nE5 L3 miss a=<unit.airportID> t=<type>` |
| 4 | `syncAllFromProvinces` 扫描中每个命中机场建筑 | `nE5 S1 p=<省> civ=<civ> b=<buildingID>` |
| 5 | `syncAllFromProvinces` 末尾 | `nE5 S2 hit=<命中机场数> allciv=<allAirports.size()>` |

**判读规则**：`L1 dtoApts` 若就是 1 ⇒ 存档写入侧/存档文件的问题；若 dtoApts 正常而 `L2 apts=1` ⇒ 读档或 sync 覆盖；若 `L3 miss` 出现 ⇒ 飞机被丢弃在匹配环节；`S1 hit` 若只有 1 ⇒ 是"省建筑表里只有一个机场"（游戏态/建筑登记问题，而非读档）。

**四、需要用户回答（用于缩窄）**
1. 这次（r5c020e 那局）是**读旧档**还是**新开一局**？
2. "丢飞机"是**每次读档都发生**，还是偶发？丢的是"**只剩 1 个机场有飞机**"还是"飞机数量变少"？
"""
t = io.open(P, encoding='utf-8').read()
if u'### G.8 E5' in t:
    print('已存在，跳过')
else:
    B = P + '.pre_g8'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    t = t.replace(u'| **E5** | 杂项：存档丢飞机／空军区／tick 节奏（`k=23/24`） | ⬜ 未做 | — |',
                  u'| **E5** | 杂项：**存档丢飞机（优先，见 §G.8）**／空军区（炸飞机，待讨论）／tick 节奏（`k=21` 实测≈每游戏日一次，待钉 `k=23/24`） | 🔬 调研完成，待诊断批 | — |')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.8 已写入，E5 行已回填')