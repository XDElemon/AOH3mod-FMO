#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""patch_air_hover_panel.py —— 给建造/选型面板的悬浮串追加"雷达探测 / 无人机"两行（v38）

对象：`InGame_AirForceOptions$BtnBuild.buildElementHover()` 与
      `InGame_AirForceOptions$BtnSelect.buildElementHover()`
      （两处 hover 文本 = 手写 smali 的 StringBuilder 拼接序列，约 223-355 / 326-404 行）

做法：**只在既有拼接序列里追加同构片段** —— 锚点是"建造时间 N 回合"之后、`toString()` 之前。
      片段形状与 `航程/载弹/花费` 那几行完全一致（append(标签) → iget → append(值)），
      判定与格式化在 `src/java/.../AirPanelText.java`（雷达取整、无人机返回带前导换行的整行），
      smali 里**没有新增任何条件跳转**（分支极性风险为零）。

幂等：片段已存在则不改。跑完要 `bash tools/build_java.sh` 让 AirPanelText 落成 smali。

用法: python3 tools/patch_air_hover_panel.py [--check]
"""
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PANEL = os.path.join(ROOT, "src", "smali", "aoc", "kingdoms", "lukasz", "menusInGame", "AirForce")
FILES = ("InGame_AirForceOptions$BtnBuild.smali", "InGame_AirForceOptions$BtnSelect.smali")

ANCHOR = '''    const-string v5, " \\u56de\\u5408"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
'''

FRAG = '''    # v38：雷达探测 / 无人机。判定与格式化在 AirPanelText.java（Java 写，极性由编译器决定），
    # 这里只追加同构的拼接 —— 与上面"航程/载弹/花费/建造时间"逐行同形状，零条件跳转。
    # 无人机：droneTag 返回 "\\n无人机"（独立一行）；非无人机返回 ""（面板上不多任何字符）。
    const-string v5, "\\n\\u96f7\\u8fbe\\u63a2\\u6d4b\\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->RadarDetect:F

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPanelText;->radarInt(F)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v2, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->IsDrone:Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirPanelText;->droneTag(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
'''

MARK = 'AirPanelText;->radarInt(F)I'


def main():
    check = "--check" in sys.argv
    bad = 0
    for fn in FILES:
        p = os.path.join(PANEL, fn)
        s = open(p, encoding="utf-8").read()
        if MARK in s:
            print("  ⏭  %s 已注入" % fn)
            continue
        if check:
            print("  ❌ %s 没注入雷达/无人机行" % fn)
            bad += 1
            continue
        if s.count(ANCHOR) != 1:
            raise SystemExit("❌ %s 的锚点出现 %d 次（应为 1）—— 面板结构变了，别硬改"
                             % (fn, s.count(ANCHOR)))
        s = s.replace(ANCHOR, FRAG)
        open(p, "w", encoding="utf-8").write(s)
        print("  ✅ %s 追加雷达探测/无人机两行" % fn)
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
