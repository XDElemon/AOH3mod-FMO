---
name: fmo-offline-probe
description: FMO 离线真跑 smali（用仓库自带 Dalvik 解释器跑导弹/雷达/数据逻辑的静态方法，mock 相机/时钟/管理器，1 秒级复现接线与极性 bug），含 Interp 用法、宽指令预翻、STATICS/INSTANCES mock 表、探针→闸门的晋升流程与"先红后绿"纪律。任何要在真机前验证 smali 分支/接线，或怀疑"闸门绿但行为不对"的批次都先读它。
---

# FMO 离线真跑探针

**为什么**：手写 smali 的分支极性、接线漏 invoke、寄存器写坏，汇编都能过、闸门字符串断言也抓不到
（v56–v63 八批、B35 之前的 D3 都是这样）。仓库自带的解释器能在 1 秒内把真实 smali 跑一遍。

## 1. 跑一个静态方法（最小模板）

```python
import sys, os
sys.path.insert(0, '/tmp/fmo/tools')
import gate_behavior as g

it = g.Interp(os.path.join(g.SMALI, 'aoc/.../AirMissileCore.smali'),
              'AirMissileCore;->contact(FFFFF)Z')
for i, v in enumerate([0.0, 0.0, 100.0, 0.0, 40.0]):   # p0..p4
    it.regs[it.pbase + i] = v
it.run()
print(it.ret, it.events[-5:])
```

- 实例方法：`it.regs[it.pbase] = obj`（`Obj` 见下）。
- 返回值在 `it.ret`；`it.events` 里有全部 `invoke/iput/...`（用来数"有没有调用 `msFxContact`/`applyAirDamage`"）。
- 递归调用不会自动执行：同一编译产物里的 `invoke-static` 要走 `_run_static` 另开解释器，或 mock。

## 2. mock 外部依赖

`Interp._builtin` 是全局钩子，临时替换、**finally 里必须还原**：

```python
orig = g.Interp._builtin
STATE = {'onscreen': True}
def builtin(self, target, vals):
    cls, rest = target.split(';->', 1); name = rest.split('(', 1)[0]
    if cls.endswith('AirMissileGate') and name == 'onScreen':
        return STATE['onscreen']
    if cls.endswith('System') and name == 'currentTimeMillis':
        return 10 ** 9
    return orig(self, target, vals)
g.Interp._builtin = builtin
try:
    ...
finally:
    g.Interp._builtin = orig
    g.STATICS.clear(); g.INSTANCES.clear()
```

常用 mock：

| 目标 | 返回 |
|---|---|
| `Game.gameThread`（STATICS） | `Obj(...); fields{play=True, playSpeedTIME=250}` |
| `Game.menuManager`（STATICS） | `None`（不暂停） |
| `Game.HOURS_PER_TURN`（STATICS） | `2` |
| `Game.mapCoords/mapScale` | `Obj`；`getPosX/getPosY=0`、`getCurrentScale=1.0` |
| `AirDefense.msSpd` | `67.5` |
| `AirModelStats.*` | 68/40 之类 |
| `AirForceManager.getInstance` | `INSTANCES['AirForceManager']`（`Obj`，`activeMissions=[me,target]`） |
| `AirMission.msFxContact/applyAirDamage` | 不执行，只数 `it.events` 里的 invoke |

`Obj` 只有 `cls` 和 `fields{}`；字段用 camelCase 名（`msFxX`、`strikeKind`），别写成 Java getter 名。

## 3. 宽指令预翻（必须）

解释器用**单寄存器**存 long，`cmp-long/sub-long/iget-wide/iput-wide/sget-wide/long-to-float` 要先翻译：

```python
tr = {'cmp-long':'sub-int','sub-long':'sub-int','add-long':'add-int',
      'long-to-float':'int-to-float','iget-wide':'iget','iput-wide':'iput','sget-wide':'sget'}
it.code = [(tr.get(op, op), a) for op, a in it.code]
```

不翻译会在 `cmp-long`/`long-to-float` 处抛"未实现的指令"。

## 4. 现成案例（照抄改参数）

| 文件 | 跑什么 | 验证点 |
|---|---|---|
| `skills/fmo-missile-system/probe_missile_mode.py` | `AirMissileCore.markHourMode` 真值表 + `AirMission.missileTick` 两模式 | 屏内/屏外/被探测 → `msHourMode`；两套时钟互斥 |
| 审计附录 C（`/sdcard/GLG/DSHA/fmo_missile_system_audit_v1.md`） | `ProvinceDrawArmy.msFxStep` | 接触极性（距离 100/圈 40 不得结算） |
| `tools/gate_behavior.py` B9 | `advance/contact/flightHours` | 纯函数边界 |
| `tools/gate_behavior.py` B26 | `RadarAirBake` | 扫描线/脏标记 |

## 5. 先红后绿（没有红样本 = 没测）

新探针/新闸门上线前，必须造一个**已知错误**看它变红：

- 把 `notContact` 换回 `contact` → 接触真值表必须红；
- 把 `if-nez` 改 `if-eqz` → 小时钟模式必须红；
- 把 `markHourMode` 判据取反 → 三例必须红。

红了再复原、再改绿，否则这个闸门只是"装饰"。

## 6. 探针 → 闸门

探针跑通、口径稳定后，搬进 `tools/gate_behavior.py`：

1. 函数命名 `check_<主题>`，用 `fail()` 报错（注意 `fail` 只记录不中断，后面别再 `index()` 硬取）；
2. 在 `main()` 里调用，并把编号写进最后的汇总字符串；
3. 闸门内 monkey-patch 要 `try/finally` 还原 `STATICS/INSTANCES/_builtin`；
4. 跑一次全量 `fmo.py gate`，确认没有污染其它用例。

B35 就是这么来的：先有 `/tmp` 探针，再进闸门，最后探针留一份在技能里当回归哨兵。

## 7. 坑

1. **探针放在门之前**：v60 的 `logDraw` 在 `strikeKind` 判定之前，抓的全是"没导弹的任务"，误导了三批。
2. **`if-nez` 是非零跳转**：写探针时先对齐 `_cmp`（`nez = a != 0`），别凭直觉。
3. **try/catch**：解释器顺序执行，不抛异常时没问题；真抛异常不会走 catch。
4. **静态返回通道**：`AirMissileCore.NX/NY` 要在跑前清 `STATICS`，否则拿到上一次的残值。
5. **`move-result` 配对**：mock 返回 `None` 时 `move-result` 会写 None，后续算术会炸——mock 要返回正确类型（float/int/bool）。
