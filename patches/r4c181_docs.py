# -*- coding: utf-8 -*-
# R4c181 归档：专档 / 交接v2 / 设计v2 / 常驻速查 / 源码留痕 / 基线重置
import io, os, shutil

D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🚨（2026-09-19 深夜·**r4c181：r4c180 情报门极性写反——我自己踩了 r4c179 刚立的那个坑**）
> **现象**：装 r4c180 后用户跑几回合报“现在他又不会去打建有军事建筑的省份了”。
> **抓样实据（决定性）**：`nAS pk … mil=0` × 18/18（派出去的全是**没有军事建筑**的省）；`nIK add` 79 条**全部集中在同一行段**（一次调用内），被选中目标 `tgt=5686/5684/5689/…` **全都在 add 名单里**、却 `mil=0`。
> **根因**：`bomberIntelOk` 里我写成 `if-eqz v5, :r4c180_my`，本意是“mil==0 去遗忘并拒绝”，但 `:r4c180_my` 实际是**覆盖判定块** ⇒ 真值被反转：
>   · `mil==1`（有军事建筑）→ 落下 → **遗忘 + return false** ⇒ 军事省永远不可打；
>   · `mil==0`（无军事建筑）→ 跳去覆盖块 → 还能**写入记忆** ⇒ 无军事省反而被派。
> ⇒ 与抓样 100% 吻合（18/18 派发目标 mil=0，79 条 add 全是无军事建筑的省）。
> **修法**：`if-eqz v5, :r4c180_my` → `if-nez v5, :r4c180_del`（mil==0 才跳去“遗忘+拒绝”），并把两个块顺序调正（覆盖块在前、遗忘块在后）。
> **本次补齐的验证纪律（教训）**：上一次我“看了 dump”却把 `if-eqz {v5} ->0024` 读成“mil==0 落下”而放行 ⇒ 这次改成**偏移→块强制映射**：`000f if-nez v5 ->0068`（0068 = `sget afMilKnown; remove; return false` 块）⇒ mil==0 才去遗忘 ✓；mil!=0 落 `0011` = 覆盖块 ✓；`0047 if-eqz v0→005a`（未覆盖则跳过 add）✓；`005a..0067` contains→ikLog3→return ✓。
> **新增探针（按铁律“打在分支两侧”）**：`nIKM p=<省> cov=<0/1> ok=<0/1>`，**只在 mil==1 时打** ⇒ 下次抓样能直接看到“有军事建筑的省是否被算作候选 / 是否被覆盖 / 是否放行”，不用再靠推断。
> **产物**：dex `a823361c114c09a77ddbdf27cc0ae989`／apk `7ffb5cc8…`（738370669 B）；arity BAD=0；八件套 Sig 152516（Δ=2，＝新增 `ikLog3` invoke）；Earth3=18510；装机 Success；设备 dex 一致；**启动自检 crash=0**。
> **验收口径**：`nAS pk … mil=1` 重新出现（派发目标＝军事省）；`nIKM … cov=1 ok=1` 出现（军事省被侦察到并被放行）；迷雾深处未侦察的军事省应见 `nIKM … cov=0 ok=0`（=看见但没情报 → 不打，符合设计）。
> **对 r4c180 的定性**：**情报门设计成立，实现极性错误**；r4c181 只修极性 + 加探针，方案 B 口径不变（玩家+AI 一起约束；炸光即遗忘）。
"""

# 1) 专档
with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

# 2) 交接 v2
s = io.open(JJ, encoding='utf-8').read()
lines = s.split('\n')
out = []
NEW_ROW = u'| **r4c181** | 【关键修复】r4c180 情报门极性写反（`if-eqz v5,:my` → `if-nez v5,:del`）＝“不去打军事省、专打无军事省”的真因；并新增 `nIKM`（mil==1 时打 p/cov/ok） | `a823361c…` / `7ffb5cc8…` | ⏳ **现役·待实测** |'
NEW_L0 = u'| **现役装机** | **r4c181**（dex `a823361c114c09a77ddbdf27cc0ae989`）｜r4c179 极性修复 + r4c180 情报门（**r4c181 修正其极性**）｜装机后启动自检 crash=0 ✓ |'
n0 = n1 = 0
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = NEW_L0; n0 += 1
    out.append(L)
    if L.startswith(u'| **r4c180**'):
        out.append(NEW_ROW); n1 += 1
s = '\n'.join(out)
s += u"""

