# -*- coding: utf-8 -*-
# r5c023 验收归档登记
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
#### G.10.15 r5c023 **验收归档**（2026-09-24）
- 用户实测：**飞机现在能保存住了** ✔（E5「存档丢飞机」结案）
- 结案链：`r5c021`（诊断定位：写读路径不对称 + 读档时机）→ `r5c022`（D1 主文件改 `Gdx.files.absolute`；D2 移除 `initGame` 提前读档）→ **`r5c023`（真凶：`Save_Airforce_Data` 机场循环出口跳错 ⇒ 每个文明只存第一个机场）**
- 现状：`331f9d45aeafb2086634bca672b92bc6` / apk `b83921f4e6221a5b2a58348419e129e8`（装机 MATCH=1）
- 遗留观察项（不阻塞）：`Save_Airforce_Data` 中 `if-eqz v8, :cond_22`（aircraft 为 null 时直接跳到下一个文明）——若某机场飞机表为空会跳过该文明其余机场；可选后续改成 `:e5_aptloop`。
- **新需求（用户）**：**建造队列保存不住** ⇒ 见 §G.11。
"""
t = io.open(P, encoding='utf-8').read()
if u'#### G.10.15' in t:
    print('已存在')
else:
    B = P + '.pre_g1015'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.15 已写入')

H = u'/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
t2 = io.open(H, encoding='utf-8').read()
old = u'| r5c023 | E5 真凶修复：Save_Airforce_Data 机场循环出口跳错（只存第一个机场）→ 新增 :e5_aptloop 并改两处跳转 | `331f9d45…` / `b83921f4…` | 09-24 13:25 | ⏳待真机验收 |'
new = u'| r5c023 | E5 真凶修复：Save_Airforce_Data 机场循环出口跳错（只存第一个机场）→ 新增 :e5_aptloop 并改两处跳转 | `331f9d45…` / `b83921f4…` | 09-24 13:25 | ✅ 已验收（存档丢飞机结案） |'
if old in t2:
    B2 = H + '.pre_arch023'
    if not os.path.exists(B2):
        shutil.copy2(H, B2)
    io.open(H, 'w', encoding='utf-8').write(t2.replace(old, new))
    print('OK 交接文档 r5c023 状态置为已验收')
else:
    print('交接文档行未匹配（可能已改），跳过')