package aoc.kingdoms.lukasz.map.battles;

/**
 * M3a 弹体渲染准备（Java 侧）—— 每帧整理在飞弹的屏幕坐标/朝向/颜色/尾迹/箭杆。
 *
 * <p>绘制在 smali（AirProjectileRender.drawAll），这里只做纯数值。</p>
 *
 * <p>视觉口径（用户定稿）：人字弹体（两根 pix 箭杆 ±38°）+ 24 段尾迹（6→2px，黄→暖白）。</p>
 *
 * <p>两条踩坑纪律：①方向用**世界坐标差**（v123 用屏幕差，镜头一平移就"转向"）；
 * ②尾迹沿**历史轨迹插值**（v124 铺直线，拐弯不弯且随速度出空隙）。</p>
 */
public final class AirProjectileFx {

    public static final int MAXDRAW = 256;
    public static final int TRAIL = 24;
    private static final int HIST_LEN = TRAIL * 3;

    public static final int[] TRAIL_SIZE = {
            6, 6, 6, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2
    };
    public static final float[] TRAIL_DIST = new float[TRAIL];
    public static final float[] TRAIL_R = new float[TRAIL];
    public static final float[] TRAIL_G = new float[TRAIL];
    public static final float[] TRAIL_B = new float[TRAIL];

    static {
        float dist = 11.0f + TRAIL_SIZE[0] / 2.0f;
        for (int i = 0; i < TRAIL; i++) {
            if (i > 0) {
                dist += (TRAIL_SIZE[i - 1] + TRAIL_SIZE[i]) / 2.0f * 1.02f;
            }
            TRAIL_DIST[i] = dist;
            float t = i / (float) (TRAIL - 1);
            TRAIL_R[i] = 1.0f;
            TRAIL_G[i] = 1.0f - 0.47f * t;
            TRAIL_B[i] = 1.0f - 0.98f * t;
        }
    }

    public static int count = 0;
    public static final float[] X = new float[MAXDRAW];
    public static final float[] Y = new float[MAXDRAW];
    public static final float[] DX = new float[MAXDRAW];
    public static final float[] DY = new float[MAXDRAW];
    public static final float[] CR = new float[MAXDRAW];
    public static final float[] CG = new float[MAXDRAW];
    public static final float[] CB = new float[MAXDRAW];
    public static final float[][] TX = new float[MAXDRAW][TRAIL];
    public static final float[][] TY = new float[MAXDRAW][TRAIL];

    public static final float[][] BAR_X = new float[MAXDRAW][2];
    public static final float[][] BAR_Y = new float[MAXDRAW][2];
    public static final float[][] BAR_ROT = new float[MAXDRAW][2];
    public static final int BAR_LEN = 16;
    public static final int BAR_W = 4;

    public static float zoom = 1.0f;
    public static String src = "?";
    public static boolean DEBUG_BOX = false;

    private static final float[][] HIST_X = new float[AirProjectileCore.MAX][HIST_LEN];
    private static final float[][] HIST_Y = new float[AirProjectileCore.MAX][HIST_LEN];
    private static final int[] HIST_HEAD = new int[AirProjectileCore.MAX];
    private static final int[] HIST_N = new int[AirProjectileCore.MAX];
    private static final float[] PREV_WX = new float[AirProjectileCore.MAX];
    private static final float[] PREV_WY = new float[AirProjectileCore.MAX];
    private static final boolean[] HAS_PREV = new boolean[AirProjectileCore.MAX];
    private static final float[] DIR_X = new float[AirProjectileCore.MAX];
    private static final float[] DIR_Y = new float[AirProjectileCore.MAX];

    private static int dbgFx = 0;
    private static int dbgEnter = 0;
    public static int dbgDrawn = 0;
    public static int frameNo = 0;
    /** v148 渲染剔除：屏外跳过的弹数（只跳算、历史照记）。 */
    public static int dbgCulled = 0;

    private AirProjectileFx() {
    }

    public static int bodySize() {
        return DEBUG_BOX ? 8 : 26;
    }

