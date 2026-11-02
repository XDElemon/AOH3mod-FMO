#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B58 空空发射决策（v143）：口径从 smali 搬进 Java 后的静态防线。

背景：`AirMission.missileTick` 原来 550 行手写 smali 做发射判定（射程/4h 冷却/弹池/目标选择），
v143 整段搬进 `AirLaunch`。这类"搬完少了一句"的事故在真机上的症状是**哑火**或**乱打**，
而且四道闸门照样全绿 —— 所以这里把五条硬口径钉成断言：

  1) `missileTick` 必须把发射决策交给 `AirLaunch.tick`；
  2) 冷却 = 4 游戏小时（少这句 ⇒ 每帧都打，弹池瞬间空）；
  3) 弹池 = `AirModelStats.missileCountOf × 存活机数`（少这句 ⇒ 永远 dry）；
  4) 目标选择必须**两轮扫描**（截击机先找轰炸/对地，找不到再放宽）；
  5) 射程判定必须同时含"同省 / 邻省拓扑 / 中心距"三支（少任何一支 ⇒ 射程手感变）。

红样本：真改源码再跑一次，必须变红（否则闸门是装饰）。
"""
import io
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
JAVA = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles")
LAUNCH = os.path.join(JAVA, "AirLaunch.java")
SALVO = os.path.join(JAVA, "AirSalvo.java")
MISSION = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz", "map", "battles",
                       "AirMission.smali")


SALVO_MAIN = r"""
import aoc.kingdoms.lukasz.map.battles.AirSalvo;

