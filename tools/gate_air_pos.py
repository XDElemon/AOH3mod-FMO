#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B44 M1b 连续位置表离线回归：真 AirPos.java + 桩 AirMission/Game/MapScale/MapCoords。"""
import os, shutil, subprocess, sys, tempfile
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "battles", "AirPos.java")
TPL = os.path.join(ROOT, "tools", "gate_air_pos")
STUBS = [
    ("aoc/kingdoms/lukasz/map/battles", ["AirMission.java", "AirDbgLog.java"]),
    ("aoc/kingdoms/lukasz/jakowski", ["Game.java"]),
    ("aoc/kingdoms/lukasz/map/map", ["MapScale.java", "MapCoords.java"]),
]

def main():
    src = SRC
    if len(sys.argv) > 1:
        src = os.path.abspath(sys.argv[1])
    javac, java = shutil.which("javac"), shutil.which("java")
    if not javac or not java:
        print("FAIL B44 缺 javac/java"); return 1
    tmp = tempfile.mkdtemp(prefix="airpos_gate_")
    try:
        srcs = []
        for pkg, names in STUBS:
            d = os.path.join(tmp, "src", *pkg.split("/")); os.makedirs(d, exist_ok=True)
            for n in names:
                shutil.copy(os.path.join(TPL, n + ".txt"), os.path.join(d, n)); srcs.append(os.path.join(d, n))
        d = os.path.join(tmp, "src", "aoc/kingdoms/lukasz/map/battles")
        shutil.copy(src, os.path.join(d, "AirPos.java")); srcs.append(os.path.join(d, "AirPos.java"))
        shutil.copy(os.path.join(TPL, "Main.java.txt"), os.path.join(tmp, "src", "Main.java"))
        srcs.append(os.path.join(tmp, "src", "Main.java"))
        cls = os.path.join(tmp, "cls"); os.makedirs(cls)
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-d", cls] + srcs, capture_output=True, text=True)
        if cp.returncode != 0:
            print("FAIL B44 javac 失败：\n" + (cp.stderr or cp.stdout)[-1500:]); return 1
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=120)
        print(((r.stdout or "") + (r.stderr or "")).strip())
        return 0 if r.returncode == 0 else 1
    finally:
        shutil.rmtree(tmp, ignore_errors=True)

if __name__ == "__main__":
    sys.exit(main())
