#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B53 M3b 空空伤害口径（v126 影子双跑 → v141 百分比口径）。

v141 用户口径（2026-10-31 拍板「选 D」+「更疼、代差压制更狠」）：
  伤害 = 目标 avg(maxHp) × clamp(BASE × share^EXP, MIN, MAX)
         share = 发射方 avg(airAttack) / (avg(airAttack) + 目标 avg(defense))
  BASE=3.30 / EXP=2.6 / MIN=0.08 / MAX=1.0 ⇒ 同型 1.1 发、上代 1 发、下代约 6 发（代差 6 倍）。

旧公式（Σ存活机 atk × 2.0 × defenseMul）已退役，原因写在 `AirDamage.aamDamage` 的注释里：
按编队求和导致"人越多弹越疼"，且 defenseMul 的常数 40 对五六代 def 300–1350 会压到接近零。

断言：
  1) 攻防比：share=1（def 0）→ pct 封顶 1.0；def 40 → pct≈0.118；
  2) 近炸 ×0.7；
  3) **口径标定**（直接对应需求）：J11→J11 ≈ 1.1 发、J20→J11 ≈ 1 发、J11→J20 ≈ 6 发、
     极端跨代（def 1350）被 MIN=0.08 兜住 ⇒ 12.5 发；代差倍率 ≈ 6；
  4) 防空常量：SAM = 50，近炸 35；
  5) 命中即记账：`AirProjectileCore.stepAll` 命中一帧 → dbgCalc=1、dbgSum=期望值；
  6) **影子不结算**：整轮跑完目标机 hp 一点没掉；
  7) 脱靶/寿命到期：零伤害、不记账；找不到发射方：不记账。

