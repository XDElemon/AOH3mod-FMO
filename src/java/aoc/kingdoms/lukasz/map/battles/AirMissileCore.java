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
