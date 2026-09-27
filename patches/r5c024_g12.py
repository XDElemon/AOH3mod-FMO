# -*- coding: utf-8 -*-
# §G.12 变更登记：取消「面板剩余弹药」＋新项目 B7「AI 打击接入」立档
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
## G.12 变更登记（2026-09-24）
| 项 | 处置 |
|---|---|
| **B3-A6 另一半「面板显示本队剩余弹药」** | ❌ **用户取消（"可以滚蛋了，不用要了"）** —— 不再排期，后续任何方案里不要再列该条 |
| **新建项目：B7 / AI-Air「AI 打击接入」** | 📋 **已立档**：`r6s5/AI打击接入_调研与计划书v1.md`（195 行，含现状清单/缺口 G1–G7/三层设计/四阶段 P0–P3/参数/验收/风险/8 条待拍板） |
| 该项目核心定案（调研结论） | AI **已会造**战略轰炸任务（`AFM.executeAIAssignmentForAirport` 1021，经 `update(I)` 6966 每回合跑，仅 `mode==AI` 机场）；**卡点是 `AFM.strikeTick_A1` 6894 的玩家门**（`civID != Game.player.iCivID ⇒ return`）⇒ AI 任务"飞了不炸"。结算件（a1Scan 6108／a1bScan 6847／a1bDispatch 6680／a1Dispatch 5860）**已是 civ 参数化** ⇒ 有望"放开一道门 + 补闸门"即可 |
| 该项目下一步 | 等用户答复 §9 的 8 条拍板；建议先做 **P0 只读探针诊断批（r5c025）** |
"""
t = io.open(P, encoding='utf-8').read()
if u'## G.12 变更登记' in t:
    print('已存在')
else:
    B = P + '.pre_g12'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.12 已写入')