import zipfile, os, hashlib

src = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6t007.apk'
dst = '/root/history23_repo/assets_r6t007'

z = zipfile.ZipFile(src)
infos = [i for i in z.infolist() if i.filename.startswith('assets/') and not i.is_dir()]

ok = 0
fixed = []
rows = []
for i in infos:
    rel = i.filename[7:]
    parts = rel.split('/')
    ch = False
    for j, p in enumerate(parts):
        if len(p.encode('utf-8', 'replace')) > 200:
            base, ext = os.path.splitext(p)
            safe = ''.join(c for c in base if 31 < ord(c) < 127)[:40].strip() or 'f'
            parts[j] = '%s~%s%s' % (safe, hashlib.sha1(i.filename.encode('utf-8', 'replace')).hexdigest()[:8], ext)
            ch = True
    stored = '/'.join(parts)
    outp = os.path.join(dst, stored)
    if os.path.exists(outp) and os.path.getsize(outp) == i.file_size:
        ok += 1
        rows.append((stored, i.file_size, i.CRC))
        if ch:
            fixed.append((i.filename, stored))
        continue
    d = os.path.dirname(outp)
    if d:
        os.makedirs(d, exist_ok=True)
    with z.open(i) as fs, open(outp, 'wb') as fd:
        while True:
            b = fs.read(1 << 20)
            if not b:
                break
            fd.write(b)
    ok += 1
    rows.append((stored, i.file_size, i.CRC))
    if ch:
        fixed.append((i.filename, stored))

tb = sum(r[1] for r in rows)
print('extracted:', ok, '| fixed:', len(fixed), '| bytes:', tb)

with open(os.path.join(dst, 'MANIFEST_assets_from_apk.tsv'), 'w') as f:
    f.write('stored_name\tbytes\tcrc32\n')
    for n, s, c in rows:
        f.write('%s\t%d\t%08X\n' % (n, s, c))

with open(os.path.join(dst, 'NAME_FIXES.tsv'), 'w') as f:
    f.write('original_name\tstored_name\n')
    for a, b2 in fixed:
        f.write('%s\t%s\n' % (a.replace('\t', ' '), b2))

readme = f"""# 终序千禧 · 装机版素材包（assets）

- 来源 APK：dbg_signed77_v119_r6t007.apk（装机版 r6t007）
- APK md5：8b52f0c60b1cdd4e9b1fb4bda4f06e74（766,114,025 字节）
- 提取时间：2026-10-10（从 APK 的 assets/ 原样提取、拍平）
- 规模：{ok} 个文件，{tb} 字节
- 结构：game/ audio/ ui/ gfx/ apkvision.config（原 assets/ 下内容直接位于本目录）
- 校验：MANIFEST_assets_from_apk.tsv（逐文件 size + CRC32）
- 命名修复：NAME_FIXES.tsv —— {len(fixed)} 个文件原文件名超长/编码损坏（无法在文件系统落地），已按 <可读前缀>~<sha1前8位><扩展名> 重命名，内容不变。
- 用途：本包 = 当前手机上安装版本（r6t007）的完整素材快照，供归档/对照。
"""
with open(os.path.join(dst, 'README.md'), 'w') as f:
    f.write(readme)
print('readme+manifest written')
