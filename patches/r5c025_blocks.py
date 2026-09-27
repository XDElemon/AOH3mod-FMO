# -*- coding: utf-8 -*-
# r5c025_blocks.py —— 输出 incr_audit 的参数（file start end ...）
import io
B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
FILES = [B + 'AirDbgLog.smali', B + 'AirForceManager.smali', B + 'Airport.smali', B + 'AirMission.smali']
TAGS = ['nA1e', 'nA2m', 'nA3b', 'nA4d', 'nA4f', 'nA6c', 'nA5t', 'nA9r']
args = []
# helper：整方法作为块
L0 = io.open(FILES[0], encoding='utf-8').read().split('\n')
for i, ln in enumerate(L0):
    if ln.startswith('.method') and 'p0' in ln:
        for j in range(i, len(L0)):
            if L0[j].startswith('.end method'):
                args += [FILES[0], str(i + 1), str(j + 1)]
                break
# 插桩块：const-string 行 → 其后最近一条 invoke-static（含空行）；I5 用 p0Empty 行
for p in FILES:
    L = io.open(p, encoding='utf-8').read().split('\n')
    for i, ln in enumerate(L):
        s = ln.strip()
        hit = False
        for t in TAGS:
            if s == 'const-string v0, "%s"' % t or s == 'const-string v3, "%s"' % t:
                hit = True
        if 'AirDbgLog;->p0Empty' in s:
            hit = True
        if hit:
            end = i + 1
            for j in range(i + 1, min(i + 6, len(L))):
                if 'invoke-static' in L[j] and 'p0' in L[j]:
                    end = j + 1
                    break
            args += [p, str(i + 1), str(end)]
print(' '.join(args))