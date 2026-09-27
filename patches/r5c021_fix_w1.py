# -*- coding: utf-8 -*-
# 修 r5c021 的 W1 探针位置：必须放在 getSaveType 的 move-result-object v3 之后
import io
p = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali'
L = io.open(p, encoding='utf-8').read().split('\n')

idx_w1 = [i for i, l in enumerate(L) if 'W1path' in l]
assert len(idx_w1) == 1, 'W1path hits=%d' % len(idx_w1)
a = idx_w1[0]
assert 'e5s' in L[a + 1], L[a + 1]
block = [L[a], L[a + 1]]

idx_g = [i for i, l in enumerate(L) if 'FileManager;->getSaveType' in l and i < a]
g = idx_g[-1]
assert a - g <= 2, 'expect probe near getSaveType: g=%d a=%d' % (g, a)

mv = None
for i in range(a + 1, a + 6):
    if L[i].strip() == 'move-result-object v3':
        mv = i
        break
assert mv is not None, 'move-result-object v3 not found after probe'

L2 = L[:a] + L[a + 2:]
L3 = L2[:mv - 1] + block + L2[mv - 1:]
io.open(p, 'w', encoding='utf-8').write('\n'.join(L3))
print('OK: W1 moved after move-result')