红样本（改坏后必须变红）：指数归 1（代差失效）/ 基准腰斩 / 下限归零（跨代无限磨）/
近炸不打折 / 用目标当发射方 / EXPIRED 也记账。每个都是真改源码重编，仍然全绿 = 闸门失效。
"""
import io
import os
import shutil
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gate_air_projectile as b48  # noqa: E402  复用 B48 的桩与生成器（同一套口径）

ROOT = b48.ROOT
JAVA = b48.JAVA
DAMAGE = os.path.join(JAVA, "AirDamage.java")
CORE = os.path.join(JAVA, "AirProjectileCore.java")
PROJ = os.path.join(JAVA, "AirProjectile.java")

MAIN = r'''
import aoc.kingdoms.lukasz.map.battles.*;
import java.util.*;

public class Main {
    static int fails = 0;

    static void check(String name, boolean ok, String detail) {
        if (!ok) {
            fails++;
            System.out.println("FAIL " + name + " " + detail);
        }
    }

    static void near(String name, float got, float want) {
        check(name, Math.abs(got - want) < 0.01f, "got=" + got + " want=" + want);
    }

    static void near2(String name, float got, float want, float tol) {
        check(name, Math.abs(got - want) < tol, "got=" + got + " want=" + want);
    }

    static AirMission mk(long id) {
        AirMission m = new AirMission();
        m.missionID = id;
        AirForceManager.getInstance().activeMissions.add(m);
        return m;
    }

    static AirUnit ac(float atk, float def) {
        return ac(atk, def, Math.max(20.0f, def * 2.0f));
    }

    static AirUnit ac(float atk, float def, float maxHp) {
        AirUnit u = new AirUnit();
        u.airAttack = atk;
        u.defense = def;
        u.maxHp = maxHp;
        u.hp = maxHp;
        return u;
    }

    /** 击杀一架所需的发数（maxHp ÷ 单发伤害）。 */
    static float hits(AirMission sh, AirMission tg) {
        float d = AirDamage.aamDamage(sh, tg, false);
        if (d <= 0.0f) { return 999.0f; }
        return ((AirUnit) tg.aliveAircraft.get(0)).maxHp / d;
    }

    public static void main(String[] args) {
        // ---------- 1) 攻防比 ----------
        AirMission shooter = mk(1L);
        shooter.aliveAircraft.add(ac(10.0f, 0.0f, 20.0f));
        shooter.aliveAircraft.add(ac(20.0f, 0.0f, 20.0f));   // avg atk 15
        AirMission target = mk(2L);
        target.aliveAircraft.add(ac(0.0f, 0.0f, 20.0f));     // def 0, maxHp 20

        // share = 15/(15+0) = 1.0 → pct 封顶 1.0 → dmg = 20
        near("AAM 攻防比满额", AirDamage.aamDamage(shooter, target, false), 20.0f);

        // def 40：share 15/55=0.2727 → ^2.6=0.0341 → ×3.3=0.1125 → 80×0.1125=9.01
        target.aliveAircraft.clear();
        target.aliveAircraft.add(ac(0.0f, 40.0f, 80.0f));
        near2("AAM 防御40", AirDamage.aamDamage(shooter, target, false), 9.01f, 0.05f);

        // ---------- 2) 近炸 ×0.7 ----------
        near2("AAM 近炸 ×0.7", AirDamage.aamDamage(shooter, target, true), 6.30f, 0.05f);

        // ---------- 3) 口径标定（用户需求：同型 2 发 / 上代 1 发 / 下代 6.4 发） ----------
        AirMission j11 = mk(11L);
        j11.aliveAircraft.add(ac(28.0f, 18.0f, 36.0f));
        AirMission j20 = mk(12L);
        j20.aliveAircraft.add(ac(150.0f, 60.0f, 120.0f));

        near2("J11→J11 ≈ 1.1 发", hits(j11, j11), 1.10f, 0.05f);
        near2("J20→J20 ≈ 1 发", hits(j20, j20), 1.00f, 0.05f);
        near2("J20→J11 ≈ 1 发（封顶）", hits(j20, j11), 1.00f, 0.05f);
        near2("J11→J20 ≈ 5.95 发", hits(j11, j20), 5.95f, 0.1f);
        near2("代差倍率 ≈ 6", hits(j11, j20) / hits(j20, j11), 5.95f, 0.2f);

        // 极端跨代：def 1350 / maxHp 2700 → pct 被 MIN=0.08 兜住 → 12.5 发
        AirMission gen6 = mk(13L);
        gen6.aliveAircraft.add(ac(2240.0f, 1350.0f, 2700.0f));
        near2("下限兜住跨代", hits(j11, gen6), 12.5f, 0.5f);

        // ---------- 4) 防空常量 ----------
        near("SAM 贴脸", AirDamage.samDamage(false), 50.0f);
        near("SAM 近炸", AirDamage.samDamage(true), 35.0f);

        // ---------- 5) 命中即记账 + 绝不扣血 ----------
        AirDamage.clear();
        AirProjectileCore.clear();
        target.aliveAircraft.clear();
        target.aliveAircraft.add(ac(0.0f, 0.0f, 100.0f));
        float hpBefore = ((AirUnit) target.aliveAircraft.get(0)).hp;

        AirPos.set(2L, 100.0f, 100.0f);
        int aam = MissileTypeIds.indexOf("AAM");
        int slot = AirProjectileCore.spawnEx(aam, 1, 2L, -1, 100.0f, 100.0f, 100.0f, 100.0f,
                0.0f, 0.0f, 0.0f);
        check("AAM 入表", slot >= 0, "slot=" + slot);
        AirProjectileCore.get(slot).shooterMissionID = 1L;
        AirProjectileCore.stepAll(0.1f, System.currentTimeMillis());
        near("影子记账 v", AirDamage.dbgSum, 100.0f);
        check("影子记账 n=1", AirDamage.dbgCalc == 1, "n=" + AirDamage.dbgCalc);
        float hpAfter = ((AirUnit) target.aliveAircraft.get(0)).hp;
        near("红线：目标不掉血", hpAfter, hpBefore);

        // ---------- 6) 寿命到期：零伤害、不记账 ----------
        AirDamage.clear();
        AirProjectileCore.clear();
        AirPos.set(2L, 500.0f, 500.0f);
        slot = AirProjectileCore.spawnEx(aam, 1, 2L, -1, 100.0f, 100.0f, 500.0f, 500.0f,
                0.0f, 0.5f, 0.0f);   // 寿命 0.5 回合，远未到达（步进 0.1/次）
        AirProjectileCore.get(slot).shooterMissionID = 1L;
        for (int i = 0; i < 10; i++) {
            AirProjectileCore.stepAll(0.1f, System.currentTimeMillis());
        }
        check("到期不计账", AirDamage.dbgCalc == 0, "n=" + AirDamage.dbgCalc);

        // ---------- 7) 发射方已不在（id=999）：不记账 ----------
        AirDamage.clear();
        AirProjectileCore.clear();
        AirPos.set(2L, 200.0f, 200.0f);
        slot = AirProjectileCore.spawnEx(aam, 1, 2L, -1, 200.0f, 200.0f, 200.0f, 200.0f,
                0.0f, 0.0f, 0.0f);
        AirProjectileCore.get(slot).shooterMissionID = 999L;
        AirProjectileCore.stepAll(0.1f, System.currentTimeMillis());
        check("发射方缺失不记账", AirDamage.dbgCalc == 0, "n=" + AirDamage.dbgCalc);

        if (fails > 0) {
            System.out.println("B53 失败项: " + fails);
            System.exit(1);
        }
        System.out.println("OK B53");
    }
}
'''


def run_case(damage_text, core_text, proj_text):
    """编译真三件 + 桩，跑一遍；返回 (ok, output)。"""
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="airdmg_")
    try:
        src = os.path.join(tmp, "src")
        stubs = dict(b48.STUBS)
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
            return False, "javac: " + (cp.stderr or cp.stdout)[-600:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=180)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def red_samples(dmg, core, proj):
    """每个红样本都是真实改坏源码后重编；仍然全绿 = 闸门失效。"""
    cases = {
        "指数归 1（代差失效）": (dmg.replace("AAM_PCT_EXP = 2.60f", "AAM_PCT_EXP = 1.0f"), core, proj),
        "基准腰斩": (dmg.replace("AAM_PCT_BASE = 3.30f", "AAM_PCT_BASE = 0.50f"), core, proj),
        "下限归零（跨代无限磨）": (dmg.replace("AAM_PCT_MIN = 0.08f", "AAM_PCT_MIN = 0.0f"), core, proj),
        "近炸不打折 0.7→1.0": (dmg.replace("FUSE_MUL = 0.7f", "FUSE_MUL = 1.0f"), core, proj),
        "用目标当发射方":
            (dmg.replace("missionById(p.shooterMissionID)", "missionById(p.targetMissionID)"),
             core, proj),
        "EXPIRED 也记账":
            (dmg, core,
             proj.replace("            return settle(RESULT_EXPIRED);",
                          "            AirDamage.noteHit(this);\n"
                          "            return settle(RESULT_EXPIRED);")),
    }
    bad = []
    for name, (d, c, p) in cases.items():
        ok, out = run_case(d, c, p)
        if ok:
            bad.append(name)
    return bad


def main():
    dmg = io.open(DAMAGE, encoding="utf-8").read()
    core = io.open(CORE, encoding="utf-8").read()
    proj = io.open(PROJ, encoding="utf-8").read()

    ok, out = run_case(dmg, core, proj)
    if not ok:
        print("❌ B53 空空伤害口径失败：\n" + out)
        return 1
    print("  " + out)

    bad = red_samples(dmg, core, proj)
    if bad:
        print("❌ 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("  ✅ 红样本 6 组全部变红（指数/基准/下限/近炸/发射方对调/EXPIRED 记账）")
    print("✅ B53 空空伤害口径通过（同型 1.1 发 · 上代 1 发 · 下代 6 发 · 代差 6 倍 · 近炸×0.7 · 影子不扣血）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
