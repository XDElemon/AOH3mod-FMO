package aoc.kingdoms.lukasz.map.battles;

/**
 * M2 弹药实体化的**单发飞行物**（世界坐标）。
 *
 * <p>设计口径（用户 2026-10-27 拍板 + `data/missiles.json`）：
 * <ul>
 *   <li>每发弹是一个独立实体，参数全部来自 {@link MissileTypes}（速度/寿命/转向率/接触径），
 *       <b>不</b>挂在 {@code AirMission} 的 {@code msFx*} 字段上；</li>
 *   <li>与飞机同一个帧钟：调用方传 {@code dtTurns}（本帧推进了多少"回合"），见 {@link AirProjectileCore}；</li>
 *   <li>接触 = 与世界坐标目标点的距离 ≤ 本类型 {@code hitRadius}（不是屏幕判定）；</li>
 *   <li>**双圈（丙方案）**：进 {@code hitRadius} = 贴脸命中（full 伤害）；进 {@code fuseRadius}
 *       = 近炸命中（{@link #fused}=true，调用方按折扣结算）；出圈才算脱靶；</li>
 *   <li>寿命 = {@code lifeTurns}（回合）；到期记 {@link #RESULT_EXPIRED}，不带伤害。</li>
 * </ul>
 *
 * <p>坐标系：世界坐标，与 {@code AirPos}/{@code AirMission.msFxX/Y}/`AirCraft` 同一空间。
 * 本类**不碰** libgdx、不碰省、不碰渲染 —— 渲染由 M3 另接。</p>
 *
 * <p><b>冻结线</b>：弹道类（ALBM / TAC_NUKE / ALBM_NUKE）不参与本内核的发射与推进，
 * 等 ICBM 源文件到位后整体照抄（见 `baseline/待办_空地导弹与战略打击_v1.md` 顶部）。</p>
 */
public final class AirProjectile {

    /** 在飞。 */
    public static final int RESULT_FLYING = 0;
    /** 命中（进入接触径）。 */
    public static final int RESULT_HIT = 1;
    /** 寿命到期。 */
    public static final int RESULT_EXPIRED = 2;
    /** 目标丢失（追踪型且目标已不存在）。 */
    public static final int RESULT_LOST = 3;

    /** 单帧最大推进回合数（与 AirCraft 同口径，防卡顿瞬移）。 */
    public static final float MAX_DT_TURNS = 0.5f;

    /** 类型下标（{@link MissileTypes}）。 */
    public int typeIdx;
    /** 发射源枚举下标（aircraft / ad_site / abm_site）。 */
    public int launcher;
    /** 战斗部枚举下标（air_damage / building / province / nuclear）。 */
    public int warhead;
    /** 目标枚举下标（air / ground / province / nuke_warhead）。 */
    public int targetKind;
    /** 归属文明（颜色/敌我由调用方判）。 */
    public int ownerCiv;

    /** 追踪目标的任务 id（0 = 不追踪任务）。 */
    public long targetMissionID;
    /** 发射方任务 id（0 = 无；M3b 影子伤害要用它回查发射方存活机）。 */
    public long shooterMissionID;
    /** 固定目标省 id（-1 = 无）。 */
    public int targetProvinceID;

    /** 世界坐标与朝向（度，0=+x，逆时针为正）。 */
    public float x;
    public float y;
    public float heading;

    /** 本类型参数（进表时从 MissileTypes 拷一次）。 */
    public float speedPx;
    public float turnDeg;
    public float hitRadius;
    /** 丙方案：近炸半径（世界 px），必须 ≥ hitRadius。 */
    public float fuseRadius;
    public float lifeTurns;

    /** 已经飞的回合数。 */
    public float ageTurns;
    /** 当前目标点（世界坐标，每帧刷新）。 */
    public float tx;
    public float ty;

    public boolean alive;
    public int result;
    /** 本次结算是不是"近炸"（true = 只在 fuseRadius 内，伤害按折扣算）。 */
    public boolean fused;

    public AirProjectile() {
    }

    /** 建一发：参数按类型下标从 {@link MissileTypes} 取。 */
    public static AirProjectile create(int typeIdx, int ownerCiv,
                                       float sx, float sy, float heading,
                                       long targetMissionID, int targetProvinceID,
                                       float tx, float ty) {
        return create(typeIdx, ownerCiv, sx, sy, heading, targetMissionID, targetProvinceID,
                tx, ty, 0.0f, 0.0f, 0.0f);
    }

    /**
     * 带覆盖参数的建弹：{@code speedPx<=0} / {@code lifeTurns<=0} / {@code fuseRadius<=0}
     * 表示"用类型表的值"。发射者机型（`AirModelStats.missileSpeed/missileRangeOf`）与
     * 防空阵地配置（`AirDefCfg`）都从这里进来 —— 类型表是**兜底**，不是唯一真源。
     */
    public static AirProjectile create(int typeIdx, int ownerCiv,
                                       float sx, float sy, float heading,
                                       long targetMissionID, int targetProvinceID,
                                       float tx, float ty,
                                       float speedPx, float lifeTurns, float fuseRadius) {
        AirProjectile p = new AirProjectile();
        p.typeIdx = typeIdx;
        p.ownerCiv = ownerCiv;
        p.targetMissionID = targetMissionID;
        p.targetProvinceID = targetProvinceID;
        p.x = sx;
        p.y = sy;
        p.heading = heading;
        p.tx = tx;
        p.ty = ty;
        p.alive = true;
        p.result = RESULT_FLYING;
        p.applyType();
        if (speedPx > 0.0f) {
            p.speedPx = speedPx;
        }
        if (lifeTurns > 0.0f) {
            p.lifeTurns = lifeTurns;
        }
        if (fuseRadius > 0.0f) {
            p.fuseRadius = fuseRadius;
        }
        if (p.fuseRadius < p.hitRadius) {
            p.fuseRadius = p.hitRadius;
        }
        return p;
    }

