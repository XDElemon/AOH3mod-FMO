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
    public static final float BODY = 26.0f;

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
                dist += (TRAIL_SIZE[i - 1] + TRAIL_SIZE[i]) / 2.0f * 1.02f;
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
    /** v124：历史轨迹（世界坐标）——尾迹沿真实飞行轨迹，转弯会跟着弯。 */
    private static final float[][] HIST_X = new float[AirProjectileCore.MAX][TRAIL];
    private static final float[][] HIST_Y = new float[AirProjectileCore.MAX][TRAIL];
    private static final int[] HIST_HEAD = new int[AirProjectileCore.MAX];
    private static final int[] HIST_N = new int[AirProjectileCore.MAX];
    private static final int[] HIST_TICK = new int[AirProjectileCore.MAX];
    /** 每几帧记一个轨迹点（24 点 × 3 帧 ≈ 1.2 秒的尾巴）。 */
    private static final int HIST_EVERY = 3;

    /** v123：按"槽位下标"缓存上一帧屏幕坐标与方向，用来**从实际位移**算朝向（不依赖任何符号约定）。 */
    private static final float[] PREV_X = new float[AirProjectileCore.MAX];
    private static final float[] PREV_Y = new float[AirProjectileCore.MAX];
    /** 上一帧的世界坐标（方向推导用）。 */
    private static final float[] PREV_WX = new float[AirProjectileCore.MAX];
    private static final float[] PREV_WY = new float[AirProjectileCore.MAX];
    private static final float[] DIR_X = new float[AirProjectileCore.MAX];
    private static final float[] DIR_Y = new float[AirProjectileCore.MAX];
    private static final boolean[] HAS_DIR = new boolean[AirProjectileCore.MAX];

    /** v122：人字箭头的两根箭杆（屏幕坐标 + 旋转），用 Images.pix 拉伸绘制，不依赖贴图。 */
    public static final float[][] BAR_X = new float[MAXDRAW][2];
    public static final float[][] BAR_Y = new float[MAXDRAW][2];
    public static final float[][] BAR_ROT = new float[MAXDRAW][2];
    /** 箭杆尺寸（屏幕像素）：长 × 宽。 */
    public static final int BAR_LEN = 16;
    public static final int BAR_W = 4;
    /** 每发弹的 24 段尾迹屏幕坐标（[i][t]；smali 里直接取，不在绘制循环里算三角函数）。 */
    public static final float[][] TX = new float[MAXDRAW][TRAIL];
    public static final float[][] TY = new float[MAXDRAW][TRAIL];
    /** 本帧缩放（调试/日志用）。 */
    public static float zoom = 1.0f;
    /** v115 诊断：true = 用内置 1x1 白点画方块（验证坐标换算），false = 画真实箭头素材。 */
    /** v116：true = 额外用**已知能显示的圆环素材**在同一点画一圈（管线对照实验）。 */
    public static boolean DEBUG_BOX = false;

    /** 诊断：已写多少条 nFX 日志（只在有弹时写，最多 40 条）。 */
    private static int dbgFx = 0;
    /** 诊断：渲染桥被调用的帧数（心跳日志用）。 */
    public static int frameNo = 0;
    /** 诊断：已画完多少帧（smali 侧自增）。 */
    public static int dbgDrawn = 0;
    /** 诊断：进入绘制次数。 */
    private static int dbgEnter = 0;

    private AirProjectileFx() {
    }

    /**
     * 本帧要用的贴图 id：正常是 `Images.airProj`；`DEBUG_BOX` 打开时退化成内置白点（1x1），
     * 用来区分"坐标算错"和"箭头素材/注册有问题"——白点能看见就说明坐标没问题。
     */
    /** 对照组用的贴图 id：识别圈素材（v69 起一直在用，确定能显示）。 */
    public static int probeImageId() {
        try {
            return aoc.kingdoms.lukasz.textures.Images.airRingCiv;
        } catch (Throwable t) {
            return 0;
        }
    }

    /** 素材在包内的路径（与 InitGame 注册时一致）。 */
    private static final String PROJ_PATH = "game/AirUnit/AirUnitlmages/airProj.png";
    /** 已确认可用的贴图 id；-1 = 还没试过，-2 = 试过但拿不到（别再刷）。 */
    private static int cachedId = -1;

    /**
     * 本帧要用的贴图 id。
     *
     * <p>v119：不再依赖"开局注册"那一次。真机证据显示 `addImage` 返回了 id（341），但运行时
     * `images` 列表被重建后那个槽位是 null。所以这里**用到时现查、现注册**：
     * <ol>
     *   <li>有缓存且仍非空 → 直接用；</li>
     *   <li>`Images.airProj` 非空 → 缓存并返回；</li>
     *   <li>否则**运行时重新 addImage(PROJ_PATH)**，取到新 id 再校验一次；</li>
     *   <li>仍失败 → 回退识别圈（airRingCiv，确定能显示），并把来源记进 {@link #src}。</li>
     * </ol>
     */
    public static int imageId() {
        try {
            if (cachedId >= 0) {
                if (safeGet(cachedId) != null) {
                    return cachedId;
                }
                cachedId = -1;
            }
            if (cachedId == -2) {
                src = "ring";
                return aoc.kingdoms.lukasz.textures.Images.airRingCiv;
            }
            int id = aoc.kingdoms.lukasz.textures.Images.airProj;
            if (safeGet(id) != null) {
                cachedId = id;
                src = "proj";
                return id;
            }
            // 现注册（运行时 images 表已重建，这里会 append 到表尾）
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
            return aoc.kingdoms.lukasz.textures.Images.airRingCiv;
        }
    }

    /** 取图；越界/为空一律当 null（getImage 是 List.get，越界会抛）。 */
    private static Object safeGet(int id) {
        try {
            return aoc.kingdoms.lukasz.textures.ImageManager.getImage(id);
        } catch (Throwable t) {
            return null;
        }
    }

    /** 本帧实际用的贴图来源：proj / ring / err（诊断用）。 */
    public static String src = "?";

    /** 诊断：DEBUG_BOX 时把弹体画成 6px 小方块（同一贴图），用来区分"坐标错"和"素材错"。 */
    public static int bodySize() {
        return DEBUG_BOX ? 8 : 26;
    }

    /**
     * 每帧一次（`AirProjectileRender.drawAll` 开头调）。
     *
     * @return 本帧要画的弹数（0 = 什么都不用画）
     */
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
                if (p == null || !p.alive) {
                    continue;
                }
                int k = count;
                X[k] = (p.x + camX) * z;
                Y[k] = (p.y + camY) * z;
                // v124：方向改用**世界坐标差**（屏幕坐标会被镜头平移污染，v123 就是栽在这）。
                float dirX = 0.0f;
                float dirY = 0.0f;
                boolean haveDir = false;
                int slot = i;
                if (slot >= 0 && slot < PREV_X.length && HAS_DIR[slot]) {
                    float ddx = p.x - PREV_WX[slot];
                    float ddy = p.y - PREV_WY[slot];
                    float len = (float) Math.sqrt(ddx * ddx + ddy * ddy);
                    if (len > 0.05f) {
                        dirX = ddx / len;
                        dirY = ddy / len;
                        DIR_X[slot] = dirX;
                        DIR_Y[slot] = dirY;
                        haveDir = true;
                    }
                }
                if (!haveDir && slot >= 0 && slot < PREV_X.length && HAS_DIR[slot]) {
                    dirX = DIR_X[slot];
                    dirY = DIR_Y[slot];
                    haveDir = dirX != 0.0f || dirY != 0.0f;
                }
                if (!haveDir) {
                    // 第一帧还没有位移：用"目标点 - 当前位置"的屏幕差
                    float tdx = (p.tx + camX) * z - X[k];
                    float tdy = (p.ty + camY) * z - Y[k];
                    float len = (float) Math.sqrt(tdx * tdx + tdy * tdy);
                    if (len > 0.01f) {
                        dirX = tdx / len;
                        dirY = tdy / len;
                    } else {
                        dirX = 1.0f;
                        dirY = 0.0f;
                    }
                    if (slot >= 0 && slot < PREV_X.length) {
                        DIR_X[slot] = dirX;
                        DIR_Y[slot] = dirY;
                    }
                }
                if (slot >= 0 && slot < PREV_X.length) {
                    PREV_WX[slot] = p.x;
                    PREV_WY[slot] = p.y;
                    PREV_X[slot] = X[k];
                    PREV_Y[slot] = Y[k];
                    HAS_DIR[slot] = true;
                    // 历史轨迹：每 HIST_EVERY 帧记一个点
                    HIST_TICK[slot]++;
                    if (HIST_TICK[slot] >= HIST_EVERY || HIST_N[slot] == 0) {
                        HIST_TICK[slot] = 0;
                        int h = HIST_HEAD[slot];
                        HIST_X[slot][h] = p.x;
                        HIST_Y[slot][h] = p.y;
                        HIST_HEAD[slot] = (h + 1) % TRAIL;
                        if (HIST_N[slot] < TRAIL) {
                            HIST_N[slot]++;
                        }
                    }
                }
                DX[k] = dirX;
                DY[k] = dirY;
                // 素材朝右；屏幕顺时针角 θ = atan2(dy,dx)，drawFullCenter 的旋转取 −θ
                ROT[k] = (float) -Math.toDegrees(Math.atan2(dirY, dirX));
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
                // v122：人字箭头 = 两根矩形箭杆（用 pix 画，不走贴图）
                // 箭头尖在中心 + 前进方向 * 半长；每根杆从尖端往后斜 38°
                double barAng = Math.toRadians(38.0);
                double ch = Math.cos(barAng);
                double sh = Math.sin(barAng);
                // 前进方向（屏幕坐标，y 向下）
                float fx = DX[k];
                float fy = DY[k];
                // 垂直方向
                float px2 = -fy;
                float py2 = fx;
                float tipX = X[k] + fx * (BAR_LEN / 2.0f);
                float tipY = Y[k] + fy * (BAR_LEN / 2.0f);
                for (int bar = 0; bar < 2; bar++) {
                    float sgn = (bar == 0) ? 1.0f : -1.0f;
                    // 杆中心 = 尖端 - 前进方向*(半长/2) + 垂直方向*sgn*(半长/2*tan38)
                    float cx2 = tipX - fx * (BAR_LEN * 0.25f) + px2 * sgn * (BAR_LEN * 0.2f);
                    float cy2 = tipY - fy * (BAR_LEN * 0.25f) + py2 * sgn * (BAR_LEN * 0.2f);
                    BAR_X[k][bar] = cx2;
                    BAR_Y[k][bar] = cy2;
                    // 箭杆方向 = 前进方向旋转 ±38°，再换成 Image.drawFullCenter 的旋转角
                    // drawFullCenter 的旋转按"逆时针为正"（用飞机 180-h 的公式反推）：
                    // 竖直箭杆 art=90°，要指向 F，则 r = 90 - F，其中 F = θ ∓ 38。
                    double theta = Math.atan2(fy, fx);
                    double f = theta + (bar == 0 ? barAng : -barAng);
                    BAR_ROT[k][bar] = (float) (90.0 - Math.toDegrees(f));
                }
                // v124：尾迹 = 真实历史轨迹（从"最近"往回取 24 个点），转弯自然弯
                int hn = HIST_N[slot];
                for (int t = 0; t < TRAIL; t++) {
                    if (hn <= 0) {
                        TX[k][t] = X[k] - DX[k] * TRAIL_DIST[t];
                        TY[k][t] = Y[k] - DY[k] * TRAIL_DIST[t];
                        continue;
                    }
                    int idx = (HIST_HEAD[slot] - 1 - t + TRAIL * 2) % TRAIL;
                    if (t >= hn) {
                        idx = (HIST_HEAD[slot] - hn + TRAIL) % TRAIL;   // 不够长就都用最老的点
                    }
                    TX[k][t] = (HIST_X[slot][idx] + camX) * z;
                    TY[k][t] = (HIST_Y[slot][idx] + camY) * z;
                }
                count++;
            }
            // 心跳：每 300 帧一条（最多 10 条），证明渲染桥被调用、哪怕没弹
            if (frameNo % 300 == 0 && dbgFx < 40) {
                dbgFx++;
                try {
                    AirDbgLog.dWrite("nFX tick f=" + frameNo + " n=" + count
                            + " img=" + imageId() + " probe=" + probeImageId());
                } catch (Throwable ignored) {
                }
            }
            // 诊断：有弹时打一条（预算 40 条），用来区分"没弹"和"画失败"
            if (count > 0 && dbgFx < 40) {
                dbgFx++;
                try {
                    int isz = -1;
                    try {
                        isz = aoc.kingdoms.lukasz.textures.ImageManager.getImagesSize();
                    } catch (Throwable ignored) {
                    }
                    AirDbgLog.dWrite("nFX n=" + count + " z=" + zoom
                            + " isz=" + isz + " ring=" + probeImageId()
                            + " img=" + aoc.kingdoms.lukasz.textures.Images.airProj
                            + " use=" + imageId()
                            + " box=" + DEBUG_BOX
                            + " x0=" + (int) X[0] + " y0=" + (int) Y[0]
                            + " rot0=" + (int) ROT[0]
                            + " c0=" + ((int) (CR[0] * 100)) / 100.0f + "," + ((int) (CG[0] * 100)) / 100.0f + "," + ((int) (CB[0] * 100)) / 100.0f);
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

    // ---------------------------------------------------------------- 诊断（smali 侧调用）
    /** 诊断：本次进程已进入绘制的帧数。 */
    

    /** smali 每次进入绘制时调一次（预算 20 条），证明"确实走到绘制"。 */
    public static void logEnter(int n) {
        if (dbgEnter >= 20) {
            return;
        }
        dbgEnter++;
        try {
            int isz = -1;
            try {
                isz = aoc.kingdoms.lukasz.textures.ImageManager.getImagesSize();
            } catch (Throwable ignored) {
            }
            AirDbgLog.dWrite("nFX enter n=" + n + " img=" + imageId() + " isz=" + isz);
        } catch (Throwable ignored) {
        }
    }

    /** smali 画完一帧后调一次（预算 20 条），证明循环走完。 */
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
