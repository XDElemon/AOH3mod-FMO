package aoc.kingdoms.lukasz.map.battles;

/**
 * 导弹推进核心 —— 与屏幕、相机无关的纯数值策略（Java 真源）。
 *
 * 为什么是纯函数：两套时钟（逐帧 / 逐小时）共用同一份推进与接触逻辑，
 * 差异只在"多久推进一次、每次推进多少"，不在"怎么推进"。
 * 这样两条路径不会各写一份、逐渐漂移（原实现三个缺陷之一）。
 *
 * 三条规则（用户口径）：
 *   1. 接触触发 = 剩余距离 <= 本机导弹雷达圈（MissileRadarRange，世界距离）。
 *      屏幕不参与接触判定 —— 否则导弹飞出视野就永远打不中，任务无法结束。
 *   2. 屏幕内 → 逐帧高精度推进；屏幕外 → 逐游戏小时整段跳（省算力）。
 *   3. 两套时钟共用同一个飞行速度值（MS_SPD），否则速度只对一半生效。
 */
public class AirMissileCore {

    /** advance() 的落点输出：Dalvik 一次只能返回一个值 */
    public static float NX;
    public static float NY;

    /** 原版 TECH-HOOK 常量，作为速度归一基准：配置里取它 = 原速 */
    public static final float LEGACY_SPEED = 67.5f;

    /**
     * 单步推进：朝目标方向前进 maxStep，且不越过目标。
     * 抵达时**精确**落在目标点 —— 否则 sqrt 的舍入误差会让"是否到达"判不出来。
     *
     * @return 本步实际前进的距离（0 表示没有移动）
     */
    public static float advance(float mx, float my, float tx, float ty, float maxStep) {
        float dx = tx - mx;
        float dy = ty - my;
        float d = (float) Math.sqrt(dx * dx + dy * dy);
        if (d <= 0f || maxStep <= 0f) {
            NX = mx;
            NY = my;
            return 0f;
        }
        if (maxStep >= d) {
            NX = tx;
            NY = ty;
            return d;
        }
        float k = maxStep / d;
        NX = mx + dx * k;
        NY = my + dy * k;
        return maxStep;
    }

    /** 接触判定：剩余距离 <= 雷达圈。range<=0 表示"要真正飞到目标点"。 */
    public static boolean contact(float mx, float my, float tx, float ty, float range) {
        if (range < 0f) {
            range = 0f;
        }
        float dx = tx - mx;
        float dy = ty - my;
        return dx * dx + dy * dy <= range * range;
    }

    /**
     * 机炮系数：没有机炮的机型「不可使用机炮」——伤害系数为 0（不是不能飞、不能打导弹）。
     * 返回 1/0 而不是布尔，调用点就是一行 mul-float，没有分支可写反。
     */
    public static float gunMul(boolean hasGun) {
        return hasGun ? 1f : 0f;
    }

    /**
     * 小时钟的飞行时长（游戏小时）：距离越远越久、导弹越快越短。
     * 保留原实现的量级（省份距离 ×5 ÷ 射程 + 2，夹在 2..8），
     * 再按速度归一（以 LEGACY_SPEED 为基准），使"速度"对小时钟同样生效。
     */
    public static int flightHours(int provinceDistance, int missileRange, float missileSpeed) {
        int ft = 2;
        if (missileRange > 0 && provinceDistance > 0) {
            ft = provinceDistance * 5 / missileRange + 2;
        }
        if (ft < 2) {
            ft = 2;
        }
        if (ft > 8) {
            ft = 8;
        }
        float k = 1f;
        if (missileSpeed > 0f) {
            k = LEGACY_SPEED / missileSpeed;
        }
        int h = Math.round(ft * k);
        if (h < 1) {
            h = 1;
        }
        return h * 2;
    }
}
