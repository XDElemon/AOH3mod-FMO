package aoc.kingdoms.lukasz.map.battles;

/**
 * 探测范围（v37）：`AirUnit.radarDetect` —— 受代差影响的地图/雾战探测半径。
 *
 * 为什么要单独一个类：fogFromPlanes / drawAircraftRadar 原来读的是
 * `types[getKeyOrd(airhqKey)].RadarRange`（编制表前 4 行），与飞机实际机型无关；
 * 改成"取任务里所有存活飞机的最大探测范围"后，逻辑落在 Java 里（极性由编译器决定），
 * smali 侧只剩一条 invoke-static。
 *
 * 契约（越界/空表一律 0，调用方自己做 >0 判定）：
 *   maxDetect(null) = 0
 *   maxDetect([])   = 0
 *   maxDetect([a,b]) = max(a.radarDetect, b.radarDetect)，null 元素跳过
 */
public final class AirRadar {

    private AirRadar() {
    }

    /** 一组飞机里最大的探测范围；空/null → 0 */
    public static float maxDetect(java.util.List list) {
        if (list == null) {
            return 0.0f;
        }
        float best = 0.0f;
        int n = list.size();
        for (int i = 0; i < n; i++) {
            Object o = list.get(i);
            if (!(o instanceof AirUnit)) {
                continue;
            }
            float d = ((AirUnit) o).radarDetect;
            if (d > best) {
                best = d;
            }
        }
        return best;
    }
}