    /** 按 typeIdx 重载类型参数（出生时一次；改类型表后旧弹不追改）。 */
    public void applyType() {
        int i = typeIdx;
        if (i < 0 || i >= MissileTypes.count()) {
            i = 0;
        }
        typeIdx = i;
        speedPx = MissileTypes.speedOf(i);
        turnDeg = MissileTypes.turnOf(i);
        hitRadius = MissileTypes.hitRadiusOf(i);
        fuseRadius = MissileTypes.fuseRadiusOf(i);
        if (fuseRadius < hitRadius) {
            fuseRadius = hitRadius;
        }
        lifeTurns = MissileTypes.lifeOf(i);
        launcher = MissileTypes.launcherOf(i);
        targetKind = MissileTypes.targetOf(i);
        warhead = MissileTypes.warheadOf(i);
    }

    /** 到目标点距离（世界像素）。 */
    public float distTo(float px, float py) {
        float dx = px - x;
        float dy = py - y;
        return (float) Math.sqrt(dx * dx + dy * dy);
    }

    /** 是否追踪型（目标是一个任务，每帧刷新目标点）。 */
    public boolean isHoming() {
        return targetMissionID != 0L;
    }

    /**
     * 朝目标点推进一帧（转弯率受限），并做接触/寿命结算。
     *
     * @return {@link #RESULT_FLYING} 表示还在飞；其它值表示本帧结束
     */
    public int step(float dtTurns, float tx, float ty) {
        if (!alive) {
            return result;
        }
        this.tx = tx;
        this.ty = ty;
        // 先判接触（含出生即贴脸）：贴脸（hitRadius）> 近炸（fuseRadius）
        float[] c = contactKind(tx, ty);
        if (c != null) {
            return settle(RESULT_HIT, c[0] > 0.5f);
        }
        if (dtTurns <= 0.0f || speedPx <= 0.0f) {
            return result;
        }
        if (dtTurns > MAX_DT_TURNS) {
            dtTurns = MAX_DT_TURNS;
        }
        float dx = tx - x;
        float dy = ty - y;
        float dist = (float) Math.sqrt(dx * dx + dy * dy);
        // 转向：朝目标方向，限幅到本帧可转角度
        float want = (float) Math.toDegrees(Math.atan2(dy, dx));
        float diff = want - heading;
        while (diff > 180.0f) {
            diff -= 360.0f;
        }
        while (diff <= -180.0f) {
            diff += 360.0f;
        }
        float maxTurn = turnDeg * dtTurns;
        if (diff > maxTurn) {
            diff = maxTurn;
        } else if (diff < -maxTurn) {
            diff = -maxTurn;
        }
        heading = wrap180(heading + diff);
        float move = speedPx * dtTurns;
        if (move > dist) {
            move = dist; // 不越过目标点：本帧正好落点
        }
        double rad = Math.toRadians(heading);
        x += (float) Math.cos(rad) * move;
        y += (float) Math.sin(rad) * move;
        ageTurns += dtTurns;
        // 移动后再判一次：避免大步长跳过目标（接近率远大于接触径）
        c = contactKind(tx, ty);
        if (c != null) {
            return settle(RESULT_HIT, c[0] > 0.5f);
        }
        if (lifeTurns > 0.0f && ageTurns >= lifeTurns) {
            return settle(RESULT_EXPIRED);
        }
        return RESULT_FLYING;
    }

    private int settle(int r) {
        return settle(r, false);
    }

    private int settle(int r, boolean isFused) {
        alive = false;
        result = r;
        fused = isFused;
        return r;
    }

    /**
     * 双圈判定：返回 {@code null} = 没进任何圈；{@code [0]=0} 贴脸命中；{@code [0]=1} 近炸。
     * （Dalvik 一次只能返回一个值，所以用长度 1 的数组当标志位。）
     */
    private float[] contactKind(float px, float py) {
        float d = distTo(px, py);
        if (d <= hitRadius) {
            return HIT_DIRECT;
        }
        if (d <= fuseRadius) {
            return HIT_FUSED;
        }
        return null;
    }

    private static final float[] HIT_DIRECT = new float[] { 0.0f };
    private static final float[] HIT_FUSED = new float[] { 1.0f };

    /** 归一化到 (-180, 180]。 */
    public static float wrap180(float deg) {
        while (deg > 180.0f) {
            deg -= 360.0f;
        }
        while (deg <= -180.0f) {
            deg += 360.0f;
        }
        return deg;
    }
}