public class Main {
    static int bad = 0;
    static void eq(String n, int got, int want) {
        if (got != want) { bad++; System.out.println("FAIL " + n + " got=" + got + " want=" + want); }
    }
    public static void main(String[] a) {
        // needed = ceil(总血量 / 单发伤害)
        eq("100/40", AirSalvo.needed(100f, 40f, 4), 3);
        eq("100/100", AirSalvo.needed(100f, 100f, 4), 1);
        eq("需 2 发", AirSalvo.needed(110f, 100f, 4), 2);
        eq("无活机", AirSalvo.needed(0f, 50f, 4), 0);
        eq("伤害估不出按架数", AirSalvo.needed(100f, 0f, 4), 4);
        // shots = clamp(need - 在飞, 存活机, 弹池)
        eq("无在飞", AirSalvo.shots(4, 10, 4, 0), 4);
        eq("已在飞 2", AirSalvo.shots(4, 10, 4, 2), 2);
        eq("已覆盖", AirSalvo.shots(4, 10, 4, 4), 0);
        eq("超杀", AirSalvo.shots(4, 10, 4, 5), 0);
        eq("夹存活机数", AirSalvo.shots(2, 10, 6, 0), 2);
        eq("夹弹池", AirSalvo.shots(4, 2, 4, 0), 2);
        eq("需求 0", AirSalvo.shots(4, 10, 0, 0), 0);
        eq("弹池 0", AirSalvo.shots(4, 0, 4, 0), 0);
        eq("无目标机", AirSalvo.shots(0, 10, 4, 0), 0);
        System.out.println(bad == 0 ? "OK AirSalvo" : ("FAIL AirSalvo " + bad));
        System.exit(bad == 0 ? 0 : 1);
    }
}
"""


def run_salvo(text):
    """编译并真跑 AirSalvo（纯函数，无需桩）；返回 (ok, output)。"""
    import shutil
    import subprocess
    import tempfile
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="salvo_")
    try:
        d = os.path.join(tmp, "aoc", "kingdoms", "lukasz", "map", "battles")
        os.makedirs(d)
        io.open(os.path.join(d, "AirSalvo.java"), "w", encoding="utf-8").write(text)
        io.open(os.path.join(tmp, "Main.java"), "w", encoding="utf-8").write(SALVO_MAIN)
        cls = os.path.join(tmp, "cls")
        os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-nowarn", "-d", cls,
                             os.path.join(tmp, "Main.java"), os.path.join(d, "AirSalvo.java")],
                            capture_output=True, text=True)
        if cp.returncode != 0:
            return False, "javac: " + (cp.stderr or cp.stdout)[-400:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=60)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def body_of_method(text, name):
    m = re.search(r"\.method[^\n]*\b%s\([^\n]*\n(.*?)^\.end method" % re.escape(name), text, re.M | re.S)
    return m.group(1) if m else None


def check(launch_text, mission_text):
    errs = []
    mt = body_of_method(mission_text, "missileTick")
    if mt is None:
        return ["缺 AirMission.missileTick"]
    if "AirLaunch;->tick(L" not in mt:
        errs.append("missileTick 没有把发射决策交给 AirLaunch.tick")
    for need, why in (
            ("COOLDOWN_HOURS = 4", "冷却必须是 4 游戏小时（否则每帧齐射）"),
            ("AirModelStats.missileCountOf(", "弹池必须按每机弹数初始化（否则永远 dry）"),
            ("scan(self, mgr.activeMissions, onlyStrike)", "截击机优先扫描那一轮没了"),
            ("scan(self, mgr.activeMissions, false)", "放宽后的第二轮扫描没了（截击机会打不出弹）"),
            ("AirProjectileCore.spawnFromMission(", "开火必须落一颗真弹"),
            ("AirProjectileCore.countAliveAamTargeting(", "齐射去重必须数在飞弹数"),
            ("AirSalvo.needed(", "必须按目标剩余血量算需求发数"),
            ("AirSalvo.shots(", "必须用 AirSalvo.shots 夹齐射量"),
    ):
        if need not in launch_text:
            errs.append(why)
    # v147：旧视觉弹/旧内核整体退场，发射这里一个符号都不许漏回来
    for bad, why in (
            ("AirMissileCore.", "发射不再调旧内核（seedFx/markHourMode 已随字段删除）"),
            ("self.msFx", "发射不许再写旧视觉弹字段 msFx*"),
            ("self.msFlyHours", "旧飞行时长字段已删除"),
            ("self.msHourMode", "旧结算时钟字段已删除"),
    ):
        if bad in launch_text:
            errs.append(why)
    # 射程三支：同省 / 邻省 / 中心距
    if "from == to" not in launch_text:
        errs.append("射程判定缺「同省」分支")
    if "getNeighboringProvinces(" not in launch_text:
        errs.append("射程判定缺「邻省拓扑」分支（大省中心距可能超过射程）")
    if "getCenterX_Real()" not in launch_text or "getCenterY_Real()" not in launch_text:
        errs.append("射程判定缺「中心距」分支")
    return errs


def red_samples(launch_text, mission_text, salvo_text):
    cases = {
        "冷却删掉": launch_text.replace("COOLDOWN_HOURS = 4", "COOLDOWN_HOURS = 0"),
        "弹池初始化删掉": launch_text.replace("AirModelStats.missileCountOf(", "AirModelStats.missileRangeOf("),
        "放宽扫描删掉": launch_text.replace("found = scan(self, mgr.activeMissions, false);", ""),
        "邻省判定删掉": launch_text.replace("p.getNeighboringProvinces(i)", "to"),
        "接线删掉": mission_text.replace("AirLaunch;->tick(L", "AirLaunch;->tickX(L"),
        "旧内核粘回": launch_text.replace("AirProjectileCore.spawnFromMission(",
                                    "AirMissileCore.seedFx(self); AirProjectileCore.spawnFromMission("),
    }
    salvo_bad = salvo_text.replace("int cover = needed - inFlight;", "int cover = needed;")
    bad = []
    for name, (lt, mtx) in (
            ("冷却删掉", (cases["冷却删掉"], mission_text)),
            ("弹池初始化删掉", (cases["弹池初始化删掉"], mission_text)),
            ("放宽扫描删掉", (cases["放宽扫描删掉"], mission_text)),
            ("邻省判定删掉", (cases["邻省判定删掉"], mission_text)),
            ("接线删掉", (launch_text, cases["接线删掉"])),
            ("旧内核粘回", (cases["旧内核粘回"], mission_text)),
    ):
        if not check(lt, mtx):
            bad.append(name)
    # 齐射去重坏掉（不再抵扣在飞）必须变红
    if salvo_bad == salvo_text or run_salvo(salvo_bad)[0]:
        bad.append("齐射去重失效")
    return bad


def main():
    if not os.path.isfile(LAUNCH):
        print("FAIL 缺 src/java/.../AirLaunch.java")
        return 1
    if not os.path.isfile(SALVO):
        print("FAIL 缺 src/java/.../AirSalvo.java")
        return 1
    launch_text = io.open(LAUNCH, encoding="utf-8").read()
    mission_text = io.open(MISSION, encoding="utf-8").read()
    salvo_text = io.open(SALVO, encoding="utf-8").read()

    ok, out = run_salvo(salvo_text)
    if not ok:
        print("FAIL AirSalvo 真值表不成立：" + out)
        return 1

    errs = check(launch_text, mission_text)
    for e in errs:
        print("FAIL " + e)
    if errs:
        print("❌ B58 发射决策口径不成立：%d 项" % len(errs))
        return 1

    bad = red_samples(launch_text, mission_text, salvo_text)
    if bad:
        print("❌ B58 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("✅ B58 发射决策通过（接线 · 4h 冷却 · 弹池初始化 · 两轮扫描 · 射程三支 · 旧链零残留"
          " · 齐射去重 · 红样本 7 组）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
