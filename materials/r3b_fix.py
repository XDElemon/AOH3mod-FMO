import io, re
p = '/tmp/w3/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
s = io.open(p, encoding='utf-8').read()
# 提取 R3b 块：从 # ===== R3b 到 :r3b_end
m = re.search(r'(    # ===== R3b: radar building range circles =====.*?    :r3b_end\n)', s, re.S)
assert m, 'block not found'
blk = m.group(1)
# 块内 v14 -> v2（mul-float/float-to-int/sub-int/shl-int 相关 v14 全部替换）
n = blk.count('v14')
blk2 = blk.replace('v14', 'v2')
print('v14 occurrences in block:', n)
s2 = s.replace(blk, blk2, 1)
io.open(p, 'w', encoding='utf-8').write(s2)
print('OK replaced')
# 验证块内 v14 剩余
import re as r2
m2 = r2.search(r'(    # ===== R3b: radar building range circles =====.*?    :r3b_end\n)', s2, r2.S)
print('remaining v14 in block:', m2.group(1).count('v14') if m2 else 'N/A')