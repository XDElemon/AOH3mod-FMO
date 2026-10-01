#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d104：飞机名称改为“具体型号”，型号直接取自素材文件名
素材：/sdcard/GLG/贴图补充/空军贴图/{3,4,5,6}代/{中,美,俄,欧}/<国><代><机型><型号>.png
生成：airNameForTypeP(I type)Ljava/lang/String;（当前代固定 3）→ 返回型号，如 MiG-31
若某组合缺文件 → 回退为机型名（战斗机/截击机/攻击机/轰炸机）
"""
import io, os, re, shutil

ROOT = '/sdcard/GLG/贴图补充/空军贴图'
AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
CN = ['中国', '欧洲', '俄罗斯', '美国']          # 组顺序 0..3
DIR2G = {'中': 0, '欧': 1, '俄': 2, '美': 3}
TYPES = ['战斗机', '截击机', '攻击机', '轰炸机']    # 机型索引 0..3

# ---------- 1) 读素材，建表 ----------
tbl = {}   # (gen, group, typeIdx) -> 型号
for gen in (3, 4, 5, 6):
    for d, g in DIR2G.items():
        p = os.path.join(ROOT, '%d代' % gen, d)
        if not os.path.isdir(p):
            continue
        for fn in os.listdir(p):
            if not fn.lower().endswith('.png'):
                continue
            for ti, t in enumerate(TYPES):
                if t in fn:
                    model = fn.split(t, 1)[1]
                    model = model.replace('.png', '').replace('.PNG', '')
                    model = model.split('或')[0].strip()      # “SU-27或J-11” → “SU-27”
                    if model:
                        tbl[(gen, g, ti)] = model
                    break

print('读到型号 %d 条' % len(tbl))
for g in range(4):
    print('  3代 %s: %s' % (CN[g], [tbl.get((3, g, i), '-') for i in range(4)]))

# ---------- 2) 生成方法（代固定 3） ----------
L = ['.method public static airNameForTypeP(I)Ljava/lang/String;',
     '    .registers 4',
     '    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;',
     '    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I',
     '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I',
     '    move-result v0',
     '    const/4 v1, 0x0',
     '    if-ge v0, v1, :gl',
     '    const/4 v0, 0x0',
     ':gl',
     '    const/4 v1, 0x3',
     '    if-le v0, v1, :gh',
     '    const/4 v0, 0x3',
     ':gh',
     '    const/4 v1, 0x0',
     '    if-ge p0, v1, :tl',
     '    const/4 p0, 0x0',
     ':tl',
     '    const/4 v1, 0x3',
     '    if-le p0, v1, :th',
     '    const/4 p0, 0x3',
     ':th']
for gi in range(4):
    if gi < 3:
        L.append('    const/4 v1, 0x%x' % gi)
        L.append('    if-eq v0, v1, :N%d' % gi)
    else:
        L.append('    goto :N3')
for gi in range(4):
    L.append(':N%d' % gi)
    for ti in range(4):
        if ti < 3:
            L.append('    const/4 v1, 0x%x' % ti)
            L.append('    if-eq p0, v1, :N%d_%d' % (gi, ti))
        else:
            L.append('    goto :N%d_3' % gi)
    for ti in range(4):
        L.append(':N%d_%d' % (gi, ti))
        name = tbl.get((3, gi, ti), TYPES[ti])
        L.append('    const-string v0, "%s"' % name)
        L.append('    return-object v0')
L.append('.end method')
NEW = '\n'.join(L) + '\n'

# ---------- 3) 替换方法体 ----------
if not os.path.exists(AFM + '.pre_r6d104'):
    shutil.copyfile(AFM, AFM + '.pre_r6d104')
s = io.open(AFM, encoding='utf-8').read()
a = s.find('.method public static airNameForTypeP(I)')
b = s.find('.end method', a) + len('.end method\n')
assert a > 0 and b > a, (a, b)
s = s[:a] + NEW + s[b:]
io.open(AFM, 'w', encoding='utf-8').write(s)
print('OK 方法已替换（%d 行）' % NEW.count('\n'))