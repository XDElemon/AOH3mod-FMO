#!/usr/bin/env python3
# r6d063 资源暂存：加载图 0..29 + numberOfImages.txt=30 + Bundle.properties 补齐缺号
import io, os, shutil, re, glob, json

SRC = '/sdcard/GLG/历史23/加载图'
STAGE = '/tmp/stage_r6d063'
LD = STAGE + '/assets/ui/loading'
LANG = STAGE + '/assets/game/languages/loading'

os.makedirs(LD, exist_ok=True)
os.makedirs(LANG, exist_ok=True)

imgs = sorted(glob.glob(SRC + '/*.png'))
# 只取扩展名 .png 且是文件
imgs = [p for p in imgs if os.path.isfile(p)]
assert imgs, '加载图目录里没有 png'
mapping = []
for i, p in enumerate(imgs):
    dst = '%s/%d.png' % (LD, i)
    shutil.copyfile(p, dst)
    mapping.append({'idx': i, 'src': os.path.basename(p), 'bytes': os.path.getsize(p)})
io.open(LD + '/numberOfImages.txt', 'w').write('%d\n' % len(imgs))
print('暂存图片 %d 张，numberOfImages=%d' % (len(imgs), len(imgs)))

# ---- Bundle.properties：补齐缺号（把 L25..L42 上移为 L24..L41，NumOfTexts 改为实际条数）----
SRC_B = '/tmp/ld/Bundle.properties'
lines = io.open(SRC_B, encoding='utf-8').read().split('\n')
out, renum, nums = [], 0, []
for ln in lines:
    m = re.match(r'^L(\d+) = (.*)$', ln)
    if m:
        n = int(m.group(1)); body = m.group(2); nums.append(n)
    else:
        m2 = re.match(r'^NumOfTexts\s*=\s*(\d+)\s*$', ln)
        if m2:
            continue  # 稍后统一写
        out.append(ln)
        continue
    # 重新连续编号
    newn = len(nums) - 1
    if newn != n:
        renum += 1
    out.append('L%d = %s' % (newn, body))
# 在 NumOfTexts 位置插入（保持文件结构：第 2 行左右）
txt = '\n'.join(out)
txt = txt.replace('# Loading translation', '# Loading translation\nNumOfTexts = %d' % len(nums))
io.open(LANG + '/Bundle.properties', 'w', encoding='utf-8').write(txt)
print('文案：原编号 =', nums[0], '..', nums[-1], '共', len(nums), '条；重编号处数 =', renum)
print('新文件头 6 行：')
for l in txt.split('\n')[:6]:
    print('   ', l)
json.dump(mapping, io.open('/tmp/stage_r6d063_图片映射.json', 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
print('映射表已写 /tmp/stage_r6d063_图片映射.json')
