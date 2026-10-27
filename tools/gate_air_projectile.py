#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B48 M2 弹药实体化离线回归：真 AirProjectile + 真 AirProjectileCore + 手写桩。

断言（对应用户口径"多弹同飞、各追各的、类型参数生效"）：
  1) 多弹独立：同一帧可有多发在飞，各自槽位/各自目标，互不串位；
  2) 类型参数生效：速度/转向率/接触径/寿命全部来自 MissileTypes（AAM 快于 AGM 等）；
  3) 命中：进入本类型 hitRadius 即结算（世界坐标判定，与相机/视口无关）；
  4) 寿命：超出 lifeTurns 记 EXPIRED（不是永久在飞）；
  5) 追踪：追踪型每帧刷新目标点（目标移动 ⇒ 弹跟着转）；
  6) 暂停冻结：GameThread.play=false 时 tick() 不推进、不补步；
  7) 帧钟同源：推进必须走 AirMissileCore.speedDiv()（与飞机同一个 dtTurns）；
  8) 槽位复用：结算后的槽位可再发，不无限增长。

静态口径：
  * 不许用 getCenterX_Real/getCenterY_Real（未缩放坐标，世界坐标口径）；
  * **冻结线**：代码里不许出现 ALBM / TAC_NUKE / ALBM_NUKE（弹道导弹等 ICBM 源文件）。

红样本（必须变红）：接触判定失效 / 寿命不生效 / 转向不限幅 / 全用 0 号槽 / 类型参数写死 / 暂停不冻结。
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
PROJ = os.path.join(JAVA, "AirProjectile.java")
CORE = os.path.join(JAVA, "AirProjectileCore.java")
DATA = os.path.join(ROOT, "data", "missiles.json")


def missile_types_stub():
    """由 data/missiles.json 生成 MissileTypes 的 Java 桩（数值与真源同源）。"""
    src = json.load(io.open(DATA, encoding="utf-8"))
    types = src["types"]
    enums = src["enums"]

    def idx(ekey, val):
        return enums[ekey].index(val)

    def arr(conv, kind):
        return ", ".join(("%.6ff" % conv(t)) if kind == "f" else str(conv(t)) for t in types)

    ids = ", ".join('"%s"' % t["id"] for t in types)
    return """package aoc.kingdoms.lukasz.map.battles;

public final class MissileTypes {
    public static final String[] ID = { %s };

    public static int count() { return ID.length; }

    public static int indexOf(String s) {
        if (s == null) return -1;
        for (int i = 0; i < ID.length; i++) { if (ID[i].equals(s)) return i; }
        return -1;
    }

    public static String idOf(int i) { return ID[i]; }

    public static float speedOf(int i) { float[] a = { %s }; return a[i]; }
    public static float lifeOf(int i) { float[] a = { %s }; return a[i]; }
    public static float turnOf(int i) { float[] a = { %s }; return a[i]; }
    public static float hitRadiusOf(int i) { float[] a = { %s }; return a[i]; }
    public static int launcherOf(int i) { int[] a = { %s }; return a[i]; }
    public static int targetOf(int i) { int[] a = { %s }; return a[i]; }
    public static int warheadOf(int i) { int[] a = { %s }; return a[i]; }
    public static int interceptMaskOf(int i) { int[] a = { %s }; return a[i]; }
}
""" % (ids,
       arr(lambda t: t["speed"], "f"), arr(lambda t: t["lifeTurns"], "f"),
       arr(lambda t: t["turnRate"], "f"), arr(lambda t: t["hitRadius"], "f"),
       arr(lambda t: idx("launcher", t["launcher"]), "i"),
       arr(lambda t: idx("target", t["target"]), "i"),
       arr(lambda t: idx("warhead", t["warhead"]), "i"),
       arr(lambda t: sum(1 << idx("interceptor", x) for x in (t.get("interceptableBy") or [])), "i"))


