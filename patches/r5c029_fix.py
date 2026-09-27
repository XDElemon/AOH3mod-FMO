# -*- coding: utf-8 -*-
# r5c029_fix.py —— P1a 极性三修（按子代理报告 AFM:2887/1037/1060，逐条核实后落）
# 说明：本项目 smali 里 cmpl-float 结果 v = (rnd<0.1 ? -1 : (rnd==0.1 ? 0 : +1))
#       极性铁律：if-ltz = "v<0 才跳"；if-gez = "v>=0 才跳"；if-eq = "相等才跳"；if-ne = "不等才跳"
import io, os, shutil, sys, time

F = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
BAK = F + '.pre_r5c029'

FIXES = [
    # (anchor_old, anchor_new, 说明, 期望最终语义)
    ('    if-gez v4, :cond_20',
     '    # r5c029 FIX-1: 无玩家判定极性（if-gez 会在"有玩家"时跳过 ⇒ AI 机场永不派发）\n    if-ltz v4, :cond_20',
     '② 派发判据 无玩家分支（AFM:2887）',
     'v4<0（无玩家）⇒ 跳过；有玩家时继续比较 airport.civID != player.iCivID ⇒ 派发'),

    ('    if-ltz v0, :p0_blk1',
     '    # r5c029 FIX-2: 概率门极性（if-ltz 使 10%/90% 反置 ⇒ 原为 ~90% 派发）\n    if-gez v0, :p0_blk1',
     '③ 概率门 0.1（AFM:1037）',
     'cmpl 后 v0>=0（rnd>=0.1）⇒ 跳 :p0_blk1 记 k=1 返回；仅 rnd<0.1（10%）才继续'),

    ('    if-gez v3, :p0_blk3',
     '    # r5c029 FIX-3: 选靶门极性（if-gez 使"有目标⇒放弃"、"无目标(-1)⇒造畸形任务"）\n    if-ltz v3, :p0_blk3',
     '④ 战时选靶门（AFM:1060）',
     'v3<0（无可见目标）⇒ 跳 :p0_blk3 返回；v3>=0 才 createStrategicBombing'),
]


def main():
    t = io.open(F, encoding='utf-8').read()

    # 0) 幂等：已改过则直接退出
    if 'r5c029 FIX-1' in t:
        print('r5c029 已应用（幂等退出）')
        return 0

    # 1) 备份
    if not os.path.exists(BAK):
        shutil.copy2(F, BAK)
        print('backup -> %s' % BAK)

    # 2) 逐条断言唯一性 + 替换
    for old, new, tag, want in FIXES:
        n = t.count(old)
        assert n == 1, '锚点不唯一（%d 处）: %r' % (n, old.strip())
        t = t.replace(old, new, 1)
        print('%-34s OK  %s' % (tag, old.strip()))

    # 3) 反向断言：旧串必须已消失、每个新串恰一处
    for old, new, tag, want in FIXES:
        assert t.count(old) == 0, '旧串残留: %r' % old.strip()
        assert t.count(new.strip().split('\n')[-1]) == 1, '新串不唯一: %r' % new

    # 4) 同时断言"不该动的地方没动"（本批只许改这三行）
    must_keep = {'if-ne v3, v4, :p0_disp': 1,   # ②b 已修对的那条
                 'if-eq v3, v4, :p0_disp': 1,   # mode==AI 判据
                 'if-nez v5, :p0_blk4': 1,      # 空机组丢弃
                 'if-eqz v0, :cond_3c': 3}      # 战时/和平分支（同名标签在别的方法里还有 2 处）
    for k, exp in must_keep.items():
        assert t.count(k) == exp, '受保护指令被动过: %r (期望 %d，实际 %d)' % (k, exp, t.count(k))

    io.open(F, 'w', encoding='utf-8').write(t)
    print('r5c029 极性三修完成')
    for old, new, tag, want in FIXES:
        print('  %-34s 期望语义: %s' % (tag, want))
    return 0


if __name__ == '__main__':
    sys.exit(main())
