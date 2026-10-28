package aoc.kingdoms.lukasz.map.battles;

/**
 * 导弹类型查表（v112）—— **纯 Java，极性由 javac 保证**。
 *
 * <p>为什么存在：`MissileTypes.smali` 是 `tools/gen_missile_types.py` 生成的**数组常量表**，
 * 但 v111 之前它的 `indexOf` 也是 Python 拼出来的 smali 循环，作者把
 * `if-eqz`（不相等才继续）写成了 `if-nez`（非零跳转）⇒ 相等时跳过 return，
 * 返回的是**第一个不匹配**的下标：`indexOf("AAM")`=1（SAM）、`indexOf("SAM")`=0。
 * 线上表现：所有空空弹按防空弹的型号参数飞（真机日志全记 `ty=SAM`）。
 *
 * <p>教训：**只要带控制流就是逻辑**，不能混在"数据表"里由脚本拼 smali。
 * 现在生成器只产出数组，查表在这个类里，`javac` 决定极性。
 */
public final class MissileTypeIds {

    private MissileTypeIds() {
    }

    /** 类型 id → 下标；找不到/空返回 -1。 */
    public static int indexOf(String id) {
        if (id == null) {
            return -1;
        }
        String[] ids = MissileTypes.ID;
        if (ids == null) {
            return -1;
        }
        for (int i = 0; i < ids.length; i++) {
            if (id.equals(ids[i])) {
                return i;
            }
        }
        return -1;
    }
}