STUBS = {
"aoc/kingdoms/lukasz/map/battles/AirMission.java": '''package aoc.kingdoms.lukasz.map.battles;

public class AirMission {
    public long missionID;
    public int civID;
    public int airDivisionAtProvinceID;
    public int targetProvinceID;
    public long strikeTargetMissionID;
    public float msFxX;
    public float msFxY;
}
''',
"aoc/kingdoms/lukasz/map/battles/AirPos.java": '''package aoc.kingdoms.lukasz.map.battles;

import java.util.HashMap;

public class AirPos {
    public static final HashMap REC = new HashMap();

    public static void set(long id, float x, float y) {
        REC.put(Long.valueOf(id), new float[] { x, y });
    }

    public static boolean worldOf(long missionID, long nowMs, float[] out) {
        float[] v = (float[]) REC.get(Long.valueOf(missionID));
        if (v == null) { return false; }
        out[0] = v[0];
        out[1] = v[1];
        return true;
    }

    public static void clear() { REC.clear(); }
}
''',
"aoc/kingdoms/lukasz/map/battles/AirMissileCore.java": '''package aoc.kingdoms.lukasz.map.battles;

public class AirMissileCore {
    public static float MS_PER_TURN = 150.0f;
    public static float speedDiv() { return MS_PER_TURN; }
}
''',
"aoc/kingdoms/lukasz/map/battles/AirDbgLog.java": '''package aoc.kingdoms.lukasz.map.battles;

import java.util.ArrayList;
import java.util.List;

public class AirDbgLog {
    public static final List LINES = new ArrayList();
    public static void dWrite(String s) { LINES.add(s); }
}
''',
"aoc/kingdoms/lukasz/jakowski/Game.java": '''package aoc.kingdoms.lukasz.jakowski;

import java.util.HashMap;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread;
import aoc.kingdoms.lukasz.map.province.Province;

public class Game {
    public static GameThread gameThread = new GameThread();
    public static int HOURS_PER_TURN = 2;
    public static final HashMap PROVINCES = new HashMap();
    public static Province getProvince(int id) {
        return (Province) PROVINCES.get(Integer.valueOf(id));
    }
}
''',
"aoc/kingdoms/lukasz/jakowski/GameThreads/GameThread.java": '''package aoc.kingdoms.lukasz.jakowski.GameThreads;

public class GameThread {
    public boolean play = true;
    public int playSpeedTIME = 300;
}
''',
"aoc/kingdoms/lukasz/map/province/Province.java": '''package aoc.kingdoms.lukasz.map.province;

public class Province {
    public int iProvinceID;
    public int civID;
    public int cx;
    public int cy;
    public int shiftX;
    public int shiftY;
    public int getCenterX() { return cx; }
    public int getCenterY() { return cy; }
    public int getShiftX() { return shiftX; }
    public int getShiftY() { return shiftY; }
    public int getCivID() { return civID; }
    public int getCenterX_Real() { return cx; }
    public int getCenterY_Real() { return cy; }
}
''',
}

