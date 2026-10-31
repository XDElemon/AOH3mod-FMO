package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread;
import aoc.kingdoms.lukasz.map.map.MapBG;
import aoc.kingdoms.lukasz.map.province.Province;

/**
 * M2 弹药实体化的**独立飞行物表**（不是 {@code AirMission} 的字段）。
 *
 * <p>为什么单独一张表（用户 2026-10-27 口径"红警/ICBM 式"）：
 * <ul>
 *   <li>一个任务同一时刻可以有若干发弹在飞（原来 `msFx*` 一组字段只能装一发）；</li>
 *   <li>弹的类型参数（速度/寿命/转向率/接触径）来自 {@link MissileTypes}，
 *       不再由机型 `AirModelStats` 一套打死；</li>
 *   <li>推进与**渲染彻底解耦**：老实现"画不画 = 推不推"（`fmo-missile-system` §10 的 P1 耦合），
 *       本表的推进只看帧钟与暂停，不看相机/视口。</li>
 * </ul>
 *
 * <p>本批（M2 内核）是**影子双跑**：新表照常发射/推进/结算，但**不改战斗结果、不画图**；
 * v142–v147 起新表接管伤害与渲染；旧 {@code msFx*} 视觉弹与字段已整体删除。</p>
 *
 * <p>帧钟与飞机同源：{@code dtTurns = dtMs / AirMissileCore.speedDiv()}（1 回合 = 2 小时），
 * 暂停时整表冻结（自查 {@code GameThread.play}，`RealTimeSim` 会绕过 update 门）。</p>
 *
 * <p><b>冻结线</b>：不 spawn 弹道类（ALBM / TAC_NUKE / ALBM_NUKE），见待办表顶部。</p>
 */
public final class AirProjectileCore {

    /** 同时在飞的弹上限（多弹同飞；满了直接丢弃新弹，不扩容）。 */
    public static final int MAX = 512;
    /** 同一帧内重复调用 tick 的去抖窗口（`drawAirForce` 每帧可能被调两次）。 */
    private static final long DEDUPE_NS = 4000000L;
    /** 单帧最大 dt（ms）：卡顿/恢复时不许瞬移。 */
    private static final long MAX_DT_MS = 120L;

    private static final AirProjectile[] SLOT = new AirProjectile[MAX];
    private static int used = 0;

    /** 诊断计数（真机看 `nAP` 日志 / B48 断言）。 */
    public static int dbgSpawn = 0;
    public static int dbgHit = 0;
    public static int dbgExpired = 0;
    public static int dbgLost = 0;
    /** 超射程没有发射（"nogo"）的次数。 */
    public static int dbgNogo = 0;
    /** 近炸命中（只进 fuseRadius）的次数。 */
    public static int dbgFuse = 0;
    /** 日志预算：只在启动后前 N 行写盘，避免每帧写文件拖慢（`AirDbgLog.dWrite` 每条都开关文件）。 */
    private static int logBudget = 240;
    /** 防空弹专用日志预算（v127）：与通用预算分开，避免长对局里被 AAM 发射耗光。 */
    private static int samLogBudget = 40;
    /** 防空兜底常量：查表类（AirDefIds/AirDefCfg）校验失败时也要能打出去。 */
    public static final float SAM_SPD_FALLBACK = 180.0f;
    public static final float SAM_RANGE_REAL_FALLBACK = 100.0f;

    private static long lastTickNs = 0L;
    private static long lastTickMs = 0L;

    private AirProjectileCore() {
    }

    // ------------------------------------------------------------------ 发射

    /**
     * 发一发弹（唯一的入表口）。参数：类型下标 / 归属文明 / 追踪任务 id（0=无）/
     * 固定目标省 id（-1=无）/ 起点世界坐标 / 初始目标点世界坐标。
     *
     * @return 槽位下标（>=0）；-1 表示表满或类型非法
     */
    public static int spawn(int typeIdx, int ownerCiv, long targetMissionID, int targetProvinceID,
                            float sx, float sy, float tx, float ty) {
        return spawnEx(typeIdx, ownerCiv, targetMissionID, targetProvinceID, sx, sy, tx, ty,
                0.0f, 0.0f, 0.0f);
    }

