package aoc.kingdoms.lukasz.map.battles;

/**
 * M3b 伤害接管（第一段：**影子双跑**，v126）。
 *
 * <p>口径（用户 2026-10-29「M3b 先双跑对账」）：
 * <ul>
 *   <li>新弹表（{@link AirProjectileCore}）命中时，用**原版同一条公式**算出"本该打多少"，
 *       只记日志、**不结算**；战斗结果仍由旧 {@code msFx*}/{@code adFx*} 决定；</li>
 *   <li>旧路径同时吐一行对账日志（`nDM old v=`），两边按 任务 id + 数值 对得上，
 *       下一版才把结算换过来；</li>
 *   <li>贴脸/近炸/脱靶三态：贴脸全额、近炸 ×{@link #FUSE_MUL}、脱靶与寿命到期**零伤害**。</li>
 * </ul>
 *
 * <p>公式真源（不许另起一套）：
 * <ul>
 *   <li>空空：`AirMission.msFxContact` —— Σ 发射方存活机 `airAttack` × 2.0 × `defenseMul(目标)`；</li>
 *   <li>防空：`AirDefense.adDamagePerHit` —— 常量 50（`scheduleHit` 登记、结算时才扣）。</li>
 * </ul>
 *
 * <p>本类不碰 libgdx、不碰渲染；伤害计算是纯函数，B53 离线真跑。</p>
 */
public final class AirDamage {

    /** 空空伤害系数（原版 `msFxContact`：`mul-float 2.0`）。 */
    public static final float AAM_ATK_MUL = 2.0f;
    /** 近炸折扣（丙方案：只进 fuseRadius 的那一发按 0.7 结算）。 */
    public static final float FUSE_MUL = 0.7f;
    /** 防空单发伤害（`AirDefense.adDamagePerHit` 的常量）。 */
    public static final float SAM_BASE_DMG = 50.0f;

    /** 新表算过的命中数 / 累计伤害（对账用）。 */
    public static int dbgCalc = 0;
    public static float dbgSum = 0.0f;
    /** 旧路径结算过的命中数 / 累计伤害（对账用）。 */
    public static int dbgOld = 0;
    public static float dbgOldSum = 0.0f;

    /** 日志预算：`AirDbgLog.dWrite` 每条都开关文件，只写前 N 行。 */
    private static int logBudget = 200;

    private AirDamage() {
    }

    /** 读档/新局清理（跟 AirProjectileCore.clear 一起调）。 */
    public static void clear() {
        dbgCalc = 0;
        dbgSum = 0.0f;
        dbgOld = 0;
        dbgOldSum = 0.0f;
        logBudget = 200;
    }

    // ------------------------------------------------------------------ 公式

    /**
     * 原版 {@code AirMission.defenseMul} 的逐字复刻：存活机平均 `defense` → `40/(40+avg)`；
     * 空/无效返回 1.0（原版同样回落 1.0）。
     */
    public static float defenseMul(AirMission m) {
        if (m == null) {
            return 1.0f;
        }
        java.util.List list = m.aliveAircraft;
        if (list == null || list.isEmpty()) {
            return 1.0f;
        }
        float sum = 0.0f;
        int n = 0;
        for (int i = 0; i < list.size(); i++) {
            Object o = list.get(i);
            if (o instanceof AirUnit) {
                sum += ((AirUnit) o).defense;
                n++;
            }
        }
        if (n <= 0) {
            return 1.0f;
        }
        float avg = sum / n;
        return 40.0f / (40.0f + avg);
    }

    /** 空空一发：发射方存活机 `airAttack` 之和 × 2.0 × 目标防御系数（近炸再打折）。 */
    public static float aamDamage(AirMission shooter, AirMission target, boolean fused) {
        if (shooter == null || target == null) {
            return 0.0f;
        }
        java.util.List list = shooter.aliveAircraft;
        if (list == null || list.isEmpty()) {
            return 0.0f;
        }
        float atk = 0.0f;
        for (int i = 0; i < list.size(); i++) {
            Object o = list.get(i);
            if (o instanceof AirUnit) {
                atk += ((AirUnit) o).airAttack;
            }
        }
        if (atk <= 0.0f) {
            return 0.0f;
        }
        float dmg = atk * AAM_ATK_MUL * defenseMul(target);
        return fused ? dmg * FUSE_MUL : dmg;
    }

    /** 防空一发：阵地伤害是常量（近炸打折）。 */
    public static float samDamage(boolean fused) {
        return fused ? SAM_BASE_DMG * FUSE_MUL : SAM_BASE_DMG;
    }

    // ------------------------------------------------------------------ 对账

    /**
     * 新表命中事件的**影子结算**：算出来、记日志、累加统计，**不扣血**。
     * 只在 {@link AirProjectileCore#stepAll} 的 RESULT_HIT 分支调用。
     */
    public static void noteHit(AirProjectile p) {
        if (p == null) {
            return;
        }
        try {
            int aam = MissileTypeIds.indexOf("AAM");
            int sam = MissileTypeIds.indexOf("SAM");
            if (p.typeIdx == aam) {
                AirMission shooter = missionById(p.shooterMissionID);
                AirMission target = missionById(p.targetMissionID);
                if (shooter == null || target == null) {
                    log("nDM calc skip ty=AAM s=" + p.shooterMissionID + " tgt=" + p.targetMissionID);
                    return;
                }
                float dmg = aamDamage(shooter, target, p.fused);
                dbgCalc++;
                dbgSum += dmg;
                log("nDM calc ty=AAM s=" + p.shooterMissionID + " tgt=" + p.targetMissionID
                        + (p.fused ? " fuse=1" : " fuse=0")
                        + " v=" + (int) (dmg + 0.5f) + " n=" + dbgCalc);
            } else if (p.typeIdx == sam) {
                float dmg = samDamage(p.fused);
                dbgCalc++;
                dbgSum += dmg;
                log("nDM calc ty=SAM tgt=" + p.targetMissionID
                        + (p.fused ? " fuse=1" : " fuse=0")
                        + " v=" + (int) (dmg + 0.5f) + " n=" + dbgCalc);
            }
        } catch (Throwable t) {
            // 影子计算失败绝不影响旧路径
        }
    }

    /** 旧路径结算探针（由 `AirMission.msFxContact` / `AirDefense.applyMdDamage` 各插一条 invoke）。 */
    public static void old(float v) {
        try {
            dbgOld++;
            dbgOldSum += v;
            log("nDM old v=" + (int) (v + 0.5f) + " n=" + dbgOld);
        } catch (Throwable ignored) {
        }
    }

    // ------------------------------------------------------------------ 内部

    /** 按 missionID 找在飞任务（旧路径同样遍历 `activeMissions`）。 */
    private static AirMission missionById(long id) {
        if (id == 0L) {
            return null;
        }
        try {
            AirForceManager fm = AirForceManager.getInstance();
            if (fm == null || fm.activeMissions == null) {
                return null;
            }
            for (int i = 0; i < fm.activeMissions.size(); i++) {
                Object o = fm.activeMissions.get(i);
                if (o instanceof AirMission && ((AirMission) o).missionID == id) {
                    return (AirMission) o;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
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
}
