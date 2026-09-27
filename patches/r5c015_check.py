# -*- coding: utf-8 -*-
# 容错校验（空白不敏感）
import io, re
A = io.open('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali', encoding='utf-8').read()
F = io.open('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali', encoding='utf-8').read()
S = A.split('\n')
i1 = [i for i, l in enumerate(S) if l.startswith('.method private executeAttack')][0]
i2 = [i for i, l in enumerate(S) if l.startswith('.method private a1bReHunt')][0]
i3 = [i for i, l in enumerate(S) if l.startswith('.method private getAirDivKey')][0]
ea = '\n'.join(S[i1:i2]); rb = '\n'.join(S[i2:i3])
def has(pat, txt): return re.search(pat, txt, re.S) is not None
checks = [
    ('registers=10', has(r'\.registers 10', ea)),
    ('gate if-ne 跳过非攻击机', has(r'if-ne v6, v7, :b2c_skip', ea)),
    ('gate if-eqz 跳过手动', has(r'a1bAuto:Z\s*\n\s*if-eqz v6, :b2c_skip', ea)),
    ('gate if-nez 有陆军跳过不开火块', has(r'if-nez v6, :b2c_skip', ea)),
    ('gate goto :cond_5a', has(r'goto :cond_5a', ea)),
    ('gate 在算伤害之前', ea.index(':b2c_skip') < re.search(r'const/4 v4,\s*0x0', ea).start()),
    ('probe nB2c nofire', has(r'nB2c nofire tgt=', ea)),
    ('cap if-lt', has(r'if-lt v4, v5, :rh_cap_done', rb)),
    ('cap 仍调 a1bRetarget 清记录', has(r'if-lt v4, v5, :rh_cap_done.*?a1bRetarget\(II\)I.*?goto :rh_done', rb)),
    ('cap 走 :rh_done 返回 false', has(r'goto :rh_done\s*\n\s*:rh_cap_done', rb)),
    ('cap 在提示门之前', rb.index('if-lt v4, v5, :rh_cap_done') < rb.index('if-eqz v0, :rh_pick')),
    ('cap probe', has(r'nB2 cap hops=1', rb)),
    ('hops 自增', has(r'->a1bHops:I\s*\n\s*add-int/lit8 v10, v10, 0x1\s*\n\s*iput v10, p0, \S*->a1bHops:I', rb)),
    ('AFM a1bAuto 用 v12', has(r'const/4 v12, 0x1\s*\n\s*iput-boolean v12, v5, \S*->a1bAuto:Z', F)),
    ('AFM 半程 0.5f', has(r'const v12, 0x3f000000\s*\n\s*mul-float v6, v6, v12', F)),
    ('字段齐全', '.field public a1bAuto:Z' in A and '.field public a1bHops:I' in A),
]
bad = 0
for n, ok in checks:
    print(('  OK  ' if ok else '  XX  ') + n); bad += 0 if ok else 1
print('BAD =', bad)
assert bad == 0