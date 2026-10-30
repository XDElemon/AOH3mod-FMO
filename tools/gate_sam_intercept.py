#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B54 防空弹（SAM）拦截运动学（v127）：真 AirProjectileCore.spawnSam + 真 AirProjectile + 桩。

背景（2026-10-30 青禾报"防空阵地不会开火"）：
  旧 adFx 弹迹在 M3a 已停画 ⇒ 只剩新表在画；而 SAM 速度/寿命还是"影子时代"的参数：
  阵地速度 67.5（≈飞机巡航），寿命 1.15×射程/速度 —— 尾追根本合不上，命中数 0，
  玩家看到的就是"阵地一声不响"。

本批口径：
  · 阵地速度 180（`data/air_defense.json` aaa），类型表同步（兜底）；
  · 发射时按目标朝向/速度算**前置量**（`leadPoint`）——它是**优化**不是红线：转向率 360°/回合下
    三种几何靠追踪也能咬住，前置量只是少拐一个弯（所以不设红样本）；
  · 寿命 = max(类型, 1.8×射程÷速度 + 0.8 回合)，覆盖尾追时间。

断言（三种几何都要命中，且必须在寿命内）：
  1) 迎面（目标朝阵地飞）——立刻命中；
  2) 侧过（90° 横穿）——提前量+转向必须咬住；
  3) 尾追（目标背向飞）——速度优势必须补上（这是旧参数必挂的一条）。

