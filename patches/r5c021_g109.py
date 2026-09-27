# -*- coding: utf-8 -*-
# §G.10.9 r5c021 判读结论：E5 两个根因定案（含对 §G.10.1 订正②的再订正）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
#### G.10.9 r5c021 判读结论（2026-09-24，样本 `r6s5/cur_r5c021.txt`，12.9MB）——**E5 定案**
**实测序列**
```
[读档①] AF_CALL:initgame → AF_LOAD:start → AF_LD:apts=0（内存0个文明条目）
         → nE5 R2dbg（走 dbg 回退）→ R4civ a=0（内存机场0）→ R4dto a=2（存档里有2个机场）
         → t4_enter → done → AF_CALL:resync
[存档]   AF_SAVE:start → W0civ a=1 → W1path s=-（见下方教训）→ W2h/W3main/W4dbg=1 → AF_SAVE:exported ✔
[读档②] AF_CALL:loadfinal → AF_LD:apts=1 → R2dbg → R4civ a=1 → R4dto a=1 → L1hit a=6438 → L3unit a=6438 → unit_add ✔
[游戏中] nA1e p0=73 apts=6（玩家实际 6 个机场）
```
**设备侧铁证**：`files/airforce_save/Airforce_Data.json` **仍不存在**（目录亦不存在）；`files/airforce_dbg/Airforce_Data.json` 被本次存档**刷新为 426B／mtime 20:52** ⇒ 写侧确实执行了，但**主文件写偏**。

##### 结论：两个独立缺陷（都确证）
- **D1｜写读路径不对称（主文件永远读不到）**：写侧用 `FileManager.getSaveType()`；Android 分支＝`FileManager$3`＝`Gdx.files.local(绝对路径)` ⇒ 落到 app 私有目录下的伪路径；读侧用 `Gdx.files.absolute(...)`。
 证据：`W3main=1`（执行了写）＋ `AF_SAVE:exported=1`（成功）**但** `airforce_save/` 仍缺失、两次读档都 `R2dbg`（回退 dbg）。
 ⇒ 玩家读档**永远读 dbg 副本**，且该副本只有在"每次存档成功"时才更新；一旦某次写失败/异常被吞（catch 静默），就会读到更旧的快照。
- **D2｜读档时机（本次会话的"丢失"实锤）**：`AF_CALL:initgame` 链里 `syncAllFromProvinces()` 跑在**省建筑数据可用之前** ⇒ `allAirports` 为空（`apts=0`、`R4civ=0`），而存档里有2个机场（`R4dto=2`）⇒ **这些机场的数据与飞机全部无处挂 ⇒ 丢**。
 对照：`AF_CALL:loadfinal` 链（省数据已就绪）内存1／存档1 ⇒ 正常挂回（`L1hit`/`L3unit`）。
 结合 `nA1e apts=6`：玩家 6 个机场，而读到的最多是1~2个 ⇒ **症状完全吻合**。

##### 本轮两条自审教训（已立纪律）
1. **订正②的再订正**：`AF_LOAD:newgame_skip` 这个日志**在成功路径上也会打印**（LSM:4869→4861 之后是**落穿**到 `:cond_3c8`，中间没有 `goto`）⇒ **不能用它判"新游戏"**；真正的判据是 R1main/R2dbg/R4* 是否出现。
2. **探针寄存器必须"确证持有目标值"**：`W1path` 打印的是 `v4`，实测为 `-`（null）⇒ `v4` 在该点并非路径串（该处真实持有者是别的寄存器）⇒ **该探针无效**。教训：打印"某变量的值"前，先用源码确认那一刻该寄存器的**定义域**，而不是凭旧行号的印象。

##### r5c022 修复方案（待你确认后开工）
- **修 D1**（改 `Save_Airforce_Data` 内 3 行，不动 `FileManager` 本身）：主文件写出从 `FileManager.getSaveType(path)` 改为与读侧一致的 `Gdx.files.absolute(path)`，并在写前 `parent().mkdirs()`；读侧保持 `absolute`。可选：主文件缺失时打一条正式日志（现在靠探针才看得到）。
- **修 D2**（根治，不依赖时序）：在 `AirForceManager` 加静态方法 `ensureAirportMem(I)LAirport`（先在全表按 provinceID 找；找不到则 `registerAirport(省, 省.civID)` 建出并返回）；读档侧"DTO 有、内存无"的分支改为 **调用它拿到机场对象后直接跳到回填块**（复用现成回填代码，只用一个 `goto`）⇒ **即使 sync 少命中也不丢机场与飞机**。
- **验收**：手动存档 ⇒ `airforce_save/Airforce_Data.json` 出现且 mtime 刷新；读档 ⇒ `R1main`（不再 R2dbg）、`R4civ` 与 `R4dto` 相符、`L1hit`/`L3unit` 覆盖全部机场/飞机、游戏内 `nA1e apts=` 与存档一致。
"""
t = io.open(P, encoding='utf-8').read()
if u'#### G.10.9' in t:
    print('已存在')
else:
    B = P + '.pre_g109'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.9 已写入')