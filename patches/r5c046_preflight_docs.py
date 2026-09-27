# -*- coding: utf-8 -*-
# r5c046_preflight_docs.py —— 施工前体检落盘：调研档 + 计划书 §73 + INCR §23（仍不写码）
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DOC=os.path.join(R6S5,'调研_r5c046_施工前体检_v1.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

SURVEY = '''# 施工前体检：P2b（发射基地钉死）+ S1（敌方航线不可见）
> 时点 ''' + TS + ''' ｜ 基线 r5c046i ｜ **本批只体检，不写码**
> 目的：**防止逻辑写错**（逐极性/逐真值表）＋ **保证寄存器分配合理**（逐方法寄存器画像）

## 1. 范围锁定
- P2b：方案 B（静态字段）＋ 机场预筛 ＋ 轰炸线/攻击线**都做**；掷骰稀释不动。
- S1：**只隐藏非玩家任务的航线连线**（按 `isMyMission` 判定）⇒ 自动覆盖 PATROL/侦察等全部非玩家任务。

## 2. 锚点唯一性（全部实测 = 1 次命中）
| 编号 | 锚点（逐字） | 命中 |
|---|---|---|
| F1 | `    .field public static a1bDivNew:I` | 1 |
| S1 | `    check-cast v2, …Airport;` ＋**空行**＋ `    if-eqz v2, :sc_ap_next` | 1 |
| S2 | `    const-string v14, "nP2pick"` ＋空行＋ `    invoke-static {v14, v13}, …e5i(…)V` | 1 |
| D1 | `    iget v7, v2, …provinceID:I` ＋空行＋ `    sget-object v3, …AirType;->BOMBER:…` | 1 |
| B1 | `    check-cast v2, …Airport;` ＋**无空行**＋ `    if-eqz v2, :bs_ap_next` | 1 |
| D2 | `    iget v7, v2, …provinceID:I` ＋**无空行**＋ `    sget-object v3, …AirType;->ATTACKER:…` | 1 |
| L1 | `    invoke-virtual/range {v6 .. v11}, …Image;->drawLinePts(…)V` | 1 |
| H1 | `    .method private static a1DivCount(I)I`（新 helper 插入点） | 1 |
> 注意：S1/B1 的空行差异是实测的（缓冲行数不同），补丁脚本必须逐字对齐，否则会"锚点0命中"。

## 3. 寄存器画像（按方法边界实测；写=赋值/读取=使用）
| 方法 | `.registers` | 关键画像 | 结论 |
|---|---|---|---|
| `a1Scan` | **16（上限）** | v8：基本型写6／引用写0；v5：引用5／基本2（混）；v13：引用5／基本30（混）；v14：引用6／基本24（混） | **用 v8** 存"机场省 id + 预筛布尔"（int 家族，零冲突）；v3 已是 BOMBER 可复用 |
| `a1bScan` | **16（上限）** | **v5/v6/v8 全程未被写**（未使用）；v13 混用 | **用 v8**（int）＋**v5**（放 ATTACKER 引用） |
| `a1Dispatch` | 14 | v7：基本型；v11：基本型（日志用 0） | v7↔v11 比较，无需提高寄存器 |
| `a1bDispatch` | **16（上限）** | v7/v8 均基本型；v8 已用于日志码 | v7↔v8 比较，无需提高 |
| `ProvinceDrawArmy.drawAirForceMissions` | **16（上限）** | v1 = AirMission（1947 起未再写）；**v2 在 2143 之后到 2159 之前是死的**（颜色已入 setColor） | 用 v2 存布尔；**不需要提高 .registers** |
| 新 helper `a1AirOk` | — | 参数 p0/p1 + 1 个局部 | `.registers 4` |

## 4. 编辑清单（可施工级；全部"锚点唯一 + 不升寄存器"）
| # | 文件 | 锚点 | 动作 | 寄存器 |
|---|---|---|---|---|
| E1 | AFM | F1 | 追加两个字段：`a1PkApPid:I`、`a1bApPid:I` | — |
| E2 | AFM | H1（前插） | 新增 helper `a1AirOk(Airport,AirType)Z`（内部调 `pickIdleDivKey` 判非空） | `.registers 4` |
| E3 | AFM | S1 | `iget v8, v2, provinceID` → `sput a1PkApPid` → `a1AirOk(v2, v3)` → `move-result v8` → **`if-eqz v8, :sc_ap_next`** | v8、v3 |
| E4 | AFM | S2（前插） | 探针 `nP2ap`（`iget v8…provinceID` ＋ `const-string v14,"nP2ap"` ＋ `e5i(v14,v8)`） | v8、v14 |
| E5 | AFM | D1 | `sget v11, a1PkApPid` → **`if-ne v7, v11, :a1d_next`** | v11 |
| E6 | AFM | B1 | `iget v8, v2, provinceID` → `sput a1bApPid` → `sget-object v5, ATTACKER` → `a1AirOk(v2, v5)` → `move-result v8` → **`if-eqz v8, :bs_ap_next`** | v8、v5 |
| E7 | AFM | D2 | `sget v8, a1bApPid` → **`if-ne v7, v8, :abd_next`** | v8 |
| E8 | PDA | L1 | `isMyMission(v1)` → `move-result v2` → **`if-eqz v2, :p3_noline`**（跳线），并在 `drawLinePts` **之后**补标签 `:p3_noline` | v2 |

## 5. 极性真值表（**本批最易写反的 5 处**，逐条给"错法/后果"）
| 分支 | Dalvik 语义 | 本批正确写法 | 写反的后果 |
|---|---|---|---|
| E3/E6 预筛 | `if-eqz` = 等于0才跳 | `if-eqz v8, :next`（v8=0 表示**无闲置师**） | 用 `if-nez` ⇒ 只有"有机"的机场被跳过 ⇒ **AI 完全不出动** |
| E5/E7 绑定 | `if-ne` = 不等才跳 | `if-ne v7, v11, :next`（机场≠被评估机场 ⇒ 跳过） | 用 `if-eq` ⇒ 只跳过被评估机场、其它机场反而放行 ⇒ **F-C 照旧** |
| E2 helper | `if-eqz` = 等于0（null）才跳 | `if-eqz v0, :no`（key==null ⇒ 返回0） | 写反 ⇒ 预筛结论整体翻转 |
| E8 航线守卫 | `if-eqz` = 等于0才跳 | `if-eqz v2, :p3_noline`（isMyMission==0=不是我的 ⇒ 跳过画线） | 用 `if-nez` ⇒ **给自己的任务不画线、给敌人的照画**（完全反了） |
| 已存在的㉛类 | `if-ltz`=<0跳 / `if-gez`=>=0跳 | 不变（已有门禁㉛守护） | 血案 13 重演 |
> 补充：**"未设(-1)才做"⇒ `if-ltz`；"负值归零"⇒ `if-gez`；"等于0才跳"⇒ `if-eqz`；"非0才跳"⇒ `if-nez`。**

## 6. 逻辑副作用与预期方向（供抓样判读）
| 改动 | 预期观测方向 |
|---|---|
| 机场预筛 | `k=1`（该机场无闲置师）空转 ⇒ **趋近 0**；派发成功率相对上升（掷骰不再浪费在空基地） |
| 硬绑定 | `nP2ap` 与 `nA1 ap=` **100% 一致**；攻击线 `k=9 ap` 与 `k=0 ap` **100% 一致**；出动基地分布更"按被评估机场" |
| 总产出 | **不应下降**（预筛只把"必然失败的尝试"提前）；若下降 >30% ⇒ 预筛口径写错 |
| 航线隐藏 | 纯视觉：敌方任务无连线；我方任务连线照旧；**自动拦截不受影响**（侦测链独立） |
| 渲染层 | **不在渲染方法里加日志**（每帧刷屏）⇒ 视觉验收 + 代码门禁 |

## 7. 门禁与验证计划
- **新增 ㉜ `check_airport_bind.py`**：断言 ①两字段已声明 ②`a1Scan`/`a1bScan` 机场头有 `sput` 与 `a1AirOk` 调用且为 `if-eqz … :next` ③`a1Dispatch`/`a1bDispatch` 有 `sget` + `if-ne … :next` ④`nP2ap` 探针存在。
  **负样本**＝当前基线 ⇒ 应全部报缺（预期 6 处）；修后 0。
- **新增 ㉝ `check_route_hide.py`**：断言 PDA 中 `drawLinePts` 之前紧邻 `isMyMission` + `move-result v2` + `if-eqz v2, :p3_noline`，且其后存在标签 `:p3_noline`。负样本＝当前基线 ⇒ 1 处；修后 0。
- **回归门禁**：㉙ regtype（35→35，不得新增）、㉚ zeroclamp（0）、㉛ bestgate（0）、arity（BAD 0）、`check_dangling.sh`（新标签必须被引用、无悬空）。

## 8. 回滚点与风险
- 回滚：`AirForceManager.smali.pre_r5c046`（含本轮前状态）、`ProvinceDrawArmy.smali.pre_r5c045`；本次施工前再各留一份 `.pre_r5c046p2b`。
- 风险 1：`a1AirOk` 在省份缺失时 —— `pickIdleDivKey` 内部已有 null 检查 ⇒ 返回 null ⇒ 预筛判"无"（安全）。
- 风险 2：字段默认 0 —— 派发器各只有 1 个调用点，且调用前同一次迭代必写字段 ⇒ 不会读到陈旧值；万一读到，`if-ne` 会跳过所有机场 ⇒ **不出动（安全侧）**，不会"错基地出动"。
- 风险 3：多机场文明下出动更分散（预期改善，但手感变化需抓样确认）。

## 9. 施工顺序（下一批执行）
①备份 ②E1/E2 ③E3/E5（轰炸线） ④E6/E7（攻击线） ⑤E4 探针 ⑥E8（PDA） ⑦新增㉜㉝并跑负样本 ⑧跑全部回归门禁 ⑨汇编/装配/装机 ⑩外部独立核验 + 基线重置 ⑪用户实测抓样判读。
'''

PLAN_SEC = '''

---

## 73. 【施工前体检】P2b + S1 逻辑与寄存器核查（不写码）
### 73.1 锚点唯一性
7 个锚点全部**实测 1 次命中**（含空行差异：`a1Scan` 锚点**有空行**、`a1bScan`/`a1bDispatch` **无空行**）。
### 73.2 寄存器画像（关键结论）
- `a1Scan`：**v8 为纯 int 家族（引用写 0）** ⇒ 机场 id 与预筛布尔都用 v8；`v3` 已是 BOMBER 可复用；**无需提高 .registers(16)**。
- `a1bScan`：**v5/v6/v8 全程未被使用** ⇒ v8 存布尔、v5 存 ATTACKER 引用；**无需提高 .registers(16)**。
- `a1Dispatch`(14) / `a1bDispatch`(16)：用既有 int 暂存 v7/v11、v7/v8 比较，**无需提高**。
- `ProvinceDrawArmy.drawAirForceMissions`(16)：`v1`＝AirMission（1947 起未再写）；**v2 在 2143–2159 之间是死的** ⇒ 用它存布尔；**无需提高**。
- 新 helper `a1AirOk`：`.registers 4`。
### 73.3 5 处最易写反的极性（逐条钉死）
预筛 `if-eqz`（无闲置师⇒跳）｜绑定 `if-ne`（非指定机场⇒跳）｜helper `if-eqz`（key 为 null⇒返 0）｜航线守卫 `if-eqz`（**不是我的**⇒跳画线）｜既有㉛类 `if-ltz`/`if-gez` 不动。
### 73.4 编辑清单与验证
E1–E8（字段/helper/a1Scan 头/探针/a1Dispatch 头/a1bScan 头/a1bDispatch 头/航线守卫）＋ **新增门禁㉜㉝**（负样本＝当前基线应报 6 + 1 处）＋ 回归㉙㉚㉛/arity/dangling。
抓样预期：`k=1` 空转→≈0；`nP2ap`↔`nA1 ap=` 100%；攻击线 k=9↔k=0 的 ap 100% 一致；产出不塌；敌方无连线而我方有连线。
> 详见 `r6s5/调研_r5c046_施工前体检_v1.md`。
'''

INCR_ADD = '''
## 23. 施工前体检（P2b + S1，不写码）
- 锚点唯一性：7 处全部 1 次命中（注意 `a1bScan`/`a1bDispatch` 锚点**无空行**、`a1Scan` **有空行**）。
- 寄存器：`a1Scan` 用 **v8**（纯 int，引用写 0）＋复用 v3=BOMBER；`a1bScan` 用 **v8/v5**（两者全程未使用）；`a1Dispatch` v7↔v11；`a1bDispatch` v7↔v8；`drawAirForceMissions` 用 **v2**（2143–2159 之间已死）。**全部无需提高 .registers**（其中 4 个方法已是 16 上限）。
- 新 helper `a1AirOk(Airport,AirType)Z` = `pickIdleDivKey != null`，`.registers 4`。
- 5 处极性钉死：预筛 `if-eqz`｜绑定 `if-ne`｜helper `if-eqz`｜航线守卫 `if-eqz`（**不是我的⇒跳画线**）｜既有 ㉛ 类不动。
- 新增门禁 ㉜ `check_airport_bind.py`、㉝ `check_route_hide.py`（负样本＝当前基线预期 6+1 处命中）。
- 渲染层不加日志（每帧刷屏）⇒ 航线隐藏靠肉眼 + 代码门禁验收。
- 下一步：开工（E1–E8 + 门禁 + 汇编/装配/装机 + 独立核验）。等用户发令。
'''

def main():
    open(DOC,'w',encoding='utf-8').write(SURVEY)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] survey=%d plan=%d incr=%d' % (os.path.getsize(DOC), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()