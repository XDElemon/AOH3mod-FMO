#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_gov_no_tech.py <Governments.json 或 APK路径>
# 用途：断言政体表里 REQUIRED_TECHNOLOGY 非 -1 的条目数为 0（防回退）。
import sys, re, zipfile

def load(src):
    if src.lower().endswith(".apk"):
        z = zipfile.ZipFile(src)
        return z.read("assets/game/Governments.json").decode("utf-8")
    return open(src, encoding="utf-8").read()

def main():
    src = sys.argv[1]
    s = load(src)
    ch = re.split(r'\{\s*\n\s*Name:', s)
    bad = []
    for c in ch:
        name = c.split('"')[1]
        m = re.search(r'REQUIRED_TECHNOLOGY:\s*(-?\d+)', c)
        v = int(m.group(1)) if m else -1
        if v != -1:
            bad.append((name, v))
    print("records=%d bad=%d" % (len(ch), len(bad)))
    for n, v in bad: print("  BAD", n, v)
    sys.exit(1 if bad else 0)

if __name__ == "__main__":
    main()
