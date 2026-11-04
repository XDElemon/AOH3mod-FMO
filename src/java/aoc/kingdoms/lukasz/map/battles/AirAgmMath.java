package aoc.kingdoms.lukasz.map.battles;

/**
 * M4 AGM 的纯函数（v155）：齐射发数 / 弹寿命 / 拦截 roll。
 *
 * <p>单独成类是为了**能被闸门真跑**（B61）：`AirAgm` 本身引用 `Game`/`Province`/`AirMission`，
 * 离开游戏桩编不过；这三条判定恰恰是"少一句就哑火/乱打"的地方，必须进真值表。
 * 口径见 `AirAgm` 头注释（用户 2026-11-05：进射程直接开、伤害等 Land 合并）。
 */
public final class AirAgmMath {

    private AirAgmMath() {
    }

    /** 一次齐射几发：夹在"存活机数"与"剩余弹"之间；任一为 0 就不打。 */
    public static int shotsFor(int alivePlanes, int left) {
        if (alivePlanes <= 0 || left <= 0) {
            return 0;
        }
        return alivePlanes < left ? alivePlanes : left;
    }

    /**
     * 射程（Real）→ 弹的寿命（回合）：{@code 1.25 × 射程世界像素 ÷ 弹速 + 0.5}。
     *
     * <p>为什么必须覆盖类型表：AGM 类型表的 `lifeTurns=1.2`（≈54px）只够飞一小段，
     * 而 AGMRange 是 110–240（Real）—— 不按射程反推寿命，弹会在半路自己过期，
     * 症状是"打出去了但永远不命中"，而且日志里只看到 `nAP exp`。
     */
    public static float lifeFor(float rangeReal, float speedPx, float scale) {
        if (speedPx <= 0.0f || rangeReal <= 0.0f || scale <= 0.0f) {
            return 0.0f;
        }
        return 1.25f * (rangeReal * scale) / speedPx + 0.5f;
    }

    /** 拦截 roll：随机数落在命中率内算拦下；命中率 ≤0 永不拦，≥1 必拦。 */
    public static boolean rollHit(float r, float chance) {
        if (chance <= 0.0f) {
            return false;
        }
        if (chance >= 1.0f) {
            return true;
        }
        return r >= 0.0f && r < chance;
    }
}
