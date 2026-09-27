# -*- coding: utf-8 -*-
# r5c046g_docs.py —— 第 7 次修正记录：计划书 §67 + INCR §17
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

PLAN_SEC = r'''

---

## 67. 【第 7 次修正】把"记忆/时间戳"从雾标志解绑（G1/G2）+ 装机假阳性（r5c046g）（''' + TS + r'''）
### 67.1 样本 `r5c046f_s3.txt`（8.7 MB）判读
`nP2dif`=78、`nA2L`=89 ⇒ 入口在跑；但 `nP2s`/`nP2frq`/`nP2mil`/`nA1 ap=` **全 0**
⇒ **候选累加为空**：既没选中候选，也没调用派发器（守卫修好后 pid=-1 不再乱调）。
### 67.2 根因（结构性，与雾语义哪一边无关）
- `a1Scan`：`getFogDrawArmy()` 只在**一个**取值上写 `a1Known`（6/4），另一个取值直接跳去用旧值；实测候选省恒为后者 ⇒ **从未写过** ⇒ 随后 `&0x4`（已记录）门把**全部候选**拒掉。
- `a1bPick`：时间戳只在其中一个分支盖 ⇒ 候选全部"无戳" ⇒ 后续 `if-ltz`（无戳即跳过）把全部候选拒掉。
### 67.3 修法（与雾语义无关）
| # | 位置 | 改动 |
|---|---|---|
| **G1** | `a1Scan` | **删掉"跳过写入"的那条分支** ⇒ 每个候选都刷新记忆（6/4）；雾从此**只影响"是否用旧情报"**，不再决定"能不能记住" |
| **G2** | `a1bPick` | `:bp_invis` 分支**也盖时间戳** ⇒ 两个分支都盖 |
| **G3** | `a1Scan :sc_pick` | 新增探针 **`nP2pick`**（每机场打印选中 pid；-1=没选到）⇒ 下轮可直接分辨"没候选"还是"派发失败" |
### 67.4 产物
- dex `f2f35e8a2fd30c49c682882c2e06635a`（`result=true`）｜apk `57536e58f156a635f9e64d051773707d`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`｜真悬空 `0`｜㉚ `OK`
- 装机 `Success`；**独立复核**：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；基线已重置
### 67.5 【流程发现·重要】`install.sh` 会假报"装机完成"
- 第一次 `install.sh r5c046g --yes` 打印了 `✅ 装机完成`，但**设备上仍是上一版**（apk `a7713d55…`／dex `c0160893…`＝r5c046f）；
- 原因：设备侧 `cmd`/`activity` 在安装窗口期多次 `Failure calling service … Failed transaction`，第 4 步核验与第 5 步 force-stop 都失败，脚本仍判过；
- ⇒ **新增铁律：装机后必须用外部独立命令核 `pm path → md5sum apk → unzip classes.dex | md5sum` 三者对齐，才允许交付**；脚本自报不采信。
- 处理：重跑 install，独立复核通过后才交付。
'''

INCR_ADD = r'''
## 17. 第 7 次修正（r5c046f → r5c046g）
- 样本 s3：`nP2dif`=78/`nA2L`=89，但 `nP2s`/`nP2frq`/`nP2mil`/`nA1 ap=` 全 0 ⇒ 候选累加为空、也没调派发器。
- 根因：`a1Known` 写入 / `a1Gsee` 盖戳被绑在 `getFogDrawArmy()` 的某个取值上，而 AI 候选省恒为另一取值 ⇒ 永远记不住 ⇒ `&0x4` / 有戳 两道门把全部候选拒掉。
- 修：**G1** a1Scan 删掉"跳过写入"分支（无条件记录 6/4）｜**G2** a1bPick 两个分支都盖戳｜**G3** 新增 `nP2pick` 探针。
- 产物：dex `f2f35e8a2fd30c49c682882c2e06635a`｜apk `57536e58f156a635f9e64d051773707d`｜独立复核 ✔｜基线已重置。
- **流程铁律**：`install.sh` 会假报装机完成（设备 cmd 服务失败时），必须外部独立核 apk/dex md5 三者对齐。
'''

def main():
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] plan', os.path.getsize(PLAN), 'INCR', os.path.getsize(INCR))

if __name__ == '__main__':
    main()