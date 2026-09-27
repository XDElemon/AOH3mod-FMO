# 调研（第一轮·全量）：③开关关着仍出击 + ④AI 彻底不出动
> 时点 2026-09-26 15:55 ｜ 装机版 r5c046t（apk `a6ae8230…`／dex `8451644e…`）｜ 样本 `r5c046t_s1.txt`（16.9 MB）｜ 仅调研

## 一、样本硬证
| 观测 | 值 | 判读 |
|---|---|---|
| `afp:strike new=` | `0`(75408) → `1`(112873) → `0`(133062) → **`1`(143157 最后)** | 最后一次把打击键切到**关**（`autoStrikeOff=1`） |
| `nA4d civ=226` | 行 **887375 / 1025488 / 1043231 / 1160711** | **全部在 143157 之后** ⇒ 关着仍进了玩家战时分支 ★③成立 |
| `nA2L` | 64 | 非玩家机场也进了老线战时分支（同一原因） |
| `nP2pick a=-1` | **205 / 205** | AI 一个目标都选不到 ★④成立 |
| `nP2dif/nP2set/nP2ap` | 59 / 204 / 203 | AI 扫描在跑，卡在"可见性" |

## 二、③ 的真因：装机版里的"开关门"逻辑是坏的（逐字，`executeAIAssignment(I)V` @8206）
```
8284 if-eq  v3, v4, :cond_65      # mode==AI ⇒ 派发
8295 if-gez v4, :cond_65          # ★playerCiv>=0 ⇒ 直接跳到"派发"（跳过后两条检查）
8297 iget   v3, v2, Airport->civID
8299 if-ne  v3, v4, :cond_68      # 这两条只有 playerCiv<0 时才走得到 ⇒ 形同虚设
8301 iget-boolean v3, v2, Airport->autoStrikeOff
8303 if-nez v3, :cond_68          # （同上，形同虚设）
8305 :cond_65 invoke-direct executeAIAssignmentForAirport
```
⇒ **只要世界里存在玩家（playerCiv≥0），所有机场一律派发**，`autoStrikeOff` 与"是否玩家机场"两道检查被短路 ⇒ 玩家关着开关也出击、AI 机场也进老线。
（`BtnMission.getTextToDraw` 已核：`autoStrikeOff==0 ⇔ 文本"开"`，**文本极性本身没错**，错的是门。）

## 三、④ 的真因：我自己写的 helper 取错了寄存器（`a1VisOk`）
```
invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)…Province;   # ✗ p2＝文明 id
```
签名是 `a1VisOk(Airport, int pid, int civ)` ⇒ **p1＝pid、p2＝civ**。用 `p2`（civ）当省 id 去 `getProvince` ⇒ 取到 null/错省 ⇒ 全部候选判"看不见" ⇒ AI 静默。
（另核：老线 `aiPickVisibleTarget` 用 `(省中心x, 省中心y, airport.civID, 1.0f)`；两个 `aiVis*` 均返回布尔 1=可见；AI 侧确实有全覆盖雷达 ⇒ 修好这一处，AI 立即恢复。）
