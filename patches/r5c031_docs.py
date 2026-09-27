# -*- coding: utf-8 -*-
# r5c031_docs.py —— 落盘：P1a 真因（原版 isEmpty 判据极性反写）+ r5c031 批次
import io, os, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
RULES = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

S19 = u'''

---

## 19. 【真因定案】P1a FIX-4：`isEmpty` 判据极性反写（原版第三类 bug）【2026-09-24】

### 19.1 r5c030 抓样的决定性数据
| 探针 | 结果 | 含义 |
|---|---|---|
| `nA2v` | 76× `a=30` | ✅ 跑的就是本批 dex |
| `nA2s`/`nA2t` | 76 / 76 | 入口正常；list 尺寸=4 |
| **`nA2w`** | **76× `a=0`** | **`isEmpty()` == false（列表非空）** |
| `nA2x` / `nA2y` | **0 / 0** | 循环判据那两个探针**一次都没打** |
| `nA2b` | **0** | 循环体没进 |
| **`nA2r`** | **76× `a=1`** | **方法每次都"正常返回"** |
| `nA2e` | 无 | **没有异常**（catchall 从未触发） |

⇒ 执行路径被钉死为：`nA2s → nA2t → nA2w(=0) → nA2r（return）`，中间全被跳过、且无异常。

### 19.2 真因
```
invoke isEmpty() → move-result v1
if-eqz v1, :cond_23      ← 原版：v1 == 0（=非空）就跳去 return
```
`if-eqz` = "等于 0 才跳"。`isEmpty()` 返回 false(0) 表示**非空**，于是：
- 列表**非空** ⇒ `if-eqz` 成立 ⇒ **直接 return**，循环永不执行；
- 列表**为空** ⇒ 不跳，进 `const/4 v1,0x0` → `size()=0` → `if-ge 0,0` 成立 ⇒ 也立刻 return。

⇒ **该循环在任何情况下都不可达**（死代码）。这与前面两类原版 bug 同一性质（首行 `return-void`、文明比较 `if-eq`）——开发商写好了 AI 派发，但**三处入口条件全部写反/写死**。

### 19.3 FIX-4
| 位置 | 改前 | 改后 |
|---|---|---|
| `executeAIAssignment(I)V` 循环守卫 | `if-eqz v1, :cond_23` | **`if-nez v1, :cond_23`**（空表才 return） |

同批撤掉 r5c030 的诊断期 `.catchall`（已确认无异常，恢复普通返回语义）。

### 19.4 门禁与产物
- **门禁扩展**：`r5c029_sitecheck.py` 新增 **⑥ 循环守卫**（`isEmpty()` → `move-result v1` → 紧随的 if 必须是 `if-nez v1`，且目标块含 `return-void`）。
- 铁律⑲执行记录：先在 **r5c030 dex（有 FIX-4 bug）** 上跑 ⇒ **恰好报出 1 个 FAIL（⑥）**、其余全 PASS；修后在 r5c031 dex 上 ⇒ **0 FAIL**。
- `check_arity`：BAD=0。八件套：Invoke/Regs/Init/Range BAD=0；`Sig 152647→152646（Δ=-1）`＝撤掉 catchall 时删掉的那 1 个 `p0Exc` 调用，**属预期**（不是改坏 invoke，但八件套会报 ⚠️，需人工确认——已登记）。
- 产物：dex `9b6fed59ed2593d66b4953d835dc2086` / apk `d3a87a97…`（`build_apk/dbg_signed77_v119_r5c031.apk`）。
- **装机：✅ DEX MATCH=1；日志与基线已重置。**

### 19.5 下一步预期（可证伪）
抓样应当首次出现：
1. `nA2x a=4`、`nA2y a=0/1/2/3`（循环真的转了）、`nA2b a=1`；
2. `nA2u a=<省号>` ×4 与 `nA2m mode=/ap=/civ=/…`（`nA2m` 首次出现！）；
3. 派发链：`nA4d`（isAtWar 结果）→ 若开战：`nA4v cand=/vis=` → `nA4e k=`（0=派发成功 / 1=概率门挡 / 3=无可见目标 / 4=空机组）；
4. `nA2r a=1` 依旧（正常返回）。
若 `nA2x/nA2y` 仍为 0 ⇒ 我对 `if-eqz/if-nez` 的语义判读有误，需回到 dexdump 逐字节复核。
'''

RULES_ADD = u'''

## ㉘ 八件套的 `Sig Δ` 必须与"本批增减的 invoke 数"人工对账（2026-09-24 新增）
- 例：r5c031 撤掉诊断期 `.catchall`，同时删掉其中唯一的 `p0Exc(...)` 调用 ⇒ `Sig Δ=-1`，八件套会报 **"疑似改坏 invoke"** 并判定不通过。
- 处理：**人工核对 Δ 的来源**（本批删/增的 invoke 逐条列出），确认一致后再继续；不要因为它是 ⚠️ 就跳过，也不要因为它是 ⚠️ 就盲目回滚。
- 另注：`build.sh` **不会**因为八件套失败而中止（两者是独立步骤）⇒ 顺序上必须"先 verify 通过，再 build/装机"。

## ㉙ 原版代码的三类"死门"（本项目已全部实证，2026-09-24）
AI 派发链在原版里被写死三次，且都是**一行级**的写法错误——遇到"逻辑完整但行为为零"时，优先怀疑这三类：
1. **首行 `return-void`**：整个方法体是死代码（`executeAIAssignmentForAirport`）。
2. **判据极性反写**：`if-eq` / `if-gez` / `if-ltz` / `if-eqz` 选错方向（文明比较、无玩家哨兵、概率门、选靶门、**循环守卫 isEmpty**）。
3. **结算只跑玩家**：`if (civID != player.iCivID) return`（`strikeTick_A1`）。
⇒ 排查套路：**在每个"应当继续"的位置插一条无分支探针**，看哪一条之后断掉；再区分"正常返回 / 异常中止 / 根本没进"。
'''

HAND_ADD = u'''

---

### 追加登记：r5c031（P1a 真因修正 FIX-4）【2026-09-24】
- 内容：`executeAIAssignment(I)V` 循环守卫 `if-eqz v1 → if-nez v1`（原版把"非空即 return"写成了死门）；同批撤诊断期 catchall；探针全保留。
- 产物：dex `9b6fed59…` / apk `d3a87a97…`；门禁：sitecheck **0 FAIL**（含新增 ⑥ 循环守卫）、arity BAD=0、八件套 BAD=0（`Sig Δ=-1`＝撤 catchall 删 1 个 invoke，已对账）。
- **装机：✅ DEX MATCH=1；日志与基线已重置。**
- 下一步：跑 1~2 回合抓样，验证 `nA2x/nA2y/nA2b/nA2u/nA2m` 首次出现（预测见计划书 §19.5）。
'''


def ap(path, marker, text):
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('SKIP %s' % os.path.basename(path)); return
    io.open(path, 'a', encoding='utf-8').write(text)
    print('OK   %s' % os.path.basename(path))


ap(PLAN, '## 19. 【真因定案】', S19)
ap(RULES, '## ㉘ 八件套的', RULES_ADD)
ap(HAND, 'r5c031（P1a 真因修正 FIX-4）', HAND_ADD)
print('DONE', time.strftime('%m-%d %H:%M'))