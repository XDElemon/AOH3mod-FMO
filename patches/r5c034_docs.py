# -*- coding: utf-8 -*-
# r5c034_docs.py —— 落盘：p0/p1 寄存器约定事故 + r5c034 修复
import io, os, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
RULES = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

PLAN_ADD = u'''

### 22.5 r5c034 —— 修 r5c033 的真机 VerifyError（p0/p1 寄存器约定）
- **症状**：r5c033 装机后一启动就闪退。logcat：
  `java.lang.VerifyError: Verifier rejected class AirForceManager: void updateAIBuildUp(Airport) failed to verify: [0x4] cannot access instance field int Airport.civID from object of type Reference: AirForceManager`
- **原因**：`updateAIBuildUp` 是**实例方法** ⇒ `p0 = this(AirForceManager)`、`p1 = 参数 Airport`；我按"p0=机场"写了全部字段访问 ⇒ ART 校验器直接拒绝（并拒绝整个类）。
- **修复**：该方法的机场访问 `p0 → p1`（6 处字段 + 2 处调用），共 1 个方法、零逻辑改动。
- **门禁补强**：`r5c033_sitecheck.py` 加 **⑨/⑨b 寄存器约定检查**（实例方法里机场必须 `p1` 且禁止 `p0`；静态方法里机场必须 `p0`）。
  铁律⑲执行记录：在**会闪退的 r5c033 dex** 上跑 ⇒ **⑨ FAIL（forbidden_p0=True）**；修后 r5c034 dex ⇒ **0 FAIL**。
- **产物**：dex `40fa5a8fc2fc4063729e4054305f9ac5` / apk `e98868df…`（`build_apk/dbg_signed77_v119_r5c034.apk`）。
- 八件套：`Sig 152661→152661（Δ=0）` ⇒ **本批只改寄存器名、未动 invoke**，属预期（八件套会提示"确认是否真的没动 invoke"，已人工确认）。
- 结论：**r5c034 = r5c033 + p0/p1 修复**，其余内容（含人物不死 GV）完全一致。
'''

RULES_ADD = u'''

## ㉞ `p0/p1` 寄存器约定：实例方法 p0=this、静态方法 p0=第1个参数（2026-09-24 血案）
- 真踩：给 `AirForceManager` 新增的**实例**方法 `updateAIBuildUp(Airport)` 里，把"机场"参数当成 `p0` 去读字段 ⇒ 真机 **VerifyError**（整个类被拒 ⇒ 一启动就闪退）。
- ART 的错误指纹长这样：`[0x4] cannot access instance field int X.f from object of type Y` —— **类型不符 = 多半是把 p0/p1 认错了**。
- **本地门禁抓不到这类错**：arity/八件套/sitecheck 的语义断言都过（它们只看指令形状与方向，不看寄存器类型）。⇒ **必须真机启动验证**（八件套结尾那句提醒不是客套）。
- 现已加静态拦截：`r5c033_sitecheck.py` ⑨/⑨b —— 实例方法里机场必须 `p1` 且禁止 `p0`；静态方法里机场必须 `p0`。
- 写新方法时的口诀：**先看方法是 static 还是 instance，再决定 p0 是谁**；两者混用时（如本例）在注释里写清 `p0=this, p1=机场`。
'''

HAND_ADD = u'''

---

### 追加登记：r5c034（修 r5c033 的 VerifyError：p0/p1 寄存器约定）【2026-09-25】
- 内容：`AirForceManager.updateAIBuildUp` 内机场访问 `p0 → p1`（实例方法 p0=this）；零逻辑改动。
- 门禁：新增 sitecheck ⑨/⑨b（寄存器约定）；在会闪退的 r5c033 dex 上 ⇒ ⑨ FAIL；r5c034 ⇒ 0 FAIL。
- 产物：dex `40fa5a8f…` / apk `e98868df…`；八件套 BAD=0、`Sig Δ=0`（只改寄存器名）。
- 装机：见记录（本批为 r5c033 的替代版本，装机后方可继续验收）。
'''


def ap(path, marker, text):
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('SKIP %s' % os.path.basename(path)); return
    io.open(path, 'a', encoding='utf-8').write(text)
    print('OK   %s' % os.path.basename(path))


ap(PLAN, '### 22.5 r5c034', PLAN_ADD)
ap(RULES, '## ㉞ `p0/p1` 寄存器约定', RULES_ADD)
ap(HAND, 'r5c034（修 r5c033 的 VerifyError', HAND_ADD)
print('DONE', time.strftime('%m-%d %H:%M'))