MAIN = r'''
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.battles.AirPos;
import aoc.kingdoms.lukasz.map.battles.AirProjectile;
import aoc.kingdoms.lukasz.map.battles.AirProjectileCore;
import aoc.kingdoms.lukasz.map.battles.MissileTypes;
import aoc.kingdoms.lukasz.map.province.Province;

public class Main {
    static int bad = 0;

    static void ok(boolean c, String m) {
        if (!c) { bad++; System.out.println("FAIL " + m); }
    }

    static void reset() {
        AirProjectileCore.clear();
        AirPos.clear();
        Game.PROVINCES.clear();
        Game.gameThread.play = true;
    }

    static Province prov(int id, int x, int y, int civ) {
        Province p = new Province();
        p.iProvinceID = id; p.cx = x; p.cy = y; p.civID = civ;
        Game.PROVINCES.put(Integer.valueOf(id), p);
        return p;
    }

    static int typeIdx(String id) {
        int i = MissileTypes.indexOf(id);
        if (i < 0) { bad++; System.out.println("FAIL 缺类型 " + id); }
        return i;
    }

    public static void main(String[] a) throws Exception {
        final int AAM = typeIdx("AAM");
        final int SAM = typeIdx("SAM");
        final int AGM = typeIdx("AGM");

        // T1 多弹独立：三发同飞，各自朝向各自目标，互不串位
        reset();
        int p1 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 100, 0);
        int p2 = AirProjectileCore.spawn(SAM, 2, 0L, -1, 0, 100, 100, 100);
        int p3 = AirProjectileCore.spawn(AGM, 3, 0L, -1, 0, -100, 100, -100);
        ok(p1 >= 0 && p2 >= 0 && p3 >= 0, "T1 三发都应入表");
        ok(p1 != p2 && p2 != p3, "T1 每发占独立槽位");
        ok(AirProjectileCore.aliveCount() == 3, "T1 三发同飞 aliveCount=" + AirProjectileCore.aliveCount());
        for (int i = 0; i < 5; i++) { AirProjectileCore.stepAll(0.05f, 0L); }
        ok(Math.abs(AirProjectileCore.yOf(p1)) < 0.5f, "T1 ①弹 y 应保持 0，实际 " + AirProjectileCore.yOf(p1));
        ok(Math.abs(AirProjectileCore.yOf(p2) - 100f) < 0.5f, "T1 ②弹 y 应保持 100，实际 " + AirProjectileCore.yOf(p2));
        ok(Math.abs(AirProjectileCore.yOf(p3) + 100f) < 0.5f, "T1 ③弹 y 应保持 -100，实际 " + AirProjectileCore.yOf(p3));
        ok(AirProjectileCore.xOf(p1) > 1f && AirProjectileCore.xOf(p3) > 1f, "T1 三发都应前进");

        // T2 类型参数生效：同样 dt，AAM(67.5) 比 AGM(45) 走得远
        reset();
        int q1 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 1000, 0);
        int q2 = AirProjectileCore.spawn(AGM, 1, 0L, -1, 0, 0, 1000, 0);
        AirProjectileCore.stepAll(0.1f, 0L);
        float dA = AirProjectileCore.xOf(q1);
        float dG = AirProjectileCore.xOf(q2);
        ok(Math.abs(dA - 6.75f) < 0.02f, "T2 AAM 速度快照 67.5×0.1=6.75，实际 " + dA);
        ok(Math.abs(dG - 4.50f) < 0.02f, "T2 AGM 速度应 45×0.1=4.5，实际 " + dG);

        // T3 命中：进入本类型接触径即结算（AAM hitRadius=6）
        reset();
        int h1 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 8, 0);
        AirProjectileCore.stepAll(0.05f, 0L);
        ok(AirProjectileCore.resultOf(h1) == AirProjectile.RESULT_HIT,
                "T3 8px 目标应在一帧内命中，result=" + AirProjectileCore.resultOf(h1));
        ok(AirProjectileCore.aliveCount() == 0, "T3 命中后弹应退役");

        // T4 寿命：目标 1000px 外，AAM lifeTurns=0.5 ⇒ 10 帧（0.05/帧）后到期
        reset();
        int e1 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 1000, 0);
        int frames = 0;
        while (frames < 100 && AirProjectileCore.resultOf(e1) == AirProjectile.RESULT_FLYING) {
            AirProjectileCore.stepAll(0.05f, 0L);
            frames++;
        }
        ok(AirProjectileCore.resultOf(e1) == AirProjectile.RESULT_EXPIRED,
                "T4 远目标应寿命到期，result=" + AirProjectileCore.resultOf(e1));
        ok(frames >= 9 && frames <= 12, "T4 到期帧数应≈life/dt=10，实际 " + frames);

        // T5 追踪：追踪型每帧刷新目标点（目标移动 ⇒ 弹跟着转）
        reset();
        AirPos.set(9L, 60f, 0f);
        int m1 = AirProjectileCore.spawn(AAM, 1, 9L, -1, 0, 0, 60, 0);
        for (int i = 0; i < 2; i++) { AirProjectileCore.stepAll(0.02f, 0L); }
        float yBefore = AirProjectileCore.yOf(m1);
        AirPos.set(9L, 0f, 200f);                       // 目标瞬间移到正上方
        for (int i = 0; i < 10; i++) { AirProjectileCore.stepAll(0.02f, 0L); }
        ok(AirProjectileCore.yOf(m1) > yBefore + 1f,
                "T5 目标移到上方后弹应跟着往上飞，y=" + AirProjectileCore.yOf(m1));
        ok(AirProjectileCore.resultOf(m1) == AirProjectile.RESULT_FLYING
                || AirProjectileCore.resultOf(m1) == AirProjectile.RESULT_HIT,
                "T5 追踪弹不应丢失/到期，result=" + AirProjectileCore.resultOf(m1));

        // T6 暂停冻结：play=false 时 tick() 不推进、不补步
        reset();
        int z1 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 1000, 0);
        float zx = AirProjectileCore.xOf(z1);
        Game.gameThread.play = false;
        for (int i = 0; i < 20; i++) { Thread.sleep(6); AirProjectileCore.tick(); }
        ok(Math.abs(AirProjectileCore.xOf(z1) - zx) < 0.01f,
                "T6 暂停时应冻结，x " + zx + " → " + AirProjectileCore.xOf(z1));
        Game.gameThread.play = true;
        Thread.sleep(30);
        AirProjectileCore.tick();
        ok(AirProjectileCore.xOf(z1) > zx + 0.5f, "T6 恢复后应继续飞，x=" + AirProjectileCore.xOf(z1));

        // T7 槽位复用：结算后的槽位可再发，不无限增长
        reset();
        int r1 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 5, 0);
        AirProjectileCore.stepAll(0.05f, 0L);   // 立刻命中退役
        int r2 = AirProjectileCore.spawn(AAM, 1, 0L, -1, 0, 0, 500, 0);
        ok(AirProjectileCore.slotCount() == 1, "T7 应复用槽位，slotCount=" + AirProjectileCore.slotCount());
        ok(r1 == r2, "T7 复用同一槽位 " + r1 + " / " + r2);

        // T8 目标省（固定目标）：无追踪任务时朝省中心
        reset();
        prov(7, 300, 0, 5);
        int f1 = AirProjectileCore.spawn(SAM, 5, 0L, 7, 0, 0, 0, 0);
        for (int i = 0; i < 4; i++) { AirProjectileCore.stepAll(0.05f, 0L); }
        ok(AirProjectileCore.xOf(f1) > 1f, "T8 固定目标弹应朝省中心飞，x=" + AirProjectileCore.xOf(f1));

        // T10 转向受限（不瞬转）：目标瞬移到正侧方，一帧内只能转 turnDeg×dt，x 仍在增长
        reset();
        AirPos.set(11L, 100f, 0f);
        int t1 = AirProjectileCore.spawn(AAM, 1, 11L, -1, 0, 0, 100, 0);
        for (int i = 0; i < 3; i++) { AirProjectileCore.stepAll(0.02f, 0L); }
        float xb = AirProjectileCore.xOf(t1);
        AirPos.set(11L, 0f, 300f);                      // 目标瞬间跑到正侧方（要求转 90°）
        AirProjectileCore.stepAll(0.05f, 0L);           // 一帧最多转 240×0.05=12°
        float xa = AirProjectileCore.xOf(t1);
        ok(xa > xb + 1.0f, "T10 一帧内不许瞬转 90°，x 应继续增长 " + xb + " → " + xa);
        for (int i = 0; i < 6; i++) { AirProjectileCore.stepAll(0.05f, 0L); }
        ok(AirProjectileCore.yOf(t1) > 1.0f, "T10 多帧后应逐步转向侧方，y=" + AirProjectileCore.yOf(t1));

        // T9 读档清理
        AirProjectileCore.clear();
        ok(AirProjectileCore.aliveCount() == 0 && AirProjectileCore.slotCount() == 0, "T9 clear 应清空整表");

        System.out.println(bad == 0 ? "OK AirProjectile" : ("FAIL AirProjectile " + bad));
        System.exit(bad == 0 ? 0 : 1);
    }
}
'''


