#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d102：机场界面 12 处硬编码机型名（J-11/H-6/Q-5/J-8）改为动态名称
名称映射：J-11→战斗机(0) H-6→轰炸机(3) Q-5→攻击机(2) J-8→截击机(1)
替换形式（同寄存器、类型同为 String）：
  const-string vR, "XXX"  →
  const/16 vR, 机型索引
  invoke-static/range {vR .. vR}, AFM->airNameForTypeP(I)Ljava/lang/String;
  move-result-object vR
"""
import io, shutil, os

UI = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions.smali'
AFM_CLS = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
if not os.path.exists(UI + '.pre_r6d102'):
    shutil.copyfile(UI, UI + '.pre_r6d102')

s = io.open(UI, encoding='utf-8').read()
MAP = [('J-11', 0), ('J-8', 1), ('Q-5', 2), ('H-6', 3)]
total = 0
for name, idx in MAP:
    for reg in ('v17', 'v25'):
        old = '    const-string %s, "%s"' % (reg, name)
        cnt = s.count(old)
        if cnt == 0:
            continue
        new = ('    const/16 %s, 0x%x\n'
               '    invoke-static/range {v%s .. v%s}, %s->airNameForTypeP(I)Ljava/lang/String;\n'
               '    move-result-object %s') % (reg, idx, reg[1:], reg[1:], AFM_CLS, reg)
        s = s.replace(old, new)
        total += cnt
        print('  %s %s x%d' % (name, reg, cnt))
io.open(UI, 'w', encoding='utf-8').write(s)

t = io.open(UI, encoding='utf-8').read()
print('OK 共替换 %d 处；残留硬编码=%d；调用=%d'
      % (total,
         sum(t.count('const-string %s, "%s"' % (r, n)) for n, _ in MAP for r in ('v17', 'v25')),
         t.count('->airNameForTypeP(I)Ljava/lang/String;')))