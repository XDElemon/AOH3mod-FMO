# 调研 · r6d060（第一轮）：配置解析到底有没有 bug？

> 目标现象（历史记载）：`CFGRD e=1 r=1 len=197 rd=ok` 但 `BOOT2 dbg=0 prob=0 pin=-1 cap=4 build=1 init=1`（与文件 `prob:80 / pin:5693 / debug:1` 不符）。

## 1. 关键证据：`prob=0` 全历史只出现过 **一次**
| 抓样 | BOOT2 变体 | 次数 |
|---|---|---|
| 全部历史 `*.txt` | `BOOT2 dbg=0 prob=80 pin=-1 cap=4 build=1 init=1` | **103** |
| `_cfg3.txt`（**09-28 05:48**，早期会话） | `BOOT2 dbg=0 **prob=0** pin=-1 cap=4 build=1 init=1` | **1** |

且该行前后是 `CFGRD e=1 r=1 len=197 rd=ok`（=读得到、长度=真实文件长度）。

## 2. 现在的代码路径（逐段核对，未发现解析错误）
```
AndroidLauncher.onCreate():
24  AirForceManager.demoLoadCfg()      ← 先加载配置
26  AirDbgLog.boot()                   ← 后打印 BOOT2（所以 BOOT2 反映的是“加载后的值”）
demoLoadCfg():
  若 dgInit==0 → 写入默认值（prob=80, intel=1, pin=-1, debug=0, ai_build=1, ai_wartime=1, ai_cap=4, ai_type=0, wF=5, wI=1, wA=2, wB=2）
  text = cfgReadText(path)            ← r6d026 已改 java.io（原 NIO 在 /storage 上读不到）
  若 text==null → 直接跳过解析（字段保持上面的默认值）
  否则逐键 cfgExtractInt(text,key,def) → 钳制 → sput dg*
AirForceManager.<clinit>():  # r6d012 起 静态默认值 = 同一套（prob=80 …）
```
**`cfgExtractInt`（11322）逐字核对**：定位 `"key"` → 找 `:` → 跳过空格/制表 → 处理负号 → 逐位累加 → 无数字返回默认值；**在真实 197 字节配置上离线模拟**（Python 复刻该算法）：
```
prob=(80,'ok')  intel=(1,'ok')  pin=(5693,'ok')  debug=(1,'ok')  ai_cap=(4,'ok')     # len(cfg)=197 ✔
```
`dgProb` 全树只有 3 处写入：`<clinit>`(=80)、`demoLoadCfg` 的默认分支(=80)、解析分支(=解析值，带 [0,100] 钳制)。**没有别的地方把 0 写进去。**

## 3. 因此最可能的解释（为什么当年看到 0）
| 可能 | 依据 | 判定 |
|---|---|---|
| **A. 那条日志出自"静态默认值尚未加入"的更早构建**（r6d012 之前，Java 静态 int 默认就是 0；pin 默认 -1、debug 默认 0 恰好也都是"未初始化的默认"） | `prob=0` 只有 09-28 05:48 那 1 条，且那时连 `rd=ok` 都不稳（同文件里还有 `CFGRD e=0 r=0 len=0 rd=null`） | ★ **最可能** |
| B. 当时 `cfgReadText` 仍走 NIO（r6d026 之前）⇒ 返回 null ⇒ 跳过解析；若同时 `<clinit>` 静态默认还没加 ⇒ 字段停在 0/-1/0 | 时间线吻合（05:48 → r6d012/r6d026 都在其后） | 可能 |
| C. 真·解析错误 | 现有代码 + 离线模拟均给出正确值；无反向/边界缺陷 | 不支持 |

补充：`dcfg*`／`dcfgPB` 这类"解析回显"走的是 **`e5i/e5ii`（dKey 通道，受 `dbgOn` 门控 + 500ms 节流）**，而历史抓样里 **`dcfgPB` 出现 0 次** ⇒ 说明这些回显从未落盘（`dbgOn=0`），因此**当年的结论只凭 BOOT2 一行**，证据链偏弱。

## 4. 待做的验证（唯一缺失的一环）
把配置**启用**（数据操作，不改代码）→ 重启 → 读 **BOOT2**（它走免节流 `dWrite`，且打印 dgDebug/dgProb/dgPin/dgAiCap/dgAiBuild/dgInit）：

| 文件值 | 期望 BOOT2 |
|---|---|
| prob=80, pin=5693, debug=1, ai_cap=4, ai_build=1 | `BOOT2 dbg=1 prob=80 pin=5693 cap=4 build=1 init=1` |

- 若如上 ⇒ **"配置解析 bug"确认为虚警**，可结案（并把"e/dcfg 回显不可见"记入坑表）；
- 若不符 ⇒ 立刻锁定差异（例如 pin 未生效），再进第二轮调研（重点 `cfgExtractInt` 的键名匹配与 `pin` 的消费端）。

⚠️ 启用配置会同时**开启 `pin=5693`（钉住某省）与 `debug=1`（探针）** ⇒ 会改变出击行为/日志量，需用户同意后再做；若不希望改变行为，可用一个**临时配置文件**（例如把 pin 设为 -1、debug 设为 0）来做同一次验证。

## 5. 顺带发现（与本 bug 无关但值得记）
- `e5i/e5ii` 的"dcfg 解析回显"受 `dbgOn` 与节流双重约束 ⇒ **诊断输出应改走 `dWrite`**（《打探针指南 v1》里已写，但这两处是历史遗留）；
- `cfgReadText` 用 `ByteArrayOutputStream.toString()`（平台默认字符集）+ 固定偏移 0 写入：当前实现正确，但**若以后要读非 ASCII 配置**需显式 UTF-8。