## 30. r4c181（2026-09-19 深夜）：情报门极性修复——r4c180 把 mil==1 送进了“遗忘+拒绝”

- 抓样实据：`nAS pk … mil=0` × 18/18；`nIK add` 79 条同段（一次调用），被选中目标全在 add 名单且 mil=0。
- 根因：`bomberIntelOk` 的 `if-eqz v5, :r4c180_my` 跳错块（`:r4c180_my` 是覆盖块）⇒ mil==1 → 遗忘+false；mil==0 → 可写记忆。
- 修法：改 `if-nez v5, :r4c180_del`，并调正块顺序；新探针 `nIKM p= cov= ok=`（仅 mil==1）。
- 验证：偏移→块强制映射（`000f if-nez v5 ->0068`＝遗忘/拒绝块）；arity BAD=0；八件套 Sig 152516（Δ=2）；Earth3=18510；装机 Success；启动自检 crash=0。
- 产物：dex `a823361c114c09a77ddbdf27cc0ae989`／apk `7ffb5cc8…`。
- 结论：情报门**设计成立、实现极性错**；方案 B 口径不变（玩家+AI 一起；炸光即遗忘）。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok 现役行=%d 新行=%d' % (n0, n1))

# 3) 设计 v2
SJ_ADD = u"""

---

## 一百零九、R4c181：情报门极性修复（2026-09-19）

| 项 | 内容 |
|---|---|
| 现象 | r4c180 后轰炸机“不去打有军事建筑的省” |
| 抓样实据 | `nAS pk … mil=0` 18/18；`nIK add` 79 条集中一次调用、被选中目标全在名单且 mil=0 |
| 根因 | `bomberIntelOk` 的 `if-eqz v5, :r4c180_my` 跳到了覆盖块 ⇒ 真值反转（mil==1→遗忘+拒绝；mil==0→写记忆） |
| 修法 | `if-nez v5, :r4c180_del` + 块顺序调正；新增 `nIKM p= cov= ok=` 探针（仅 mil==1） |
| 验证纪律 | **dump 必须做“偏移→块”强制映射**（不许肉眼看 if-eqz 的方向）；标签名不得暗示真值 |
| 回归防线 | arity BAD=0｜八件套 Sig 152516（Δ=2）｜Earth3=18510｜装机 Success｜启动自检 crash=0 |
| 产物 | dex `a823361c114c09a77ddbdf27cc0ae989`／apk `7ffb5cc8…` |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

# 4) 常驻速查 §C
CS_ADD = u"""
13. **dump 复核必须做“偏移→块”强制映射（R4c181，血的教训）**：r4c180 我确实 dump 了，但把 `000f: if-eqz {v5} -> 0024` 肉眼读成“mil==0 落下”，实际是“mil==0 **跳走**” ⇒ 极性错版被放行。⇒ 铁律：**每读一条 if-*，必须写明“条件成立→跳到哪个偏移、该偏移处第一条指令是什么、语义是什么”**；跳转目标处是覆盖块还是拒绝块，要指名道姓写出来。
14. **标签名不得暗示真值（R4c181）**：把覆盖块取名 `:r4c180_my`（读起来像“mil=yes”），结果 `if-eqz` 跳过去就变成“mil=no 走这里” ⇒ 名字与语义相反，直接诱发写反。⇒ 铁律：**标签按“跳转条件”命名**（如 `:mil_is_zero_del`），或干脆用 `:del` / `:covered` 这类结构名，绝不用“yes/no”式命名。
15. **探针要能一票定位极性（R4c180→R4c181）**：本批新增 `nIKM p= cov= ok=`（只在 mil==1 打）⇒ “有军事建筑的省”是否被算作候选/是否被覆盖/是否放行，一次抓样全看清。⇒ 铁律：**凡是新增“门/闸”，同时埋一条“门内状态”探针**，别只埋结果端。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

# 5) 源码留痕
shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c181.smali')
print('SRC ok', os.path.getsize(D + 'r6s5/AirForceManager.r4c181.smali'))

# 6) 基线重置
try:
    sz = os.path.getsize('/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt')
    io.open(D + 'r6s5/live_baseline.txt', 'w', encoding='utf-8').write(str(sz))
    print('BASE ok', sz)
except Exception as e:
    print('BASE fail', e)