    public static int prepare() {
        count = 0;
        frameNo++;
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
                if (p == null || !p.alive || i >= AirProjectileCore.MAX) {
                    continue;
                }
                int slot = i;
                int k = count;

                X[k] = (p.x + camX) * z;
                Y[k] = (p.y + camY) * z;

                float dirX = DIR_X[slot];
                float dirY = DIR_Y[slot];
                boolean haveDir = HAS_PREV[slot];
                if (HAS_PREV[slot]) {
                    float ddx = p.x - PREV_WX[slot];
                    float ddy = p.y - PREV_WY[slot];
                    float len = (float) Math.sqrt(ddx * ddx + ddy * ddy);
                    if (len > 0.05f) {
                        dirX = ddx / len;
                        dirY = ddy / len;
                    }
                }
                if (!haveDir || (dirX == 0.0f && dirY == 0.0f)) {
                    float tdx = p.tx - p.x;
                    float tdy = p.ty - p.y;
                    float len = (float) Math.sqrt(tdx * tdx + tdy * tdy);
                    if (len > 0.01f) {
                        dirX = tdx / len;
                        dirY = tdy / len;
                    } else {
                        dirX = 1.0f;
                        dirY = 0.0f;
                    }
                }
                DIR_X[slot] = dirX;
                DIR_Y[slot] = dirY;
                DX[k] = dirX;
                DY[k] = dirY;
                PREV_WX[slot] = p.x;
                PREV_WY[slot] = p.y;
                HAS_PREV[slot] = true;

                int h = HIST_HEAD[slot];
                HIST_X[slot][h] = p.x;
                HIST_Y[slot][h] = p.y;
                HIST_HEAD[slot] = (h + 1) % HIST_LEN;
                if (HIST_N[slot] < HIST_LEN) {
                    HIST_N[slot]++;
                }

                // v148 渲染剔除：屏外弹跳过尾迹插值 + 箭杆/颜色准备，但**历史照记**
                // （上面的 HIST/PREV/DIR 已经更新）。余量要盖住整条尾迹，否则进屏会先露"空尾巴"。
                if (!AirProjectileCore.inViewScreen(X[k], Y[k], AirProjectileCore.RENDER_MARGIN)) {
                    dbgCulled++;
                    continue;
                }

                fillTrail(k, slot, z, camX, camY, dirX, dirY);

                double barAng = Math.toRadians(38.0);
                float tipX = X[k] + dirX * (BAR_LEN / 2.0f);
                float tipY = Y[k] + dirY * (BAR_LEN / 2.0f);
                double theta = Math.atan2(dirY, dirX);
                for (int bar = 0; bar < 2; bar++) {
                    float sgn = (bar == 0) ? 1.0f : -1.0f;
                    float nx = -dirY * sgn;
                    float ny = dirX * sgn;
                    BAR_X[k][bar] = tipX - dirX * (BAR_LEN * 0.25f) + nx * (BAR_LEN * 0.2f);
                    BAR_Y[k][bar] = tipY - dirY * (BAR_LEN * 0.25f) + ny * (BAR_LEN * 0.2f);
                    double f = theta + (bar == 0 ? barAng : -barAng);
                    BAR_ROT[k][bar] = (float) (90.0 - Math.toDegrees(f));
                }

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
                count++;
            }

            if (count > 0 && dbgFx < 40) {
                dbgFx++;
                try {
                    int isz = -1;
                    try {
                        isz = aoc.kingdoms.lukasz.textures.ImageManager.getImagesSize();
                    } catch (Throwable ignored) {
                    }
                    AirDbgLog.dWrite("nFX n=" + count + " z=" + zoom + " isz=" + isz
                            + " x0=" + (int) X[0] + " y0=" + (int) Y[0]);
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

    private static void fillTrail(int k, int slot, float z, int camX, int camY,
                                  float dirX, float dirY) {
        int hn = HIST_N[slot];
        if (hn <= 0) {
            for (int t = 0; t < TRAIL; t++) {
                TX[k][t] = X[k] - dirX * TRAIL_DIST[t];
                TY[k][t] = Y[k] - dirY * TRAIL_DIST[t];
            }
            return;
        }
        int tt = 0;
        float px = X[k];
        float py = Y[k];
        float acc = 0.0f;
        int idx = HIST_HEAD[slot] - 1;
        for (int step = 0; step < hn && tt < TRAIL; step++) {
            if (idx < 0) {
                idx += HIST_LEN;
            }
            float nx = (HIST_X[slot][idx] + camX) * z;
            float ny = (HIST_Y[slot][idx] + camY) * z;
            float sdx = nx - px;
            float sdy = ny - py;
            float seg = (float) Math.sqrt(sdx * sdx + sdy * sdy);
            if (seg > 0.0001f) {
                while (tt < TRAIL && acc + seg >= TRAIL_DIST[tt]) {
                    float f = (TRAIL_DIST[tt] - acc) / seg;
                    TX[k][tt] = px + sdx * f;
                    TY[k][tt] = py + sdy * f;
                    tt++;
                }
                acc += seg;
            }
            px = nx;
            py = ny;
            idx--;
        }
        for (; tt < TRAIL; tt++) {
            float d = TRAIL_DIST[tt] - acc;
            TX[k][tt] = px - dirX * d;
            TY[k][tt] = py - dirY * d;
        }
    }

    private static final String PROJ_PATH = "game/AirUnit/AirUnitlmages/airProj.png";
    private static int cachedId = -1;

    public static int imageId() {
        try {
            if (cachedId >= 0 && safeGet(cachedId) != null) {
                return cachedId;
            }
            int id = aoc.kingdoms.lukasz.textures.Images.airProj;
            if (safeGet(id) != null) {
                cachedId = id;
                src = "proj";
                return id;
            }
            int nid = aoc.kingdoms.lukasz.textures.ImageManager.addImage(PROJ_PATH);
            if (safeGet(nid) != null) {
                cachedId = nid;
                src = "lazy";
                return nid;
            }
            cachedId = -2;
            src = "ring";
            return aoc.kingdoms.lukasz.textures.Images.airRingCiv;
        } catch (Throwable t) {
            src = "err";
            return 0;
        }
    }

    private static Object safeGet(int id) {
        try {
            return aoc.kingdoms.lukasz.textures.ImageManager.getImage(id);
        } catch (Throwable t) {
            return null;
        }
    }

    public static void logEnter(int n) {
        if (dbgEnter >= 20) {
            return;
        }
        dbgEnter++;
        try {
            AirDbgLog.dWrite("nFX enter n=" + n);
        } catch (Throwable ignored) {
        }
    }

    public static void logDrawn() {
        if (dbgDrawn >= 20) {
            return;
        }
        dbgDrawn++;
        try {
            AirDbgLog.dWrite("nFX drawn k=" + dbgDrawn);
        } catch (Throwable ignored) {
        }
    }
}
