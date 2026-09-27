# -*- coding: utf-8 -*-
# R5c014a：给 capture.sh 加"设备日志被截断/轮转 ⇒ 基线自动重置"护栏
import io, shutil
P = '/sdcard/GLG/历史23/toolchain/act/capture.sh'
shutil.copyfile(P, P + '.pre_r5c014')
s = io.open(P, encoding='utf-8').read()

# ① shell 面（--handoff 用的 heredoc）里加同样的检查
OLD_H = '''SZ=\\$(stat -c %s "\\$F"); echo "SZ=\\$SZ"
tail -c +\\$((B+1)) "\\$F" > '$OUTFILE'
'''
NEW_H = '''SZ=\\$(stat -c %s "\\$F"); echo "SZ=\\$SZ"
if [ "\\$SZ" -lt "\\$B" ]; then
  echo "ROTATED=1（设备日志被截断/轮转：SZ=\\$SZ < 基线=\\$B）"
  echo "⇒ 请重置基线后再抓：echo \\$SZ > '$BASELINE_FILE'"
  exit 0
fi
tail -c +\\$((B+1)) "\\$F" > '$OUTFILE'
'''
assert s.count(OLD_H) == 1, 'XX heredoc 锚点命中 %d 次' % s.count(OLD_H)
s = s.replace(OLD_H, NEW_H)

# ② 脚本本体：DELTA 计算前加护栏（现状 SZ<B 会走"无新增量、基线不动"⇒ 永久卡死）
OLD_D = 'DELTA=$((SZ - B))\n'
NEW_D = ('''# R5c014: 护栏 —— 设备日志被截断/轮转时，旧基线（字节偏移）失效
if [ "$SZ" -lt "$B" ]; then
  echo "$SZ" > "$BASELINE_FILE"
  warn "设备日志疑似被截断/轮转（SZ=$SZ < 基线=$B）⇒ 基线已自动重置为 $SZ；本轮不产出样本"
  exit 0
fi
''' + OLD_D)
assert s.count(OLD_D) == 1, 'XX DELTA 锚点命中 %d 次' % s.count(OLD_D)
s = s.replace(OLD_D, NEW_D)

io.open(P, 'w', encoding='utf-8').write(s)
t = io.open(P, encoding='utf-8').read()
ck = [
    ('本体护栏存在', 'R5c014: 护栏' in t),
    ('本体护栏在 DELTA 之前', t.index('R5c014: 护栏') < t.index('DELTA=$((SZ - B))')),
    ('重置动作存在', 'echo "$SZ" > "$BASELINE_FILE"' in t),
    ('heredoc 护栏存在', 'ROTATED=1' in t),
    ('原逻辑保留（落盘==增量 校验）', '[ "$WROTE" = "$DELTA" ]' in t),
]
bad = 0
for n, ok in ck:
    print(('  ✔ ' if ok else '  ✘ ') + n)
    bad += 0 if ok else 1
assert bad == 0, 'XX 护栏自检未过'
badc = [hex(ord(c)) for c in t if ord(c) < 32 and c not in '\n\r\t']
assert not badc, 'XX 控制字符 %s' % badc[:6]
print('OK: r5c014a 抓样护栏完成（备份 capture.sh.pre_r5c014）')