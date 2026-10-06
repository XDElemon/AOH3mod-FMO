#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d162 —— r6d161（陆军一列/飞机一列）+ 本次 VerifyError 的两条新防线

血案：r6d161 装机后开局闪退
  java.lang.VerifyError: Province.updateArmyPosY() [0x25]
  cannot access instance field ArmyDivision.key from object of type Reference: java.lang.Object
根因：判定块被插在 `check-cast v2, ArmyDivision;` **之前**。

本门禁：
  a1~a4：复用 check_r6d161.py（4 断言 + 5 负样本）
  a5：位置断言 —— 判定块必须紧跟在 check-cast 之后
  a6：类型流断言 —— check_castorder.py 在三个改动文件上必须 0 处可疑
"""
import subprocess
import sys

ACT = '/sdcard/GLG/历史23/toolchain/act/'
PROV = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali'
ARMY = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/army/ArmyDivision.smali'
PROBE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'

CAST = '    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;\n'
BLOCK_HEAD = '    # === r6d161：空军师与陆军错开（空军用自己的槽位计数 v5）==='


def main():
    bad = []

    # ---- a1~a4：复用 r6d161 门禁 ----
    r = subprocess.run(['python3', ACT + 'check_r6d161.py'], capture_output=True, text=True)
    tail = (r.stdout or '').strip().split('\n')[-1]
    print('  %s: check_r6d161.py → %s' % ('✅' if r.returncode == 0 else '❌', tail))
    if r.returncode != 0:
        bad.append('r6d161 门禁')

    # ---- a5：判定块必须在 check-cast 之后 ----
    s = open(PROV, encoding='utf-8').read()
    i0 = s.index('.method public final updateArmyPosY()V')
    i_cast = s.find(CAST, i0)
    i_blk = s.find(BLOCK_HEAD, i0)
    ok = (i_cast != -1 and i_blk != -1 and i_cast < i_blk)
    print('  %s: a5 块在 check-cast 之后（cast@%d, block@%d）' % ('✅' if ok else '❌', i_cast, i_blk))
    if not ok:
        bad.append('a5 顺序')
    # 反向：不得存在"块紧跟 move-result-object"的旧形态
    badform = 'move-result-object v2\n\n' + BLOCK_HEAD
    c = s.count(badform)
    print('  %s: a5b 无旧形态（命中 %d，应 0）' % ('✅' if c == 0 else '❌', c))
    if c != 0:
        bad.append('a5b 旧形态残留')

    # ---- a6：类型流 ----
    r2 = subprocess.run(['python3', ACT + 'check_castorder.py', PROV, ARMY, PROBE],
                        capture_output=True, text=True)
    tail2 = (r2.stdout or '').strip().split('\n')[-1]
    print('  %s: a6 类型流 → %s' % ('✅' if r2.returncode == 0 else '❌', tail2))
    if r2.returncode != 0:
        bad.append('a6 类型流')

    if bad:
        print('❌ 门禁 r6d162 未过:', bad)
        return 1

    # ---- 负样本 N6：把块挪回 check-cast 之前（模拟本次血案）----
    print('--- 负样本 ---')
    ori = open(PROV, encoding='utf-8').read()
    i_cast = ori.find(CAST, i0)
    i_blk = ori.find(BLOCK_HEAD, i0)
    # 取出块（含到 end 注释）并前移
    end_marker = '    # === r6d161 end ===\n'
    j = ori.index(end_marker, i_blk) + len(end_marker)
    block = ori[i_cast + len(CAST) + 1:j]          # 跳过 cast 后的那个空行
    broken = ori.replace(block, '', 1).replace(CAST, block + CAST, 1)
    open('/tmp/_r6d162_neg.smali', 'w', encoding='utf-8').write(broken)
    r3 = subprocess.run(['python3', ACT + 'check_castorder.py', '/tmp/_r6d162_neg.smali'],
                        capture_output=True, text=True)
    neg_cnt = (r3.stdout or '').count('可疑点')
    print('  %s: N6 块前移（血案复原）被抓到=%s' % ('✅' if r3.returncode != 0 else '❌', r3.returncode != 0))
    if r3.returncode == 0:
        print('❌ 负样本未被抓住')
        return 1

    print('✅ 门禁 r6d162 通过（a1~a4 + a5/a5b + a6 + N6）')
    return 0


if __name__ == '__main__':
    sys.exit(main())