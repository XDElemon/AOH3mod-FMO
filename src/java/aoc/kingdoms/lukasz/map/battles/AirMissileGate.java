package aoc.kingdoms.lukasz.map.battles;

/**
 * 导弹「推进模式」判定 —— 唯一入口。
 *
 * 为什么用 Java 写：分支极性由编译器保证（本轮手写 smali 曾把 if-lt/if-ge 写反 8 次）。
 * 为什么是纯函数：相机与缩放由调用方传入，因此不依赖 Game/MapCoords，
 * 可被 tools/gate_behavior.py 直接执行断言（B8）。
 *
 * 坐标语义（已查证）：msFxX/msFxY 是**世界坐标**，
 * 屏幕坐标 = (world + mapPos) * zoom；直接拿世界坐标比屏幕宽高会恒真。
 */
public class AirMissileGate {

    public static final int MODE_HOUR = 0;   // 屏外：按游戏小时推进（省算力）
    public static final int MODE_FRAME = 1;  // 屏内：逐帧推进（能看见碰撞）

    public static boolean onScreen(float worldX, float worldY,
                                   float mapPosX, float mapPosY, float zoom) {
        float sx = (worldX + mapPosX) * zoom;
        float sy = (worldY + mapPosY) * zoom;
        if (sx < 0f) return false;
        if (sy < 0f) return false;
        if (sx > aoc.kingdoms.lukasz.jakowski.CFG.GAME_WIDTH) return false;
        if (sy > aoc.kingdoms.lukasz.jakowski.CFG.GAME_HEIGHT) return false;
        return true;
    }

    public static int advanceMode(float worldX, float worldY,
                                  float mapPosX, float mapPosY, float zoom) {
        return onScreen(worldX, worldY, mapPosX, mapPosY, zoom) ? MODE_FRAME : MODE_HOUR;
    }

    /**
     * v67：小时钟是否接管 —— 返回的是 **smali 分支要的极性**，不是"是否在屏内"。
     *
     * 现场（AirMission.missileTick）：invoke 之后是 {@code if-nez v2, :msc_hour}
     * （v2 非零 → 跑小时钟），紧接着 {@code return-void}（让位）。因此约定：
     * 屏外=1（小时钟接管）、屏内=0（让位给帧钟）。
     *
     * <p>为什么不复用 advanceMode：它屏内返回 MODE_FRAME=1、屏外返回 MODE_HOUR=0，
     * 恰好与分支要的极性相反（自 c9ac6189 起就写反的 D3：屏内跑小时钟、屏外直接 return）。
     * 而 gate_java_first 禁止在原版类里改分支，所以只能在这里给出分支需要的值，
     * 与 v64 的 notContact 是同一手法。
     */
    public static int hourTakeover(float worldX, float worldY,
                                   float mapPosX, float mapPosY, float zoom) {
        return onScreen(worldX, worldY, mapPosX, mapPosY, zoom) ? 0 : 1;
    }
}
