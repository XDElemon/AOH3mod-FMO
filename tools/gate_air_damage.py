#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B53 M3b 伤害影子双跑（v126）：真 AirDamage + 真 AirProjectileCore + 手写桩。

本批口径（用户 2026-10-29「M3b 先双跑对账」）：
  **新表只算不结算**——伤害算出来、写 `nDM calc`，但一滴血都不扣；旧 `msFx*/adFx*` 仍是唯一结算方。

断言：
  1) 贴脸全额：Σ airAttack × 2.0 × defenseMul(target)（10+20 → 60；目标 defense=40 → 30）；
  2) 近炸 ×0.7：同输入 fused=true → 42 / 21；
  3) 防空常量：SAM = 50，近炸 35（对应 `AirDefense.adDamagePerHit`）；
  4) 命中即记账：`AirProjectileCore.stepAll` 命中一帧 → dbgCalc=1、dbgSum=期望值；
  5) **不结算**：整轮跑完目标机 hp 一点没掉（这是本批最核心的红线）；
  6) 脱靶/寿命到期：零伤害、不记账（EXPIRED 不许调 noteHit）；
  7) 找不到发射方：不记账（宁可漏记，不能错记）。

红样本（改坏后必须变红）：攻击系数 2.0→1.0 / 近炸 0.7→1.0 / defenseMul 恒 1 / EXPIRED 也记账 /
发射方与目标对调。
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

    static AirMission mk(long id) {
        AirMission m = new AirMission();
        m.missionID = id;
        AirForceManager.getInstance().activeMissions.add(m);
        return m;
    }

    static AirUnit ac(float atk, float def) {
        AirUnit u = new AirUnit();
        u.airAttack = atk;
        u.defense = def;
        u.hp = 10.0f;
        return u;
    }

    public static void main(String[] args) {
        // ---------- 1) 公式：贴脸全额 ----------
        AirMission shooter = mk(1L);
        shooter.aliveAircraft.add(ac(10.0f, 0.0f));
        shooter.aliveAircraft.add(ac(20.0f, 0.0f));
        AirMission target = mk(2L);
        target.aliveAircraft.add(ac(0.0f, 0.0f));

        near("AAM 贴脸(10+20)x2x1.0", AirDamage.aamDamage(shooter, target, false), 60.0f);

        // ---------- 2) defenseMul：avg def 40 → 40/(40+40)=0.5 ----------
        target.aliveAircraft.clear();
        target.aliveAircraft.add(ac(0.0f, 40.0f));
        near("AAM 目标防御40", AirDamage.aamDamage(shooter, target, false), 30.0f);

        // ---------- 3) 近炸 ×0.7 ----------
        near("AAM 近炸 = 全额x0.7", AirDamage.aamDamage(shooter, target, true), 21.0f);

        // ---------- 4) 防空常量 ----------
        near("SAM 贴脸", AirDamage.samDamage(false), 50.0f);
        near("SAM 近炸", AirDamage.samDamage(true), 35.0f);

        // ---------- 5) 命中即记账 + 绝不扣血 ----------
        AirDamage.clear();
        AirProjectileCore.clear();
        target.aliveAircraft.clear();
        target.aliveAircraft.add(ac(0.0f, 0.0f));
        float hpBefore = ((AirUnit) target.aliveAircraft.get(0)).hp;

        AirPos.set(2L, 100.0f, 100.0f);
        int aam = MissileTypeIds.indexOf("AAM");
        int slot = AirProjectileCore.spawnEx(aam, 1, 2L, -1, 100.0f, 100.0f, 100.0f, 100.0f,
                0.0f, 0.0f, 0.0f);
        check("AAM 入表", slot >= 0, "slot=" + slot);
        AirProjectileCore.get(slot).shooterMissionID = 1L;
        AirProjectileCore.stepAll(0.1f, System.currentTimeMillis());
        near("影子记账 v", AirDamage.dbgSum, 60.0f);
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
        "攻击系数 2.0→1.0": (dmg.replace("AAM_ATK_MUL = 2.0f", "AAM_ATK_MUL = 1.0f"), core, proj),
        "近炸不打折 0.7→1.0": (dmg.replace("FUSE_MUL = 0.7f", "FUSE_MUL = 1.0f"), core, proj),
        "defenseMul 恒 1": (dmg.replace("return 40.0f / (40.0f + avg);", "return 1.0f;"), core, proj),
        "用目标当发射方":
            (dmg.replace("missionById(p.shooterMissionID)", "missionById(p.targetMissionID)"),
             core, proj),
        "EXPIRED 也记账":
            (dmg, core,
             proj.replace("            return settle(RESULT_EXPIRED);",
                          "            AirDamage.noteHit(this);\n"
                          "            return settle(RESULT_EXPIRED);")),
        "影子结算跑去扣血":
            (dmg.replace("float atk = 0.0f;",
                         "for (int z = 0; z < target.aliveAircraft.size(); z++) "
                         "{ ((AirUnit) target.aliveAircraft.get(z)).hp -= 1.0f; }\n"
                         "        float atk = 0.0f;"), core, proj),
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
        print("❌ B53 伤害影子双跑失败：\n" + out)
        return 1
    print("  " + out)

    bad = red_samples(dmg, core, proj)
    if bad:
        print("❌ 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("  ✅ 红样本 6 组全部变红（攻击系数/近炸/防御系数/发射方对调/EXPIRED 记账/偷偷扣血）")
    print("✅ B53 伤害影子双跑通过（贴脸全额 · 近炸×0.7 · SAM 常量 · 命中记账 · 绝不扣血 · 到期零伤 · 缺发射方不记）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
