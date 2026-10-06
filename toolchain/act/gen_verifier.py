#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_verifier.py —— 从探针类的 smali 自动生成"真机 ART 校验驱动"

做两件事：
 1) 解析指定 smali 类里所有 public static 方法（含参数表）
 2) 生成一个 ProbeVerifier 类：对每个方法，用默认实参（int→0 / float→0.0 / 引用→null）
    在独立 try/catch 里调用一次，把结果打印成
        CHK <方法名> :: OK            （能调用到 = ART 校验通过）
        CHK <方法名> :: <异常类名>     （校验通过但运行期报错，属正常，如缺 libGDX/空参）
    并额外跑一个 ok(60)×120 的采样闸自测（期望放行 2 次）。
 3) 汇编成 dex 并放到 /sdcard/GLG/历史23/pvtest/pv.dex

用法：python3 gen_verifier.py [smali类路径 ...]
"""
import re, os, subprocess, sys

SM = '/tmp/w3a/smali'
DEFAULT_CLASSES = [
    SM + '/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali',
]
# 强制加载清单：(类描述符, 静态方法名, 描述符)
# 说明：探针方法多半会先抛 NoClassDefFoundError（缺 libGDX），导致"本批真正改过的游戏类"
#       根本不被加载 ⇒ 它的 VerifyError 就溜过去了。这里逐个强制触发类加载。
WARMUP = [
    ('Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;', 'getArmyHeight', '()I'),
    ('Laoc/kingdoms/lukasz/map/battles/AirDbgLog;', 'dWrite', '(Ljava/lang/String;)V'),
]
PV_SMALI = '/tmp/pv_smali'
PV_DEX = '/tmp/pv.dex'
PV_OUT = '/sdcard/GLG/历史23/pvtest/pv.dex'


def parse_params(desc):
    """'(III)Ljava/lang/String;' -> ['I','I','I','Ljava/lang/String;']"""
    inside = desc[desc.index('(') + 1:desc.rindex(')')]
    out, i = [], 0
    while i < len(inside):
        c = inside[i]
        if c == '[':
            j = i + 1
            while inside[j] == '[':
                j += 1
            if inside[j] == 'L':
                j = inside.index(';', j) + 1
            out.append(inside[i:j])
            i = j
        elif c == 'L':
            j = inside.index(';', i) + 1
            out.append(inside[i:j])
            i = j
        else:
            out.append(c)
            i += 1
    return out


def gen(cls_paths):
    methods = []          # (类名, 方法名, 参数列表)
    for p in cls_paths:
        t = open(p, encoding='utf-8').read()
        cls = re.search(r'\.class [^\n]*?(L[^;]+;)', t).group(1)
        for m in re.finditer(r'^\.method\s+(?:public\s+)?static\s+(?:final\s+)?([A-Za-z0-9_$]+)(\([^)\n]*\)\S*)\s*$', t, re.M):
            name, desc = m.group(1), m.group(2)
            methods.append((cls, name, parse_params(desc)))
            print('   ', name + desc)
    print('解析到 %d 个方法' % len(methods))

    L = []
    L.append('.class public LProbeVerifier;')
    L.append('.super Ljava/lang/Object;')
    L.append('.source "ProbeVerifier.java"')
    L.append('')
    L.append('.method public static main([Ljava/lang/String;)V')
    L.append('    .registers 12')
    L.append('')
    for k in range(12):
        L.append('    const/4 v%d, 0x0' % k)
        L.append('')

    n = 0
    for cls, name, params in methods:
        n += 1
        tag = '%s_%d' % (name, n)
        # 参数装载：int→0, float→0.0, 引用→null
        movs = []
        idx = 4
        for pt in params:
            if pt in ('F',):
                movs.append(('    const/4 v%d, 0x0' % idx))
            elif pt in ('J', 'D'):
                movs.append(('    const-wide/16 v%d, 0x0' % idx))
                idx += 2
                continue
            elif pt.startswith('L') or pt.startswith('['):
                movs.append(('    const/4 v%d, 0x0' % idx))
            else:
                movs.append(('    const/4 v%d, 0x0' % idx))
            idx += 1
        regs = ', '.join(['v%d' % (4 + i) for i in range(idx - 4)])
        L.append('    :try_%s' % tag)
        L.append('')
        for mv in movs:
            L.append(mv)
            L.append('')
        L.append('    invoke-static {%s}, %s->%s%s' % (regs, cls, name, desc))
        L.append('')
        L.append('    :try_end_%s' % tag)
        L.append('')
        L.append('    .catch Ljava/lang/Throwable; {:try_%s .. :try_end_%s} :catch_%s' % (tag, tag, tag))
        L.append('')
        L.append('    const-string v0, "CHK %s :: OK"' % name)
        L.append('')
        L.append('    invoke-static {v0}, LProbeVerifier;->p(Ljava/lang/String;)V')
        L.append('')
        L.append('    goto :next_%s' % tag)
        L.append('')
        L.append('    :catch_%s' % tag)
        L.append('')
        L.append('    move-exception v1')
        L.append('')
        L.append('    const-string v0, "CHK %s :: "' % name)
        L.append('')
        L.append('    invoke-static {v0, v1}, LProbeVerifier;->e(Ljava/lang/String;Ljava/lang/Throwable;)V')
        L.append('')
        L.append('    :next_%s' % tag)
        L.append('')
    # ④ 强制加载"本批真正改动过的类"（关键：探针方法若走不到这些类，它们就不会被 ART 加载验证）
    for wcls, wname, wdesc in WARMUP:
        tag = 'warm_%s' % wname
        L.append('    :try_%s' % tag)
        L.append('')
        L.append('    invoke-static {}, %s->%s%s' % (wcls, wname, wdesc))
        L.append('')
        L.append('    :try_end_%s' % tag)
        L.append('')
        L.append('    .catch Ljava/lang/Throwable; {:try_%s .. :try_end_%s} :catch_%s' % (tag, tag, tag))
        L.append('')
        L.append('    const-string v0, "WARM %s :: OK"' % wname)
        L.append('')
        L.append('    invoke-static {v0}, LProbeVerifier;->p(Ljava/lang/String;)V')
        L.append('')
        L.append('    goto :next_%s' % tag)
        L.append('')
        L.append('    :catch_%s' % tag)
        L.append('')
        L.append('    move-exception v1')
        L.append('')
        L.append('    const-string v0, "WARM %s :: "' % wname)
        L.append('')
        L.append('    invoke-static {v0, v1}, LProbeVerifier;->e(Ljava/lang/String;Ljava/lang/Throwable;)V')
        L.append('')
        L.append('    :next_%s' % tag)
        L.append('')
    L.append('    invoke-static {}, LProbeVerifier;->okcount()V')
    L.append('')
    L.append('    const-string v0, "VERIFIER_DONE"')
    L.append('')
    L.append('    invoke-static {v0}, LProbeVerifier;->p(Ljava/lang/String;)V')
    L.append('')
    L.append('    return-void')
    L.append('.end method')
    L.append('')
    # okcount：连调 ok(60) 120 次，打印放行次数（期望 2）
    L.append('''.method public static okcount()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :loop

    const/16 v1, 0x78

    if-ge v0, v1, :done

    const/16 v1, 0x3c

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v1

    if-nez v1, :next

    add-int/lit8 v2, v2, 0x1

    :next

    add-int/lit8 v0, v0, 0x1

    goto :loop

    :done

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OKCOUNT="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LProbeVerifier;->p(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LProbeVerifier;->p(Ljava/lang/String;)V

    return-void
.end method

.method private static p(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
''')
    os.makedirs(PV_SMALI, exist_ok=True)
    open(PV_SMALI + '/ProbeVerifier.smali', 'w', encoding='utf-8').write('\n'.join(L))
    print('已生成 %s/ProbeVerifier.smali' % PV_SMALI)


if __name__ == '__main__':
    paths = sys.argv[1:] or DEFAULT_CLASSES
    gen(paths)
    r = subprocess.run(['java', '-cp', '/sdcard/GLG/历史23/toolchain/lib/*:/tmp', 'RunSmali',
                        PV_SMALI, PV_DEX], capture_output=True, text=True)
    print(r.stdout.strip()[-500:], r.stderr.strip()[-300:])
    assert os.path.exists(PV_DEX), '汇编失败'
    os.system('cp -f %s %s' % (PV_DEX, PV_OUT))
    print('✅ 验证器 dex 已更新: %s (%d bytes)' % (PV_OUT, os.path.getsize(PV_OUT)))