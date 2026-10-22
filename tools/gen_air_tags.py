#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_tags.py —— 生成 AirGroupTags.java：文明 tag → 空军科技树国家组

为什么要生成而不是手写：
  `AirForceManager.artGroupOf(civID)` 原来是一条 19 段 if 链（startsWith + 默认 CN），
  改一个归属要动整段 smali；而且默认组是中国，**未知 tag 全部变成中国机**
  （中国玩家看着对，别的文明全错）。现在改成"数据表 + 定长查表"：
  真源 data/air_tags.json → 本脚本 → AirGroupTags.java（四个 int[] + 查表函数）。

  编码：tag 前 3 个小写字母压成 `(c0<<16)|(c1<<8)|c2` 的整数（纯 ASCII）。
  这样判定核心 `groupOfCode(int)` 是**纯整数函数**，行为闸门可以直接执行它
  （字符串版的 toLowerCase/substring 解释器跑不了）。

用法:
  python3 tools/gen_air_tags.py            # 生成/覆盖 src/java/.../AirGroupTags.java
  python3 tools/gen_air_tags.py --check    # 只校验（不一致 → 退出码 1）
"""
import json
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(ROOT, "data", "air_tags.json")
OUT = os.path.join(ROOT, "src", "java", "aoc", "kingdoms", "lukasz", "map",
                   "battles", "AirGroupTags.java")
GROUP = ("CN", "EU", "RU", "US")


def load():
    d = json.load(open(SRC, encoding="utf-8"))
    groups = d["groups"]
    out = {}
    for i, name in enumerate(GROUP):
        tags = list(groups.get(name, []))
        out[i] = tags
    # 校验：三字母小写、组间不重复、RU 组显式列出的不能落进别的组
    seen = {}
    for g, tags in out.items():
        for t in tags:
            if len(t) != 3 or not t.islower() or not t.isascii():
                raise SystemExit("❌ 非法 tag: %r（必须是 3 个小写 ASCII 字母）" % t)
            if t in seen:
                raise SystemExit("❌ tag %r 同时属于 %s 与 %s" % (t, GROUP[seen[t]], GROUP[g]))
            seen[t] = g
    for g, tags in out.items():
        if not tags:
            raise SystemExit("❌ 组 %s 是空的" % GROUP[g])
    dflt = int(d.get("defaultGroup", 3))
    if dflt < 0 or dflt > 3:
        raise SystemExit("❌ defaultGroup 非法: %r" % dflt)
    return out, dflt


def code(tag):
    return (ord(tag[0]) << 16) | (ord(tag[1]) << 8) | ord(tag[2])


def render(groups, dflt):
    L = []
    A = L.append
    A("package aoc.kingdoms.lukasz.map.battles;")
    A("")
    A("/**")
    A(" * 文明 tag → 空军科技树国家组（0=中国 1=欧洲 2=俄国 3=美国）。")
    A(" *")
    A(" * 本文件由 tools/gen_air_tags.py 从 data/air_tags.json 生成，勿手改。")
    A(" *")
    A(" * 口径（v37）：")
    A(" *   中国 = chi/chn + pak（巴基斯坦）")
    A(" *   欧洲 = 欧洲各国（见 TAG_EU，按现有 tag 量力而为）")
    A(" *   美国 = usa + tai/jap/kor/aus/can/isr/sau/tur")
    A(" *   俄国 = rus/sov + ind/vnm/prk/irn 等，**其余一切未知 tag 全部兜底到俄国组**")
    A(" *          （旧实现默认中国：中国玩家看着对，别的文明全部拿到中国机）")
    A(" *")
    A(" * 判定核心 groupOfCode(int) 故意写成纯整数单方法 —— 行为闸门是"
      "只跑入口方法体的微型解释器，")
    A(" * 不跟进嵌套调用；拆成两层这条最该被执行的判定反而测不到。")
    A(" */")
    A("public final class AirGroupTags {")
    A("")
    A("    public static final int CN = 0;")
    A("    public static final int EU = 1;")
    A("    public static final int RU = 2;")
    A("    public static final int US = 3;")
    A("")
    A("    /** 未知 tag 的归属（规格：一律落俄国组） */")
    A("    public static final int DEFAULT_GROUP = %d;" % dflt)
    A("")
    for i, name in enumerate(GROUP):
        tags = groups[i]
        A("    /** %s 组：%s */" % (name, " ".join(tags)))
        A("    private static final int[] TAG_%s = {" % name)
        line = []
        for t in tags:
            line.append("0x%06x /*%s*/" % (code(t), t))
        for k in range(0, len(line), 4):
            A("            " + ", ".join(line[k:k + 4]) + ",")
        A("    };")
        A("")
    A("    private AirGroupTags() {")
    A("    }")
    A("")
    A("    /** 文明 ID → 国家组；拿不到文明/没有 tag → 兜底组 */")
    A("    public static int groupOfCiv(int civID) {")
    A("        aoc.kingdoms.lukasz.map.civilization.Civilization civ =")
    A("                aoc.kingdoms.lukasz.jakowski.Game.getCiv(civID);")
    A("        if (civ == null) {")
    A("            return DEFAULT_GROUP;")
    A("        }")
    A("        return groupOfTag(civ.getCivTag());")
    A("    }")
    A("")
    A("    /** 文明 tag → 国家组；null/不足 3 字母 → 兜底组 */")
    A("    public static int groupOfTag(String tag) {")
    A("        int code = codeOf(tag);")
    A("        if (code == 0) {")
    A("            return DEFAULT_GROUP;")
    A("        }")
    A("        return groupOfCode(code);")
    A("    }")
    A("")
    A("    /** tag 前 3 个小写字母压成整数；取不到 → 0 */")
    A("    public static int codeOf(String tag) {")
    A("        if (tag == null) {")
    A("            return 0;")
    A("        }")
    A("        String t = tag.toLowerCase();")
    A("        if (t.length() < 3) {")
    A("            return 0;")
    A("        }")
    A("        return (t.charAt(0) << 16) | (t.charAt(1) << 8) | t.charAt(2);")
    A("    }")
    A("")
    A("    /** 三字母代码 → 国家组（纯整数查表；未知代码 → DEFAULT_GROUP） */")
    A("    public static int groupOfCode(int code) {")
    A("        if (code == 0) {")
    A("            return DEFAULT_GROUP;")
    A("        }")
    A("        for (int i = 0; i < TAG_CN.length; i++) {")
    A("            if (TAG_CN[i] == code) {")
    A("                return CN;")
    A("            }")
    A("        }")
    A("        for (int i = 0; i < TAG_EU.length; i++) {")
    A("            if (TAG_EU[i] == code) {")
    A("                return EU;")
    A("            }")
    A("        }")
    A("        for (int i = 0; i < TAG_US.length; i++) {")
    A("            if (TAG_US[i] == code) {")
    A("                return US;")
    A("            }")
    A("        }")
    A("        for (int i = 0; i < TAG_RU.length; i++) {")
    A("            if (TAG_RU[i] == code) {")
    A("                return RU;")
    A("            }")
    A("        }")
    A("        return DEFAULT_GROUP;")
    A("    }")
    A("}")
    return "\n".join(L) + "\n"


def main():
    groups, dflt = load()
    text = render(groups, dflt)
    if "--check" in sys.argv:
        cur = open(OUT, encoding="utf-8").read() if os.path.exists(OUT) else ""
        if cur == text:
            print("  ✅ AirGroupTags.java 与 data/air_tags.json 一致")
            return 0
        print("  ❌ AirGroupTags.java 与 data/air_tags.json 不一致（重跑 gen_air_tags.py）")
        return 1
    open(OUT, "w", encoding="utf-8").write(text)
    n = sum(len(v) for v in groups.values())
    print("  ✅ AirGroupTags.java（%d 个 tag：CN %d / EU %d / RU %d / US %d，兜底组 %d）"
          % (n, len(groups[0]), len(groups[1]), len(groups[2]), len(groups[3]), dflt))
    return 0


if __name__ == "__main__":
    sys.exit(main())
