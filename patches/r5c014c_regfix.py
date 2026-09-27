# -*- coding: utf-8 -*-
# R5c014c：修正 a1bDispatch 的寄存器方案
#  教训：非 range 的 invoke 格式寄存器字段只有 4 位（≤ v15）⇒ 不能把参数寄存器顶到 v16+
#  改为 .registers16（p0=v14, p1=v15；空出 local v12/v13），插入块只用 v12/v13
import io
P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
s = io.open(P, encoding='utf-8').read()

# ① 寄存器数：17 → 16
old_h = '.method private static a1bDispatch(II)Z\n    .registers 17\n'
assert s.count(old_h) == 1, 'XX 头锚点异常 %d' % s.count(old_h)
s = s.replace(old_h, '.method private static a1bDispatch(II)Z\n    .registers 16\n')

# ② 插入块：改用 v12/v13（不再用 v14）
old_blk = (
    '    # B2b: 记录"本趟是否靠记忆"（选靶那一刻该省不可见 ⇒ 1）\n'
    '    const/4 v14, 0x0\n'
    '    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;\n'
    '    move-result-object v12\n'
    '    if-eqz v12, :abd_blind_done\n'
    '    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
    '    move-result v13\n'
    '    if-nez v13, :abd_blind_done\n'
    '    const/4 v14, 0x1\n'
    ':abd_blind_done\n'
    '    iput-boolean v14, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bBlind:Z\n'
    '    # B2b probe: k=42 该省是否不可见(0/1)\n'
    '    const/16 v13, 0x2a\n'
    '    invoke-static {p0, v14, v13, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n')
new_blk = (
    '    # B2b: 记录"本趟是否靠记忆"（选靶那一刻该省不可见 ⇒ 1）\n'
    '    const/4 v13, 0x0\n'
    '    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;\n'
    '    move-result-object v12\n'
    '    if-eqz v12, :abd_blind_done\n'
    '    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z\n'
    '    move-result v12\n'
    '    if-nez v12, :abd_blind_done\n'
    '    const/4 v13, 0x1\n'
    ':abd_blind_done\n'
    '    iput-boolean v13, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->a1bBlind:Z\n'
    '    # B2b probe: k=42 该省是否不可见(0/1)\n'
    '    const/16 v12, 0x2a\n'
    '    invoke-static {p0, v13, v12, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bLog(IIILjava/lang/String;)V\n')
assert s.count(old_blk) == 1, 'XX 插入块锚点异常 %d' % s.count(old_blk)
s = s.replace(old_blk, new_blk)
io.open(P, 'w', encoding='utf-8').write(s)

# ③ 自检：方法内不得出现 ≥v14 的显式寄存器引用；寄存器数为 16
import re
L = io.open(P, encoding='utf-8').read().split('\n')
i = [k for k, l in enumerate(L) if l.startswith('.method private static a1bDispatch')][0]
j = [k for k in range(i + 1, len(L)) if L[k].startswith('.end method')][0]
body = L[i:j + 1]
mx = -1
for k in range(len(body)):
    for m in re.finditer(r'\bv(\d+)\b', body[k]):
        mx = max(mx, int(m.group(1)))
ck = [
    ('registers = 16（p0=v14, p1=v15，非 range invoke 合法）', body[1].strip() == '.registers 16'),
    ('方法体内最大显式寄存器 ≤ v13', mx <= 13),
    ('省对象为空 ⇒ 保持 0（if-eqz 引用）', 'if-eqz v12, :abd_blind_done' in '\n'.join(body)),
    ('可见(≠0) ⇒ 跳走保持 0（if-nez）', 'if-nez v12, :abd_blind_done' in '\n'.join(body)),
    ('不可见 ⇒ 置 1', 'const/4 v13, 0x1\n:abd_blind_done' in '\n'.join(body)),
    ('iput 用 v13', 'iput-boolean v13, v5,' in '\n'.join(body)),
    ('k=42 探针', 'const/16 v12, 0x2a' in '\n'.join(body)),
]
bad = 0
for n, ok in ck:
    print(('  ✔ ' if ok else '  ✘ ') + n)
    bad += 0 if ok else 1
assert bad == 0, 'XX 自检未过'
print('OK: r5c014c 寄存器方案修正完成（max_explicit_v=%d）' % mx)