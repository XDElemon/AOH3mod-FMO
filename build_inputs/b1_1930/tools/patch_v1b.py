# -*- coding: utf-8 -*-
# LOCAL ALIGN v1b: align the four exact anchors of the v1 generator to the
# real r6t007 bytes (blank line is TAB-only, not empty). Output = v1b file.
from pathlib import Path
import sys

BASE = Path('/sdcard/GLG/历史23/build_inputs/b1_1930/inbox')
IN = BASE / 'B1_1930大清理_资源迁移候选生成器_v1.py'
OUT = BASE / 'B1_1930大清理_资源迁移候选生成器_v1b_local_align.py'

BS = chr(92)
N = BS + 'n'
T = BS + 't'
old = 'ImageID: 0,' + N + N + T + T + T + 'TreeColumn'
new = 'ImageID: 0,' + N + T + T + T + N + T + T + T + 'TreeColumn'

s = IN.read_text(encoding='utf-8')
cnt = s.count(old)
print('old-pattern occurrences:', cnt)
if cnt != 4:
    print('UNEXPECTED count; abort')
    sys.exit(2)
s2 = s.replace(old, new)
if s2.count(new) != 4:
    print('post-replace count != 4; abort')
    sys.exit(2)

hdr = ('# LOCAL ALIGN v1b (2026-10-10, Operit local toolchain).' + chr(10) +
       '# vs v1: ONLY the four exact-anchor literals are aligned to real r6t007 bytes.' + chr(10) +
       '# (blank line is TAB-only, not empty; each corrected anchor counts==1).' + chr(10) +
       '# Everything else is byte-identical to v1.' + chr(10))
OUT.write_text(hdr + s2, encoding='utf-8')
print('written:', OUT.name)