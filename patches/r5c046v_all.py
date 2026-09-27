# -*- coding: utf-8 -*-
# r5c046v_all.py —— 批 r5c046v：机场解析顺序修正（开关"串机场"）
# 用法: python3 r5c046v_all.py survey | patch | gate [file]
import os, sys, time, re, hashlib
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
BT='/tmp/revs/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
TS=time.strftime('%Y-%m-%d %H:%M')
V1=os.path.join(R6S5,'调研_r5c046v_机场解析顺序_v1全量.md')
V2=os.path.join(R6S5,'调研_r5c046v_机场解析顺序_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046v_机场解析顺序_v3定稿.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')

V1_TXT='''# 调研（第一轮·全量）：机场面板"串机场"（在 A 按开关，B 也跟着变）
> 时点 ''' + TS + ''' ｜ 装机版 r5c046u ｜ 样本 `r5c046u_s1.txt`（26.7 MB）

## 一、症状与证据
| 观测 | 值 | 判读 |
|---|---|---|
| 按键时的解析来源 `afp:src` | **a=12 ×5（src=2＝`selectedAirportProvinceID`）**、a=13 ×2（src=3＝`Game.iActiveProvince`） | 大多数按键走的是**"上次选中的机场"** |
| 按键 `afp:press ap=` | 6258 ×12、5715 ×2 | 玩家在两个机场操作过 |
| 打击键开关 `afp:strike new=` | 0→1→0→1（都在 6258 上） | 写入是"单点"的 |
| 面板读数 `afp:st: sel=` | `-1` ×7975、`6258` ×3005 | `sel`＝`selectedAirportProvinceID`：大量 -1 ⇒ 该字段长期是"没有/陈旧" |

## 二、`pickAirport(I)` 的解析顺序（现状，逐字）
```
① InGame_AirForceOptions.iActiveID（>=-1 且 < size）⇒ list.get(iActiveID)     # 权威：机场列表面板下标
② AFM.selectedAirportProvinceID ⇒ getAirportByProvinceID                     # ★陈旧：只是"被选中的机场"标记
③ Game.iActiveProvince        ⇒ getAirportByProvinceID                       # 实时：跟地图/省份走
④ list.get(0)                                                                # 兜底
```
**注**：`pickAirport` 的 `mode` 形参**不参与选择逻辑**，只用于打日志（`afp:src=a=mode*10+来源码`）。写入路径用 `pickAirport(1)`、显示路径（`getTextToDraw`）用 `pickAirport(2)`，两者解析同一机场。

## 三、三个候选来源的语义（全树取证）
| 来源 | 谁写 | 语义 | 是否随"我打开哪个机场"更新 |
|---|---|---|---|
| `InGame_AirForceOptions.iActiveID` | **`InGame_AirForce$BtnAirport.actionElement`**（`iActiveID = this.airportIndex`） | 机场列表里那一格的下标 | **是**（但只在从"机场列表"进入时设置；关闭面板会被置 -1） |
| `AFM.selectedAirportProvinceID` | 快速栏/地图选择等 | "被选中的机场"（画高亮用） | **否**（会一直停在很久以前那个机场）★问题所在 |
| `Game.iActiveProvince` | `MapTouchManager`（点地图）、快速栏、Civ 菜单等 | 当前打开的省份 | **是** |

⇒ **根因**：解析链把"陈旧的选择标记"排在了"当前省份"之前 ⇒ 打开 B 的面板时，写入/显示仍落在那个陈旧机场上 ⇒ **看起来"所有机场一起变"**。
'''