    /**
     * 发一发弹，允许覆盖类型参数（&lt;=0 表示用类型表的值）。
     * AAM 的机型速度/射程、SAM 的阵地速度都从这里进来 —— **类型表是兜底，不是唯一真源**。
     */
    public static int spawnEx(int typeIdx, int ownerCiv, long targetMissionID, int targetProvinceID,
                              float sx, float sy, float tx, float ty,
                              float speedPx, float lifeTurns, float fuseRadius) {
        if (typeIdx < 0 || typeIdx >= MissileTypes.count()) {
            return -1;
        }
        int slot = -1;
        for (int i = 0; i < used; i++) {
            if (SLOT[i] == null || !SLOT[i].alive) {
                slot = i;
                break;
            }
        }
        if (slot < 0) {
            if (used >= MAX) {
                return -1;
            }
            slot = used++;
        }
        float heading = (float) Math.toDegrees(Math.atan2(ty - sy, tx - sx));
        AirProjectile p = AirProjectile.create(typeIdx, ownerCiv, sx, sy, heading,
                targetMissionID, targetProvinceID, tx, ty, speedPx, lifeTurns, fuseRadius);
        SLOT[slot] = p;
        dbgSpawn++;
        log("nAP spawn t=" + p.typeIdx + " ty=" + MissileTypes.idOf(p.typeIdx)
                + " civ=" + ownerCiv + " spd=" + (int) (p.speedPx + 0.5f)
                + " life=" + round2(p.lifeTurns) + " fuse=" + (int) (p.fuseRadius + 0.5f)
                + " n=" + dbgSpawn);
        return slot;
    }

