#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B56 防空配置运行时取用（v130）：真 AirDefCfgRt + 数据驱动桩。

新字段（data/air_defense.json）：
  detectRangeReal（蓝盘）/ rangeReal+rangeBonusReal（红盘/开火）/ reloadHours（装填）/ hitChance（命中率）

断言：
  1) engageReal：无雷达 100、有雷达 130（读配置，不再写死）；
  2) detectReal（Real 单位，= 实际探测半径）：反导阵地 240 / 雷达 400 / 中层反导雷达 1200；
  3) hitChance 0.8、reloadHours 1.0；
  4) shotsDue：首次返回阵地数；同一小时再来一次 → 0；过 2 小时 → 阵地数×2；上限 4 倍；
  5) clear() 把装填计时归零。

红样本：命中率写死 0.5 / 忽略雷达加成 / 忽略装填（每回合都满额）。
"""
import io
import json
import os
import shutil
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
JAVA = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles")
SRC = os.path.join(JAVA, "AirDefCfgRt.java")
DATA = os.path.join(ROOT, "data", "air_defense.json")


def cfg_stub():
    d = json.load(io.open(DATA, encoding="utf-8"))
    sites = d["sites"]
    n = len(sites)

    def ints(key):
        return ", ".join(str(int(round(s[key]))) for s in sites)

    def floats(key):
        return ", ".join("%.4ff" % float(s[key]) for s in sites)

    return """package aoc.kingdoms.lukasz.map.battles;

public final class AirDefCfg {
    public static final String[] ID = { %s };
    static final int[] RANGE = { %s };
    static final int[] RANGEBONUS = { %s };
    static final int[] DETECT = { %s };
    static final float[] RELOAD = { %s };
    static final float[] HIT = { %s };

