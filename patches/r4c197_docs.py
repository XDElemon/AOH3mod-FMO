# -*- coding: utf-8 -*-
# R4c197/R4c197b 归档：源码留痕 + 专档 + 常驻速查两条
import io, shutil, os

D = '/sdcard/GLG/历史23/'
SRC = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'

os.makedirs(D + 'r6s5', exist_ok=True)
shutil.copyfile(SRC, D + 'r6s5/AirForceManager.r4c197b.smali')
print('SRC ok')

Z = io.open(D + '空战重做专案_设计v2.md', encoding='utf-8').read()
Z += u'''

---

## 【R4c197 / R4c197b】巡炸模式（mode=rove）——绕开老挑靶链

**用户诉求**：「轰炸机自动去轰炸有军事建筑的省份」；不再接受在旧链上加探针。

**设计**：每回合（updateOffensives 末尾挂钩 invoke-direct roveTick），对我方每个 OFFENSIVE 机场：
1. `pickIdleDivKey(airport, BOMBER)` 拿一个空闲轰炸机师；无 → 跳过；
2. `rovePickTarget`：在 `getProvincesInRange(airport,BOMBER)` 集合里，挑「**最久没被炸**」（roveLastHit 记录回合号）的省；
   目标集 = `afMilReal`（任何军事建筑） ∪ `cfgPin`（点名）；
   过滤：非本机场省 / `Province.getCivID() != 我方`；
3. `AirMission.createStrategicBombing(airport, pid, divKey)` → 若 assignedAircraft 非空 →
   `AirForceManager.instance.activeMissions.add(mission)`；记录 roveLastHit；打日志 `nRV ap=<ap> tgt=<pid> ok`。

**跳过的老链**：候选过滤(isOccupied)、交战检查(war)、情报门、建筑判据(milRaw)、评分/档位/选择、20% 随机门、hasActivePatrol。

**记忆系统修复**（同批）：
- 会话重置：以 `System.identityHashCode(Game.lProvinces)` 作会话指纹，变化即 `roveReset()`（清 afMilReal/cfgConfirmed/afAirportProv/afMilKnown + 重建 roveLastHit + 重开预热）；
- 起步预热：前 `warm_turns`(默认3) 回合 `roveWarmScan()` 全图扫 isMilIdx 只加不减，并剔除越界脏 pid。

**配置**（`strike_config.json`，存盘即生效）：
```json
{"mode":"rove","watch":[34,37],"pin":[5693],"rove_every":1,"rove_per_airport":1,"warm_turns":3}
```

**探针**：`nRVC ev=<每N回合> pa=<每机场次数> wm=<预热回合>`；`nRV ap=.. tgt=.. ok|skip=no-aircraft`。

**踩坑（重要）**：
1. `.registers` 过大时 smali 的 pN 别名上限 → 报 "Invalid register: v17. Must be between v0 and v15"；把总寄存器数压到 16 以内即可。
2. **权限修饰符必须与 invoke 形态一致**：挂钩 private 方法必须 `invoke-direct`；写成 `invoke-virtual` 会得到
   `VerifyError: invoke-super/virtual can't be used on private method roveTick(int)`（AA_Game.render 崩、闪退）。
3. 八件套 CheckUndef 只把 move/const/sget/iget/new-instance/check-cast/aget 当作"定义"，**算术指令不算**；
   凡是「算术产出的寄存器用于 if-*」都会被记 1 条 UNDEF。解法：先 `move` 再算（语义不变），可把计数压回白噪 4。
'''
io.open(D + '空战重做专案_设计v2.md', 'w', encoding='utf-8').write(Z)
print('Z ok')

S = io.open(D + '铁律与教训_常驻速查_v1.md', encoding='utf-8').read()
S += u'''
| **R4c197** | 【功能】巡炸模式 mode=rove（绕开老挑靶链：射程∩(afMilReal∪pin) → 最久没炸 → 直接 createStrategicBombing + 塞 activeMissions）；同批修记忆系统（会话指纹重置 + 起步预热扫描 + 越界脏pid剔除） | 09-20 | ✅ 待验收 |
| **R4c197b** | 【修复】挂钩 private 方法必须 `invoke-direct`（误用 invoke-virtual → VerifyError、闪退）；另：`.registers` 超过 16 时 smali pN 别名报错，需压到 ≤16 | 09-20 | ✅ 已装机 |
'''
io.open(D + '铁律与教训_常驻速查_v1.md', 'w', encoding='utf-8').write(S)
print('S ok')

# 交付副本 + 基线
shutil.copyfile(D + 'strike_config.json', D + 'r6s5/strike_config.r4c197.json')
print('BASE ok')
