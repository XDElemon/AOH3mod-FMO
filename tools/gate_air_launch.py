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
MISSION = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz", "map", "battles",
                       "AirMission.smali")


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


def red_samples(launch_text, mission_text):
    cases = {
        "冷却删掉": launch_text.replace("COOLDOWN_HOURS = 4", "COOLDOWN_HOURS = 0"),
        "弹池初始化删掉": launch_text.replace("AirModelStats.missileCountOf(", "AirModelStats.missileRangeOf("),
        "放宽扫描删掉": launch_text.replace("found = scan(self, mgr.activeMissions, false);", ""),
        "邻省判定删掉": launch_text.replace("p.getNeighboringProvinces(i)", "to"),
        "接线删掉": mission_text.replace("AirLaunch;->tick(L", "AirLaunch;->tickX(L"),
        "旧内核粘回": launch_text.replace("AirProjectileCore.spawnFromMission(",
                                    "AirMissileCore.seedFx(self); AirProjectileCore.spawnFromMission("),
    }
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
    return bad


def main():
    if not os.path.isfile(LAUNCH):
        print("FAIL 缺 src/java/.../AirLaunch.java")
        return 1
    launch_text = io.open(LAUNCH, encoding="utf-8").read()
    mission_text = io.open(MISSION, encoding="utf-8").read()

    errs = check(launch_text, mission_text)
    for e in errs:
        print("FAIL " + e)
    if errs:
        print("❌ B58 发射决策口径不成立：%d 项" % len(errs))
        return 1

    bad = red_samples(launch_text, mission_text)
    if bad:
        print("❌ B58 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("✅ B58 发射决策通过（接线 · 4h 冷却 · 弹池初始化 · 两轮扫描 · 射程三支 · 旧链零残留 · 红样本 6 组）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
