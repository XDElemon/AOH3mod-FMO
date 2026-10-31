package aoc.kingdoms.lukasz.map.battles;

/**
 * 帧钟与机炮的纯数值助手。
 *
 * <p>v147（第 3 批收尾）：M1 时代的导弹内核**整体拆除**——推进（advance）、接触
 * （contact/notContact）、起点（seedFx）、发射时钟（markHourMode/flightHours）、
 * 着色（tintR/G/B）、坐标换算（sx2wx/sx2wy）、步进门（gateStep）、绘制初始化（beginFx）
 * 全部随旧视觉弹一起退场。推进/接触/结算现在只属于 {@link AirProjectileCore} 与
 * {@link AirDamage}；旧 `msFx*` 字段也从 {@code AirMission} 删除。
 *
 * <p>这里只剩两个**别人还在用**的函数：
 * <ul>
 *   <li>{@link #speedDiv()}：帧钟换算，飞机（{@code AirMotion}）与弹体
 *       （{@code AirProjectileCore}）共用的一份 dt 分母 —— 改这里两边同时变，别各写一份；</li>
 *   <li>{@link #gunMul(boolean)}：机炮能力开关（没机炮 = 系数 0），
 *       由 `AirForceManager`/`AirMission` 的机炮伤害调用点使用。</li>
 * </ul>
 */
public class AirMissileCore {

    /**
     * 机炮系数：没有机炮的机型「不可使用机炮」——伤害系数为 0（不是不能飞、不能打导弹）。
     * 返回 1/0 而不是布尔，调用点就是一行 mul-float，没有分支可写反。
     */
    public static float gunMul(boolean hasGun) {
        return hasGun ? 1f : 0f;
    }

    /**
     * v66：帧钟速度分母 = playSpeedTIME / HOURS_PER_TURN。
     * 原 smali 里 `if-gtz v2, :hpt_keep` 在 HPT>0 时跳过赋值，HPT=2 被当成 1（步进减半）；
     * 而 drawAirForce 每帧被调两次（步进翻倍）——两个偏差恰好抵消，所以速度"看起来对"。
     * 这里把分母一次性算准，配合弹体/飞机各自的"每帧只推进一步"，速度保持不变但不再靠抵消。
     */
    public static float speedDiv() {
        float play = 300f;
        try {
            aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread gt = aoc.kingdoms.lukasz.jakowski.Game.gameThread;
            if (gt != null && gt.playSpeedTIME > 0) {
                play = gt.playSpeedTIME;
            }
        } catch (Throwable ignored) {
        }
        int hpt = 1;
        try {
            if (aoc.kingdoms.lukasz.jakowski.Game.HOURS_PER_TURN > 0) {
                hpt = aoc.kingdoms.lukasz.jakowski.Game.HOURS_PER_TURN;
            }
        } catch (Throwable ignored) {
        }
        return play / hpt;
    }
}
