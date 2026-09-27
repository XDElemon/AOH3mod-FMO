# -*- coding: utf-8 -*-
# r5c042_verdict.py —— 落盘：自动拦截判决（作战半径）＋参数现状＋三个修法选项
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 39. 自动拦截判决（r5c042 抓样）：唯一卡点＝作战半径 CombatRadius（{TS}）
### 39.1 探针判决（`r6s5/cur_r5c042.txt` / `_tick.txt`）
| 观测 | 值 | 含义 |
|---|---|---|
| `nDSPTc` | 230 | 拦截调度被调用 230 次（入口） |
| `nDSPT0` | 169 | 通过前置闸门（②③④⑤）169 次 ⇒ 61 次被 chaser / 4h 重试窗 / 省无效吃掉 |
| **`nDSPT4`** | **0** | **"无可用机"出口从未触发 ⇒ 机场是有可用飞机的** |
| **`nDSPT8`** | **0** | **从未选中机场 ⇒ 卡在循环内的射程/师键判定** |
| `nDSPT2` | 0 | 终局"无师键"未触发 |
| `dbgAirport` | `ap=5722 pv=1 k0=airhq_226_5722 **ik=null fk=airhq_226_5722**` | 有 FIGHTER 师可用 ⇒ ⑫ 不阻碍 |
| `nDSPT3` / `no-airport` | 169 / 169 | 全部以"选不出机场"结束 |
| `nDR_DSPT ok` | 0 | 成功拦截 0 次 |
⇒ ⑩（无可用机）与 ⑫（无空闲师键）均**不成立** ⇒ **唯一剩下的就是 ⑪ 射程**（排除法成立）。
### 39.2 射程由什么决定（本次调研的关键新增）
`dispatchAutoIntercept` 的射程判定 = `AFM.getProvincesInRange(airport, type)`：以**机场所在省中心**为圆心，
半径 = **`AircraftDataManager.types[type].CombatRadius`**（无数据时默认 500 / 类型缺失时 300），取"省中心距离 ≤ 半径"的省集合。
⇒ 也就是说：**拦截的"够得着"完全由机型数据的作战半径决定**。
### 39.3 参数现状（`assets/game/AirUnit/AircraftTypes.json`，可直接改）
| 机型 | CombatRadius（作战半径） | RadarRange | 备注 |
|---|---|---|---|
| INTERCEPTOR | **500** | 700 | 拦截主力 |
| FIGHTER | **400** | 500 | 次选 |
| BOMBER | **1000** | 340 | **敌机轰炸半径 1000 ≫ 我方拦截 400~500** |
| ATTACKER | 370 | 180 | |
对照：玩家长波雷达 **2400**、普通雷达 **600** ⇒ **雷达看得见，拦截机够不着**（"看得见打不着"）。
实测：敌机当前省 6333–6340（其机场省），玩家机场在 **5722** ⇒ 距离远超 500 ⇒ 每次都超程。
### 39.4 三个修法选项（等用户选）
| 选项 | 做法 | 影响面 | 备注 |
|---|---|---|---|
| **A. 改数据** | 提高 `AircraftTypes.json` 里 INTERCEPTOR/FIGHTER 的 `CombatRadius`（如 500/400 → 1200~2000），必要时同步 `RadarRange` | 全局：`getProvincesInRange` 也被 **AI 打击判定** 使用 ⇒ AI 也能打更远（对称） | 不改代码，可逆；需重打包（我们流程已覆盖 assets） |
| **B. 改逻辑（推荐先做）** | `dispatchAutoIntercept` 的射程判定接受"**敌机当前省 或 其目标省**在我半径内" ⇒ "敌人要来炸我，我提前起飞拦" | 仅影响**自动拦截**，不波及 AI 打击范围 | 实现小：循环内对两省各做一次 `contains` 判定 |
| **C. A+B** | 既加强型数据又加"目标省"判定 | 最大 | 若 B 之后仍觉得"够不着"再上 A |
**建议**：先做 **B**（最小、语义最贴"自动拦截"）；若仍嫌够不着，再按 **A** 调数值。
### 39.5 顺带记录
- 本批节奏：`nDSPTc` 与 `nDSPT0` 的差（230 vs 169）说明**4 小时重试窗/已有 chaser** 确实在压制重复调度（属设计行为）。
- 对称性：同一射程门也作用于 **AI 侧自动拦截**（P3）。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **自动拦截判决（r5c042 抓样）**：`nDSPT4`=0（有可用机）、`nDSPT8`=0（从未选中）、`dbgAirport` 显示 `fk=airhq_226_5722`（有师）⇒ 唯一卡点 = **射程**。
  射程 = `AircraftDataManager.types[type].CombatRadius`（`assets/game/AirUnit/AircraftTypes.json`）：INT **500** / FGT **400** / BMR **1000** / ATK 370；
  玩家雷达 2400/600 ⇒ **看得见打不着**（敌机在其机场省 6333–6340，玩家机场 5722）。
- **可选修法**：A 改数据（提 CombatRadius，全局影响含 AI 打击判定）／**B 改逻辑（推荐先做：接受"敌机目标省也在半径内"⇒提前起飞拦截"）**／C=A+B。等用户拍板。
'''.replace('{TS}', TS)


def append(path, txt, tag):
    s = io.open(path, encoding='utf-8').read()
    if tag in s:
        print('SKIP', path.split('/')[-1])
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(path, 'w', encoding='utf-8').write(s + txt)
    print('OK', path.split('/')[-1])


append(PLAN, PLAN_TXT, '## 39. 自动拦截判决')
append(HAND, HAND_TXT, '自动拦截判决（r5c042 抓样）')
print('DONE', TS)