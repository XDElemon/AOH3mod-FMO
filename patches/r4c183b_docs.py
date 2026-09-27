# -*- coding: utf-8 -*-
# R4c182/R4c183b 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🧱（2026-09-19 深夜·**r4c182 抓样定案：`Province.buildings` 在敌省上不可靠 ⇒ r4c183b 改"粘滞军事判据 + 纯情报门"**）
> **r4c182 抓样（诊断版）**：`nIKS` 81 条**全部 `mil=0 bsz=0 b0=-1`**（敌方省建筑列表读出来是**空的**）；`nIKM` 158 条全 `cov=1 ok=1`；`rps=1`/`pls=1` **100% 稳定**；整局只派发 2 次。
> **定案**：门的两次读数在同一次调用内互相矛盾（门读到"有"、10 条指令后 `nIKS` 读到空表）⇒ `Province.buildings` 是**时有时无/被并发清空**的数据源，**不能作为门与评分的地基**。此前 r4c179 的"军事优先"能生效，只是因为恰好抓到数据被装载的瞬间。
> **r4c183b 设计（对数据不可靠的工程应对）**：
>   ① 原扫描体改名 `milRaw(I)Z`（保留原始读数）；
>   ② 新 `hasMilitaryBuilding(I)Z` = **粘滞**：`raw!=0` → 记入 `afMilSeen` 并返回 1；`raw==0` 且记忆命中 → **只有"省非空 ∧ fog=1（可见）∧ 建筑列表非空（数据已装载）"才敢否定并遗忘**，否则沿用记忆返回 1（"读不到"的假阴性不得当证据）⇒ 炸光后你亲眼看着它且数据装载，才会忘；
>   ③ 情报门 `bomberIntelOk` = **纯情报**（雷达网 ∨ 飞机航线 ∨ 玩家可见），**不再要求 mil 读数**（原设计就死在这里）。
> **真值表（r4c183b 修正后，dump 逐条映射）**：`000f if-nez v5 ->0040`（raw!=0 → `:hs_add_true` 记入并 return 1）；raw==0 落 `0011` 查记忆；`001b if-nez v4 ->004c`（未命中 → return 0）；`0021/0027/002b/0031` 任一不满足 → `003e const 1 return`；满足 → remove → `004c return 0`。
> **⚠️ 本批又抓到一次极性写反（第三次）**：粘滞判据的 `if-eqz v5, :hs_yes` 把 `raw==0` 送进了 add+return1 —— 根因是**标签名 `:hs_yes` 暗示了真值**（我在 r4c181 才刚把这条写进铁律🙃）。本轮起：**标签一律用结构名**（`:hs_add_true` / `:hs_false` / `:hs_keep_true`），并在注释里放"反例"行。
> **产物**：dex `d9e759c04c76cf7ff5ee1dd68c75afb0`／apk `0ffa7f30…`；arity BAD=0；八件套通过（Sig 152524，Δ=1）；Earth3=18510；装机 Success；启动自检 crash=0。
> **验收口径**：派发目标 `nAS pk … mil` 应为 1（或至少出现 `nIKM … ok=1` 后立即派发）；`nIKS` 中 `bsz` 仍多为 0 属正常（数据未装载）；若看到 `nIKS … fog=1 bsz>0 mil=0` 且该省曾被记入 ⇒ 应出现遗忘行为。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c183b** | 【修复】`Province.buildings` 不可靠 ⇒ 军事判据改**粘滞**（`afMilSeen`，只在"可见且数据已装载"时才否定）；情报门改**纯情报**（不再依赖 mil）；标签改结构名 | `d9e759c0…` / `0ffa7f30…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c183b**（dex `d9e759c04c76cf7ff5ee1dd68c75afb0`）｜粘滞军事判据 + 纯情报门｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c182**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 32. r4c183b（2026-09-19 深夜）：buildings 不可靠 ⇒ 粘滞军事判据 + 纯情报门

- r4c182 实据：`nIKS` 81/81 `mil=0 bsz=0`（敌省建筑列表为空）、`nIKM` 158 全 ok=1、`rps/pls` 稳定、派发仅 2 次。
- 定案：`Province.buildings` 时有时无（同调用内自相矛盾）⇒ 不能作门/评分地基。
- 修法：`milRaw`（原扫描）+ 粘滞 `hasMilitaryBuilding`（正例即记；仅"可见∧数据已装载"才可否定）+ 纯情报门。
- 又抓一次极性写反（第三次，`if-eqz :hs_yes`）⇒ 标签改结构名，铁律升级。
- 产物：dex `d9e759c0…`／apk `0ffa7f30…`；arity BAD=0；八件套 Sig 152524（Δ=1）；装机 Success；启动自检 crash=0。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十、R4c183b：把"军事判据"从"瞬时读数"改成"粘滞观测"（2026-09-19）

| 项 | 内容 |
|---|---|
| 关键发现 | `Province.buildings` 在敌方省上**常为空**（`bsz=0`），同一次调用内门读到"有"、10 条指令后读到"空" ⇒ 瞬时读数不可用 |
| 判据 | `milRaw`（原扫描）＋ `afMilSeen` 粘滞集合：正例即记；只有"省非空 ∧ fog=1 ∧ 列表非空（已装载）"时才允许否定并遗忘 |
| 情报门 | 纯情报（雷达网 ∨ 飞机航线 ∨ 玩家可见），不再要求 mil 读数 |
| 语义结果 | 侦察过就能打；打过/炸光的省在"你亲眼看到且数据装载"时才会失去军事优先 |
| 产物 | dex `d9e759c04c76cf7ff5ee1dd68c75afb0`／apk `0ffa7f30…` |
| 教训 | 标签名必须用结构名（`:hs_add_true`），禁用 `:hs_yes` 这类暗示真值的命名（第三次极性事故的根因） |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
16. **瞬时读数不可作地基（R4c182→R4c183b）**：`Province.buildings` 在敌方省上时有时无（`bsz=0`），同一次调用内两次读数相反 ⇒ 凡"门/评分"依赖的读数，若曾经观察到自相矛盾，**必须降级为"粘滞观测"**（正例即记；只有当"确定看得到 + 数据已装载"时才可否定）。
17. **标签命名第三次事故（R4c183b）**：`:hs_yes` 这种名字 + `if-eqz` ⇒ 又写反一次。⇒ 硬性规则：**标签只用结构名**（`:xxx_add_true` / `:xxx_false` / `:xxx_keep_true`），并在方法头注释里贴"反例行"。
18. **同调用内自相矛盾时，先怀疑外部可变状态**（R4c182）：门读到1、`nIKS` 读到0（同一 pid，10 条指令之内）⇒ 不是我们的分支问题，而是数据源被并发清空/懒装载。⇒ 探针必须能打印**数据源本体**（`bsz`/`b0`），不能只打印结论（`mil`）。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c183b.smali')
print('SRC ok')