    public static int count() { return %d; }
    public static int rangeRealOf(int i) { return RANGE[i]; }
    public static int rangeBonusRealOf(int i) { return RANGEBONUS[i]; }
    public static int detectRealOf(int i) { return DETECT[i]; }
    public static float reloadHoursOf(int i) { return RELOAD[i]; }
    public static float hitChanceOf(int i) { return HIT[i]; }
}
""" % (", ".join('"%s"' % s["id"] for s in sites), ints("rangeReal"), ints("rangeBonusReal"),
       ints("detectRangeReal"), floats("reloadHours"), floats("hitChance"), n)


STUBS = {
"aoc/kingdoms/lukasz/map/battles/AirDefIds.java": '''package aoc.kingdoms.lukasz.map.battles;

public final class AirDefIds {
    public static int indexOf(String s) {
        for (int i = 0; i < AirDefCfg.ID.length; i++) {
            if (AirDefCfg.ID[i].equals(s)) { return i; }
        }
        return -1;
    }
}
''',
"aoc/kingdoms/lukasz/jakowski/Game_Calendar.java": '''package aoc.kingdoms.lukasz.jakowski;

public class Game_Calendar {
    public static int TURN_ID = 10;
    public static int HOUR = 0;
}
''',
"aoc/kingdoms/lukasz/map/battles/AirForceManager.java": '''package aoc.kingdoms.lukasz.map.battles;

public class AirForceManager {
    private static final AirForceManager INST = new AirForceManager();
    public static java.util.HashSet RADAR = new java.util.HashSet();
    public static java.util.HashSet LONG = new java.util.HashSet();
    public static java.util.HashSet AAA = new java.util.HashSet();
    public static AirForceManager getInstance() { return INST; }
    public boolean hasRadarBuilding(int p) { return RADAR.contains(Integer.valueOf(p)); }
    public boolean hasLongWaveRadarBuilding(int p) { return LONG.contains(Integer.valueOf(p)); }
    public boolean hasAAABuilding(int p) { return AAA.contains(Integer.valueOf(p)); }
}
''',
}

MAIN = r'''
import aoc.kingdoms.lukasz.map.battles.*;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;

public class Main {
    static int fails = 0;
    static void check(String n, boolean ok, String d) {
        if (!ok) { fails++; System.out.println("FAIL " + n + " " + d); }
    }
    static void near(String n, float got, float want) {
        check(n, Math.abs(got - want) < 0.01f, "got=" + got + " want=" + want);
    }

    public static void main(String[] a) {
        // 1) 交战半径
        near("无雷达=100", AirDefCfgRt.engageReal(5), 100.0f);
        AirForceManager.RADAR.add(Integer.valueOf(5));
        near("有雷达=130", AirDefCfgRt.engageReal(5), 130.0f);

        // 2) 探测半径三档
        AirForceManager.RADAR.clear();
        near("反导阵地自带=240", AirDefCfgRt.detectReal(6), 240.0f);
        AirForceManager.RADAR.add(Integer.valueOf(7));
        near("雷达=400", AirDefCfgRt.detectReal(7), 400.0f);
        AirForceManager.LONG.add(Integer.valueOf(8));
        near("长波=1200", AirDefCfgRt.detectReal(8), 1200.0f);

        // 3) 命中率 / 装填
        near("命中率0.8", AirDefCfgRt.hitChance(), 0.8f);
        near("装填1小时", AirDefCfgRt.reloadHours(), 1.0f);

        // 4) 装填节奏：首次 1 轮；同小时再问 0；过 2 小时 2 轮；上限 4 倍
        AirDefCfgRt.clear();
        Game_Calendar.TURN_ID = 20; Game_Calendar.HOUR = 0;
        check("首次满额", AirDefCfgRt.shotsDue(9, 2) == 2, "v=" + AirDefCfgRt.shotsDue(9, 2));
        check("同小时0", AirDefCfgRt.shotsDue(9, 2) == 0, "v=" + AirDefCfgRt.shotsDue(9, 2));
        // 游戏日历是"TURN_ID = 天、HOUR = 小时"，1 回合 = 2 小时
        Game_Calendar.TURN_ID = 20; Game_Calendar.HOUR = 2;   // +2 小时
        int v = AirDefCfgRt.shotsDue(9, 2);
        check("2小时后2轮=4发", v == 4, "v=" + v);
        Game_Calendar.HOUR = 22;                              // 再 +20 小时，封顶 4 倍
        v = AirDefCfgRt.shotsDue(9, 2);
        check("封顶4倍=8发", v == 8, "v=" + v);

        // 5) clear 归零
        AirDefCfgRt.clear();
        check("clear后首次满额", AirDefCfgRt.shotsDue(9, 1) == 1, "v=" + AirDefCfgRt.shotsDue(9, 1));

        if (fails > 0) { System.out.println("B56 失败项: " + fails); System.exit(1); }
        System.out.println("OK B56");
    }
}
'''


def run_case(src_text):
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="adcfg_")
    try:
        src = os.path.join(tmp, "src")
        files_map = dict(STUBS)
        files_map["aoc/kingdoms/lukasz/map/battles/AirDefCfg.java"] = cfg_stub()
        files_map["aoc/kingdoms/lukasz/map/battles/AirDefCfgRt.java"] = src_text
        for rel, body in files_map.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
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
            return False, "javac: " + (cp.stderr or cp.stdout)[-700:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=120)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def red_samples(src):
    cases = {
        "命中率写死0.5": src.replace("float h = AirDefCfg.hitChanceOf(iAAA);", "float h = 0.5f;"),
        "忽略雷达加成": src.replace("float b = AirDefCfg.rangeBonusRealOf(iAAA);", "float b = 0.0f;"),
        "忽略装填": src.replace("int due = (int) ((now - last) / rh);", "int due = 1;"),
    }
    bad = []
    for name, s in cases.items():
        ok, out = run_case(s)
        if ok:
            bad.append(name)
    return bad


def main():
    src = io.open(SRC, encoding="utf-8").read()
    ok, out = run_case(src)
    if not ok:
        print("❌ B56 防空配置运行时失败：\n" + out)
        return 1
    print("  " + out)
    bad = red_samples(src)
    if bad:
        print("❌ 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("  ✅ 红样本 3 组全部变红（命中率/雷达加成/装填）")
    print("✅ B56 防空配置通过（红盘100/130 · 探测240/400/1200 · 装填1h · 命中0.8）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
