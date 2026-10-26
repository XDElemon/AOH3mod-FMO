#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B42 S8 建筑摧毁离线回归（v90）。

把仓库里**真正的** `src/java/.../AirBuildingStrike.java` 和一组可记录的桩
（Province/AirMission/BuildingsManager(+$Buildings)/Game/AirStrikeRefresh）一起 javac，
跑 7 组断言：拆 1 栋 / 排除唯一建筑 / 排除机场 / 只剩 1 栋不动 /
一波次只拆 1 栋 / 越界与自己省不崩 / 拆完补收尾刷新。

配置类 `BuildingsManager$Buildings` 用 `$` 命名的顶层类仿真（Java 允许），
所以 AirBuildingStrike 的**反射路径也真被跑到**，不是静态检查。

退出码 0 = 全绿；非 0 = 有失败（stdout 里有 FAIL 行）。
"""
import os
import shutil
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles", "AirBuildingStrike.java")
TPL = os.path.join(ROOT, "tools", "gate_bld_strike")

STUBS = [
    ("aoc/kingdoms/lukasz/map/battles", ["AirMission.java", "AirStrikeRefresh.java"]),
    ("aoc/kingdoms/lukasz/map/province", ["Province.java", "ProvinceConstructedBuilding.java"]),
    ("aoc/kingdoms/lukasz/map", ["BuildingsManager.java", "BldCfg.java"]),
    ("aoc/kingdoms/lukasz/jakowski", ["Game.java"]),
]


def main():
    src = SRC
    if len(sys.argv) > 1:   # 调试用：跑指定的另一份源码（红样本）
        src = os.path.abspath(sys.argv[1])
    if not os.path.isfile(src):
        print("FAIL B42 找不到 %s" % src)
        return 1
    javac, java = shutil.which("javac"), shutil.which("java")
    if not javac or not java:
        print("FAIL B42 缺 javac/java（流水线本来就依赖 JDK17）")
        return 1
    tmp = tempfile.mkdtemp(prefix="bldstrike_gate_")
    try:
        srcs = []
        for pkg, names in STUBS:
            d = os.path.join(tmp, "src", *pkg.split("/"))
            os.makedirs(d, exist_ok=True)
            for n in names:
                shutil.copy(os.path.join(TPL, n + ".txt"), os.path.join(d, n))
                srcs.append(os.path.join(d, n))
        d = os.path.join(tmp, "src", "aoc/kingdoms/lukasz/map/battles")
        shutil.copy(src, os.path.join(d, "AirBuildingStrike.java"))
        srcs.append(os.path.join(d, "AirBuildingStrike.java"))
        shutil.copy(os.path.join(TPL, "Main.java.txt"), os.path.join(tmp, "src", "Main.java"))
        srcs.append(os.path.join(tmp, "src", "Main.java"))
        cls = os.path.join(tmp, "cls")
        os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-d", cls] + srcs,
                            capture_output=True, text=True)
        if cp.returncode != 0:
            print("FAIL B42 javac 失败：\n" + (cp.stderr or cp.stdout)[-1500:])
            return 1
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=180)
        print(((r.stdout or "") + (r.stderr or "")).strip())
        return 0 if r.returncode == 0 else 1
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


if __name__ == "__main__":
    sys.exit(main())
