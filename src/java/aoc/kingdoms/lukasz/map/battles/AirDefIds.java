package aoc.kingdoms.lukasz.map.battles;

/**
 * 防空阵地查表（v112）—— 纯 Java，极性由 javac 保证（同 MissileTypeIds 的理由）。
 * 生成物 `AirDefCfg.smali` 只保留数组常量。
 */
public final class AirDefIds {

    private AirDefIds() {
    }

    /** 阵地 id → 下标；找不到/空返回 -1。 */
    public static int indexOf(String id) {
        if (id == null) {
            return -1;
        }
        String[] ids = AirDefCfg.ID;
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
