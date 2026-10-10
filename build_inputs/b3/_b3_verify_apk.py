# -*- coding: utf-8 -*-
# 核验 b3_v1.apk 内 14 文件与 STAGE 逐一一致 + dex 未变
import zipfile, hashlib, os
A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_b3_v2.apk'
A0 = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d259.apk'
OUT = '/sdcard/GLG/历史23/build_inputs/b3/out'
z = zipfile.ZipFile(A); z0 = zipfile.ZipFile(A0)
ok = 0; bad = []
for root, _, files in os.walk(OUT):
    for fn in files:
        p = os.path.join(root, fn)
        rel = os.path.relpath(p, OUT)
        if hashlib.md5(z.read(rel)).hexdigest() == hashlib.md5(open(p, 'rb').read()).hexdigest():
            ok += 1
        else:
            bad.append(rel)
print('文件一致: %d / %d  BAD=%s' % (ok, ok + len(bad), bad))
print('b3_v1  dex md5 =', hashlib.md5(z.read('classes.dex')).hexdigest())
print('r6d259 dex md5 =', hashlib.md5(z0.read('classes.dex')).hexdigest())
print('apk md5 =', hashlib.md5(open(A, 'rb').read()).hexdigest())