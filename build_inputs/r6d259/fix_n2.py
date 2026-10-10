from pathlib import Path
p = Path('/sdcard/GLG/历史23/build_inputs/r6d259/check_r6d259.py')
t = p.read_text(encoding='utf-8')
BS = chr(92)
N = BS + 'n'
old = "ok2 = neg(lambda t: t.replace('return p0', 'return p1', 1), True)"
new = ("ok2 = neg(lambda t: t.replace('disabled -> return original" + N +
       "    return p0', 'disabled -> return original" + N + "    return p1', 1), True)")
assert t.count(old) == 1, t.count(old)
p.write_text(t.replace(old, new, 1), encoding='utf-8')
print('N2 fixed')