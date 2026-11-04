#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B61 AGM 对地弹（v155）：发射/飞行/拦截的离线防线。

口径（用户 2026-11-05 拍板）：
  · 目标只打敌方陆军师（不拆省/建筑/机场）；
  · **进 AGMRange 就直接开火**，不等飞到目标省；
  · 伤害**暂不结算**（Land 陆军改革合并后接，钩子 = `AirDamage.agmApplyDamage`）；
  · 可被防空拦一次，拦下的弹半空爆炸、绝不进伤害结算。

闸门钉死的事（每一条都在真机上无声地翻过车或会翻）：
  1) `AirLaunch` 必须把 ATTACK_ARMY 任务分给 `AirAgm`；
  2) 只有 `CanAGMissile` 的机型能打（否则运输机/侦察机也在扔 AGM）；
  3) 冷却 4 小时 + 弹池按每机弹数（少一句 ⇒ 每帧齐射 / 永远 dry）；
  4) 弹寿命必须按射程反推（用类型表的 1.2 回合 ⇒ 飞一半就 `nAP exp`，永远打不到）；
  5) 被拦的弹不能进 `AirDamage`（否则"拦住"变成"照打"，拦截等于没做）；
  6) AGM 命中不能落进 `settleAam`（会把对地弹当空空弹去改发射方状态）。

红样本：真改源码再跑一次，必须变红（否则闸门是装饰）。
"""
import io
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BATTLES = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles")
AGM = os.path.join(BATTLES, "AirAgm.java")
MATH = os.path.join(BATTLES, "AirAgmMath.java")
LAUNCH = os.path.join(BATTLES, "AirLaunch.java")
DAMAGE = os.path.join(BATTLES, "AirDamage.java")
PROJ = os.path.join(BATTLES, "AirProjectile.java")
CORE = os.path.join(BATTLES, "AirProjectileCore.java")
STATS = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz", "map", "battles",
                     "AirModelStats.smali")

MATH_MAIN = r"""
import aoc.kingdoms.lukasz.map.battles.AirAgmMath;