红样本（改坏后必须变红）：寿命回退 1.15× / 速度降到 60 / spawnSam 直接返回。
"""
import io
import os
import shutil
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gate_air_projectile as b48  # noqa: E402  复用同一套桩与数据驱动生成器

ROOT = b48.ROOT
JAVA = b48.JAVA
PROJ = os.path.join(JAVA, "AirProjectile.java")
CORE = os.path.join(JAVA, "AirProjectileCore.java")
DAMAGE = os.path.join(JAVA, "AirDamage.java")

AIRMOTION_STUB = '''package aoc.kingdoms.lukasz.map.battles;

public class AirMotion {
    public static float SPEED = 94.0f;   // 飞机世界速度 px/回合（六代机量级）
    public static float HEAD = 0.0f;     // 世界朝向（度，0=+x）
    public static float speedOf(Object o) { return SPEED; }
    public static float worldHeadingOf(Object o) { return HEAD; }
}
'''

MAIN = r'''
import aoc.kingdoms.lukasz.map.battles.*;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.jakowski.Game;

public class Main {
    static int fails = 0;
    static final float AIR = 94.0f;     // 目标机速度 px/回合
    static final float DT = 0.02f;      // 每步 0.02 回合

    static void check(String n, boolean ok, String d) {
        if (!ok) { fails++; System.out.println("FAIL " + n + " " + d); }
    }

    public static void main(String[] args) {
        Province site = new Province();
        site.cx = 0; site.cy = 0; site.shiftX = 0; site.shiftY = 0; site.civID = 1;
        Game.PROVINCES.put(Integer.valueOf(1), site);

        AirMission m = new AirMission();
        m.missionID = 2L;
        m.civID = 9;
        m.aliveAircraft.add(new AirUnit());
        AirForceManager.getInstance().activeMissions.add(m);

        String tag = run(m, 300.0f, 0.0f, 180.0f, "迎面");
        check("迎面命中", tag.startsWith("HIT"), tag);
        check("迎面要快", tag.startsWith("HIT") && ageOf(tag) <= 1.5f, tag);

        tag = run(m, 300.0f, 0.0f, 90.0f, "侧过");
        check("侧过命中", tag.startsWith("HIT"), tag);

        tag = run(m, 300.0f, 0.0f, 0.0f, "尾追");
        check("尾追命中", tag.startsWith("HIT"), tag);
        check("尾追要在寿命内", tag.startsWith("HIT") && ageOf(tag) <= 3.9f, tag);

        if (fails > 0) { System.out.println("B54 失败项: " + fails); System.exit(1); }
        System.out.println("OK B54");
    }

    static float ageOf(String s) {
        int i = s.indexOf('@');
        return i < 0 ? 99.0f : Float.parseFloat(s.substring(i + 1));
    }

    static String run(AirMission m, float x0, float y0, float headDeg, String label) {
        AirProjectileCore.clear();
        AirDamage.clear();
        AirPos.set(2L, x0, y0);
        AirMotion.SPEED = AIR;
        AirMotion.HEAD = headDeg;

        int slot = 0;
        AirProjectileCore.spawnSam(m, 1);
        slot = AirProjectileCore.slotCount() - 1;
        if (slot < 0 || AirProjectileCore.get(slot) == null) {
            return "NOSPAWN";
        }
        double rad = Math.toRadians(headDeg);
        float vx = (float) Math.cos(rad) * AIR;
        float vy = (float) Math.sin(rad) * AIR;
        float t = 0.0f;
        for (int i = 0; i < 600; i++) {
            t += DT;
            AirPos.set(2L, x0 + vx * t, y0 + vy * t);
            AirProjectileCore.stepAll(DT, System.currentTimeMillis());
            int r = AirProjectileCore.resultOf(slot);
            if (r != AirProjectile.RESULT_FLYING) {
                String kind = r == AirProjectile.RESULT_HIT ? "HIT" : (r == AirProjectile.RESULT_EXPIRED ? "EXP" : "LOST");
                AirProjectile p = AirProjectileCore.get(slot);
                if (p != null && p.fused) { kind = "HITfuse"; }
                return kind + "@" + t;
            }
        }
        return "FLYING@" + t;
    }
}
'''


def run_case(core_text, proj_text, damage_text):
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="sam_")
    try:
        src = os.path.join(tmp, "src")
        stubs = dict(b48.STUBS)
        stubs["aoc/kingdoms/lukasz/map/battles/AirMotion.java"] = AIRMOTION_STUB
        stubs["aoc/kingdoms/lukasz/map/battles/MissileTypes.java"] = b48.missile_types_stub()
        stubs["aoc/kingdoms/lukasz/map/battles/AirDefCfg.java"] = b48.air_def_cfg_stub()
        for real in ("MissileTypeIds.java", "AirDefIds.java"):
            rel = "aoc/kingdoms/lukasz/map/battles/" + real
            stubs[rel] = io.open(os.path.join(JAVA, real), encoding="utf-8").read()
        for rel, body in stubs.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
        for name, text in (("AirProjectile.java", proj_text),
                           ("AirProjectileCore.java", core_text),
                           ("AirDamage.java", damage_text)):
            io.open(os.path.join(src, "aoc/kingdoms/lukasz/map/battles", name),
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
            return False, "javac: " + (cp.stderr or cp.stdout)[-700:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=180)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def red_samples(core, proj, dmg):
    cases = {
        "寿命回退 1.15×": (core.replace("1.8f * rangeWorld / spd + 0.8f", "1.15f * rangeWorld / spd"), proj, dmg),
        "弹速降到 60": (core.replace("        if (spd <= 0.0f) {\n            spd = MissileTypes.speedOf(type);\n        }",
                                     "        spd = 60.0f;"), proj, dmg),
        "spawnSam 不发射": (core.replace("slot = spawnEx(type, civ, m.missionID, -1, sx, sy, aimX, aimY, spd, life, 0.0f);",
                                        "slot = -1;"), proj, dmg),
    }
    bad = []
    for name, (c, p, d) in cases.items():
        ok, out = run_case(c, p, d)
        if ok:
            bad.append(name)
    return bad


def main():
    core = io.open(CORE, encoding="utf-8").read()
    proj = io.open(PROJ, encoding="utf-8").read()
    dmg = io.open(DAMAGE, encoding="utf-8").read()

    ok, out = run_case(core, proj, dmg)
    if not ok:
        print("❌ B54 SAM 拦截失败：\n" + out)
        return 1
    print("  " + out)

    if "nSP p=" not in core:
        print("❌ 缺 nSP 探针（防空 spawn 无法在真机确认）")
        return 1

    bad = red_samples(core, proj, dmg)
    if bad:
        print("❌ 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("  ✅ 红样本 3 组全部变红（寿命/速度/不发射）")
    print("✅ B54 SAM 拦截通过（迎面即刻 · 90° 横穿咬住 · 尾追在寿命内命中）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
