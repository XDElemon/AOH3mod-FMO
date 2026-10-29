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
 * 旧 {@code msFx*}/{@code adFx*} 仍负责观感与伤害，可一键回退。M3 再把两者换过来。</p>
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
     * 空空弹（A2A）发射：由 `AirMission.missileTick` 在旧 `msFx*` 初始化之后调一次。
     * 起点优先取**发射方自己的连续位置**（`AirPos`），目标 = 原任务选中的敌机。
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
            float sx = m.msFxX;
            float sy = m.msFxY;
            if (AirPos.worldOf(m.missionID, System.currentTimeMillis(), out)) {
                sx = out[0];
                sy = out[1];
            }
            float tx = sx;
            float ty = sy;
            if (AirPos.worldOf(tgt, System.currentTimeMillis(), out)) {
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
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            AirMission m = (AirMission) missionObj;
            Province site = Game.getProvince(siteProvinceID);
            if (site == null) {
                return;
            }
            float sx = site.getCenterX() + site.getShiftX();
            float sy = site.getCenterY() + site.getShiftY();
            float[] out = new float[2];
            float tx = sx;
            float ty = sy;
            if (AirPos.worldOf(m.missionID, System.currentTimeMillis(), out)) {
                tx = out[0];
                ty = out[1];
            }
            int type = MissileTypeIds.indexOf("SAM");
            int civ = 0;
            try {
                civ = site.getCivID();
            } catch (Throwable ignored) {
            }
            // 阵地速度来自 data/air_defense.json（AirDefCfg）；射击门槛 M3 接（现在旧路径先判）
            int siteIdx = AirDefIds.indexOf("aaa");
            float spd = siteIdx >= 0 ? AirDefCfg.speedOf(siteIdx) : 0.0f;
            float life = 0.0f;
            if (spd > 0.0f && siteIdx >= 0) {
                float rangeWorld = AirDefCfg.rangeRealOf(siteIdx) * mapScale();
                float need = 1.15f * rangeWorld / spd;
                if (need > MissileTypes.lifeOf(type)) {
                    life = need;
                }
            }
            spawnEx(type, civ, m.missionID, -1, sx, sy, tx, ty, spd, life, 0.0f);
        } catch (Throwable t) {
            // 影子弹失败不许影响旧路径
        }
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
                // M3b 第一段：影子结算（只记日志，不扣血；旧路径仍是唯一结算方）
                AirDamage.noteHit(p);
                log("nAP hit t=" + p.typeIdx + (p.fused ? " fuse=1" : " fuse=0")
                        + " age=" + round2(p.ageTurns) + " n=" + dbgHit);
            } else if (r == AirProjectile.RESULT_EXPIRED) {
                dbgExpired++;
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
        AirDamage.clear();
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

    private static float round2(float v) {
        return ((int) (v * 100.0f)) / 100.0f;
    }
}
