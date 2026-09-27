# -*- coding: utf-8 -*-
# r5c036a_rename.py —— 消除判读歧义：AFM.updateAIBuildUp 里旧的"造机成功"探针键 p1bT → p1bS
#   （r5c035 引入的状态探针里 "p1b"+"T" = p1bT 表示"总机数"，两者撞名）
import io, sys

AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'


def main():
    af = io.open(AF, encoding='utf-8').read()
    if 'const-string v8, "p1bS"' in af:
        print('已改名（跳过）')
        return 0
    old = '    const-string v8, "p1bT"\n'
    n = af.count(old)
    assert n == 1, '锚点不唯一 (%d)' % n
    af = af.replace(old, '    # r5c036a: 改名以避免与状态探针的 T(总机数) 撞名\n    const-string v8, "p1bS"\n', 1)
    io.open(AF, 'w', encoding='utf-8').write(af)
    print('  [OK] p1bT(成功探针) → p1bS')
    return 0


if __name__ == '__main__':
    sys.exit(main())