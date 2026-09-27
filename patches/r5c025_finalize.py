# -*- coding: utf-8 -*-
# r5c025_finalize.py —— (a) 截断调试日志 + 基线置0  (b) 写增量包 INCR.md（只给子代理看这一份）
import io, os, glob

D = '/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files'
n = 0
for p in glob.glob(D + '/airdbg*.txt'):
    try:
        io.open(p, 'w', encoding='utf-8').close()
        n += 1
    except Exception as e:
        print('skip %s: %s' % (p, e))
print('[清日志] 截断 %d 个 airdbg*.txt' % n)
io.open('/sdcard/GLG/历史23/r6s5/live_baseline.txt', 'w').write('0')
print('[基线] live_baseline.txt = 0')

P = u'/sdcard/GLG/历史23/build_inputs/r5c025/INCR.md'
os.system('mkdir -p /sdcard/GLG/历史23/build_inputs/r5c025')
T = u'''# r5c025 增量包（INCR）— 只审这一份，不要整包反编译、不要全树扫描

## 0. 本批意图
P0 = **只读诊断探针**（0 行为改动）。目的：查清"AI 为何用不了空军"到底卡在哪一门。
不改任何判据/逻辑，只加 8 组日志 + AirDbgLog 里 5 个 helper。

## 1. 变更清单（共 4 个文件）
### 1.1 AirDbgLog.smali —— 末尾追加 5 个 helper（+ 1 个私有工具，共 6 个方法）
- `private static p0Tag(String,String)String`：拼 `prefix+suffix`（StringBuilder）
- `public static p0Civ(int civID, String prefix)`：打印 `prefix civ=/apts=/ms=/diff=/pl=`
  （`pl` 读 `Game.player.iCivID`，带 `if-eqz` null 守卫，标签 `:p0c_pl`）
- `public static p0Air(Airport ap, String prefix)`：打印 `prefix civ=/ap=/mode=/q=/tot=/rem=/it=/ft=/bm=/at=`
  （`mode` 取 `Airport$Mode.ordinal()`；4 个机型计数取 `airport.aircraft.get(type).size()`）
- `public static p0War(Airport ap, int war, String prefix)`：打印 `prefix civ=/war=/ms=`
- `public static p0Empty(int emptyFlag)`：打印 `nA4f empty=<0/1>`
- `public static p0Mis(AirMission m, String prefix)`：打印 `prefix civ=/tgt=/type=/ms=`
- 全部输出走既有 `e5i(String,int)`（**刻意不用 e5s**：其判空极性写反，非 null 会打 "-"）

### 1.2 AirForceManager.smali —— 5 处插桩（每处 1~2 条指令）
1. `update(I)` 入口（`.param p1,"civID"` 之后、`getAirportsForCiv` 之前）：`const-string v0,"nA1e"` + `invoke-static {p1,v0}, AirDbgLog->p0Civ`
2. `executeAIAssignment(I)` 循环内（`if-ne v3, v4, :cond_20` 之后、`invoke-direct ...executeAIAssignmentForAirport` 之前）：`const-string v3,"nA2m"` + `invoke-static {v2,v3}, p0Air`
3. `executeAIAssignmentForAirport` 入口（`if-eqz v0, :cond_3c` 之后）：`const-string v3,"nA4d"` + `invoke-static {p1,v0,v3}, p0War`
4. 同方法内 `assignedAircraft.isEmpty()` 的 `move-result v5` 之后、`if-nez v5, :cond_3b` 之前：`invoke-static {v5}, p0Empty`
5. `strikeTick_A1` 入口（`.registers 4` 之后、`Game->player` 读取之前——**在玩家门之前**）：`const-string v0,"nA5t"` + `invoke-static {p0,v0}, p0Civ`
6. `registerAirport` 尾部（`:cond_62` 之后、`AircraftDataManager->load()` 之前）：`const-string v3,"nA9r"` + `invoke-static {v0,v3}, p0Air`

### 1.3 Airport.smali —— 1 处插桩
`.method public updateBuild()V` / `.registers 5` 之后：`const-string v0,"nA3b"` + `invoke-static {p0,v0}, p0Air`

### 1.4 AirMission.smali —— 1 处插桩
`.method private airCombatTick()V` / `.registers 16` 之后：`const-string v0,"nA6c"` + `invoke-static {p0,v0}, p0Mis`

## 2. 已知事实（供判断，不要自行反编译全包）
- 探针一律**无分支**（唯一分支＝`p0Civ` 里 `Game.player` 的 null 守卫，命中即跳过）
- 插桩点寄存器均"块内写、块前已死、块后不再读"（`incr_audit` 已逐块核过）
- 插入位置**不在任何 `invoke-*` 与其 `move-result*` 之间**（本批专用 selfcheck 真错=0）
- 门禁：`check_calls` ✅×4；`arity` BAD=0；八件套 `Invoke/Regs/Init/Range BAD 合计=0`；Sig Δ=+60（＝helper 52 + 插桩 8）

## 3. 请只回答这 5 个是/否问题
1. `p0Civ` 里 `if-eqz v2, :p0c_pl` 的**守卫方向**是否正确（player 为 null 时跳过读取，避免 NPE）？
2. `p0Air` 里 `aircraft.get(type)` 之后 `check-cast` 成 `List` 再 `size()`，在"该机型一台都没有（空表）"时是否会 NPE？
3. 插桩 4（`move-result v5` 之后插 `p0Empty`）是否**没有**破坏 `invoke-interface ...isEmpty()` 与 `move-result v5` 的配对？
4. 插桩 5（`strikeTick_A1` 入口、玩家门之前）是否会把 `v0` 提前写坏，从而影响紧随其后的 `sget-object v0, Game->player`？（期望：不会，因为该指令立刻重写 v0）
5. 6 个新 helper 的 `invoke-static {..}` 参数个数与签名是否一一匹配（p0Tag 2／p0Civ 2／p0Air 2／p0War 3／p0Empty 1／p0Mis 2）？

## 4. 局限
本包**只要**回答上述 5 问与"是否发现明显逻辑错误"；不需要跑工具链、不需要 dex diff、不要扩范围。
'''
io.open(P, 'w', encoding='utf-8').write(T)
print('[INCR] 已写入 %s (%d bytes)' % (P, os.path.getsize(P)))