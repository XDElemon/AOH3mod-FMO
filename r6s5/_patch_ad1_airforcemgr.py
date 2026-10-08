#!/usr/bin/env python3
# r6d138-AD1: 删除 AirForceManager.update(I)V 里的旧 AAA 段，改为调用 AirDefense.tick(I)V
import io, shutil, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
shutil.copyfile(P, P + '.pre_r6d138')

lines = io.open(P, encoding='utf-8').read().split('\n')

# 定位 update(I)V 方法
try:
    m_start = next(i for i, l in enumerate(lines) if l.strip() == '.method public update(I)V')
except StopIteration:
    print('FAIL: 未找到 update(I)V'); sys.exit(1)

# 结束位置：方法内第一个 .end method
m_end = next(i for i in range(m_start + 1, len(lines)) if lines[i].strip() == '.end method')

# 起点：updateOffensivesP 之后的那条 getAirportsForCiv
i_off = next(i for i in range(m_start, m_end) if 'updateOffensivesP(I)V' in lines[i])
start = next(i for i in range(i_off + 1, m_end) if 'getAirportsForCiv(I)Ljava/util/List;' in lines[i])

# 终点：start 之后第一条 goto :goto_87
end = next(i for i in range(start, m_end) if lines[i].strip().startswith('goto') and ':goto_87' in lines[i])

print('方法 update(I)V: 行 %d..%d' % (m_start + 1, m_end + 1))
print('删除区: 行 %d..%d（共 %d 行）' % (start + 1, end + 1, end - start + 1))
print('删除区首行: %s' % lines[start].strip())
print('删除区末行: %s' % lines[end].strip())

new = [
    '    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tick(I)V',
    '',
]
lines = lines[:start] + new + lines[end + 1:]

io.open(P, 'w', encoding='utf-8').write('\n'.join(lines))
print('已写入；备份=%s' % (P + '.pre_r6d138'))

# 复核
txt = io.open(P, encoding='utf-8').read()
print('含 AirDefense.tick 调用: %s' % ('AirDefense;->tick(I)V' in txt))
print('残留 hasAAABuilding 调用（应为 0）: %d' % txt.count('hasAAABuilding'))
print('残留 :goto_87（本方法内应为 0，其它方法不影响）: %d' % txt.count(':goto_87'))