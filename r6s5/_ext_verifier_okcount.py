#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""扩展 ProbeVerifier：连调 120 次 ok(60)，打印放行次数（期望 2）。"""
import os, re

P = '/tmp/pv_smali/ProbeVerifier.smali'
t = open(P, encoding='utf-8').read()

ADD = '''
.method public static okcount()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

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
'''

assert '.method public static okcount()V' not in t
t = t + ADD
# main 里在 VERIFIER_DONE 之前调用 okcount
old = '''    :done

    const-string v1, "VERIFIER_DONE"'''
new = '''    :done

    invoke-static {}, LProbeVerifier;->okcount()V

    const-string v1, "VERIFIER_DONE"'''
assert old in t
t = t.replace(old, new, 1)
open(P, 'w', encoding='utf-8').write(t)
print('已扩展 ProbeVerifier（okcount）')