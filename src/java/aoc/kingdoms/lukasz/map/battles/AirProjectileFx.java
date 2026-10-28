package aoc.kingdoms.lukasz.map.battles;

/**
 * M3a：弹体渲染准备（Java 侧）—— 每帧把"在飞的弹"整理成屏幕坐标 + 朝向 + 颜色。
 *
 * <p>绘制本身在 smali（`AirProjectileRender.drawAll`，SpriteBatch 在桩里是 Object），
 * 这里只做**纯数值**：世界坐标 → 屏幕坐标（**只换算一次**）、朝向转旋转角、国家色、尾迹梯形。</p>
 *
 * <p>视觉口径（用户 2026-10-28 定稿）：
 * <ul>
 *   <li>弹体：人字导航标素材 `airProj`，显示 20px，深色描边，颜色 = 发射方国家色；</li>
 *   <li>尾迹：24 段方块，6px→2px 递减，尾端黄 → 弹头端暖白，段间重叠 0.9（无缝隙）、首段贴死弹体；</li>
 *   <li>素材朝右 ⇒ 旋转 = −heading（与飞机"素材朝左 + 180−heading"同一约定）。</li>
 * </ul>
 */
public final class AirProjectileFx {

    /** 一帧最多画多少发（超出不画，避免数组爆掉）。 */
    public static final int MAXDRAW = 256;
    /** 尾迹段数（用户定稿 24）。 */
    public static final int TRAIL = 24;
    /** 弹体显示尺寸（屏幕像素，与飞机图标一样不随缩放变）。 */
    public static final float BODY = 20.0f;

    /** 尾迹每段尺寸（6→2px）。 */
    public static final int[] TRAIL_SIZE = {
            6, 6, 6, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2
    };
    /** 尾迹每段离弹体中心的屏幕距离（累积、相邻段重叠 0.9）。 */
    public static final float[] TRAIL_DIST = new float[TRAIL];
    /** 尾迹每段颜色（尾端黄 → 头部暖白）。 */
    public static final float[] TRAIL_R = new float[TRAIL];
    public static final float[] TRAIL_G = new float[TRAIL];
    public static final float[] TRAIL_B = new float[TRAIL];

    static {
        float dist = BODY / 2.0f + TRAIL_SIZE[0] / 2.0f;   // 首段贴死弹体
        for (int i = 0; i < TRAIL; i++) {
            if (i > 0) {
                dist += (TRAIL_SIZE[i - 1] + TRAIL_SIZE[i]) / 2.0f * 0.9f;
            }
            TRAIL_DIST[i] = dist;
            float t = i / (float) (TRAIL - 1);              // 0=靠弹体 1=尾端
            TRAIL_R[i] = 1.0f;
            TRAIL_G[i] = 1.0f - 0.47f * t;
            TRAIL_B[i] = 1.0f - 0.98f * t;
        }
    }

    /** 本帧要画的弹数。 */
    public static int count = 0;
    /** 屏幕坐标（弹体中心）与单位方向（屏幕空间，y 向下）。 */
    public static final float[] X = new float[MAXDRAW];
    public static final float[] Y = new float[MAXDRAW];
    public static final float[] DX = new float[MAXDRAW];
    public static final float[] DY = new float[MAXDRAW];
    /** 旋转角（度，素材朝右 ⇒ −heading）。 */
    public static final float[] ROT = new float[MAXDRAW];
    /** 国家色 0..1。 */
    public static final float[] CR = new float[MAXDRAW];
    public static final float[] CG = new float[MAXDRAW];
    public static final float[] CB = new float[MAXDRAW];
    /** 每发弹的 24 段尾迹屏幕坐标（[i][t]；smali 里直接取，不在绘制循环里算三角函数）。 */
    public static final float[][] TX = new float[MAXDRAW][TRAIL];
    public static final float[][] TY = new float[MAXDRAW][TRAIL];
    /** 本帧缩放（调试/日志用）。 */
    public static float zoom = 1.0f;
    /** 诊断：已写多少条 nFX 日志（只在有弹时写，最多 40 条）。 */
    private static int dbgFx = 0;

    private AirProjectileFx() {
    }

    /**
     * 每帧一次（`AirProjectileRender.drawAll` 开头调）。
     *
     * @return 本帧要画的弹数（0 = 什么都不用画）
     */
    public static int prepare() {
        count = 0;
        try {
            float z = 1.0f;
            int camX = 0;
            int camY = 0;
            try {
                if (aoc.kingdoms.lukasz.jakowski.Game.mapScale != null) {
                    z = aoc.kingdoms.lukasz.jakowski.Game.mapScale.getCurrentScale();
                }
            } catch (Throwable ignored) {
            }
            try {
                if (aoc.kingdoms.lukasz.jakowski.Game.mapCoords != null) {
                    camX = aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosX();
                    camY = aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosY();
                }
            } catch (Throwable ignored) {
            }
            if (z <= 0.0f) {
                z = 1.0f;
            }
            zoom = z;
            int n = AirProjectileCore.slotCount();
            for (int i = 0; i < n && count < MAXDRAW; i++) {
                AirProjectile p = AirProjectileCore.get(i);
                if (p == null || !p.alive) {
                    continue;
                }
                int k = count;
                X[k] = (p.x + camX) * z;
                Y[k] = (p.y + camY) * z;
                double rad = Math.toRadians(p.heading);
                DX[k] = (float) Math.cos(rad);
                DY[k] = (float) -Math.sin(rad);
                ROT[k] = -p.heading;
                float r = 1.0f;
                float g = 1.0f;
                float b = 1.0f;
                try {
                    aoc.kingdoms.lukasz.map.civilization.Civilization civ =
                            aoc.kingdoms.lukasz.jakowski.Game.getCiv(p.ownerCiv);
                    if (civ != null) {
                        r = civ.getR();
                        g = civ.getG();
                        b = civ.getB();
                    }
                } catch (Throwable ignored) {
                }
                CR[k] = r;
                CG[k] = g;
                CB[k] = b;
                // 尾迹 24 段屏幕坐标（首段贴死弹体，往外逐段变短，黄→暖白）
                float dxs = DX[k];
                float dys = DY[k];
                for (int t = 0; t < TRAIL; t++) {
                    float d = TRAIL_DIST[t];
                    TX[k][t] = X[k] - dxs * d;
                    TY[k][t] = Y[k] - dys * d;
                }
                count++;
            }
            // 诊断：有弹时打一条（预算 40 条），用来区分"没弹"和"画失败"
            if (count > 0 && dbgFx < 40) {
                dbgFx++;
                try {
                    AirDbgLog.dWrite("nFX n=" + count + " z=" + zoom
                            + " img=" + aoc.kingdoms.lukasz.textures.Images.airProj
                            + " x0=" + (int) X[0] + " y0=" + (int) Y[0]
                            + " rot0=" + (int) ROT[0]);
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable t) {
            count = 0;
            try {
                AirDbgLog.dWrite("nFX ERR " + t.getClass().getSimpleName());
            } catch (Throwable ignored) {
            }
        }
        return count;
    }
}
