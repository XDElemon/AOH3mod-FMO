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
     * v64：contact 的反面。
     * smali 里那处 `if-eqz` 本意是"未接触就继续飞"，但原先调的是 contact，极性正好反了
     * （未接触反而结算、接触反而不结算）。门禁不许改原版类的分支，所以改调用目标。
     */
    public static boolean notContact(float mx, float my, float tx, float ty, float range) {
        return !contact(mx, my, tx, ty, range);
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
    /**
     * v58：给导弹 FX 一个真实起点（发射方所在省中心，世界坐标）。
     *
     * <p>为什么必须有：绘制路径先算屏幕位置 `(msFxX + mapPosX) * zoom` 再判定是否在视口内，
     * 而 msFxX/msFxY 只在"逐帧推进"里写、逐帧推进又要求先判定在屏内 —— 鸡生蛋。
     * 发射时坐标默认 (0,0) ⇒ 永远判屏外 ⇒ 导弹从不渲染（真机 373 次发射里 fx=1 只有 2 次）。
     */
    public static void seedFx(Object missionObj) {
        try {
            if (!(missionObj instanceof aoc.kingdoms.lukasz.map.battles.AirMission)) {
                return;
            }
            aoc.kingdoms.lukasz.map.battles.AirMission m =
                    (aoc.kingdoms.lukasz.map.battles.AirMission) missionObj;
            if (m.msFxInit != 0) {
                return;
            }
            // 起点必须是**飞机贴图所在位置**（不是省中心）：直接用绘制飞机用的那两个函数取屏幕坐标，
            // 再反算回世界坐标 —— 屏幕 = (world + mapPos) * zoom ⇒ world = screen / zoom - mapPos。
            aoc.kingdoms.lukasz.map.map.MapScale ms = aoc.kingdoms.lukasz.jakowski.Game.mapScale;
            aoc.kingdoms.lukasz.map.map.MapCoords mc = aoc.kingdoms.lukasz.jakowski.Game.mapCoords;
            if (ms == null || mc == null) {
                return;
            }
            float zoom = ms.getCurrentScale();
            if (zoom <= 0f) {
                return;
            }
            int sx = aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.getAirSpriteX(m);
            int sy = aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.getAirSpriteY(m);
            float wx = sx / zoom - mc.getPosX();
            float wy = sy / zoom - mc.getPosY();
            // 兜底：贴图坐标取不到（状态不在飞行中/飞机还没摆好）时，退回发射方所在省中心
            if (sx <= 0 || sy <= 0) {
                aoc.kingdoms.lukasz.map.province.Province p =
                        aoc.kingdoms.lukasz.jakowski.Game.getProvince(m.airDivisionAtProvinceID);
                if (p == null) {
                    return;
                }
                wx = p.getCenterX_Real();
                wy = p.getCenterY_Real();
            }
            m.msFxX = wx;
            m.msFxY = wy;
        } catch (Throwable t) {
            // 渲染辅助，失败不影响战斗
        }
    }


    /**
     * v66：帧钟速度分母 = playSpeedTIME / HOURS_PER_TURN。
     * 原 smali 里 `if-gtz v2, :hpt_keep` 在 HPT>0 时跳过赋值，HPT=2 被当成 1（步进减半）；
     * 而 drawAirForce 每帧被调两次（步进翻倍）——两个偏差恰好抵消，所以速度"看起来对"。
     * 这里把分母一次性算准，配合 stepGate 的"每任务每帧只推进一步"，速度保持不变但不再靠抵消。
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

    private static final java.util.HashMap<Long, Long> LAST_STEP = new java.util.HashMap<Long, Long>();

    /**
     * v66：每任务每帧只推进一次（同一帧内 drawAirForce 会被调两次）。
     * 4ms 内重复调用返回 0.0，步长乘 0 ⇒ 第二次不再移动（拖尾也会因 4px 去重自动跳过）。
     */
    public static float stepGate(Object missionObj) {
        return gateStep(missionObj, 1f);
    }

    /** v66：门 + 步长合并（smali 端不许写 mul-float，所以乘法也放在这里） */
    public static float gateStep(Object missionObj, float step) {
        try {
            long id = ((aoc.kingdoms.lukasz.map.battles.AirMission) missionObj).missionID;
            long now = System.nanoTime();
            Long last = LAST_STEP.get(id);
            if (last != null && now - last < 4000000L) {
                return 0f;
            }
            LAST_STEP.put(id, now);
            if (LAST_STEP.size() > 4096) {
                LAST_STEP.clear();
            }
        } catch (Throwable ignored) {
        }
        return step;
    }

    /** v66：按阵营取色（我方白 / 敌方红）—— 拆成三个 float 助手，避免 Java 依赖 libgdx 类型 */
    private static boolean isEnemy(Object missionObj) {
        try {
            aoc.kingdoms.lukasz.map.battles.AirMission m =
                    (aoc.kingdoms.lukasz.map.battles.AirMission) missionObj;
            return m.civID != aoc.kingdoms.lukasz.jakowski.Game.player.iCivID;
        } catch (Throwable ignored) {
            return false;
        }
    }

    public static float tintR(Object missionObj) {
        return 1f;
    }

    public static float tintG(Object missionObj) {
        return isEnemy(missionObj) ? 0.35f : 1f;
    }

    public static float tintB(Object missionObj) {
        return isEnemy(missionObj) ? 0.35f : 1f;
    }

    /**
     * v63：屏幕坐标 → 世界坐标（X / Y 两个方向各一个，因为要减去不同的地图平移）。
     * 屏幕 = (world + mapPos) * zoom ⇒ world = screen / zoom - mapPos。
     * 用于把 drawAirMissileFx 里 `getAirSpriteX/Y` 得到的**屏幕坐标**转成 msFxStep 需要的**世界坐标**
     * （原来直接拿屏幕坐标当世界坐标推进，导弹会被推到地图外）。
     */
    public static int sx2wx(int screenX) {
        try {
            float z = aoc.kingdoms.lukasz.jakowski.Game.mapScale.getCurrentScale();
            if (z <= 0f) {
                return screenX;
            }
            return Math.round(screenX / z - aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosX());
        } catch (Throwable t) {
            return screenX;
        }
    }

    public static int sx2wy(int screenY) {
        try {
            float z = aoc.kingdoms.lukasz.jakowski.Game.mapScale.getCurrentScale();
            if (z <= 0f) {
                return screenY;
            }
            return Math.round(screenY / z - aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosY());
        } catch (Throwable t) {
            return screenY;
        }
    }

    /** v62：屏内第一帧补初始化（原 smali 的 if-nez 极性写反，fx 永远 0 ⇒ 绘制被 if-ne 1 拒绝） */
    public static void beginFx(Object missionObj) {
        try {
            if (!(missionObj instanceof aoc.kingdoms.lukasz.map.battles.AirMission)) {
                return;
            }
            aoc.kingdoms.lukasz.map.battles.AirMission m =
                    (aoc.kingdoms.lukasz.map.battles.AirMission) missionObj;
            if (m.msFxInit == 0) {
                m.msFxInit = 1;
            }
        } catch (Throwable t) {
            // 渲染辅助
        }
    }

    public static int flightHours(int provinceDistance, int missileRange, float missileSpeed) {
        // v57：飞行时长只跟「距离 / 速度」有关 —— **射程不再进公式**。
        // 旧实现 ft = distance * 5 / missileRange + 2 把射程放进了分母：
        // 射程越小飞得越久（三代常顶到 8×2=16 小时），导致"发射了但空战早结束、看不到效果"。
        // 射程的唯一作用仍是发射门槛（见 AirMission.missileIsNeighbor）。
        // 量纲：distance = 两省中心距离（Real 单位），missileSpeed ≈ 68/84/102/124（Real/小时量级）。
        float spd = (missileSpeed > 0f) ? missileSpeed : LEGACY_SPEED;
        float d = (provinceDistance > 0) ? provinceDistance : 0f;
        int hours = Math.round(d / spd);
        if (hours < 1) {
            hours = 1;
        }
        if (hours > 4) {
            hours = 4;
        }
        return hours * 2;   // 保留原有 *2 的 tick 语义（调用方按此推进）
    }
}
