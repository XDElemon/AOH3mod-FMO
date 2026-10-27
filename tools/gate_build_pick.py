#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B51 建造选型闸门（v108）：面板显示哪一架，出厂就是哪一架。

背景（用户 2026-10-28 实测）：面板显示 J36，造出来是 J11。
根因：`Airport.startBuild(AirType)` 只存 4 个类型，出厂时 `stampAirUnit` 又**重新算一次**
best aid；两处算法只要有一点分歧（或科技/代际判定在点击到完工之间变了），显示与出厂就分叉。

修法：点击建造时把"面板这次显示的那一架"记进 `AirBuildPick` 的 FIFO，出厂优先取它。

断言：
  1) `AirBuildPick.takeOrPick`：有记录时返回记录的 aid；没有记录才回落到自动挑选；
  2) 同一 (civ,type) 多次点击按 FIFO 顺序出场（不是 LIFO、不会串类型）；
  3) `clear()` 清空（读档不许把上一局的待出厂串过来）；
  4) 接线：BtnBuild 点击时调 `noteClick(I)V` 且**在 startBuild 之前**；
     `stampAirUnit` 调 `takeOrPick` 且不再直接 `getBestAidForType`；loadSave 调 `AirBuildPick.clear()`。

红样本：不 push（回落 ⇒ 显示≠出厂）/ LIFO / 不按类型分桶 / clear 不生效 / stampAirUnit 退回直接挑选。
"""
import io
import os
import shutil
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
JAVA = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles")
SRC = os.path.join(JAVA, "AirBuildPick.java")
BTN = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/menusInGame/AirForce",
                   "InGame_AirForceOptions$BtnBuild.smali")
AFM = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/map/battles", "AirForceManager.smali")
LOAD = os.path.join(ROOT, "src", "smali", "aoc/kingdoms/lukasz/jakowski/SaveLoad",
                    "LoadSavedGameManager.smali")
PICK = "Laoc/kingdoms/lukasz/map/battles/AirBuildPick;"

STUBS = {
"aoc/kingdoms/lukasz/map/battles/AirForceManager.java": '''package aoc.kingdoms.lukasz.map.battles;

public class AirForceManager {
    /** 桩：自动挑选永远给 0（= J11），用来验证"没有记录才回落" */
    public static int getBestAidForType(int civID, int unitID) { return 0; }
}
''',
"aoc/kingdoms/lukasz/jakowski/Game.java": '''package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.jakowski.Player.Player;

public class Game {
    public static Player player = new Player();
}
''',
"aoc/kingdoms/lukasz/jakowski/Player/Player.java": '''package aoc.kingdoms.lukasz.jakowski.Player;

public class Player {
    public int iCivID = 1;
}
''',
}

MAIN = r'''
import aoc.kingdoms.lukasz.map.battles.AirBuildPick;

public class Main {
    static int bad = 0;

    static void ok(boolean c, String m) {
        if (!c) { bad++; System.out.println("FAIL " + m); }
    }

    enum T { INTERCEPTOR, FIGHTER, ATTACKER, BOMBER }

    public static void main(String[] a) {
        AirBuildPick.clear();
        // 有记录：FIFO 顺序返回
        AirBuildPick.push(1, 1, 48);
        AirBuildPick.push(1, 1, 44);
        ok(AirBuildPick.takeOrPick(1, T.FIGHTER) == 48, "T1 第一次应拿 48");
        ok(AirBuildPick.takeOrPick(1, T.FIGHTER) == 44, "T2 第二次应拿 44（FIFO，不是 LIFO）");
        // 没有记录：回落自动挑选（桩返回 0）
        ok(AirBuildPick.takeOrPick(1, T.FIGHTER) == 0, "T3 没有记录应回落到自动挑选");
        // 分桶：不同类型互不串
        AirBuildPick.clear();
        AirBuildPick.push(1, 0, 32);
        ok(AirBuildPick.takeOrPick(1, T.FIGHTER) == 0, "T4 别的类型的记录不许被拿走");
        ok(AirBuildPick.takeOrPick(1, T.INTERCEPTOR) == 32, "T5 同类型应拿到 32");
        // 不同文明互不串
        AirBuildPick.clear();
        AirBuildPick.push(2, 1, 40);
        ok(AirBuildPick.takeOrPick(1, T.FIGHTER) == 0, "T6 别的文明的记录不许被拿走");
        ok(AirBuildPick.takeOrPick(2, T.FIGHTER) == 40, "T7 本文明应拿到 40");
        // clear（先塞一条，确保"清不清"真的可观测）
        AirBuildPick.push(3, 1, 44);
        AirBuildPick.clear();
        ok(AirBuildPick.takeOrPick(3, T.FIGHTER) == 0, "T8 clear 之后必须回落");
        System.out.println(bad == 0 ? "OK AirBuildPick" : ("FAIL AirBuildPick " + bad));
        System.exit(bad == 0 ? 0 : 1);
    }
}
'''


def static_check():
    errs = []
    btn = io.open(BTN, encoding="utf-8", errors="replace").read()
    if "AirBuildPick;->noteClick(I)V" not in btn:
        errs.append("BtnBuild 没调 AirBuildPick.noteClick（点击时没记录面板显示的那一架）")
    else:
        i_note = btn.find("AirBuildPick;->noteClick(I)V")
        i_build = btn.find("Airport;->startBuild(")
        if i_build >= 0 and i_note > i_build:
            errs.append("BtnBuild 的 noteClick 必须在 startBuild **之前**（否则记录晚于入队）")
    afm = io.open(AFM, encoding="utf-8", errors="replace").read()
    i_head = afm.find(".method public static stampAirUnit")
    i_end = afm.find(".end method", i_head)
    body = afm[i_head:i_end] if i_head >= 0 else ""
    if "AirBuildPick;->takeOrPick(ILjava/lang/Object;)I" not in body:
        errs.append("stampAirUnit 没走 AirBuildPick.takeOrPick（出厂仍是另一套挑选）")
    if "AirForceManager;->getBestAidForType(II)I" in body:
        errs.append("stampAirUnit 里还直接调 getBestAidForType（会绕开记录）")
    load = io.open(LOAD, encoding="utf-8", errors="replace").read()
    if "AirBuildPick;->clear()V" not in load:
        errs.append("loadSave 没清 AirBuildPick（上一局的待出厂会串过来）")
    return errs


def run_case(text):
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="airbuild_")
    try:
        src = os.path.join(tmp, "src")
        for rel, body in STUBS.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
        io.open(os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirBuildPick.java"),
                "w", encoding="utf-8").write(text)
        io.open(os.path.join(src, "Main.java"), "w", encoding="utf-8").write(MAIN)
        files = []
        for dp, _, fs in os.walk(src):
            for f in fs:
                if f.endswith(".java"):
                    files.append(os.path.join(dp, f))
        cls = os.path.join(tmp, "cls")
        os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-nowarn", "-d", cls] + files,
                            capture_output=True, text=True)
        if cp.returncode != 0:
            return False, "javac: " + (cp.stderr or cp.stdout)[-500:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=120)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def red_samples(base):
    cases = {
        "点击不记录（显示≠出厂）": base.replace("        q.add(Integer.valueOf(aid));",
                                        "        // 不记录", 1),
        "LIFO 出场": base.replace("int aid = q.remove(0).intValue();",
                                 "int aid = q.remove(q.size() - 1).intValue();", 1),
        "不按类型分桶": base.replace('        String k = keyOf(civID, typeOrdinal);',
                                    '        String k = keyOf(civID, 0);', 1),
        "不按文明分桶": base.replace('        String k = keyOf(civID, typeOrdinal);',
                                    '        String k = keyOf(0, typeOrdinal);', 1),
        "clear 不生效": base.replace("    public static void clear() {\n        PENDING.clear();",
                                    "    public static void clear() {", 1),
    }
    bad = 0
    for name, text in cases.items():
        if text == base:
            bad += 1
            print("FAIL 红样本未生效（替换没命中）：" + name)
            continue
        ok, out = run_case(text)
        if ok:
            bad += 1
            print("FAIL 红样本未变红：" + name)
        else:
            print("  red ok  %s → %s" % (name, out.splitlines()[0] if out else ""))
    return bad


def main():
    errs = static_check()
    if errs:
        for e in errs:
            print("FAIL " + e)
        return 1
    base = io.open(SRC, encoding="utf-8").read()
    ok, out = run_case(base)
    print(out)
    rc = 0 if ok else 1
    if "--red" in sys.argv:
        if rc != 0:
            return 1
        n = red_samples(base)
        if n:
            print("FAIL %d 个红样本没有变红" % n)
            return 1
    return rc


if __name__ == "__main__":
    sys.exit(main())
