from pathlib import Path
p = Path('/sdcard/GLG/历史23/build_inputs/r6d259/check_r6d259.py')
t = p.read_text(encoding='utf-8')
BS = chr(92)
N = BS + 'n'
old2 = "t.replace('return p0', 'return p1', 1)"
assert t.count(old2) == 1, ('old2 count', t.count(old2))
new2 = ("t.replace('disabled -> return original" + N + "    return p0', 'disabled -> return original"
        + N + "    return p1', 1)")
p.write_text(t.replace(old2, new2, 1), encoding='utf-8')
print('N2 fixed (v2)')