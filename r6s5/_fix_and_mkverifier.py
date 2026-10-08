#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
① 修 up(I)V 的守卫寄存器冲突（v2 既是 int 又被当对象用 ⇒ Conflict）
   改用专用 v12。
② 生成"真机验证器" ProbeVerifier：在设备上用 dalvikvm 真正触发 ART 校验，
   逐个调用 AirPosProbe 的方法并把异常打印出来（VerifyError 会被立刻抓到）。
"""
import re, subprocess, os

SM = '/tmp/w3a/smali'
P = SM + '/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'

# ---------- ① 修守卫寄存器 ----------
t = open(P, encoding='utf-8').read()
old = '''    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v2, :safe'''
new = '''    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v12, :safe'''
# 只改 up(I)V 里的那处（ap 里用 v2 是对的，因为 ap 内部 v2 只用于守卫）
m = re.search(r'\.method public static up\(I\)V.*?\n\.end method', t, re.S)
assert m, '找不到 up(I)V'
body = m.group(0)
assert old in body, 'up 里没找到守卫'
body2 = body.replace(old, new, 1)
t = t.replace(body, body2, 1)
open(P, 'w', encoding='utf-8').write(t)
print('① 守卫寄存器已从 v2 改为 v12（up）')

# ---------- ② 生成验证器 ----------
VER = '''.class public LProbeVerifier;
.super Ljava/lang/Object;
.source "ProbeVerifier.java"


.method public static main([Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_up

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->up(I)V

    :try_up_end

    .catch Ljava/lang/Throwable; {:try_up .. :try_up_end} :catch_up

    goto :next_ap

    :catch_up

    move-exception v1

    const-string v2, "up"

    invoke-static {v2, v1}, LProbeVerifier;->rep(Ljava/lang/String;Ljava/lang/Throwable;)V

    :next_ap

    :try_ap

    invoke-static {v0, v0, v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ap(III)V

    :try_ap_end

    .catch Ljava/lang/Throwable; {:try_ap .. :try_ap_end} :catch_ap

    goto :next_ua

    :catch_ap

    move-exception v1

    const-string v2, "ap"

    invoke-static {v2, v1}, LProbeVerifier;->rep(Ljava/lang/String;Ljava/lang/Throwable;)V

    :next_ua

    :try_ua

    const/4 v3, 0x0

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->uaw2(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    :try_ua_end

    .catch Ljava/lang/Throwable; {:try_ua .. :try_ua_end} :catch_ua

    goto :next_ok

    :catch_ua

    move-exception v1

    const-string v2, "uaw2"

    invoke-static {v2, v1}, LProbeVerifier;->rep(Ljava/lang/String;Ljava/lang/Throwable;)V

    :next_ok

    :try_ok

    const/16 v4, 0x12c

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v5

    :try_ok_end

    .catch Ljava/lang/Throwable; {:try_ok .. :try_ok_end} :catch_ok

    goto :done

    :catch_ok

    move-exception v1

    const-string v2, "ok"

    invoke-static {v2, v1}, LProbeVerifier;->rep(Ljava/lang/String;Ljava/lang/Throwable;)V

    :done

    const-string v1, "VERIFIER_DONE"

    invoke-static {v1}, LProbeVerifier;->p(Ljava/lang/String;)V

    return-void
.end method


.method private static rep(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROBE_ERR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
'''
os.makedirs(SM + '/probeverify', exist_ok=True)
open(SM + '/probeverify/ProbeVerifier.smali', 'w', encoding='utf-8').write(VER)
print('② 已生成 ProbeVerifier.smali')
