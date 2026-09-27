# -*- coding: utf-8 -*-
# R5b003：给 a1Scan 的候选判定补「开战判定」（精确到目标国）
#
# 位置：a1Scan 里「省主 != 我方」判定之后、查 a1LastDisp 之前
# 语义：DiplomacyManager.isAtWar(我方civ, 目标省主civ)
#         -> true(1)  交战   => 不跳，继续走后面的限流/派发
#         -> false(0) 未交战 => 跳过该候选（if-eqz 跳 = 结果为 0 才跳）
# 极性自查（本项目已翻车多次，这里写死）：
#   if-eqz  = 等于 0 才跳     if-nez = 不等于 0 才跳
#   我们要「未交战才跳过」 => 必须 if-eqz（结果==0 跳）
#   若写成 if-nez => 变成「交战的跳过、未交战的照打」= 完全反了
import io, shutil, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = P + '.bak_r5b003'

src = io.open(P, encoding='utf-8').read()

# ---------- 0) 幂等 ----------
assert 'R5b003:' not in src, '已打过 R5b003，先回滚'
assert 'a1Scan(I)V' in src, '找不到 a1Scan'

shutil.copyfile(P, BAK)
print('备份 ->', BAK)

# ---------- 1) 定位锚点（唯一） ----------
ANCHOR = 'if-eq v13, p0, :sc_in_next'
n = src.count(ANCHOR)
assert n == 1, '锚点不唯一：%d 处' % n
idx = src.index(ANCHOR)
line_start = src.rindex('\n', 0, idx) + 1
indent = src[line_start:idx]
assert indent.strip() == '', '缩进解析异常: %r' % indent

ins_end = src.index('\n', idx) + 1
after = src[ins_end:ins_end + 200]
assert 'a1LastDisp' in after, '锚点后面不是 a1LastDisp，位置不对：%r' % after[:80]

# ---------- 2) 插入（4 行：注释 + invoke + move-result + if-eqz） ----------
INSERT = (
    indent + '# R5b003: 开战判定（精确到目标国）：未交战 -> 跳过\n' +
    indent + 'invoke-static {p0, v13}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z\n' +
    indent + 'move-result v14\n' +
    indent + 'if-eqz v14, :sc_in_next\n'
)
src = src[:ins_end] + INSERT + src[ins_end:]
io.open(P, 'w', encoding='utf-8').write(src)
print('OK: 开战判定已插入')

# ---------- 3) 自检（真值表 + 极性反例） ----------
CHK_CALL = 'invoke-static {p0, v13}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z'
CHK_MR = 'move-result v14'
CHK_JMP = 'if-eqz v14, :sc_in_next'

need = [CHK_CALL, CHK_MR, CHK_JMP]
bad = 0
for s in need:
    ok = s in src
    print(('  OK  ' if ok else '  XX  ') + s)
    bad += 0 if ok else 1

# 顺序必须连续：invoke -> move-result -> if-eqz
i0 = src.index(CHK_CALL)
seg = src[i0:i0 + 260]
order_ok = (CHK_MR in seg) and (CHK_JMP in seg) and (seg.index(CHK_MR) < seg.index(CHK_JMP))
print(('  OK  ' if order_ok else '  XX  ') + '顺序 invoke -> move-result -> if-eqz')
bad += 0 if order_ok else 1

# 反例：绝不能出现 if-nez（那是反的）
rev = 'if-nez v14, :sc_in_next' in src
print(('  OK  ' if not rev else '  XX  ') + '无反向写法 if-nez v14（有=极性反了）')
bad += 1 if rev else 0

# 目标国 civID 必须仍在 v13（插入点之前刚算出来，插入后没被覆盖）
seg2 = src[max(0, i0 - 300):i0]
print(('  OK  ' if 'move-result v13' in seg2 else '  XX  ') + '插入点前 v13 = 目标省 civID')
bad += 0 if 'move-result v13' in seg2 else 1

print()
print('真值表：')
print('  交战   isAtWar=1  v14=1  if-eqz 不跳 -> 继续限流/派发   （期望：打）')
print('  未交战 isAtWar=0  v14=0  if-eqz 跳   -> 跳过该候选       （期望：不打）')
print()
print('自检: %s' % ('通过' if bad == 0 else '不合格 %d 项' % bad))
assert bad == 0
print('OK: r5b003 补丁完成')
