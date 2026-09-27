# -*- coding: utf-8 -*-
# r5c046n_fix.py —— 口径 B：玩家侧自动打击「接活」（让 Airport.autoStrikeOff 成为真实开关）
#   依据《r6s5/调研_r5c046n_玩家自动打击接活_v3定稿.md》§3 施工文本（B → B'）
#   E1 if-ltz v4, :跳过  ->  if-gez v4, :派发      （无玩家 ⇒ 仍派发，保持现状）
#   E2 if-ne v3, v4, :派发 ->  if-ne v3, v4, :跳过 （非玩家机场 ⇒ 跳过，保持现状）
#   E3 删 goto :跳过；插入 iget-boolean v3, v2, Airport;->autoStrikeOff:Z + if-nez v3, :跳过
#      ⇒ 落穿到「派发」：玩家自己的机场 且 autoStrikeOff==0（自动打击开）⇒ 参与每回合自动指派
#
# 用法：python3 r5c046n_fix.py [smali 树根目录]      （默认 /tmp/w3a/smali）
# 约束：本批必须用在 **从 r5c046m 出货 dex 新鲜 baksmali** 的树上；锚点命中 ≠1 时脚本**拒绝写入**。
#       相邻标签由被匹配代码**推导**（不硬编码 :cond_65/:cond_62），故不受 baksmali 标签命名差异影响。
import os, sys, re, hashlib

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
AM = os.path.join(ROOT, 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali')
B = 'Laoc/kingdoms/lukasz/map/battles/'

def md5(p):
    return hashlib.md5(open(p, 'rb').read()).hexdigest()

PAT = re.compile(
    r'if-ltz v4, :(?P<skip>\S+)(?P<w1>\s+)'
    r'iget v3, v2, ' + re.escape(B) + r'Airport;->civID:I(?P<w2>\s+)'
    r'if-ne v3, v4, :(?P<disp>\S+)(?P<w3>\s+)'
    r'goto :(?P<skip2>\S+)')

def main():
    if not os.path.exists(AM):
        print('[FAIL] 找不到 %s' % AM); return 1
    src = open(AM, encoding='utf-8').read()
    before = md5(AM)
    hits = list(PAT.finditer(src))
    print('锚点命中 = %d（要求 1）' % len(hits))
    if len(hits) != 1:
        print('[FAIL] 锚点命中 %d 次 ⇒ 拒绝写入（用错树 / 已被改过 / 需要重新 baksmali）' % len(hits))
        return 1
    m = hits[0]
    skip, disp, skip2 = m.group('skip'), m.group('disp'), m.group('skip2')
    w1, w2, w3 = m.group('w1'), m.group('w2'), m.group('w3')
    print('  推导：跳过标签=%s｜派发标签=%s｜原 goto 目标=%s' % (skip, disp, skip2))

    new = ('if-gez v4, :%s%s'
           'iget v3, v2, %sAirport;->civID:I%s'
           'if-ne v3, v4, :%s%s'
           'iget-boolean v3, v2, %sAirport;->autoStrikeOff:Z%s'
           'if-nez v3, :%s' % (disp, w1, B, w2, skip, w3, B, w3, skip))
    src2 = src[:m.start()] + new + src[m.end():]

    # 后置断言（缺一不可，否则不写盘）
    for s, tag in [('if-gez v4, :%s' % disp, 'E1'),
                   ('if-ne v3, v4, :%s' % skip, 'E2'),
                   ('autoStrikeOff:Z', 'E3a'),
                   ('if-nez v3, :%s' % skip, 'E3b')]:
        if s not in src2:
            print('[FAIL] 后置断言 %s 未命中：%s' % (tag, s)); return 1
    if src2.count(m.group(0)) != 0:
        print('[FAIL] 旧块仍存在 ⇒ 拒绝写入'); return 1
    if src2.count('if-ltz v4, :') != src.count('if-ltz v4, :') - 1:
        print('[FAIL] if-ltz v4 计数异常（应 -1，实测 %d -> %d）'
              % (src.count('if-ltz v4, :'), src2.count('if-ltz v4, :'))); return 1
    if src2.count('autoStrikeOff:Z') != src.count('autoStrikeOff:Z') + 1:
        print('[FAIL] autoStrikeOff 读取点数量异常（应 +1，实测 %d -> %d）'
              % (src.count('autoStrikeOff:Z'), src2.count('autoStrikeOff:Z'))); return 1

    open(AM, 'w', encoding='utf-8').write(src2)
    print('[OK] 三处编辑已写入（E1/E2/E3）')
    print('AirForceManager.smali md5 %s -> %s  (%d B)' % (before[:12], md5(AM)[:12], os.path.getsize(AM)))
    return 0

if __name__ == '__main__':
    sys.exit(main())