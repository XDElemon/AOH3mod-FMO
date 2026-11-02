package aoc.kingdoms.lukasz.map.battles;

/**
 * v149 齐射去重：算"还差几发"，把已经在飞的先抵扣掉。
 *
 * <p>为什么：v148 真机一局 55 发里只有 25 发真正造成伤害——15 发命中时目标已经消失、
 * 12 发飞到期。根因不是精度，是**多个编队各自齐射同一个目标**：谁都没问"这个目标
 * 已经有几发在飞、还差几发才死"。
 *
 * <p>口径：
 * <ul>
 *   <li>{@link #needed}：按目标**剩余总血量** ÷ 本发射方**预计单发伤害**向上取整；</li>
 *   <li>{@link #shots}：需求 − 已在飞，再夹到"存活机数 / 弹池"；≤0 = 不补弹。</li>
 * </ul>
 * 只数**在飞（alive）**的弹：任何一发过期/丢失，覆盖数自动回落，不会哑火。
 *
 * <p>纯函数、零依赖：B58 离线真跑。参数与游戏对象解耦，改口径改这里。
 */
public final class AirSalvo {

    private AirSalvo() {
    }

    /**
     * 打掉 {@code totalHp} 需要几发。
     *
     * @param totalHp 目标存活机剩余总血量（≤0 = 没有活机）
     * @param dmgPerHit 本发射方对目标的预计单发伤害（≤0 时退回按"一架一发"）
     * @param fallbackPlanes 伤害估不出来时的兜底：目标存活机数
     */
    public static int needed(float totalHp, float dmgPerHit, int fallbackPlanes) {
        if (totalHp <= 0.0f) {
            return 0;
        }
        if (dmgPerHit <= 0.0f) {
            return fallbackPlanes > 0 ? fallbackPlanes : 0;
        }
        int n = (int) Math.ceil(totalHp / dmgPerHit);
        return n < 1 ? 1 : n;
    }

    /**
     * 这一次齐射该发几发。
     *
     * @param planes 目标存活机数（每轮最多一架一发，沿用原口径）
     * @param missilesLeft 本任务弹池
     * @param needed 打掉目标需要的总发数（见 {@link #needed}）
     * @param inFlight 已经在飞、瞄准同一目标的 AAM 数
     * @return 0 = 目标已被覆盖，不补弹；否则 1..min(需求−在飞, planes, missilesLeft)
     */
    public static int shots(int planes, int missilesLeft, int needed, int inFlight) {
        if (planes <= 0 || missilesLeft <= 0) {
            return 0;   // 没有目标机 / 弹池空：一发都不发
        }
        int cover = needed - inFlight;
        if (cover <= 0) {
            return 0;
        }
        int n = cover;
        if (n > planes) {
            n = planes;
        }
        if (n > missilesLeft) {
            n = missilesLeft;
        }
        return n;
    }
}