def static_check(text, require_speeddiv=False):
    """静态口径：世界坐标（禁用 _Real）+ 冻结线（不许出弹道类）。"""
    errs = []
    for i, line in enumerate(text.split("\n"), 1):
        code = line.split("//")[0].strip()
        if code.startswith("*") or code.startswith("/*") or code.startswith("*/"):
            continue
        for bad in ("getCenterX_Real", "getCenterY_Real"):
            if bad in code:
                errs.append("AirProjectileCore.java:%d 用了未缩放坐标 %s" % (i, bad))
        for bad in ("ALBM", "TAC_NUKE", "ALBM_NUKE"):
            if bad in code:
                errs.append("AirProjectileCore.java:%d 出现冻结类型 %s（弹道导弹等 ICBM 源文件）" % (i, bad))
    if require_speeddiv and "AirMissileCore.speedDiv()" not in text:
        errs.append("AirProjectileCore.java 必须用 AirMissileCore.speedDiv() 换算帧钟（与飞机同源）")
    return errs


def run_case(proj_text, core_text):
    """编译真 AirProjectile/AirProjectileCore + 桩，跑一次；返回 (ok, output)。"""
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="airproj_")
    try:
        src = os.path.join(tmp, "src")
        stubs = dict(STUBS)
        stubs["aoc/kingdoms/lukasz/map/battles/MissileTypes.java"] = missile_types_stub()
        for rel, body in stubs.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
        io.open(os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirProjectile.java"),
                "w", encoding="utf-8").write(proj_text)
        io.open(os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirProjectileCore.java"),
                "w", encoding="utf-8").write(core_text)
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
            return False, "javac: " + (cp.stderr or cp.stdout)[-600:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=180)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def red_samples(proj, core):
    """每个红样本都必须是真实改坏后再编译；仍全绿才算闸门失效。"""
    cases = {}

    # 1) 接触判定失效：两条 distTo<=hitRadius 分支都返回 HIT → 关掉
    t = proj.replace("        if (distTo(tx, ty) <= hitRadius) {\n            return settle(RESULT_HIT);\n        }\n        if (dtTurns",
                     "        if (false) {\n            return settle(RESULT_HIT);\n        }\n        if (dtTurns", 1)
    t = t.replace("        if (distTo(tx, ty) <= hitRadius) {\n            return settle(RESULT_HIT);\n        }\n        if (lifeTurns",
                  "        if (false) {\n            return settle(RESULT_HIT);\n        }\n        if (lifeTurns", 1)
    cases["接触判定失效"] = (t, core)

    # 2) 寿命不生效
    cases["寿命不生效"] = (proj.replace(
        "if (lifeTurns > 0.0f && ageTurns >= lifeTurns) {", "if (false) {", 1), core)

    # 3) 转向不限幅（瞬转）
    cases["转向不限幅"] = (proj.replace(
        "float maxTurn = turnDeg * dtTurns;", "float maxTurn = 99999.0f;", 1), core)

    # 4) 弹体停在原地
    cases["弹体停在原地"] = (proj.replace(
        "x += (float) Math.cos(rad) * move;", "x += 0.0f;", 1), core)

    # 5) 暂停不冻结
    cases["暂停不冻结"] = (proj, core.replace(
        "if (gt != null && !gt.play) {\n                return true;\n            }",
        "if (gt != null && !gt.play) {\n                return false;\n            }", 1))

    # 6) 所有弹共用 0 号槽（多弹独立失效）
    cases["所有弹共用 0 号槽"] = (proj, core.replace(
        "        if (slot < 0) {\n            if (used >= MAX) {",
        "        slot = 0;\n        if (used < 1) {\n            used = 1;\n        }\n        if (slot < 0) {\n            if (used >= MAX) {", 1))

    # 7) 类型参数写死（速度不再来自 MissileTypes）
    cases["类型参数写死"] = (proj.replace(
        "speedPx = MissileTypes.speedOf(i);", "speedPx = 40.0f;", 1), core)

    bad = 0
    for name, (pt, ct) in cases.items():
        if pt == proj and ct == core:
            bad += 1
            print("FAIL 红样本未生效（替换没命中）：" + name)
            continue
        ok, out = run_case(pt, ct)
        if ok:
            bad += 1
            print("FAIL 红样本未变红：" + name)
        else:
            print("  red ok  %s → %s" % (name, out.splitlines()[0] if out else ""))
    return bad


def main():
    proj = io.open(PROJ, encoding="utf-8").read()
    core = io.open(CORE, encoding="utf-8").read()
    errs = static_check(proj) + static_check(core, require_speeddiv=True)
    if errs:
        for e in errs:
            print("FAIL " + e)
        return 1
    ok, out = run_case(proj, core)
    print(out)
    return 0 if ok else 1


if __name__ == "__main__":
    rc = main()
    if rc != 0:
        sys.exit(1)
    if "--red" in sys.argv:
        import io as _io
        n = red_samples(_io.open(PROJ, encoding="utf-8").read(),
                        _io.open(CORE, encoding="utf-8").read())
        sys.exit(1 if n else 0)
    sys.exit(0)