V2_TXT='''# 调研（第二轮·拓展）：改动面、不变量、失败模式
> 时点 ''' + TS + '''

## 1. 改动面
- 只动 `InGame_AirForceOptions$BtnMission.pickAirport(I)` 内部**两个候选块的先后**（②③互换），来源码语义不变（2 仍↔`selectedAirportProvinceID`、3 仍↔`Game.iActiveProvince`）。
- 影响面：`pickAirport` 的全部调用者＝`actionElement`（写入：巡逻键/打击键）＋`getTextToDraw`（显示）＋（r 批探针）⇒ 一处修改同时修正"写入目标"与"显示来源"。
- 不影响：`executeAIAssignment` 的派发门、老线逻辑、AI 智能线、`selectedAirportProvinceID` 自身的其它用途（画高亮等）。

## 2. 不变量
- `iActiveID` 仍**优先**（从机场列表进入面板时最权威，且它是游戏本体 `InGame_AirForceOptions` 取机场的同一判据）。
- `list[0]` 兜底仍在最后；解析失败（无机场）仍返回 null（`afp:n`）。
- 不新增静态字段、不提高 `.registers`。

## 3. 失败模式
| 现象 | 原因 |
|---|---|
| 仍然"串机场" | 又退回陈旧来源（门禁㊻ 断言顺序） |
| 打开某机场面板却解析到别的省 | `Game.iActiveProvince` 与该面板不一致（下一次实测据此再调） |
| 解析不到机场 | `afp:n` 会记录（本次样本 0 次） |

## 4. 与其它批次的关系
- 与 r 批（四级兜底）是**顺序修正**，不是推翻；与 u 批（派发门）无关。
'''

V3_TXT='''# 调研（第三轮·全量拓展·定稿）：r5c046v 可施工定稿
> 时点 ''' + TS + ''' ｜ 基线树 `/tmp/revs`（＝r5c046u 装机版反汇编）

## 1. 编辑清单（1 处）
| # | 位置 | 锚点 | 动作 |
|---|---|---|---|
| **H1** | `BtnMission.pickAirport(I)` | `:cond_26` 起、经 `selectedAirportProvinceID` 块与 `Game.iActiveProvince` 块 | **两块互换**（`iActiveProvince` 在前，`selectedAirportProvinceID` 在后），`v6` 来源码随各自语义保留；`cond_32` 标签名沿用 |

## 2. 结果真值表（按键时机）
| 情形 | 现在解析到 | 修后解析到 |
|---|---|---|
| 从机场列表进入 B 面板 | B（iActiveID 有效） | B ✔（不变） |
| 从省份/地图进入 B 面板（`iActiveID` 无效） | 上次选中的机场 A ✗ | **B** ✔（`Game.iActiveProvince`） |
| 两者都无效 | `list[0]` | `list[0]`（不变） |

## 3. 门禁
- **㊻ `check_pickairport_order.py`**：断言 `pickAirport` 内 `Game;->iActiveProvince` 的第 1 次出现**早于** `selectedAirportProvinceID` 的第 1 次出现。负样本＝r5c046u 树（会报错）。

## 4. 验收（可证伪）
1. 在机场 A 把「自动打击」切成"开"，再打开机场 B 的面板 ⇒ **B 仍显示"关"**（除非 B 本来是开）；
2. 在 B 上按一次 ⇒ **只有 B 的开关变化**，回到 A 时 A 保持你原先设的状态；
3. `afp:src` 中出现 `a=13`（来源 3＝`Game.iActiveProvince`）为主，不再是 `a=12` 为主。
'''

PLAN_SEC='''

---

## 93. 【施工·已装机】r5c046v —— 机场面板解析顺序（开关"串机场"）
**根因**：`BtnMission.pickAirport(I)` 的候选顺序把 `AFM.selectedAirportProvinceID`（"被选中的机场"标记，会陈旧）排在 `Game.iActiveProvince`（当前打开的省份，实时）之前 ⇒ 打开 B 的面板时，按键写入与文本显示都落在**陈旧的那个机场**上，看起来"所有机场一起变"。
**修法**：两块互换（`iActiveID → iActiveProvince → selectedAirportProvinceID → list[0]`），来源码语义不变。
**门禁**：新增 ㊻（顺序断言）。
**验收**：在 A 上切换后打开 B ⇒ B 显示自己的状态；在 B 上按键只影响 B；`afp:src` 以 `a=13` 为主。
'''