    /**
     * 空空弹（A2A）发射：由 `AirLaunch.tick` 在开火判定通过后调一次。
     * 起点**只认发射方的连续位置 `AirPos`**（v147 起不再回退旧 `msFxX/Y`），
     * 目标 = 原任务选中的敌机（同样按 AirPos 取，取不到就朝"发射时目标点"直飞）。
     */
    public static void spawnFromMission(Object missionObj) {
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            AirMission m = (AirMission) missionObj;
            long tgt = m.strikeTargetMissionID;
            if (tgt == 0L) {
                return;
            }
            float[] out = new float[2];
            long now = System.currentTimeMillis();
            if (!AirPos.worldOf(m.missionID, now, out)) {
                dbgNogo++;
                log("nAP nopos s=" + m.missionID);
                return;
            }
            float sx = out[0];
            float sy = out[1];
            float tx = sx;
            float ty = sy;
            if (AirPos.worldOf(tgt, now, out)) {
                tx = out[0];
                ty = out[1];
            }
            int type = MissileTypeIds.indexOf("AAM");
            int aid = modelAidOf(m);
            float spd = AirModelStats.missileSpeed(aid);
            int rangeReal = AirModelStats.missileRangeOf(aid);
            float scale = mapScale();
            float rangeWorld = rangeReal * scale;
            float dist = (float) Math.sqrt((tx - sx) * (tx - sx) + (ty - sy) * (ty - sy));
            if (rangeWorld > 0.0f && dist > rangeWorld) {
                dbgNogo++;
                log("nAP nogo t=" + type + " d=" + (int) (dist / scale) + " r=" + rangeReal);
                return;
            }
            if (spd <= 0.0f) {
                spd = MissileTypes.speedOf(type);
            }
            // 寿命由"射程 ÷ 速度"推：够飞满射程还多一点（丙方案配套，不再手调 lifeTurns）
            float life = MissileTypes.lifeOf(type);
            if (spd > 0.0f && rangeWorld > 0.0f) {
                float need = 1.15f * rangeWorld / spd;
                if (need > life) {
                    life = need;
                }
            }
            int slot = spawnEx(type, m.civID, tgt, -1, sx, sy, tx, ty, spd, life, 0.0f);
            AirProjectile shot = get(slot);
            if (shot != null) {
                shot.shooterMissionID = m.missionID;
            }
        } catch (Throwable t) {
            // 影子弹失败不许影响旧路径
        }
    }

    /**
     * 防空弹（SAM）发射：由 `AirDefense` 在判定命中（登记在途弹）之后调一次。
     *
     * @param missionObj 被瞄的敌机任务
     * @param siteProvinceID 发射阵地所在省（起点 = 该省世界中心）
     */
    public static void spawnSam(Object missionObj, int siteProvinceID) {
        AirMission m = null;
        try {
            if (missionObj instanceof AirMission) {
                m = (AirMission) missionObj;
            }
        } catch (Throwable t) {
            samLog("nSP ERR cast " + t);
            return;
        }
        if (m == null) {
            samLog("nSP skip notmission");
            return;
        }
        // 每一步单独 try：ART 是"首次调用才校验"，某个查表类校验失败要把原因记下来、
        // 并用兜底常量继续发射（v127b：防空先能打出来，再回头修校验问题）。
        Province site = null;
        try {
            site = Game.getProvince(siteProvinceID);
        } catch (Throwable t) {
            samLog("nSP ERR prov " + t);
            return;
        }
        if (site == null) {
            samLog("nSP skip nosite p=" + siteProvinceID);
            return;
        }
        float sx = 0.0f;
        float sy = 0.0f;
        try {
            sx = site.getCenterX() + site.getShiftX();
            sy = site.getCenterY() + site.getShiftY();
        } catch (Throwable t) {
            samLog("nSP ERR sitexy " + t);
            return;
        }
        float tx = sx;
        float ty = sy;
        try {
            float[] out = new float[2];
            if (AirPos.worldOf(m.missionID, System.currentTimeMillis(), out)) {
                tx = out[0];
                ty = out[1];
            }
        } catch (Throwable t) {
            samLog("nSP ERR pos " + t);
        }
        int type = -1;
        try {
            type = MissileTypeIds.indexOf("SAM");
        } catch (Throwable t) {
            samLog("nSP ERR type " + t);
        }
        if (type < 0) {
            samLog("nSP skip notype");
            return;
        }
        int civ = 0;
        try {
            civ = site.getCivID();
        } catch (Throwable t) {
            samLog("nSP ERR civ " + t);
        }
        // 阵地速度/射程：AirDefIds → AirDefCfg（失败用兜底常量，保证防空先能打出来）
        float spd = SAM_SPD_FALLBACK;
        float rangeReal = SAM_RANGE_REAL_FALLBACK;
        try {
            int siteIdx = AirDefIds.indexOf("aaa");
            if (siteIdx >= 0) {
                spd = AirDefCfg.speedOf(siteIdx);
                rangeReal = AirDefCfg.rangeRealOf(siteIdx);
            }
        } catch (Throwable t) {
            samLog("nSP fb cfg " + t);
        }
        if (spd <= 0.0f) {
            spd = MissileTypes.speedOf(type);
        }
        if (spd <= 0.0f) {
            spd = SAM_SPD_FALLBACK;
        }
        // 前置量（优化）：失败就直瞄当前位置
        float aimX = tx;
        float aimY = ty;
        try {
            float[] aim = leadPoint(m, sx, sy, tx, ty, spd);
            if (aim != null && aim.length >= 2) {
                aimX = aim[0];
                aimY = aim[1];
            }
        } catch (Throwable t) {
            samLog("nSP fb lead " + t);
        }
        float dist = 0.0f;
        try {
            dist = (float) Math.sqrt((aimX - sx) * (aimX - sx) + (aimY - sy) * (aimY - sy));
        } catch (Throwable ignored) {
        }
        // 寿命：覆盖尾追时间（旧 1.15×射程/速度 只够迎面目标）
        float life = MissileTypes.lifeOf(type);
        try {
            float rangeWorld = rangeReal * mapScale();
            if (spd > 0.0f && rangeWorld > 0.0f) {
                float need = 2.4f * rangeWorld / spd + 1.0f;
                if (need > life) {
                    life = need;
                }
            }
        } catch (Throwable t) {
            samLog("nSP fb life " + t);
        }
        int slot = -1;
        try {
            slot = spawnEx(type, civ, m.missionID, -1, sx, sy, aimX, aimY, spd, life, 0.0f);
        } catch (Throwable t) {
            samLog("nSP ERR spawn " + t);
            return;
        }
        samLog("nSP p=" + siteProvinceID + " slot=" + slot + " spd=" + (int) (spd + 0.5f)
                + " d=" + (int) (dist + 0.5f) + " life=" + round2(life));
    }

    /**
     * v127 前置量：按目标当前朝向/速度迭代两次求交汇点（返回世界坐标 {@code [x,y]}）。
     * 拿不到目标速度就退回"瞄当前位置"（旧行为）。
     */
    static float[] leadPoint(AirMission m, float sx, float sy, float tx, float ty, float spd) {
        float[] p = new float[] { tx, ty };
        if (spd <= 0.0f || m == null) {
            return p;
        }
        float tSpeed = AirMotion.speedOf(m);
        float tHead = AirMotion.worldHeadingOf(m);
        if (tSpeed <= 0.0f) {
            return p;
        }
        double rad = Math.toRadians(tHead);
        float vx = (float) Math.cos(rad) * tSpeed;
        float vy = (float) Math.sin(rad) * tSpeed;
        for (int i = 0; i < 2; i++) {
            float dx = p[0] - sx;
            float dy = p[1] - sy;
            float dist = (float) Math.sqrt(dx * dx + dy * dy);
            float t = dist / spd;
            p[0] = tx + vx * t;
            p[1] = ty + vy * t;
        }
        return p;
    }

    // ------------------------------------------------------------------ 推进

    /**
     * 每帧一次（`AirUx.drawAll` 头部调用）：暂停判定 + 帧钟换算 + 去抖，然后推进整表。
     */
    public static void tick() {
        long nowNs = System.nanoTime();
        if (nowNs - lastTickNs < DEDUPE_NS) {
            return;
        }
        lastTickNs = nowNs;
        if (isPaused()) {
            // 暂停冻结：只推时间戳，不推进也不补步
            lastTickMs = System.currentTimeMillis();
            return;
        }
        long now = System.currentTimeMillis();
        long dtMs = lastTickMs == 0L ? 16L : now - lastTickMs;
        if (dtMs < 0L) {
            dtMs = 0L;
        } else if (dtMs > MAX_DT_MS) {
            dtMs = MAX_DT_MS;
        }
        lastTickMs = now;
        float msPerTurn = AirMissileCore.speedDiv();
        if (msPerTurn <= 0.0f) {
            msPerTurn = 300.0f;
        }
        stepAll(dtMs / msPerTurn, now);
    }

    /**
     * 推进整表（纯参数入口：B48 离线回归直接调它，不需要帧钟/暂停）。
     *
     * @param dtTurns 本帧折合的回合数
     * @param nowMs 当前真实时间（给 `AirPos.worldOf` 的过期判定用）
     */
    public static void stepAll(float dtTurns, long nowMs) {
        if (used == 0 || dtTurns <= 0.0f) {
            return;
        }
        float[] out = new float[2];
        for (int i = 0; i < used; i++) {
            AirProjectile p = SLOT[i];
            if (p == null || !p.alive) {
                continue;
            }
            float tx = p.tx;
            float ty = p.ty;
            if (p.isHoming()) {
                if (AirPos.worldOf(p.targetMissionID, nowMs, out)) {
                    tx = out[0];
                    ty = out[1];
                } else {
                    // 追踪目标已消失：本帧不追、按寿命走（M3 会接"脱靶"结算）
                    p.ageTurns += dtTurns;
                    if (p.lifeTurns > 0.0f && p.ageTurns >= p.lifeTurns) {
                        p.alive = false;
                        p.result = AirProjectile.RESULT_EXPIRED;
                        dbgExpired++;
                        log("nAP exp t=" + p.typeIdx + " n=" + dbgExpired);
                    }
                    continue;
                }
            } else if (p.targetProvinceID >= 0) {
                Province tp = Game.getProvince(p.targetProvinceID);
                if (tp != null) {
                    tx = tp.getCenterX() + tp.getShiftX();
                    ty = tp.getCenterY() + tp.getShiftY();
                }
            }
            int r = p.step(dtTurns, tx, ty);
            if (r == AirProjectile.RESULT_HIT) {
                dbgHit++;
                if (p.fused) {
                    dbgFuse++;
                }
                // v142：命中 = 真结算（AAM 走 msFxContact 的扣血入口；SAM 走百分比 + 斩杀线）
                AirDamage.onHit(p);
                log("nAP hit t=" + p.typeIdx + (p.fused ? " fuse=1" : " fuse=0")
                        + " age=" + round2(p.ageTurns) + " n=" + dbgHit);
            } else if (r == AirProjectile.RESULT_EXPIRED) {
                dbgExpired++;
                // v142：过期要把发射方从"在飞"状态放出来，否则该任务此后再也不发射
                AirDamage.onExpire(p);
                log("nAP exp t=" + p.typeIdx + " n=" + dbgExpired);
            } else if (r == AirProjectile.RESULT_LOST) {
                dbgLost++;
            }
        }
    }

    // ------------------------------------------------------------------ 查询（渲染/闸门/日志共用）

    public static int slotCount() {
        return used;
    }

    /** 在飞弹数。 */
    public static int aliveCount() {
        int n = 0;
        for (int i = 0; i < used; i++) {
            if (SLOT[i] != null && SLOT[i].alive) {
                n++;
            }
        }
        return n;
    }

    public static AirProjectile get(int i) {
        return i >= 0 && i < used ? SLOT[i] : null;
    }

    public static float xOf(int i) {
        AirProjectile p = get(i);
        return p == null ? 0.0f : p.x;
    }

    public static float yOf(int i) {
        AirProjectile p = get(i);
        return p == null ? 0.0f : p.y;
    }

    public static int typeOf(int i) {
        AirProjectile p = get(i);
        return p == null ? -1 : p.typeIdx;
    }

    public static int resultOf(int i) {
        AirProjectile p = get(i);
        return p == null ? -1 : p.result;
    }

    public static float ageOf(int i) {
        AirProjectile p = get(i);
        return p == null ? 0.0f : p.ageTurns;
    }

    public static long targetMissionOf(int i) {
        AirProjectile p = get(i);
        return p == null ? -1L : p.targetMissionID;
    }

    /** 读档/新局清理（跟 AirMotion.clear / AirPos.clear 一起调）。 */
    public static void clear() {
        for (int i = 0; i < used; i++) {
            SLOT[i] = null;
        }
        used = 0;
        lastTickMs = 0L;
        logBudget = 240;
        dbgNogo = 0;
        samLogBudget = 40;
        AirDamage.clear();
        AirDefCfgRt.clear();
    }

    /** 发射方机型（跟 `AirMotion.create` 同一取法：先活机、再编队）。 */
    private static int modelAidOf(AirMission m) {
        try {
            if (m.aliveAircraft != null && !m.aliveAircraft.isEmpty()) {
                return ((AirUnit) m.aliveAircraft.get(0)).modelAid;
            }
            if (m.assignedAircraft != null && !m.assignedAircraft.isEmpty()) {
                return ((AirUnit) m.assignedAircraft.get(0)).modelAid;
            }
        } catch (Throwable ignored) {
        }
        return 0;
    }

    /**
     * Real → 世界坐标的比例（世界 = Real × {@code MapBG.iMapScale}）。
     * **只在这里换算一次**：模型射程/防空射程都是 Real 单位，弹的位置是世界坐标。
     */
    public static float mapScale() {
        try {
            if (Game.mapBG != null && Game.mapBG.iMapScale > 0) {
                return Game.mapBG.iMapScale;
            }
        } catch (Throwable ignored) {
        }
        return 1.0f;
    }

    // ------------------------------------------------------------------ 内部

    /** 暂停自查：`RealTimeSim.updateFrame` 绕过 `GameThread.play` 门，必须自己挡。 */
    private static boolean isPaused() {
        try {
            GameThread gt = Game.gameThread;
            if (gt != null && !gt.play) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void log(String s) {
        if (logBudget <= 0) {
            return;
        }
        logBudget--;
        try {
            AirDbgLog.dWrite(s);
        } catch (Throwable ignored) {
        }
    }

    /**
     * 防空弹专用日志（v127）：**独立预算** —— 通用 `logBudget` 在长时间对局里早被 AAM 发射耗光，
     * 之前"防空到底有没有 spawn"根本看不到。每条 `nSP` 记发射/失败原因，`clear()` 时重置。
     */
    private static void samLog(String s) {
        if (samLogBudget <= 0) {
            return;
        }
        samLogBudget--;
        try {
            AirDbgLog.dWrite(s);
        } catch (Throwable ignored) {
        }
    }

    private static float round2(float v) {
        return ((int) (v * 100.0f)) / 100.0f;
    }
}
