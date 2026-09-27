# -*- coding: utf-8 -*-
# 1) smali：把行内注释移到上一行（避免依赖工具对行内注释的容忍）
# 2) reach.py：取分支目标时先剥掉 `#` 后的行内注释（工具加固）
import io, os, shutil
SM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
R = '/sdcard/GLG/历史23/reach.py'

# ---- 1) smali
t = io.open(SM, encoding='utf-8').read()
old = (u'    if-eq v0, v5, :gt1    # R5c020b: 修正入口门（原先写成 if-ne ⇒ type1 拿不到动态文案、type3/4 误显）\n')
new = (u'    # R5c020b: 修正入口门（原先写成 if-ne ⇒ type1 拿不到动态文案、type3/4 误显）\n'
       u'    if-eq v0, v5, :gt1\n')
assert t.count(old) == 1, 'smali 锚点 (%d)' % t.count(old)
io.open(SM, 'w', encoding='utf-8').write(t.replace(old, new))
print('  OK smali 行内注释已挪到上一行')

# ---- 2) reach.py 加固
b = R + '.pre_r5c020c'
if not os.path.exists(b):
    shutil.copy2(R, b)
t = io.open(R, encoding='utf-8').read()
o1 = u'        nt = t.strip()\n'
n1 = (u'        nt = t.strip()\n'
      u'        # R5c020c: 取分支目标前先剥掉行内注释（smali 允许 `if-xx ... :lab  # 注释`）\n'
      u'        nt_c = nt.split(u"#")[0].strip()\n')
assert t.count(o1) == 1, 'reach 锚点1 (%d)' % t.count(o1)
t = t.replace(o1, n1)
o2 = u'        if nt.startswith(\'goto\'):\n            lab = nt.split()[-1]\n'
n2 = u'        if nt_c.startswith(\'goto\'):\n            lab = nt_c.split()[-1]\n'
assert t.count(o2) == 1, 'reach 锚点2 (%d)' % t.count(o2)
t = t.replace(o2, n2)
o3 = u'        elif nt.startswith(\'if-\'):\n            lab = nt.split()[-1]\n'
n3 = u'        elif nt_c.startswith(\'if-\'):\n            lab = nt_c.split()[-1]\n'
assert t.count(o3) == 1, 'reach 锚点3 (%d)' % t.count(o3)
t = t.replace(o3, n3)
io.open(R, 'w', encoding='utf-8').write(t)
print('  OK reach.py 已加固（分支目标剥离行内注释）')