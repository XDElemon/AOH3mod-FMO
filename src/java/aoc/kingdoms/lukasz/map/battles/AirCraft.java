package aoc.kingdoms.lukasz.map.battles;

/**
 * 空军新运动模型的**纯数学内核**（M1a）。
 *
 * <p>设计口径（用户 2026-10-26 拍板）：
 * <ul>
 *   <li><b>不逐省移动</b>：飞机只有世界坐标 (x,y) 与朝向，直接朝目标点直线飞；省界不参与移动。</li>
 *   <li><b>每帧推进</b>：调用方每帧用 {@code dtTurns}（本帧推进了多少"回合"）驱动；回合只用于记账。</li>
 *   <li><b>机动性 = 真实转弯半径</b>：{@code agility} 换成最大转向角速度（度/回合），不再当伤害乘数。</li>
 *   <li><b>航程 = 燃料回合数</b>：{@code fuel} 是滞空回合数，耗完就飞不动（调用方据此返航）。</li>
 * </ul>
 *
 * <p>坐标系：世界坐标（Real 单位），与空空弹 {@code AirMission.msFxX/Y} 同一个空间；
 * 渲染时由调用方换算屏幕坐标（{@code (world + cam) * zoom}）。本类**不碰** libgdx、不碰省。</p>
 *
 * <p>数值标定（2026-10-26 实测地图：13,892 个省，省中心最近邻距离中位数 39 Real）：
 * {@code speedPxPerTurn = Speed × 0.05} ⇒ 800 时 40/回合，邻省约 1 回合。
 * {@code turnRate = 25 + 100 × agility^1.5} 度/回合 ⇒ agility 0.86 时转弯半径 ≈ 22，0.76→25，0.38→47，0.22→65（1.7 个省间距）。</p>
 */
public final class AirCraft {

    /** 配置速度 → 世界像素/回合 的换算系数（一个可调常数）。 */
    public static final float SPEED_K = 0.05f;
    /** 转弯率下限（度/回合）：agility→0 也是这个数。 */
    public static final float TURN_BASE = 25.0f;
    /** 转弯率上限增量（度/回合）。 */
    public static final float TURN_AGILITY = 100.0f;
    /** agility 的映射指数：<1 会拉开差距（0.22→0.10、0.86→0.80），让轰炸机真的笨重。 */
    public static final float TURN_EXP = 1.5f;
    /** 到达判定半径（世界像素）。 */
    public static final float ARRIVE_RADIUS = 2.0f;
    /** 单帧最大推进回合数，防止一帧卡顿把飞机瞬移过去（保护用，不是玩法）。 */
    public static final float MAX_DT_TURNS = 0.5f;

    /** 世界坐标。 */
    public float x;
    public float y;
    /** 朝向（度，0 = +x，逆时针为正/屏幕 y 向上）。 */
    public float heading;
    /** 本机速度（世界像素/回合）。 */
    public float speedPxPerTurn;
    /** 机动性 0..1（来自机型配置）。 */
    public float agility;
    /** 剩余燃料（回合）。 */
    public float fuel;

    public AirCraft() {
    }

    public AirCraft(float x, float y, float heading, float speedStat, float agility, float fuel) {
        this.x = x;
        this.y = y;
        this.heading = heading;
        this.speedPxPerTurn = speedFor(speedStat);
        this.agility = agility;
        this.fuel = fuel;
    }

    /** 配置里的 Speed（如 800）→ 世界像素/回合。 */
    public static float speedFor(float speedStat) {
        if (speedStat <= 0.0f) {
            return 0.0f;
        }
        return speedStat * SPEED_K;
    }

    /** 机动性 → 最大转向角速度（度/回合）。 */
    public static float turnRateFor(float agility) {
        float a = agility;
        if (a < 0.0f) {
            a = 0.0f;
        } else if (a > 1.0f) {
            a = 1.0f;
        }
        return TURN_BASE + TURN_AGILITY * (float) Math.pow(a, TURN_EXP);
    }

    /** 当前转弯半径（世界像素）；速度为 0 时返回 0。 */
    public float turnRadius() {
        float rate = turnRateFor(agility);
        if (speedPxPerTurn <= 0.0f || rate <= 0.0f) {
            return 0.0f;
        }
        return speedPxPerTurn / (float) Math.toRadians(rate);
    }

    /** 到目标点的距离。 */
    public float distTo(float tx, float ty) {
        float dx = tx - x;
        float dy = ty - y;
        return (float) Math.sqrt(dx * dx + dy * dy);
    }

    /**
     * 朝目标点推进一帧。
     *
     * @param dtTurns 本帧折算的回合数（帧间隔 / 每回合毫秒）
     * @param tx 目标点世界 x
     * @param ty 目标点世界 y
     * @return true = 仍在飞；false = 已到达 / 没油 / 速度为 0
     */
    public boolean step(float dtTurns, float tx, float ty) {
        if (dtTurns <= 0.0f || fuel <= 0.0f || speedPxPerTurn <= 0.0f) {
            return false;
        }
        if (dtTurns > MAX_DT_TURNS) {
            dtTurns = MAX_DT_TURNS;
        }
        float dx = tx - x;
        float dy = ty - y;
        float dist = (float) Math.sqrt(dx * dx + dy * dy);
        if (dist <= ARRIVE_RADIUS) {
            return false;
        }
        // 目标方向 → 与当前朝向的最小夹角（-180, 180]
        float want = (float) Math.toDegrees(Math.atan2(dy, dx));
        float diff = want - heading;
        while (diff > 180.0f) {
            diff -= 360.0f;
        }
        while (diff <= -180.0f) {
            diff += 360.0f;
        }
        float maxTurn = turnRateFor(agility) * dtTurns;
        if (diff > maxTurn) {
            diff = maxTurn;
        } else if (diff < -maxTurn) {
            diff = -maxTurn;
        }
        heading += diff;
        while (heading > 180.0f) {
            heading -= 360.0f;
        }
        while (heading <= -180.0f) {
            heading += 360.0f;
        }
        float move = speedPxPerTurn * dtTurns;
        if (move > dist) {
            move = dist;
        }
        double rad = Math.toRadians(heading);
        x += (float) Math.cos(rad) * move;
        y += (float) Math.sin(rad) * move;
        fuel -= dtTurns;
        if (fuel < 0.0f) {
            fuel = 0.0f;
        }
        return true;
    }

    /**
     * 离线/网页用的轨迹采样：从 (x0,y0) 直飞 (x1,y1)，按固定步长推进到到达或没油。
     *
     * @return 偶数长度数组 {x0,y0,x1,y1,...}；最后一点是实际停止位置
     */
    public static float[] sampleRoute(float x0, float y0, float speedStat, float agility, float fuel,
                                      float x1, float y1, float dtTurns, int maxPoints) {
        AirCraft c = new AirCraft(x0, y0,
                (float) Math.toDegrees(Math.atan2(y1 - y0, x1 - x0)),
                speedStat, agility, fuel);
        float[] out = new float[Math.max(2, maxPoints * 2)];
        int n = 0;
        out[n++] = c.x;
        out[n++] = c.y;
        for (int i = 0; i < maxPoints; i++) {
            boolean flying = c.step(dtTurns, x1, y1);
            out[n++] = c.x;
            out[n++] = c.y;
            if (!flying) {
                break;
            }
        }
        float[] res = new float[n];
        System.arraycopy(out, 0, res, 0, n);
        return res;
    }
}
