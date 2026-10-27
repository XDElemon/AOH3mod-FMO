#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B46 M1d 真实运动学离线回归（v98）：真 AirCraft + 真 AirMotion + 手写桩。

断言：
  1) 换目标后**真的转弯**（轨迹偏离直线，按最大转向率逐步转，不瞬转）；
  2) 机头 = 运动切线（headingOf = heading-180 归一化）；
  3) 同样速度下，走 4 倍距离 ≈ 4 倍帧数才到（不再有固定计时器）；
  4) PLANNING 不推进；EXECUTING 不推进；
  5) flightProgress 单调 0→1，到达置 1；
  6) AirPos 记录的是运动学坐标。
"""
import io
import os
import re
import shutil
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
JAVA = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles")
AIR_CRAFT = os.path.join(JAVA, "AirCraft.java")
AIR_MOTION = os.path.join(JAVA, "AirMotion.java")

STUBS = {
"aoc/kingdoms/lukasz/map/battles/AirMission.java": '''package aoc.kingdoms.lukasz.map.battles;

import java.util.ArrayList;
import java.util.List;

public class AirMission {
    public long missionID;
    public int sourceProvinceID;
    public int targetProvinceID;
    public int airDivisionAtProvinceID;
    public Airport sourceAirport;
    public List aliveAircraft = new ArrayList();
    public List assignedAircraft = new ArrayList();
    public float flightProgress;
    public int distanceToTarget;
    public Object state;
}
''',
"aoc/kingdoms/lukasz/map/battles/Airport.java": '''package aoc.kingdoms.lukasz.map.battles;

public class Airport { public int provinceID; public int civID; }
''',
"aoc/kingdoms/lukasz/map/battles/AirUnit.java": '''package aoc.kingdoms.lukasz.map.battles;

public class AirUnit { public float speed; public float agility; public boolean isAlive = true; public boolean isInFlight; }
''',
"aoc/kingdoms/lukasz/map/battles/AirMissileCore.java": '''package aoc.kingdoms.lukasz.map.battles;

public class AirMissileCore {
    public static float MS_PER_TURN = 100.0f;
    public static float speedDiv() { return MS_PER_TURN; }
}
''',
"aoc/kingdoms/lukasz/map/battles/AirPos.java": '''package aoc.kingdoms.lukasz.map.battles;

import java.util.HashMap;

public class AirPos {
    public static final HashMap REC = new HashMap();
    public static void record(Object m, int x, int y) {
        AirMission a = (AirMission) m;
        REC.put(Long.valueOf(a.missionID), new int[] { x, y });
    }
    public static boolean worldOf(long id, long nowMs, float[] out) {
        int[] v = (int[]) REC.get(Long.valueOf(id));
        if (v == null) return false;
        out[0] = v[0];
        out[1] = v[1];
        return true;
    }
    public static void clear() { REC.clear(); }
}
''',
"aoc/kingdoms/lukasz/jakowski/Game.java": '''package aoc.kingdoms.lukasz.jakowski;

import java.util.HashMap;
import aoc.kingdoms.lukasz.map.province.Province;

public class Game {
    public static final HashMap PROVINCES = new HashMap();
    public static Province getProvince(int id) {
        return (Province) PROVINCES.get(Integer.valueOf(id));
    }
}
''',
"aoc/kingdoms/lukasz/map/province/Province.java": '''package aoc.kingdoms.lukasz.map.province;

public class Province {
    public int iProvinceID;
    public int cx;
    public int cy;
    public int shiftX;
    public int shiftY;
    // v98 修正：世界坐标用 getCenterX()（已乘 iMapScale），不是 _Real
    public int getCenterX() { return cx; }
    public int getCenterY() { return cy; }
    public int getShiftX() { return shiftX; }
    public int getShiftY() { return shiftY; }
    public int getCenterX_Real() { return cx; }
    public int getCenterY_Real() { return cy; }
}
''',
}

MAIN = r'''
import java.lang.reflect.Field;
import java.util.HashMap;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.battles.AirCraft;
import aoc.kingdoms.lukasz.map.battles.AirMissileCore;
import aoc.kingdoms.lukasz.map.battles.AirMission;
import aoc.kingdoms.lukasz.map.battles.AirMotion;
import aoc.kingdoms.lukasz.map.battles.AirPos;
import aoc.kingdoms.lukasz.map.battles.AirUnit;
import aoc.kingdoms.lukasz.map.battles.Airport;
import aoc.kingdoms.lukasz.map.province.Province;

public class Main {
    static int bad = 0;
    enum St { PLANNING, EN_ROUTE, EXECUTING, RETURNING, COMPLETED, ABORTED }

    static void ok(boolean c, String m) {
        if (!c) { bad++; System.out.println("FAIL " + m); }
    }

    static Province prov(int id, int x, int y) {
        Province p = new Province();
        p.iProvinceID = id; p.cx = x; p.cy = y;
        Game.PROVINCES.put(Integer.valueOf(id), p);
        return p;
    }

    static AirMission mission(long id, int src, int tgt, St st, float speed, float agility) {
        AirMission m = new AirMission();
        m.missionID = id;
        m.sourceProvinceID = src;
        m.targetProvinceID = tgt;
        m.airDivisionAtProvinceID = src;
        m.state = st;
        AirUnit u = new AirUnit();
        u.speed = speed; u.agility = agility;
        m.aliveAircraft.add(u);
        Airport ap = new Airport();
        ap.provinceID = src;
        m.sourceAirport = ap;
        return m;
    }

    /** 用反射把 last-ms 调到"dtMs 之前"，让 AirMotion 收到确定的帧间隔。 */
    static void tick(AirMission m, long dtMs) throws Exception {
        Field f = AirMotion.class.getDeclaredField("LAST_MS");
        f.setAccessible(true);
        HashMap last = (HashMap) f.get(null);
        last.put(Long.valueOf(m.missionID), Long.valueOf(System.currentTimeMillis() - dtMs));
        AirMotion.step(m);
    }

    static float craftX(AirMission m) throws Exception {
        Field f = AirMotion.class.getDeclaredField("CRAFT");
        f.setAccessible(true);
        HashMap c = (HashMap) f.get(null);
        return ((AirCraft) c.get(Long.valueOf(m.missionID))).x;
    }

    static void reset() throws Exception {
        AirPos.clear();
        AirMotion.clear();
        Game.PROVINCES.clear();
        AirMissileCore.MS_PER_TURN = 100.0f;
    }

    public static void main(String[] a) throws Exception {
        // 场景：A(0,0) → 右(200,0) → 上(0,-200) 换目标；速度 800（40/回合），机动 0.86
        reset();
        prov(1, 0, 0);
        prov(2, 200, 0);
        prov(3, 0, -200);
        AirMission m = mission(1L, 1, 2, St.EN_ROUTE, 800f, 0.86f);
        for (int i = 0; i < 6; i++) tick(m, 100); // 先向右飞一段（每帧 0.5 回合 = 20px）
        float x1 = craftX(m);
        ok(x1 > 40, "T1 前段应向右飞，x=" + x1);
        m.targetProvinceID = 3; // 目标换到正上方 → 必须转弯
        float maxX = x1;
        for (int i = 0; i < 40; i++) {
            tick(m, 100);
            maxX = Math.max(maxX, craftX(m));
        }
        // 转弯率 ~120°/回合，0.5 回合/帧 → 每帧 ~60°，需要 2 帧转过 90°；x 会继续涨一段再回头
        ok(maxX > x1 + 5, "T1 换目标后应继续向前冲再转（maxX=" + maxX + "）");
        ok(craftX(m) < maxX - 20, "T1 必须真的转过来（x 回落）");
        ok(m.flightProgress > 0.05f && m.flightProgress <= 1.0f, "T1 progress=" + m.flightProgress);

        // T2 机头 = 运动切线：朝 +x 时 heading=0 → 精灵旋转 = -180→+180，朝上 heading=-90 → 90
        reset();
        prov(1, 0, 0); prov(2, 0, -100);
        AirMission m2 = mission(2L, 1, 2, St.EN_ROUTE, 800f, 0.86f);
        tick(m2, 10); // 初始化（朝向=目标方向 -90）
        float h = AirMotion.headingOf(m2);
        ok(Math.abs(h - 90.0f) < 1.0f, "T2 朝上时机头旋转应≈90°，实际 " + h);

        // T3 距离 → 时间：同样速度/步长，4 倍距离 ≈ 4 倍帧数
        reset();
        prov(1, 0, 0); prov(2, 100, 0); prov(3, 400, 0);
        AirMission near = mission(3L, 1, 2, St.EN_ROUTE, 800f, 0.86f);
        AirMission far = mission(4L, 1, 3, St.EN_ROUTE, 800f, 0.86f);
        int nNear = 0, nFar = 0;
        // 每帧 0.5 回合 = 20px ⇒ 100px≈5帧、400px≈20帧
        while (nNear < 200 && near.flightProgress < 0.999f) { tick(near, 100); nNear++; }
        while (nFar < 200 && far.flightProgress < 0.999f) { tick(far, 100); nFar++; }
        ok(nNear >= 3 && nNear <= 8, "T3 100px 应约 5 帧到，实际 " + nNear);
        ok(nFar >= 4 * nNear - 3 && nFar <= 4 * nNear + 3,
                "T3 400px 帧数应≈4×近程（near=" + nNear + " far=" + nFar + "）");

        // T4 状态门控：PLANNING / EXECUTING 不推进
        reset();
        prov(1, 0, 0); prov(2, 100, 0);
        AirMission plan = mission(5L, 1, 2, St.PLANNING, 800f, 0.86f);
        tick(plan, 100); tick(plan, 100);
        ok(Math.abs(craftX(plan)) < 0.001f, "T4 PLANNING 不应移动，x=" + craftX(plan));
        AirMission exe = mission(6L, 1, 2, St.EXECUTING, 800f, 0.86f);
        tick(exe, 100); tick(exe, 100);
        ok(Math.abs(craftX(exe)) < 0.001f, "T4 EXECUTING 不应移动，x=" + craftX(exe));

        // T5 AirPos 记录运动学坐标（与 craft 一致）
        reset();
        prov(1, 0, 0); prov(2, 200, 0);
        AirMission m5 = mission(7L, 1, 2, St.EN_ROUTE, 800f, 0.86f);
        tick(m5, 100);
        float[] out = new float[2];
        ok(AirPos.worldOf(7L, System.currentTimeMillis(), out), "T5 AirPos 应有记录");
        ok(Math.abs(out[0] - craftX(m5)) < 1.5f, "T5 AirPos.x=" + out[0] + " craft=" + craftX(m5));

        // T6 progress 单调 & 到达置 1
        reset();
        prov(1, 0, 0); prov(2, 100, 0);
        AirMission m6 = mission(8L, 1, 2, St.EN_ROUTE, 800f, 0.86f);
        float last = -1f;
        boolean mono = true;
        for (int i = 0; i < 30; i++) {
            tick(m6, 100);
            if (m6.flightProgress + 1e-4f < last) mono = false;
            last = m6.flightProgress;
        }
        ok(mono, "T6 progress 应单调不减");
        ok(Math.abs(m6.flightProgress - 1.0f) < 1e-4f, "T6 到达后 progress 应=1，实际 " + m6.flightProgress);

        System.out.println(bad == 0 ? "OK AirMotion" : ("FAIL AirMotion " + bad));
        System.exit(bad == 0 ? 0 : 1);
    }
}
'''


def static_check(motion_text):
    """静态：AirMotion 的**代码**里不许出现 getCenterX_Real/getCenterY_Real（那是未缩放坐标，
    只允许出现在注释里）。v98 的"飞机飞出去"就是踩了这个。"""
    errs = []
    for i, line in enumerate(motion_text.split("\n"), 1):
        code = line.split("//")[0].strip()
        if code.startswith("*") or code.startswith("/*") or code.startswith("*/"):
            continue
        if "getCenterX_Real" in code or "getCenterY_Real" in code:
            errs.append("AirMotion.java:%d 用了未缩放坐标" % i)
    return errs


def run_case(motion_text, label):
    """编译并跑一次；返回 (ok, output)。"""
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="airmotion_")
    try:
        src = os.path.join(tmp, "src")
        for rel, body in STUBS.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
        dst = os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirCraft.java")
        io.open(dst, "w", encoding="utf-8").write(io.open(AIR_CRAFT, encoding="utf-8").read())
        dst = os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirMotion.java")
        io.open(dst, "w", encoding="utf-8").write(motion_text)
        io.open(os.path.join(src, "Main.java"), "w", encoding="utf-8").write(MAIN)
        files = []
        for dp, _, fs in os.walk(src):
            for f in fs:
                if f.endswith(".java"):
                    files.append(os.path.join(dp, f))
        cls = os.path.join(tmp, "cls"); os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-nowarn", "-d", cls] + files,
                            capture_output=True, text=True)
        if cp.returncode != 0:
            return False, "javac: " + (cp.stderr or cp.stdout)[-600:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=120)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def red_samples():
    base = io.open(AIR_MOTION, encoding="utf-8").read()
    cases = [
        ("坐标空间回退", base.replace("float tx = worldCx(tp);",
                                   "float tx = (float) tp.getCenterX_Real();", 1)),
        ("去掉状态门控", base.replace("if (ord == 1 || ord == 3) {", "if (true) {", 1)),
        ("瞬转（不限转向率）", base.replace("boolean flying = c.step(dtTurns, tx, ty);",
                                            "c.heading = (float) Math.toDegrees(Math.atan2(ty - c.y, tx - c.x));"
                                            " boolean flying = c.step(dtTurns, tx, ty);", 1)),
        ("不写 AirPos", base.replace("AirPos.record(m, outX, outY);", "", 1)),
    ]
    bad = 0
    for name, text in cases:
        se = static_check(text)
        if se:
            print("  red ok  %s → %s" % (name, se[0]))
            continue
        ok, out = run_case(text, name)
        if ok:
            bad += 1
            print("FAIL 红样本未变红：" + name)
        else:
            print("  red ok  %s → %s" % (name, out.splitlines()[0] if out else ""))
    return bad


def main():
    base = io.open(AIR_MOTION, encoding="utf-8").read()
    errs = static_check(base)
    if errs:
        for e in errs:
            print("FAIL " + e)
        return 1
    ok, out = run_case(base, "base")
    print(out)
    return 0 if ok else 1


def _unused_old_main():
    javac, java = shutil.which("javac"), shutil.which("java")
    if not javac or not java:
        print("FAIL B46 缺 javac/java"); return 1
    tmp = tempfile.mkdtemp(prefix="airmotion_")
    try:
        src = os.path.join(tmp, "src")
        for rel, body in STUBS.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
        dst = os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirCraft.java")
        io.open(dst, "w", encoding="utf-8").write(io.open(AIR_CRAFT, encoding="utf-8").read())
        dst = os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirMotion.java")
        io.open(dst, "w", encoding="utf-8").write(io.open(AIR_MOTION, encoding="utf-8").read())
        io.open(os.path.join(src, "Main.java"), "w", encoding="utf-8").write(MAIN)
        files = []
        for dp, _, fs in os.walk(src):
            for f in fs:
                if f.endswith(".java"):
                    files.append(os.path.join(dp, f))
        cls = os.path.join(tmp, "cls"); os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-nowarn", "-d", cls] + files,
                            capture_output=True, text=True)
        if cp.returncode != 0:
            print("FAIL B46 javac：\n" + (cp.stderr or cp.stdout)[-1200:]); return 1
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=120)
        out = ((r.stdout or "") + (r.stderr or "")).strip()
        print(out)
        return 0 if r.returncode == 0 else 1
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


if __name__ == "__main__":
    rc = main()
    if "--red" in sys.argv:
        if rc != 0:
            sys.exit(1)
        n = red_samples()
        sys.exit(1 if n else 0)
    sys.exit(rc)
