# -*- coding: utf-8 -*-
# §G.10.13 r5c023：E5 真凶（存档例程"机场循环提前跳出"）施工记录
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
#### G.10.13 r5c023：E5 **真凶** finding + 修复（已装机）
##### 证据链（r5c022 抓样 `r6s5/cur_r5c022.txt`）
- `nE5 R1main a=1` ⇒ **D1 修复生效**（不再回退 dbg）；两个文件都存在、**同尺寸 993B、同 mtime**，内容一致。
- **但 `R4dto a=1`**（存档里只有 **1** 个机场），而内存里玩家有 **4** 个机场（`nA1e p0=73 apts=4`）⇒ 与用户实测"只有第一个建的机场的飞机保住了"完全一致。
##### 真因（`SaveGameManager.Save_Airforce_Data` 的两层循环跳转写错）
```
:cond_22          ← 文明循环头（hasNext on v3）
  353 hasNext(v3) → 357 空 ⇒ :cond_e3（去 missions）✔
  367 iterator(v5) = 该文明的机场列表
:?? 371 hasNext(v5) → 375 空 ⇒ :cond_22（下一个文明）✔
  377 v6 = Airport → 385 建 Save_Airport → 438 airports.add ✔
  440 v8 = airport.aircraft → 448 values().iterator()
 :cond_84 452 类型循环 → 457 if-eqz v9, **:cond_22**   ★★ 错：应回到"机场循环头"
  467 单位循环 → 476 if-eqz v11, :cond_84 ✔ → 544 airunits.add → goto :goto_96 ✔
  546 goto/16 :goto_22  ← 死代码
```
⇒ **每个文明只写入第一个机场（及其飞机）就跳出**；其余机场的 DTO 与其飞机从未写入 ⇒ 读档后自然"丢飞机"。
##### 修法（3 行，已装机）
| # | 位置 | 改动 |
|---|---|---|
| ① | 机场循环头（`hasNext(v5)` 之前） | 新增标签 **`:e5_aptloop`** |
| ② | `if-eqz v9, :cond_22`（类型循环出口，原 457） | → **`:e5_aptloop`**（继续下一个机场） |
| ③ | `if-eqz v6, :cond_22`（Airport 为 null，原 383） | → **`:e5_aptloop`**（只跳过这一个机场） |
- 极性核对：`if-eqz`＝"==0 才跳"，v9/v6 是 hasNext/cast 结果 ⇒ 方向正确 ✔
- 4 情形：①单机场⇒exit 正常 ②多机场⇒继续第2个（**修复点**）③空元素⇒跳过继续 ④`aircraft==null` 仍走原样（`if-eqz v8, :cond_22`）⇒ **记入观察项**（可选后续改成 aptloop）
##### 门禁与产物
- assemble ✅／arity `BAD=0` ✅／dangling `0` ✅／branch 检查认到 `:e5_aptloop` ✅／八件套 `Δ=0`（**预期**：本批不动 invoke，只改跳转目标）。
- dex `331f9d45aeafb2086634bca672b92bc6`／apk `b83921f4e6221a5b2a58348419e129e8`；装机 `DEX_MATCH=1`／`APK_MATCH=1`。
##### 验收口径
存档（此时有多机场/多飞机）⇒ 读档 ⇒ 期望：`R4dto`＝内存机场数（不再是1）、`L1hit`/`L3unit` 覆盖**每个**机场与其飞机、游戏内各机场飞机数恢复。
"""
t = io.open(P, encoding='utf-8').read()
if u'#### G.10.13' in t:
    print('已存在')
else:
    B = P + '.pre_g1013'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.13 已写入')
H = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
LINE = u'| r5c023 | E5 真凶修复：Save_Airforce_Data 机场循环出口跳错（只存第一个机场）→ 新增 :e5_aptloop 并改两处跳转 | `331f9d45…` / `b83921f4…` | 09-24 13:25 | ⏳待真机验收 |'
t2 = io.open(H, encoding='utf-8').read()
if u'| r5c023 |' in t2:
    print('交接文档已含')
else:
    B2 = H + '.pre_r5c023'
    if not os.path.exists(B2):
        shutil.copy2(H, B2)
    t2 = t2.replace(u'| r5c022 |', LINE + u'\n| r5c022 |', 1) if u'| r5c022 |' in t2 else t2.rstrip() + u'\n' + LINE + u'\n'
    io.open(H, 'w', encoding='utf-8').write(t2)
    print('OK 交接文档已登记 r5c023')