INCR_ADD='''
## 37. 施工·已装机 r5c046v（机场解析顺序）
- **症状**：在机场 A 上切换自动打击开关，换到机场 B 后 B 的显示/状态也跟着变（"串机场"）。
- **根因**：`pickAirport(I)` 把 `selectedAirportProvinceID`（陈旧标记）排在 `Game.iActiveProvince`（当前省份，实时）之前；样本证据：按键时 `afp:src a=12`（src=2）5 次、`a=13` 2 次。
- **修法**：顺序改为 `iActiveID → Game.iActiveProvince → selectedAirportProvinceID → list[0]`（来源码语义不变）。
- **门禁**：新增 ㊻（顺序断言，负样本＝r5c046u 树）。
- **验收**：A 上切换后打开 B ⇒ B 显示自身状态；B 上按键只改 B；`afp:src` 以 `a=13` 为主。
'''

def survey():
    for p,t in ((V1,V1_TXT),(V2,V2_TXT),(V3,V3_TXT)): open(p,'w',encoding='utf-8').write(t)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC); open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[survey OK] v1=%d v2=%d v3=%d plan=%d incr=%d'%(os.path.getsize(V1),os.path.getsize(V2),os.path.getsize(V3),os.path.getsize(PLAN),os.path.getsize(INCR)))

OLD='''    :cond_26

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v4, :cond_32

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_32

    const/4 v6, 0x2

    goto :goto_48

    :cond_32

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_3e

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_3e

    const/4 v6, 0x3

    goto :goto_48'''
NEW='''    :cond_26

    # r5c046v H1: 先"当前打开的省份"（实时），再退回"上次选中的机场"（会陈旧）
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_32

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_32

    const/4 v6, 0x3

    goto :goto_48

    :cond_32

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v4, :cond_3e

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_3e

    const/4 v6, 0x2

    goto :goto_48'''

def patch():
    src=open(BT,encoding='utf-8').read(); before=hashlib.md5(src.encode()).hexdigest()[:12]
    if src.count(OLD)!=1: print('[FAIL] 锚点命中 %d 次'%src.count(OLD)); return 1
    src=src.replace(OLD,NEW,1)
    bak=BT+'.pre_r5c046v'
    if not os.path.exists(bak): open(bak,'w',encoding='utf-8').write(open(BT,encoding='utf-8').read())
    open(BT,'w',encoding='utf-8').write(src)
    print('BtnMission md5 %s -> %s'%(before,hashlib.md5(src.encode()).hexdigest()[:12])); return 0

def gate(path=None):
    f=path or BT
    src=open(f,encoding='utf-8').read()
    m=re.search(r'\.method public static pickAirport\(I\).*?\.end method',src,re.S)
    body=m.group(0) if m else ''
    bad=[]
    if not body: bad.append('㊻ 找不到 pickAirport')
    else:
        a=body.find('Game;->iActiveProvince')
        b=body.find('selectedAirportProvinceID')
        if a<0: bad.append('㊻ 没有 Game.iActiveProvince 分支')
        if b<0: bad.append('㊻ 没有 selectedAirportProvinceID 分支')
        if a>=0 and b>=0 and a>b: bad.append('㊻ 顺序错误：selectedAirportProvinceID 仍排在 iActiveProvince 前面')
    for x in bad: print('FAIL %s'%x)
    print('㊻ r5c046v: %d 处可疑'%len(bad))
    return 1 if bad else 0

if __name__=='__main__':
    mode=sys.argv[1] if len(sys.argv)>1 else 'survey'
    if mode=='survey': survey(); sys.exit(0)
    if mode=='patch': sys.exit(patch())
    if mode=='gate': sys.exit(gate(sys.argv[2] if len(sys.argv)>2 else None))
    print('usage: r5c046v_all.py survey|patch|gate [file]')