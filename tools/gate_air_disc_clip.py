#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B41 雷达盘裁剪离线回归（v89）。

把仓库里**真正的** `src/java/.../AirDiscQueue.java` 和两个落笔原语的计数桩一起 javac，
跑 10 个几何场景，逐像素比对"矩形拼图"与"理想裁剪"，并要求：
  * 结构差异（离盘边界 >2.5px 的不一致）== 0
  * SPILL（画到所有蓝盘之外）== 0
  * 大蓝盘在左/在右的镜像场景，小蓝盘可见像素数一致
v88 的两处实现 bug（区间 16 位打包解码、求差循环缺 `bs>=end` 收尾）在 A/B/C/K/L 场景里
分别表现为"小蓝盘整块消失""右半边切成直边"，正是本闸门要钉死的东西。

退出码 0 = 全绿；非 0 = 有失败（stdout 里有 FAIL 行）。
"""
import os
import shutil
import subprocess
import sys
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map", "province", "AirDiscQueue.java")
if len(sys.argv) > 1:   # 调试用：跑指定的另一份源码（例如 git show HEAD:... 出来的 v88）
    SRC = os.path.abspath(sys.argv[1])
TPL = os.path.join(ROOT, "tools", "gate_air_disc")
PKG = ("aoc", "kingdoms", "lukasz", "map", "province")


def main():
    if not os.path.isfile(SRC):
        print("FAIL B41 找不到 %s" % SRC)
        return 1
    javac = shutil.which("javac")
    java = shutil.which("java")
    if not javac or not java:
        print("FAIL B41 缺 javac/java（出包流水线本来就依赖 JDK17）")
        return 1
    tmp = tempfile.mkdtemp(prefix="airdisc_gate_")
    pkgdir = os.path.join(tmp, "src", *PKG)
    os.makedirs(pkgdir)
    try:
        for name in ("RadarOverlay.java", "AirRect.java"):
            shutil.copy(os.path.join(TPL, name + ".txt"), os.path.join(pkgdir, name))
        shutil.copy(SRC, os.path.join(pkgdir, "AirDiscQueue.java"))
        shutil.copy(os.path.join(TPL, "Main.java.txt"), os.path.join(tmp, "src", "Main.java"))
        cls = os.path.join(tmp, "cls")
        os.makedirs(cls)
        srcs = [os.path.join(pkgdir, n) for n in ("RadarOverlay.java", "AirRect.java", "AirDiscQueue.java")]
        srcs.append(os.path.join(tmp, "src", "Main.java"))
        cp = subprocess.run([javac, "-encoding", "UTF-8", "-d", cls] + srcs,
                            capture_output=True, text=True)
        if cp.returncode != 0:
            print("FAIL B41 javac 失败：\n" + (cp.stderr or cp.stdout)[-1500:])
            return 1
        r = subprocess.run([java, "-cp", cls, "Main"], capture_output=True, text=True, timeout=180)
        out = (r.stdout or "") + (r.stderr or "")
        print(out.strip())
        return 0 if r.returncode == 0 else 1
    finally:
        shutil.rmtree(tmp, ignore_errors=True)


if __name__ == "__main__":
    sys.exit(main())
