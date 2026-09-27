# -*- coding: utf-8 -*-
# r5c037_fix.py —— P1b 真因修复：updateAIBuildUp 的"选机型结果判空"极性反写
#   dex 实装（r5c036a, 3e944acd…）:
#     invoke-static {p1, v6}, Airport->p1bPickAffordable(...)
#     move-result-object v6
#     if-nez v6, :cond_5e      ← v6 非 null（选到了）反而跳去跳过 ⇒ 永远不造
#   正解: if-eqz v6, :cond_5e   （只有 null=没得造 才跳过）
import io, sys

AF = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'


def main():
    af = io.open(AF, encoding='utf-8').read()
    old = '    if-nez v6, :p1b_u_skip\n'
    new = ('    # r5c037 FIX: 选机型结果为 null 才跳过（原写 if-nez ⇒ 选到了反而跳过）\n'
           '    if-eqz v6, :p1b_u_skip\n')
    if 'r5c037 FIX' in af:
        print('已修复（跳过）')
        return 0
    n = af.count(old)
    assert n == 1, '锚点不唯一 (%d)' % n
    af = af.replace(old, new, 1)
    io.open(AF, 'w', encoding='utf-8').write(af)
    print('  [OK] if-nez v6 → if-eqz v6（选到机型才继续）')
    return 0


if __name__ == '__main__':
    sys.exit(main())