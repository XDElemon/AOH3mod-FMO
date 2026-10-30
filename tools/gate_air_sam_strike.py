#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B55 防空百分比伤害 + 斩杀线（v128）：真 AirDamage.samStrike + 桩。

用户口径（2026-10-30）：
  "导弹伤害改成扣飞机血量的百分比；以后应对六代机，50 伤害得打一辈子；
   再设一个斩杀线，低于百分之几的血量一发干死。"

定标（v129）：每发扣 **maxHp × 50%**；命中那一刻目标血 < **maxHp × 60%** ⇒ 直接击毁。
  · 按 maxHp 而不是当前血算 ⇒ 六代机（3000 血）一发 1500，**两发打下来**；
  · 斩杀线 60% 高于单发 50% ⇒ 才有"补刀"意义（被打到 55% 的目标一发带走）。

断言：
  1) 纯百分比：100 血一发 → 50；3000 血一发 → 1500；
  2) 斩杀线：60% 血（≤ 线）→ 0 血、记一次损失、recalcPool 一次、从 aliveAircraft 移除；
  3) 边界：61% **不**斩杀（61 → 11）；正好 60% 算斩杀（≤ 口径）；
  4) 空表/全死 → 0 伤害，不崩；
  5) 常量锁死 0.50 / 0.60（改数值必须改闸门，防止悄悄回退）。

红样本：退回固定 50 伤害 / 关掉斩杀 / 死亡不记损失。
"""
import io
import os
import shutil
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gate_air_projectile as b48  # noqa: E402  复用同一套桩

ROOT = b48.ROOT
JAVA = b48.JAVA
DAMAGE = os.path.join(JAVA, "AirDamage.java")

MAIN = r'''
import aoc.kingdoms.lukasz.map.battles.*;
import java.util.*;

public class Main {
    static int fails = 0;
    static void check(String n, boolean ok, String d) {
        if (!ok) { fails++; System.out.println("FAIL " + n + " " + d); }
    }
    static void near(String n, float got, float want) {
        check(n, Math.abs(got - want) < 0.01f, "got=" + got + " want=" + want);
    }

    static AirMission mk() {
        AirMission m = new AirMission();
        m.missionID = 7L;
        return m;
    }

    static AirUnit unit(float hp, float maxHp) {
        AirUnit u = new AirUnit();
        u.hp = hp;
        u.maxHp = maxHp;
        return u;
    }

    public static void main(String[] a) {
        near("常量 每发50%", AirDamage.SAM_PCT, 0.50f);
        near("常量 斩杀60%", AirDamage.SAM_EXEC, 0.60f);

        // 1) 纯百分比
        AirMission m = mk();
        AirUnit u = unit(100.0f, 100.0f);
        m.aliveAircraft.add(u);
        float d = AirDamage.samStrike(m, AirDamage.SAM_PCT, AirDamage.SAM_EXEC);
        near("100血一发扣50", d, 50.0f);
        near("100血剩50", u.hp, 50.0f);
        check("未击毁", m.kills == 0, "kills=" + m.kills);

        // 1b) 六代机 3000 血
        AirMission m6 = mk();
        AirUnit u6 = unit(3000.0f, 3000.0f);
        m6.aliveAircraft.add(u6);
        d = AirDamage.samStrike(m6, AirDamage.SAM_PCT, AirDamage.SAM_EXEC);
        near("3000血一发扣1500", d, 1500.0f);
        near("3000血剩1500", u6.hp, 1500.0f);

        // 2) 斩杀线：35% < 40%
        AirMission me = mk();
        AirUnit ue = unit(60.0f, 100.0f);
        me.aliveAircraft.add(ue);
        d = AirDamage.samStrike(me, AirDamage.SAM_PCT, AirDamage.SAM_EXEC);
        near("斩杀伤害=剩余血", d, 60.0f);
        near("斩杀后血量0", ue.hp, 0.0f);
        check("斩杀记一次损失", me.kills == 1, "kills=" + me.kills);
        check("斩杀后 recalcPool", me.poolCalls == 1, "pool=" + me.poolCalls);
        check("斩杀后移出编队", me.aliveAircraft.isEmpty(), "size=" + me.aliveAircraft.size());

        // 3) 边界：正好 40% 不斩杀
        AirMission mb = mk();
        AirUnit ub = unit(61.0f, 100.0f);
        mb.aliveAircraft.add(ub);
        d = AirDamage.samStrike(mb, AirDamage.SAM_PCT, AirDamage.SAM_EXEC);
        near("61%不斩杀，扣50", d, 50.0f);
        near("61%剩11", ub.hp, 11.0f);
        check("61%未击毁", mb.kills == 0, "kills=" + mb.kills);

        // 4) 空表
        AirMission mz = mk();
        near("空表0伤害", AirDamage.samStrike(mz, 0.50f, 0.60f), 0.0f);

        if (fails > 0) { System.out.println("B55 失败项: " + fails); System.exit(1); }
        System.out.println("OK B55");
    }
}
'''


def run_case(damage_text):
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="samdmg_")
    try:
        src = os.path.join(tmp, "src")
        stubs = dict(b48.STUBS)
        stubs["aoc/kingdoms/lukasz/map/battles/MissileTypes.java"] = b48.missile_types_stub()
        stubs["aoc/kingdoms/lukasz/map/battles/AirDefCfg.java"] = b48.air_def_cfg_stub()
        for real in ("MissileTypeIds.java", "AirDefIds.java", "AirProjectile.java"):
            rel = "aoc/kingdoms/lukasz/map/battles/" + real
            stubs[rel] = io.open(os.path.join(JAVA, real), encoding="utf-8").read()
        for rel, body in stubs.items():
            dst = os.path.join(src, *rel.split("/"))
            os.makedirs(os.path.dirname(dst), exist_ok=True)
            io.open(dst, "w", encoding="utf-8").write(body)
        io.open(os.path.join(src, "aoc/kingdoms/lukasz/map/battles/AirDamage.java"),
                "w", encoding="utf-8").write(damage_text)
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


def red_samples(dmg):
    cases = {
        "退回固定50伤害": dmg.replace("u.hp = before - maxHp * pct;", "u.hp = before - 50.0f;"),
        "关掉斩杀线": dmg.replace("boolean exec = before <= maxHp * execPct + 0.001f;", "boolean exec = false;"),
        "死亡不记损失": dmg.replace("                target.recordLoss(u);", "                // target.recordLoss(u);"),
    }
    bad = []
    for name, d in cases.items():
        ok, out = run_case(d)
        if ok:
            bad.append(name)
    return bad


def main():
    dmg = io.open(DAMAGE, encoding="utf-8").read()
    ok, out = run_case(dmg)
    if not ok:
        print("❌ B55 防空百分比伤害失败：\n" + out)
        return 1
    print("  " + out)

    bad = red_samples(dmg)
    if bad:
        print("❌ 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("  ✅ 红样本 3 组全部变红（固定伤害/关斩杀/不记损失）")
    print("✅ B55 防空百分比伤害通过（50% maxHp · 60% 斩杀 · 3000 血两发 · 边界不误杀）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
