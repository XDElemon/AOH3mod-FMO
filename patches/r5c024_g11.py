# -*- coding: utf-8 -*-
# §G.11 建造队列保存不住 —— 调研记录（r5c024 待开工）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
## G.11 建造队列「保存不住」调研（2026-09-24）
### G.11.1 事实（源码实证）
| 项 | 事实 |
|---|---|
| 队列本体 | `Airport.buildQueue:Ljava/util/List;`；元素类型＝**`AirUnit$AirType`**（`Airport.startBuild(AirUnit$AirType)Z` 里 `List.add(p1)`） |
| 队列语义 | `startNextBuild()`：`isEmpty()` → 取 `remove(0)` → `getBuildTime(type)`；`cancelBuild()` 也操作它；UI（`InGame_AirForceOptions$BtnSelect`）遍历它显示 |
| 存档 DTO | `SaveGameManager$Save_Airport` 字段：provinceID／civID／totalAircraft／totalLost／level／maxCapacity／mode／**buildTurnsRemaining**／**buildTurnsTotal**／buildingType／prefPayload／strikePaused（我们加的）—— **没有 `buildQueue`** |
| 结论 | **队列从未被写入存档，也从未被读回**（读档后只有构造器给的**空表**）⇒ 排队中/待建的机型全部丢失。正在建造的那一项因 `buildingType`＋`buildTurns*` 有存而能保留。 |
### G.11.2 修复方案（r5c024，极小改动、向后兼容）
1. **DTO 加字段**（照抄同文件既有范式，带 `Signature` 注解以便 libGDX 还原泛型）：
```
.field public buildQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = { "Ljava/util/List<", "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;", ">;" }
    .end annotation
.end field
```
2. **写侧**（`SaveGameManager.Save_Airforce_Data`，在 `strikePaused` 写入之后、`airports.add` 之前；借空闲 **v9**）：
```
iget-object v9, v6, Airport->buildQueue
iput-object v9, v7, Save_Airport->buildQueue
+ 探针 nE5 Qsave a=<队列长度>（同点，借 v8/v9；此后 v8 立即被覆盖，安全）
```
3. **读侧**（`LoadSavedGameManager.loadSave_Airforce`，在 `autoStrikeOff` 回填之后、`aircraft.clear()` 之前；借 **v12**，不新增寄存器）：
```
iget-object v12, v7, Save_Airport->buildQueue
if-eqz v12, :e5_aptq_skip      # null（旧档）⇒ 保留构造器的空表
iput-object v12, v11, Airport->buildQueue
+ 探针 nE5 Qload a=<队列长度>（仅非 null 路径，借 v13/v12）
:e5_aptq_skip
```
### G.11.3 4 情形模拟（纪律⑮，写完必核）
| 情形 | 行为 |
|---|---|
| ① 旧档（无该字段）⇒ 读出 null | `if-eqz` 跳 `:e5_aptq_skip` ⇒ 保留构造器空表（与现状一致，**不炸**）✔ |
| ② 新档、队列 3 项 | iput 挂上反序列化的 `ArrayList<AirType>` ⇒ `startNextBuild` 可继续 ✔ |
| ③ 新档、队列空 | 挂一个空 ArrayList（等价）✔ |
| ④ 队列对象被 sync 重建的 Airport 丢弃 | 与既有语义一致（sync 会重建 Airport，本批不改变该行为；若实测发现"读档后一层 sync 又把队列清掉"，再按 E5 同法处理） |
### G.11.4 验收口径
存档（机场有排队建造项）⇒ 读档 ⇒ 机场面板里**队列还在**且顺序不变；抓样看 `nE5 Qsave` 与 `nE5 Qload` 数值一致。
"""
t = io.open(P, encoding='utf-8').read()
if u'## G.11 建造队列' in t:
    print('已存在')
else:
    B = P + '.pre_g11'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.11 已写入')