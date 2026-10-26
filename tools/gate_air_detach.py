#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B45 M1c 空军脱离陆军离线回归（v96）。

两条腿：
  ① 真 `src/java/.../AirDivStore.java` + 轻桩（Province/ArmyDivision）编译并跑行为断言：
     put → keyId=0 → getArmy 同对象 → remove → keyId=-1；ORDER 稳定；clear；put(null)。
  ② 生产 smali 静态不变量（逐方法切片，避免全文件误匹配）：
     - `Province.addArmy` 的 airhq 分支必须在 lArmies.add 之前改道 AirDivStore.put 并 return；
     - `AirMission.moveDivisionAlongFlight` 不许再有 Province.addArmy/removeArmy/updateArmyPosY；
     - 三个 airhqDivision 判空闸门（moveAlong/tickInvars/update）已拆；
     - divLimit / pickIdleDivKey / sync 对账改读 AirDivStore；
     - 渲染入口 drawProvincesArmy 调 AirUx.drawAll；选中/保活钩子存在；
     - 读档清 AirPos/AirDivStore、at 不再硬设 source。

红样本（--red）：对内存副本做 5 种退化，��条都必须让断言变红。
"""
import io
import os
import shutil
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "src", "smali")

P_PROV = "aoc/kingdoms/lukasz/map/province/Province.smali"
P_AM = "aoc/kingdoms/lukasz/map/battles/AirMission.smali"
P_AFM = "aoc/kingdoms/lukasz/map/battles/AirForceManager.smali"
P_PDA = "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali"
P_MTM = "aoc/kingdoms/lukasz/map/map/MapTouchManager.smali"
P_LOAD = "aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali"
P_UX = "aoc/kingdoms/lukasz/map/province/AirUx.smali"

STORE_JAVA = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles", "AirDivStore.java")
ICONS_JAVA = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles", "AirIcons.java")

FILES = [P_PROV, P_AM, P_AFM, P_PDA, P_MTM, P_LOAD, P_UX]


def read(rel):
    with io.open(os.path.join(SRC, rel), encoding="utf-8", errors="replace") as f:
        return f.read()


def method_body(text, name):
    """按 `.method ... name(...)` 切片；找不到返回 None。"""
    marker = " " + name + "("
    i = 0
    while True:
        i = text.find(".method", i)
        if i < 0:
            return None
        head_end = text.find("\n", i)
        head = text[i:head_end]
        if marker in head or head.rstrip().endswith(" " + name):
            j = text.find(".end method", head_end)
            return text[head_end:j if j >= 0 else len(text)]
        i = head_end


# ---------------------------------------------------------------- ① 真 Java 行为
_STUBS = {
    "aoc/kingdoms/lukasz/map/province/Province.java":
        "package aoc.kingdoms.lukasz.map.province;\n"
        "import java.util.ArrayList;\nimport java.util.List;\n"
        "import aoc.kingdoms.lukasz.map.army.ArmyDivision;\n"
        "public class Province { public int iProvinceID; public final List armies = new ArrayList();\n"
        "  public int getArmySize() { return armies.size(); }\n"
        "  public ArmyDivision getArmy(int i) { return (ArmyDivision) armies.get(i); }\n"
        "  public void removeArmy(int i) { armies.remove(i); }\n}\n",
    "aoc/kingdoms/lukasz/map/army/ArmyDivision.java":
        "package aoc.kingdoms.lukasz.map.army;\npublic class ArmyDivision { public String key; public int civID; public int provinceID; }\n",
    "aoc/kingdoms/lukasz/jakowski/Game.java":
        "package aoc.kingdoms.lukasz.jakowski;\nimport java.util.List;\n"
        "public class Game { public static List lProvinces; }\n",
}

_MAIN = r'''
import aoc.kingdoms.lukasz.map.battles.AirDivStore;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.province.Province;

public class Main {
    static int bad = 0;
    static void ok(boolean c, String m) { if (!c) { bad++; System.out.println("FAIL " + m); } }
    public static void main(String[] a) {
        AirDivStore.clear();
        Province p = new Province(); p.iProvinceID = 7;
        ArmyDivision d = new ArmyDivision(); d.key = "airhq_1_7_2_1"; d.civID = 1; d.provinceID = 7;
        // put / 取回同对象 / keyId
        ok("airhq_1_7_2_1".equals(AirDivStore.put(p, d)), "put 返回 key");
        ok(AirDivStore.keyId(p, d.key) == 0, "keyId 存在返回 0");
        ok(AirDivStore.getArmy(p, d.key) == d, "getArmy 返回同一对象");
        ok(AirDivStore.size() == 1 && AirDivStore.keyAt(0).equals(d.key), "keyAt/顺序");
        ok(AirDivStore.provOf(d.key) == 7, "provOf");
        // 不存在的 key
        ok(AirDivStore.keyId(p, "airhq_9_9_9_9") == -1, "keyId 不存在返回 -1");
        ok(AirDivStore.getArmy(p, "airhq_9_9_9_9") == null, "getArmy 不存在返回 null");
        // 重复 put 覆盖但不重复追加 ORDER
        ArmyDivision d2 = new ArmyDivision(); d2.key = d.key; d2.civID = 1; d2.provinceID = 7;
        AirDivStore.put(p, d2);
        ok(AirDivStore.size() == 1 && AirDivStore.getArmy(p, d.key) == d2, "重复 put 覆盖");
        ok(AirDivStore.keyAt(1) == null, "重复 put 不追加 ORDER");
        // remove
        AirDivStore.removeArmy(p, d.key);
        ok(AirDivStore.keyId(p, d.key) == -1 && AirDivStore.size() == 0, "remove 后查询为空");
        // null 安全
        ok(AirDivStore.put(p, null) == null, "put(null) 返回 null");
        AirDivStore.put(p, d);
        ok(AirDivStore.keyId(p, null) == -1, "keyId(null) 返回 -1");
        // 旧档幽灵清洗
        Province p2 = new Province(); p2.iProvinceID = 9;
        ArmyDivision ghost = new ArmyDivision(); ghost.key = "airhq_1_9_2_1"; p2.armies.add(ghost);
        ArmyDivision ground = new ArmyDivision(); ground.key = "inf_1"; p2.armies.add(ground);
        ArmyDivision noKey = new ArmyDivision(); noKey.key = null; p2.armies.add(noKey);
        java.util.List provs = new java.util.ArrayList();
        provs.add(p2);
        aoc.kingdoms.lukasz.jakowski.Game.lProvinces = provs;
        int swept = AirDivStore.sweepGhosts();
        ok(swept == 1, "sweepGhosts 只清 airhq（实际 " + swept + "）");
        ok(p2.getArmySize() == 2 && p2.getArmy(0) == ground && p2.getArmy(1) == noKey, "sweep 保留陆军/无 key");
        ok(AirDivStore.sweepGhosts() == 0, "sweep 幂等");
        // clear
        AirDivStore.clear();
        ok(AirDivStore.size() == 0 && AirDivStore.keyAt(0) == null, "clear");
        System.out.println(bad == 0 ? "OK AirDivStore" : ("FAIL AirDivStore " + bad));
        System.exit(bad == 0 ? 0 : 1);
    }
}
'''


def check_store(fails):
    javac, java = shutil.which("javac"), shutil.which("java")
    if not javac or not java:
        fails.append("B45 缺 javac/java")
        return
    tmp = tempfile.mkdtemp(prefix="airdetach_")
    try:
        srcs = []
        for rel, body in _STUBS.items():
            p = os.path.join(tmp, "src", rel)
            os.makedirs(os.path.dirname(p), exist_ok=True)
            io.open(p, "w", encoding="utf-8").write(body)
            srcs.append(p)
        dst = os.path.join(tmp, "src", "aoc/kingdoms/lukasz/map/battles/AirDivStore.java")
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        shutil.copy(STORE_JAVA, dst)
        srcs.append(dst)
        mp = os.path.join(tmp, "src", "Main.java")
        io.open(mp, "w", encoding="utf-8").write(_MAIN)
        srcs.append(mp)
        cls = os.path.join(tmp, "cls")
        os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-d", cls] + srcs, capture_output=True, text=True)
        if cp.returncode != 0:
            fails.append("B45 AirDivStore javac 失败：" + (cp.stderr or cp.stdout)[-800:])
            return
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=120)
        out = ((r.stdout or "") + (r.stderr or "")).strip()
        if r.returncode != 0:
            fails.append("B45 AirDivStore 行为断言失败：" + out[-800:])
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


# ---------------------------------------------------------------- ② 静态不变量
def check_static(texts, fails):
    prov = texts.get(P_PROV, "")
    am = texts.get(P_AM, "")
    afm = texts.get(P_AFM, "")
    pda = texts.get(P_PDA, "")
    mtm = texts.get(P_MTM, "")
    load = texts.get(P_LOAD, "")
    ux = texts.get(P_UX, "")

    # 1. addArmy 的 airhq 分支：put + return 必须在 lArmies.add 之前
    add_body = method_body(prov, "addArmy")
    if add_body is None:
        fails.append("B45 找不到 Province.addArmy")
    else:
        i_put = add_body.find("AirDivStore;->put(")
        i_ret = add_body.find("return-object", i_put + 1) if i_put >= 0 else -1
        i_add = add_body.find("lArmies", max(0, i_put))
        if i_put < 0:
            fails.append("B45 Province.addArmy 的 airhq 分支没有改道 AirDivStore.put")
        elif i_ret < 0 or (i_add >= 0 and i_ret > i_add):
            fails.append("B45 Province.addArmy 改道后没有在进 lArmies 之前 return")

    # 2. moveAlong 不许再有省军队增删
    mv = method_body(am, "moveDivisionAlongFlight")
    if mv is None:
        fails.append("B45 找不到 AirMission.moveDivisionAlongFlight")
    else:
        for bad in ("Province;->addArmy(", "Province;->removeArmy(", "updateArmyPosY"):
            if bad in mv:
                fails.append("B45 moveDivisionAlongFlight 仍在操作省军队：" + bad)
        if "if-eqz v14, :cond_237" in mv:
            fails.append("B45 moveDivisionAlongFlight 仍保留 airhqDivision 判空早退")

    # 3. 两个时间闸门
    tick = method_body(am, "tickInvars")
    if tick is None or "if-eqz v4, :cond_5b" in tick:
        fails.append("B45 tickInvars 仍依赖 airhqDivision 判空")
    upd = method_body(am, "update")
    if upd is None or "if-eqz v5, :cond_177" in upd:
        fails.append("B45 update 等待时间闸门仍依赖 airhqDivision 判空")

    # 4. divLimit / pickIdleDivKey 读注册表
    dl = method_body(am, "divLimit")
    if dl is None or "AirDivStore;->getArmy(" not in dl:
        fails.append("B45 divLimit 未改读 AirDivStore.getArmy")
    pk = method_body(afm, "pickIdleDivKey")
    if pk is None or "AirDivStore;->keyId(" not in pk:
        fails.append("B45 pickIdleDivKey 未改读 AirDivStore.keyId")

    # 5. sync 对账走注册表（至少 2 处 keyId + 2 处 removeArmy）
    if afm.count("AirDivStore;->keyId(") < 3:
        fails.append("B45 AirForceManager 的注册表查询接线不足（应含 pickIdle + 两处 sync 对账）")
    if afm.count("AirDivStore;->removeArmy(") < 2:
        fails.append("B45 sync 清理未改走 AirDivStore.removeArmy")

    # 6. 渲染 / 选中 / 保活钩子
    dp = method_body(pda, "drawProvincesArmy")
    if dp is None or dp.count("AirUx;->drawAll(") != 1:
        fails.append("B45 drawProvincesArmy 未接 AirUx.drawAll（或重复接线）")
    dpj = method_body(pda, "drawProvincesArmy_Just")
    if dpj is None or "AirUx;->keepActive(" not in dpj:
        fails.append("B45 drawProvincesArmy_Just 未接 AirUx.keepActive")
    au = method_body(mtm, "actionUp")
    if au is None or "AirUx;->trySelect(" not in au:
        fails.append("B45 MapTouchManager.actionUp 未接 AirUx.trySelect")

    # 7. 读档：清表 + at 不再硬设 source
    lf = method_body(load, "loadSave_Airforce")
    if lf is None:
        fails.append("B45 找不到 loadSave_Airforce")
    else:
        for need in ("AirPos;->clear()V", "AirDivStore;->clear()V", "AirDivStore;->sweepGhosts()I"):
            if need not in lf:
                fails.append("B45 读档未清表：" + need)
        i_at = lf.find("airDivisionAtProvinceID:I")
        if i_at < 0 or "-0x1" not in lf[max(0, i_at - 200):i_at]:
            fails.append("B45 读档仍把 airDivisionAtProvinceID 硬设成 sourceProvinceID")

    # 8. 桥类本身
    for need in ("drawAll", "trySelect", "keepActive"):
        if (" " + need + "(") not in ux:
            fails.append("B45 AirUx 缺方法：" + need)
    if "Game$HoveredArmy;->iArmyID:I" not in ux or "const/4 v2, -0x1" not in ux:
        fails.append("B45 AirUx 选中未把 iArmyID 置 -1")

    # 9. Java 真源存在
    if not os.path.exists(ICONS_JAVA):
        fails.append("B45 缺 AirIcons.java（渲染/命中逻辑应在 Java）")
    else:
        t = io.open(ICONS_JAVA, encoding="utf-8").read()
        for need in ("myOrDetectedMission", "AirPos.fixX", "getArmyKeyID", "getAirDrawPosX"):
            if need not in t:
                fails.append("B45 AirIcons 缺口径：" + need)

    # 10. 例外清单登记
    exc = os.path.join(ROOT, "baseline", "smali_exceptions.txt")
    if os.path.exists(exc):
        e = io.open(exc, encoding="utf-8").read()
        if "map/province/AirUx" not in e:
            fails.append("B45 AirUx 未登记 smali 例外清单")
    else:
        fails.append("B45 缺 baseline/smali_exceptions.txt")


# ---------------------------------------------------------------- 红样本
def red_samples():
    base = {rel: read(rel) for rel in FILES}
    cases = []

    t = dict(base)
    t[P_PROV] = t[P_PROV].replace(
        "invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->put(", "invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->logDupAddFix(", 1)
    cases.append(("addArmy 不改道", t))

    t = dict(base)
    t[P_AM] = t[P_AM].replace(
        "    # M1c(v96)：过省界不再 removeArmy/addArmy",
        "    invoke-virtual {v10, v14}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;", 1)
    cases.append(("moveAlong 又 addArmy", t))

    t = dict(base)
    t[P_AFM] = t[P_AFM].replace("invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->keyId(",
                                "invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(", 1)
    cases.append(("pickIdle 不回注册表", t))

    t = dict(base)
    t[P_PDA] = t[P_PDA].replace("AirUx;->drawAll(", "AirUx;->drawNothing(", 1)
    cases.append(("渲染钩子丢失", t))

    t = dict(base)
    t[P_LOAD] = t[P_LOAD].replace(
        "    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDivStore;->sweepGhosts()I\n", "", 1)
    cases.append(("读档不清洗幽灵", t))

    t = dict(base)
    t[P_LOAD] = t[P_LOAD].replace(
        "const/4 v10, -0x1\n\n    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I",
        "iget v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I\n\n    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I", 1)
    cases.append(("读档 at 回退", t))

    bad = 0
    for name, texts in cases:
        fails = []
        check_static(texts, fails)
        if not fails:
            bad += 1
            print("FAIL 红样本未变红：%s" % name)
        else:
            print("  red ok  %s → %s" % (name, fails[0][:60]))
    return bad


def main():
    fails = []
    check_store(fails)
    check_static({rel: read(rel) for rel in FILES}, fails)
    if "--red" in sys.argv:
        n = red_samples()
        if n:
            fails.append("B45 %d 个红样本没有触发失败" % n)
    if fails:
        for f in fails:
            print("FAIL " + f)
        return 1
    print("OK B45 AirDivStore 行为（含旧档幽灵清洗）+ 10 组静态不变量")
    return 0


if __name__ == "__main__":
    sys.exit(main())
