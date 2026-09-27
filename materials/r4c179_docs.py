# -*- coding: utf-8 -*-
# R4c179 归档：专档 / 交接v2 / 设计v2 / 常驻速查 / 源码留痕
import io, os, shutil

D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🔥（2026-09-19 夜·**r4c179：r4c178 系列“没反应”的真因＝一条跳转极性写反**）
> **用户直觉命中**：“过了这么多轮都没反应，我感觉像逻辑反了” ⇒ 只读复核 `strikeScore` 即得实锤。
> **根因（全局唯一一处）**：`strikeScore` 里 `if-nez v1, :ss_econ`（v1＝`hasMilitaryBuilding`）语义是“v1≠0 就跳经济档” ⇒ **军事省反而拿 100000+ 大分（最差）、非军事省落下拿“距离×随机”小分（最优）** ⇒ 轰炸机永远优先挑“最近的、无军事建筑的”省。
> **真值表回放**：v1==1（军事）→ 跳 :ss_econ → 100000+（永不入选）；v1==0 → 落下 → 距离×[0.5,1.1]（必胜）。
> ⇒ 与实测 100% 吻合：`nAS pk` 15 次全 `mil=0`；`nMIL id=5721 mil=5`（5721 确被认出是军事省，只是拿了最差分）；各机场都只打最近 1~2 省。
> **修法**：`if-nez` → `if-eqz v1, :ss_econ`（**1 条指令**）；指令级 dump 复核：`001b: if-eqz {v1} -> 001f` / `001d: mul-float/2addr {v0,v2}` / `001e: return {v0}` ✓。
> **同批其它新代码复核（均正确）**：`isMilIdx`（9 条 if-eq）、`hasMilitaryBuilding`（集合/表 或-判据）、`isBomberSlotFull`（`if-lt v0,2`）、`pickStrikeTarget`（`cmpg-float`+`if-gez` 取最小；同省/被占/我方/在飞各守卫）、攻机路径（`if-ne p3,1` → 纯距离不变）。
> **半成品清理**：`r4c178k`（航程取证）与 `r4c178l`（候选层 `nSC`）**均未落盘**（grep 无痕），仅删脚本 `/tmp/r4c178k.py`、`/tmp/r4c178l.py`。
> **产物**：dex `12b6be3c98c1aa1d56defc898c77efb3`／apk `f423d8c6e1368d352dd1976378a0718d`；arity BAD=0；八件套通过（Invoke/Regs/Init/Range BAD=0，Sig 152506 Δ=0 符合“只改极性不加 invoke”）；Earth3=18510；装机 Success；设备 dex 一致；**启动自检 crash=0**；基线已重置（1004800434）。
> **验收口径（抓一次即可）**：`nAS pk … mil=1` 首次出现，且目标指向军事省（如 5721）。
> **新增铁律**：① **跳转极性是本项目最高发的致命错误**（`if-nez/if-eqz`、`if-gtz/if-lez`、`if-lt/if-ge` 已累计 5+ 次）⇒ 任何 if-* 改动必须写“真值表注释”+正反例双回放；② **探针必须打在“被改动分支的两侧”**——本轮探针只打“被选中目标的 mil”（结果端），而极性写反在结果端看起来就是“判据失效”（mil 恒 0），两者无法区分 ⇒ 候选层/入口层探针优先。
"""

# 1) 专档
with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

# 2) 交接 v2
s = io.open(JJ, encoding='utf-8').read()
lines = s.split('\n')
out = []
NEW_ROW = u'| **r4c179** | 【关键修复】`strikeScore` 军事档分支极性写反（`if-nez`→`if-eqz v1, :ss_econ`）＝之前所有“轰炸机只挑最近省/不炸军事省”的真因 | `12b6be3c…` / `f423d8c6…` | ⏳ **现役·待实测** |'
NEW_L0 = u'| **现役装机** | **r4c179**（dex `12b6be3c98c1aa1d56defc898c77efb3`）｜军事判据＝索引集合∨查表；**已修复 `strikeScore` 军事档分支极性写反**（轰炸机从此真优先军事省）｜装机后启动自检 crash=0 ✓ |'
n0 = n1 = 0
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = NEW_L0; n0 += 1
    out.append(L)
    if L.startswith(u'| **r4c178b**'):
        out.append(NEW_ROW); n1 += 1
s = '\n'.join(out)
s += u"""

## 28. r4c179（2026-09-19 夜）：strikeScore 极性写反修复——“r4c178 系列没反应”的真因

- 根因：`strikeScore` 中 `if-nez v1, :ss_econ` 写反 ⇒ 军事省走经济档（100000+）、非军事省走距离档 ⇒ 轰炸机永远挑最近的非军事省。
- 修法：一条指令 `if-eqz v1, :ss_econ`；指令级 dump 已复核（`001b: if-eqz {v1} -> 001f`）。
- 同批其它新代码（isMilIdx / hasMilitaryBuilding / isBomberSlotFull / pickStrikeTarget / 攻机路径）逐条真值表回放，均正确。
- 半成品 r4c178k（航程）与 r4c178l（候选层 nSC）未落盘，脚本已删。
- 产物：dex `12b6be3c…`｜apk `f423d8c6…`｜arity BAD=0｜八件套通过｜Earth3=18510｜装机 Success｜设备 dex 一致｜启动自检 crash=0｜基线 1004800434。
- 验收：抓样应见 `nAS pk … mil=1`（目标＝军事省）。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok 现役行=%d 新行=%d' % (n0, n1))

# 3) 设计 v2
SJ_ADD = u"""

---

## 一百零七、R4c179：strikeScore 极性写反修复（2026-09-19）

| 项 | 内容 |
|---|---|
| 现象 | 轰炸机始终挑“离自己最近的省”，军事建筑优先级“没反应”（r4c178 起多轮） |
| 根因 | `strikeScore` 军事档分支 `if-nez v1, :ss_econ` 写反：军事省（v1=1）被跳去经济档（100000+）、非军事省（v1=0）落下拿距离档 ⇒ 选最小者＝最近的非军事省 |
| 修法 | `if-nez` → `if-eqz v1, :ss_econ`（仅 1 条指令） |
| 回归防线 | arity BAD=0｜指令级 dump｜八件套（Sig Δ=0）｜Earth3=18510｜装机后启动自检 crash=0 |
| 产物 | dex `12b6be3c98c1aa1d56defc898c77efb3`／apk `f423d8c6e1368d352dd1976378a0718d` |
| 经验 | **跳转极性＝本项目最高发致命错误**；探针必须打在分支两侧（只打结果端无法区分“判据失灵”与“分支写反”） |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

# 4) 常驻速查 §C
CS_ADD = u"""
8. **跳转极性家族再犯（R4c179 实锤，2026-09-19）**：`strikeScore` 的 `if-nez v1, :ss_econ` 写反 ⇒ 军事档/经济档互换 ⇒ 现象是“新功能完全没反应”（看起来像判据失效）。同族：r4c178d / r4c178f / r4c178i / r4c179（累计 5+ 次）。⇒ 铁律：if-* 改动必须写“真值表注释”+正反例双回放。
9. **探针必须打在“被改动分支的两侧”**：只打结果端（如“被选中目标的 mil”）无法区分“判据失灵”与“分支写反”（两者都长成 mil 恒 0）。**候选层/入口层探针优先**。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

# 5) 源码留痕
shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c179.smali')
print('SRC ok', os.path.getsize(D + 'r6s5/AirForceManager.r4c179.smali'))