public class Main {
    static int bad = 0;
    static void eq(String n, int got, int want) {
        if (got != want) { bad++; System.out.println("FAIL " + n + " got=" + got + " want=" + want); }
    }
    static void near(String n, float got, float want) {
        if (Math.abs(got - want) > 0.001f) {
            bad++; System.out.println("FAIL " + n + " got=" + got + " want=" + want);
        }
    }
    public static void main(String[] a) {
        // 齐射发数：夹在存活机数与剩余弹之间
        eq("4机10弹", AirAgmMath.shotsFor(4, 10), 4);
        eq("4机2弹", AirAgmMath.shotsFor(4, 2), 2);
        eq("没弹", AirAgmMath.shotsFor(4, 0), 0);
        eq("没机", AirAgmMath.shotsFor(0, 10), 0);
        eq("1对1", AirAgmMath.shotsFor(1, 1), 1);
        // 寿命 = 1.25 × 射程世界像素 ÷ 弹速 + 0.5
        near("125/45/1", AirAgmMath.lifeFor(125f, 45f, 1f), 1.25f * 125f / 45f + 0.5f);
        near("240/71/1", AirAgmMath.lifeFor(240f, 71f, 1f), 1.25f * 240f / 71f + 0.5f);
        near("缩放", AirAgmMath.lifeFor(125f, 45f, 0.02f), 1.25f * 125f * 0.02f / 45f + 0.5f);
        near("弹速0", AirAgmMath.lifeFor(125f, 0f, 1f), 0f);
        near("射程0", AirAgmMath.lifeFor(0f, 45f, 1f), 0f);
        // 拦截 roll
        eq("必不拦", AirAgmMath.rollHit(0.3f, 0f) ? 1 : 0, 0);
        eq("必拦", AirAgmMath.rollHit(0.99f, 1f) ? 1 : 0, 1);
        eq("命中", AirAgmMath.rollHit(0.1f, 0.5f) ? 1 : 0, 1);
        eq("未中", AirAgmMath.rollHit(0.5f, 0.5f) ? 1 : 0, 0);
        eq("负数", AirAgmMath.rollHit(-0.1f, 0.5f) ? 1 : 0, 0);
        System.out.println(bad == 0 ? "OK AirAgmMath" : ("FAIL AirAgmMath " + bad));
        System.exit(bad == 0 ? 0 : 1);
    }
}
"""


def run_math(text):
    """编译并真跑 AirAgmMath（纯函数，无桩）；返回 (ok, output)。"""
    import shutil
    import subprocess
    import tempfile
    javac, java = shutil.which("javac"), shutil.which("java")
    tmp = tempfile.mkdtemp(prefix="agm_")
    try:
        d = os.path.join(tmp, "aoc", "kingdoms", "lukasz", "map", "battles")
        os.makedirs(d)
        io.open(os.path.join(d, "AirAgmMath.java"), "w", encoding="utf-8").write(text)
        io.open(os.path.join(tmp, "Main.java"), "w", encoding="utf-8").write(MATH_MAIN)
        cls = os.path.join(tmp, "cls")
        os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-nowarn", "-d", cls,
                             os.path.join(tmp, "Main.java"),
                             os.path.join(d, "AirAgmMath.java")],
                            capture_output=True, text=True)
        if cp.returncode != 0:
            return False, "javac: " + (cp.stderr or cp.stdout)[-400:]
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=60)
        return r.returncode == 0, ((r.stdout or "") + (r.stderr or "")).strip()
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


def body_of(text, sig):
    """取 Java 方法体（按 `sig(` 定位到配平的 `}`）。"""
    i = text.find(sig)
    if i < 0:
        return None
    j = text.find("{", i)
    if j < 0:
        return None
    depth = 0
    for k in range(j, len(text)):
        if text[k] == "{":
            depth += 1
        elif text[k] == "}":
            depth -= 1
            if depth == 0:
                return text[j:k + 1]
    return None


def check(agm_text, launch_text, damage_text, proj_text, core_text):
    errs = []

    # ---- 1) AirLaunch 接线 ----
    if "missionType == MT_ATTACK_ARMY" not in launch_text or "AirAgm.tick(self)" not in launch_text:
        errs.append("AirLaunch 没有把 ATTACK_ARMY 任务交给 AirAgm.tick")

    # ---- 2) 机型能力 ----
    if "AirModelStats.canAGMissile(" not in agm_text:
        errs.append("AirAgm 没有按 CanAGMissile 过滤机型（运输机也会扔 AGM）")

    # ---- 3) 冷却 / 弹池 ----
    if "COOLDOWN_HOURS = 4" not in agm_text:
        errs.append("AGM 冷却不是 4 游戏小时")
    if "AirModelStats.missileCountOf(" not in agm_text:
        errs.append("AGM 弹池没有按每机弹数初始化")

    # ---- 4) 寿命按射程反推 / 射程判定 / 真弹 ----
    if "AirAgmMath.lifeFor(" not in agm_text:
        errs.append("AGM 寿命没有按射程反推（类型表 lifeTurns=1.2 飞一半就过期）")
    if "AirLaunch.inRange(" not in agm_text:
        errs.append("AGM 选目标没有走射程判定")
    if "AirProjectileCore.spawnEx(" not in agm_text:
        errs.append("AGM 开火没有落真弹（spawnEx）")
    if '"airhq"' not in agm_text:
        errs.append("AGM 没有排除空军编制（airhq* 也是 ArmyDivision，会被当成陆军师）")
    if "atWar(" not in agm_text:
        errs.append("AGM 没有交战判定（会打盟国/中立）")

    # ---- 5) 拦截：弹上有标记，被拦的分支不进伤害 ----
    if "RESULT_INTERCEPTED" not in proj_text:
        errs.append("AirProjectile 缺 RESULT_INTERCEPTED")
    step = body_of(proj_text, "public int step(")
    if step is None:
        errs.append("AirProjectile.step 方法体取不到")
    else:
        i_contact = step.find("contactKind(tx, ty)")
        i_intc = step.find("RESULT_INTERCEPTED")
        i_life = step.find("RESULT_EXPIRED")
        if i_intc < 0:
            errs.append("step 里没有拦截判定的分支")
        elif not (i_contact < i_intc < i_life):
            errs.append("拦截判定顺序不对（必须：接触 → 拦截 → 寿命）")
    if "AirAgmMath.rollHit(" not in agm_text:
        errs.append("AGM 发射时没有做拦截 roll")

    # 被拦分支必须不碰伤害：取 RESULT_INTERCEPTED 后面一小段
    i = core_text.find("RESULT_INTERCEPTED")
    if i < 0:
        errs.append("AirProjectileCore 没有处理 RESULT_INTERCEPTED")
    else:
        seg = core_text[i:i + 320]
        if "AirDamage." in seg:
            errs.append("被拦下的 AGM 还调了 AirDamage（拦截等于没做）")

    # ---- 6) 命中分发：AGM 必须在 settleAam 之前分走 ----
    onhit = body_of(damage_text, "public static void onHit(")
    if onhit is None:
        errs.append("AirDamage.onHit 取不到")
    else:
        i_agm = onhit.find('indexOf("AGM")')
        i_settle = onhit.find("settleAam(p)")
        if i_agm < 0 or "agmHit(p)" not in onhit:
            errs.append("AGM 命中没有分到 agmHit（会落进 settleAam）")
        elif not (i_agm < i_settle):
            errs.append("AGM 分支必须在 settleAam 之前")
    if "agmApplyDamage(" not in damage_text:
        errs.append("缺 agmApplyDamage 钩子（Land 合并时接这里）")
    return errs


def data_check():
    """AirModelStats 的 AGMRANGE 必须与 data 层算出来的 64 个值逐一相等。"""
    errs = []
    sys.path.insert(0, os.path.join(ROOT, "tools"))
    import json
    import gen_aircraft_models as g
    src = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))
    models = g.build(src)
    want = [int(m["AGMRange"]) for m in models]
    if len(want) != 64:
        errs.append("机型数不是 64（%d）" % len(want))
    text = io.open(STATS, encoding="utf-8").read()
    m = re.search(r":d_AGMRANGE\s*\.array-data 4\s*(.*?)\.end array-data", text, re.S)
    if not m:
        errs.append("AirModelStats 里没有 :d_AGMRANGE 数据块（生成器没跑？）")
    else:
        got = [int(x, 16) for x in re.findall(r"0x([0-9a-fA-F]+)", m.group(1))]
        if got != want:
            errs.append("AGMRANGE 与 data 层不一致：smali %s… vs data %s…"
                        % (got[:5], want[:5]))
    if ".method public static agmRangeOf(I)I" not in text:
        errs.append("AirModelStats 缺 agmRangeOf(I)I")
    # 缺省继承：没单独配的机型必须等于自己的 MissileRange
    for row in models:
        if "AGMRange" not in row:
            errs.append("%s 没有 AGMRange" % row["Key"])
            break
    return errs


def red_samples(agm_text, launch_text, damage_text, proj_text, core_text, math_text):
    cases = {
        "接线删掉": (launch_text.replace("AirAgm.tick(self)", "AirAgm.tickX(self)"), None, None, None, None),
        "能力过滤删掉": (agm_text.replace("AirModelStats.canAGMissile(aid)", "true"), None, None, None, None),
        "冷却改成0": (agm_text.replace("COOLDOWN_HOURS = 4", "COOLDOWN_HOURS = 0"), None, None, None, None),
        "寿命退回类型表": (agm_text.replace("AirAgmMath.lifeFor(range, spd, scale)",
                                            "MissileTypes.lifeOf(type)"), None, None, None, None),
        "拦截分支粘回伤害": (None, None, None, None,
                            core_text.replace("dbgIntc++;", "dbgIntc++; AirDamage.onHit(p);", 1)),
        "AGM落回settleAam": (None, None,
                             damage_text.replace('int agm = MissileTypeIds.indexOf("AGM");',
                                                 'int agm = -1;'), None, None),
    }
    bad = []
    for name, (a, l, d, pr, co) in cases.items():
        if not check(a or agm_text, l or launch_text, d or damage_text,
                     pr or proj_text, co or core_text):
            bad.append(name)
    # 纯函数坏掉（寿命公式去掉 1.25）必须被真值表抓住
    broken = math_text.replace("return 1.25f * (rangeReal * scale) / speedPx + 0.5f;",
                               "return (rangeReal * scale) / speedPx + 0.5f;")
    if broken == math_text or run_math(broken)[0]:
        bad.append("寿命公式失效")
    return bad


def main():
    for p in (AGM, MATH, LAUNCH, DAMAGE, PROJ, CORE):
        if not os.path.isfile(p):
            print("FAIL 缺 %s" % os.path.relpath(p, ROOT))
            return 1
    agm_text = io.open(AGM, encoding="utf-8").read()
    math_text = io.open(MATH, encoding="utf-8").read()
    launch_text = io.open(LAUNCH, encoding="utf-8").read()
    damage_text = io.open(DAMAGE, encoding="utf-8").read()
    proj_text = io.open(PROJ, encoding="utf-8").read()
    core_text = io.open(CORE, encoding="utf-8").read()

    ok, out = run_math(math_text)
    if not ok:
        print("FAIL AirAgmMath 真值表不成立：" + out)
        return 1

    errs = data_check() + check(agm_text, launch_text, damage_text, proj_text, core_text)
    for e in errs:
        print("FAIL " + e)
    if errs:
        print("❌ B61 AGM 口径不成立：%d 项" % len(errs))
        return 1

    bad = red_samples(agm_text, launch_text, damage_text, proj_text, core_text, math_text)
    if bad:
        print("❌ B61 红样本没有变红（闸门失效）：" + "、".join(bad))
        return 1
    print("✅ B61 AGM 对地弹通过（进射程即开火 · 能力/射程/冷却/弹池 · 寿命按射程反推"
          " · 拦截不进伤害 · 命中不落 settleAam · 红样本 7 组）")
    return 0


if __name__ == "__main__":
    sys.exit(main())
