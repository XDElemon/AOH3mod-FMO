# -*- coding: utf-8 -*-
# R5c023：E5 真凶修复 —— 存档 airforce 例程里"机场循环"提前跳出
#  现象：每个文明只写入【第一个机场】（及其飞机）⇒ 读档后其余机场的飞机全丢
#  成因：Save_Airforce_Data 中，某机场的 aircraft 类型循环结束时 `if-eqz v9, :cond_22`
#        跳到了【文明循环头】，而不是【机场循环头】⇒ 直接放弃该文明的其余机场。
#  修法：① 在机场循环头（hasNext(v5) 之前）插标签 :e5_aptloop
#        ② `if-eqz v9, :cond_22` -> `if-eqz v9, :e5_aptloop`
#        ③ 顺手：`if-eqz v6, :cond_22`（Airport 为 null）-> `:e5_aptloop`（只跳过这一个机场，
#           而不是放弃该文明其余机场）
#  极性/无分支核对（纪律⑮）：
#    `if-eqz vX, :L` = "vX == 0 才跳" ⇒ 这里 v9/v6 是 hasNext/cast 结果 ⇒ ==0 表示"没有了/为空" ✔ 方向正确。
#  4 情形模拟：
#    ①该文明 1 个机场：机场循环第2次 hasNext==0 ⇒ 375 跳 :cond_22（去下一个文明）✔
#    ②该文明 4 个机场：第1个的 aircraft 类型循环结束 ⇒ 457 跳 :e5_aptloop ⇒ 继续第2个 ✔（修复点）
#    ③某 Airport 为 null：383 跳 :e5_aptloop ⇒ 跳过它、继续下一个 ✔（原来会放弃整个文明）
#    ④aircraft 为 null：442 `if-eqz v8, :cond_22` —— 该机场无飞机表 ⇒ 直接去下一个文明；
#      此项**保持原样**（若改成 aptloop 会更正确，但属额外行为变更，本批不动，记入观察项）
import io

SGM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali'


def rd(p):
    return io.open(p, encoding='utf-8').read().split('\n')


def wr(p, L):
    io.open(p, 'w', encoding='utf-8').write('\n'.join(L))


def span(L, sig):
    st = [i for i, l in enumerate(L) if l.startswith('.method') and sig in l]
    assert len(st) == 1, 'method %s hits=%d' % (sig, len(st))
    st = st[0]
    for j in range(st + 1, len(L)):
        if L[j].strip() == '.end method':
            return st, j
    raise AssertionError('no end for ' + sig)


L = rd(SGM)
a, b = span(L, 'Save_Airforce_Data(')

# ① 机场循环头加标签（在 `invoke-interface {v5}, Iterator->hasNext()` 之前）
h = [i for i in range(a, b + 1) if 'invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z' in L[i]]
assert len(h) == 1, 'aptloop anchor hits=%d' % len(h)
if ':e5_aptloop' in '\n'.join(L[a:b]):
    print('① 标签已存在，跳过')
else:
    L = L[:h[0]] + ['    :e5_aptloop'] + L[h[0]:]

# 重新定位
a, b = span(L, 'Save_Airforce_Data(')

# ② 类型循环出口：cond_22 -> e5_aptloop
h2 = [i for i in range(a, b + 1) if L[i].strip().startswith('if-eqz v9, :cond_22')]
assert len(h2) == 1, 'typeexit anchor hits=%d %s' % (len(h2), [i + 1 for i in h2])
L[h2[0]] = L[h2[0]].replace(':cond_22', ':e5_aptloop')
print('② 类型循环出口已改为 :e5_aptloop (line %d)' % (h2[0] + 1))

# ③ Airport 为 null：定位"紧跟 check-cast Airport 之后"的那一处
c = [i for i in range(a, b + 1) if 'check-cast v6, Laoc/kingdoms/lukasz/map/battles/Airport;' in L[i]]
assert len(c) == 1, 'cast anchor hits=%d' % len(c)
h3 = [i for i in range(c[0], c[0] + 4) if L[i].strip().startswith('if-eqz v6, :cond_22')]
assert len(h3) == 1, 'nullairport anchor hits=%d near line %d' % (len(h3), c[0] + 1)
L[h3[0]] = L[h3[0]].replace(':cond_22', ':e5_aptloop')
print('③ Airport 空值分支已改为 :e5_aptloop (line %d)' % (h3[0] + 1))

wr(SGM, L)
print('OK: r5c023 完成')