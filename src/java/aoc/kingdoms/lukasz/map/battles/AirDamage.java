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

    /** 近炸折扣（丙方案：只进 fuseRadius 的那一发按 0.7 结算）。 */
    public static final float FUSE_MUL = 0.7f;
    /** 防空单发伤害（`AirDefense.adDamagePerHit` 的常量）——v128 起只作对账参考。 */
    public static final float SAM_BASE_DMG = 50.0f;
    /** v128 用户口径：防空命中扣**目标机最大血量**的百分比（对六代机同样有效）。 */
    public static final float SAM_PCT = 0.50f;
    /** v128 斩杀线：命中那一刻目标血 **≤ maxHp 的 60%** ⇒ 一发带走（补刀，不再磨）。 */
    public static final float SAM_EXEC = 0.60f;

    // ---------------- 空空百分比口径（v141，用户 2026-10-31 选 D 并要求"更疼 + 更强代差"）
    /**
     * 伤害基准：`pct = BASE × share^EXP`。
     * 标定目标：**同型 1.1 发**（旧公式实测约 1.3 架/发，这一版只强不软）、下代 6 发。
     * 想整体更软就降 BASE（1.8 ⇒ 同型 1.5 发）；想更硬就升（4.0 ⇒ 同型 1.0 发封顶）。
     */
    public static final float AAM_PCT_BASE = 3.30f;
    /** 攻防比指数：>1 放大代差压制。2.6 ⇒ J20→J11 一发、J11→J20 约 6 发（代差 6 倍）。 */
    public static final float AAM_PCT_EXP = 2.60f;
    /** 下限：跨代再悬殊也留一点伤害（否则三代的弹永远打不穿六代 = 数值上的"不可战胜"）。 */
    public static final float AAM_PCT_MIN = 0.08f;
    /** 上限：一发最多扣满一架的血（溢出由 `applyAirDamage` 的池倾泻继续吃下一架）。 */
    public static final float AAM_PCT_MAX = 1.00f;

    /** 新表算过的命中数 / 累计伤害（对账用）。 */
    public static int dbgCalc = 0;
    public static float dbgSum = 0.0f;
    /** 旧路径结算过的命中数 / 累计伤害（对账用）。 */
    public static int dbgOld = 0;
    public static float dbgOldSum = 0.0f;
    /** v128：防空真实结算次数 / 累计伤害（百分比制）。 */
    public static int dbgSam = 0;
    public static float dbgSamSum = 0.0f;

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
        dbgSam = 0;
        dbgSamSum = 0.0f;
        logBudget = 200;
    }

    // ------------------------------------------------------------------ 公式

    // ---------------------------------------------------------------- 空空（v141 口径）

    /** 两参重载：旧路径 `msFxContact` 直接命中，没有近炸折扣。 */
    public static float aamDamage(AirMission shooter, AirMission target) {
        return aamDamage(shooter, target, false);
    }

    /**
     * 空空一发：**百分比 + 攻防比**（v141 用户口径，2026-10-31 拍板"选 D"）。
     *
     * <pre>
     *   share = avg(发射方 airAttack) / (avg(发射方 airAttack) + avg(目标 defense))
     *   pct   = clamp(BASE × share^EXP, MIN, MAX)
     *   dmg   = avg(目标 maxHp) × pct        （近炸再 × 0.7）
     * </pre>
     *
     * <p>为什么不再用旧公式（Σ存活机 airAttack × 2.0 × defenseMul）：
     * <ul>
     *   <li>旧公式按**整编队**求和 ⇒ 编队人越多弹越疼（4 机编队是单机的 4 倍），物理上说不通；</li>
     *   <li>`defenseMul` 用常数 40（`40/(40+def)`），而数值表里五代/六代 def 已到 300–1350
     *       ⇒ 伤害被压到接近零，同一公式在三代和六代行为完全相反；</li>
     *   <li>实测：J20 打 J11 一发折合 23 架，六代互射一发只有 0.45 架。</li>
     * </ul>
     *
     * <p>新公式的实测口径（64 架全表，`tools/gates/gate_air_damage.py` 有断言）：
     * 同型对战 **2 发**一架（旧 4 发左右）、上代压下一代 **1 发**、下代打上代 **6.4 发**（代差 6.4 倍）。
     *
     * <p>调参只动下面四个常量，别在调用点另起一套。
     */
    public static float aamDamage(AirMission shooter, AirMission target, boolean fused) {
        if (shooter == null || target == null) {
            return 0.0f;
        }
        float atk = avgAirAttack(shooter);
        float def = avgDefense(target);
        float hp = avgMaxHp(target);
        // 防御可以为 0（无甲目标 / 测试桩）：此时攻防比 = 1，不能当"非法输入"返回 0。
        if (atk <= 0.0f || hp <= 0.0f || atk + def <= 0.0f) {
            return 0.0f;
        }
        float share = atk / (atk + def);
        float pct = AAM_PCT_BASE * (float) Math.pow(share, AAM_PCT_EXP);
        if (pct < AAM_PCT_MIN) {
            pct = AAM_PCT_MIN;
        }
        if (pct > AAM_PCT_MAX) {
            pct = AAM_PCT_MAX;
        }
        float dmg = hp * pct;
        return fused ? dmg * FUSE_MUL : dmg;
    }

    /** 存活机平均 `airAttack`（单机口径：一发弹只算一个战斗部，不按编队规模膨胀）。 */
    public static float avgAirAttack(AirMission m) {
        float sum = 0.0f;
        int n = 0;
        if (m != null && m.aliveAircraft != null) {
            java.util.List list = m.aliveAircraft;
            for (int i = 0; i < list.size(); i++) {
                Object o = list.get(i);
                if (o instanceof AirUnit) {
                    sum += ((AirUnit) o).airAttack;
                    n++;
                }
            }
        }
        return n > 0 ? sum / n : 0.0f;
    }

    /** 存活机平均 `defense`。 */
    public static float avgDefense(AirMission m) {
        float sum = 0.0f;
        int n = 0;
        if (m != null && m.aliveAircraft != null) {
            java.util.List list = m.aliveAircraft;
            for (int i = 0; i < list.size(); i++) {
                Object o = list.get(i);
                if (o instanceof AirUnit) {
                    sum += ((AirUnit) o).defense;
                    n++;
                }
            }
        }
        return n > 0 ? sum / n : 0.0f;
    }

    /** 存活机平均 `maxHp`（百分比伤害的分母）。 */
    public static float avgMaxHp(AirMission m) {
        float sum = 0.0f;
        int n = 0;
        if (m != null && m.aliveAircraft != null) {
            java.util.List list = m.aliveAircraft;
            for (int i = 0; i < list.size(); i++) {
                Object o = list.get(i);
                if (o instanceof AirUnit) {
                    AirUnit u = (AirUnit) o;
                    sum += u.maxHp > 0.0f ? u.maxHp : 100.0f;
                    n++;
                }
            }
        }
        return n > 0 ? sum / n : 0.0f;
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

    /**
     * v128 命中分发：**防空弹走真实结算**（百分比 + 斩杀线），空空弹仍是影子对账。
     * 由 {@link AirProjectileCore#stepAll} 的 RESULT_HIT 分支调用一次。
     */
    public static void onHit(AirProjectile p) {
        if (p == null) {
            return;
        }
        try {
            int sam = MissileTypeIds.indexOf("SAM");
            if (p.typeIdx == sam) {
                samHit(p);
            } else {
                noteHit(p);
            }
        } catch (Throwable t) {
            log("nDM ERR " + t);
        }
    }

    /** 防空弹命中：按目标机最大血量的百分比结算，低于斩杀线直接击毁。 */
    public static void samHit(AirProjectile p) {
        AirMission target = missionById(p.targetMissionID);
        if (target == null) {
            log("nDM sam skip tgt=" + p.targetMissionID);
            return;
        }
        float dealt = samStrike(target, SAM_PCT, SAM_EXEC);
        dbgSam++;
        dbgSamSum += dealt;
        log("nDM sam tgt=" + p.targetMissionID + " v=" + (int) (dealt + 0.5f) + " n=" + dbgSam);
    }

    /**
     * 防空百分比结算（真实扣血；唯一扣血入口，B55 离线真跑）：
     * 取第一架存活机 → 低于斩杀线直接归零，否则扣 {@code maxHp × pct}；
     * 归零后按原版口径 {@code recordLoss} + {@code recalcPool}。
     *
     * @return 实际造成的伤害（斩杀时 = 该机剩余血）
     */
    public static float samStrike(AirMission target, float pct, float execPct) {
        if (target == null) {
            return 0.0f;
        }
        java.util.List list = target.aliveAircraft;
        if (list == null || list.isEmpty()) {
            return 0.0f;
        }
        AirUnit u = null;
        for (int i = 0; i < list.size(); i++) {
            Object o = list.get(i);
            if (o instanceof AirUnit && ((AirUnit) o).hp > 0.0f) {
                u = (AirUnit) o;
                break;
            }
        }
        if (u == null) {
            return 0.0f;
        }
        float maxHp = u.maxHp > 0.0f ? u.maxHp : 100.0f;
        float before = u.hp;
        // 注意浮点：0.6f 不是精确值，边界用 <= + 容差，语义定为「≤ 斩杀线也算斩杀」
        boolean exec = before <= maxHp * execPct + 0.001f;
        if (exec) {
            u.hp = 0.0f;
        } else {
            u.hp = before - maxHp * pct;
            if (u.hp < 0.0f) {
                u.hp = 0.0f;
            }
        }
        if (u.hp <= 0.0f) {
            u.hp = 0.0f;
            try {
                target.recordLoss(u);
            } catch (Throwable ignored) {
            }
            try {
                target.recalcPool();
            } catch (Throwable ignored) {
            }
            log("nDM ex tgt=" + target.missionID + " max=" + (int) maxHp + " was=" + (int) before);
        }
        return before - u.hp;
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
