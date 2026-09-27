# -*- coding: utf-8 -*-
# r5c024 验收归档（建造队列）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### G.11.8 r5c024 **验收归档**（2026-09-24）
**结论：建造队列已能存档/读档 ✅**（用户实测"差不多"，以下为数据实证）
| 证据 | 内容 |
|---|---|
| 探针（写） | `nE5 Qsave a=2`（存档瞬间该机场队列长度 2）@行129209 |
| 探针（读） | `nE5 Qload a=2`（读档回填后队列长度 2）@行169937 —— 与写侧一致 ✔ |
| **设备侧存档铁证** | `files/airforce_save/Airforce_Data.json`（461B）内容为 `{airports:[{buildQueue:["FIGHTER","FIGHTER"], …}]}` ⇒ **JSON 里真的落了 `buildQueue` 键与两个 `FIGHTER`** ✔ |
| 主/副本一致 | `airforce_save/` 与 `airforce_dbg/` 同尺寸 461B、同 mtime（22:07）|
| 未退化 | `R1main a=1`／`R4civ a=1`／`L1hit a=6440`／`L3unit a=6440` ⇒ 飞机链未受影响 ✔ |
**本样本范围说明（据实）**：本次存档只有 **1 个机场**（`apts=1`、`R4dto a=1`），所以只证到"1 机场 2 排队项"。
多机场队列属**同一循环**（写侧按机场逐个 iput，r5c023 已证该循环覆盖全部 4 个机场）⇒ 逻辑上成立，但**未单独实证**；
建议下次游戏顺手在**另一个机场也排 1 项**再存/读一次，看到多条 `nE5 Qsave/Qload` 即为全覆盖验证（不阻塞归档）。
"""
t = io.open(P, encoding='utf-8').read()
if u'G.11.8' in t:
    print('已存在')
else:
    B = P + '.pre_g118'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.11.8 已写入')

# 交接文档：把 r5c024 行状态改为已验收（整行替换，适配 4 空格/6 空格表）
H = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
t2 = io.open(H, encoding='utf-8').read()
import re
m = re.search(u'\\|\\s*r5c024 \\|[^\\n]*\\|', t2)
if not m:
    print('交接文档未找到 r5c024 行')
else:
    line = m.group(0)
    if u'✅' in line:
        print('交接文档 r5c024 已是已验收')
    else:
        B2 = H + '.pre_arch024'
        if not os.path.exists(B2):
            shutil.copy2(H, B2)
        newline = line.rstrip()
        newline = newline[:newline.rindex(u'|')] + u'| ✅ 已验收（建造队列往返成功：Qsave=2→Qload=2，存档 JSON 含 buildQueue） |'
        io.open(H, 'w', encoding='utf-8').write(t2.replace(line, newline))
        print('OK 交接文档 r5c024 状态置为已验收')