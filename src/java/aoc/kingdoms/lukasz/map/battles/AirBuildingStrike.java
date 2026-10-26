package aoc.kingdoms.lukasz.map.battles;

import java.lang.reflect.Field;
import java.util.List;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceConstructedBuilding;

/**
 * S8 建筑摧毁（v90）：空军对某省的打击落地后，拆掉该省 **1 栋**建筑。
 *
 * <p>挂点：`AirMission.executeAttack` 的汇合点（`recordDamage` 之后、`attackRoundsExecuted++` 之前），
 * 只传 `this`。为什么不在两条伤害分支里挂：`ATTACK_ARMY` 一个任务会结算 4~5 轮（上限 16），
 * 分支内挂 = 一轮拆一栋。Java 侧用 `attackRoundsExecuted == 0` 去重 ⇒ **一个波次最多 1 栋**
 * （该字段入档、读档安全；AI 换目标会归零，等于新波次）。</p>
 *
 * <p>口径（用户 2026-10-26 拍板）：
 * <ol>
 *   <li>每次打击拆 1 栋（1 个实例），不做耐久累计；</li>
 *   <li>排除唯一建筑：`UniqueCapitalBuilding=true`（首都特色建筑）与 `GroupID=3`；</li>
 *   <li>v1 再排除机场（`destroyBuilding` 会注销整个 Airport 对象，在飞任务仍持有 sourceAirport，
 *       等真机验证过再放开）；</li>
 *   <li>选目标 = 价值加权 + ±20% 随机（避免每波都拆同一栋）；</li>
 *   <li>省内只剩 1 栋时不动（不把省拆空）；</li>
 *   <li>先不做爆炸/废墟表现。</li>
 * </ol>
 *
 * <p>建筑配置读法：`Building`（配置下标）与 `BuildingID`（同一条配置内的升级档）是两个维度，
 * 所以窗口是 `BuildingsManager.buildings.get(building)` 上的数组下标 `buildingID`。
 * `BuildingsManager$Buildings` 是 `$` 嵌套类，桩生成器造不出合法类名 ⇒ 这里用**反射**读它的
 * public 字段（dex 未混淆，已核对字段名）。反射失败时整批跳过（宁可这次不拆，也不许崩）。</p>
 */
public final class AirBuildingStrike {

    /** 首都特色建筑组（当前数据与 UniqueCapitalBuilding=true 的 7 条 1:1）。 */
    private static final int GROUP_CAPITAL = 3;
    /** 价值权重：CostGold + 0.10*ConstructionTime + 2*Economy + 4*IncomeProduction。 */
    private static final float W_TIME = 0.10f;
    private static final float W_ECON = 2.0f;
    private static final float W_INC = 4.0f;
    /** 随机扰动：score = value * [0.8, 1.2)。 */
    private static final float RAND_LO = 0.8f;
    private static final float RAND_SPAN = 0.4f;

    private static Field F_COST;
    private static Field F_TIME;
    private static Field F_ECON;
    private static Field F_INC;
    private static Field F_NAME;
    private static Field F_GROUP;
    private static Field F_UNIQ;
    private static boolean fieldsInit;
    private static boolean fieldsOk;

    /** 诊断计数（不写日志；真机排查时用探针读）。 */
    public static int dbgStrikes = 0;
    public static int dbgSkips = 0;
    public static int dbgLastBuilding = -1;
    public static int dbgLastLevel = -1;

    private AirBuildingStrike() {
    }

    /**
     * 空袭一波次落地时的唯一入口（挂点见类注释）。
     *
     * @param missionObj `AirMission` 本体（原版类只传 this，省对象由这里按 targetProvinceID 现取；
     *                   汇合点处的省局部变量可能是 null，不能传进来）
     */
    public static void onStrikeApplied(Object missionObj) {
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            AirMission m = (AirMission) missionObj;
            // 一波次只拆一栋：汇合点在第 1 轮时该字段还是 0
            if (m.attackRoundsExecuted != 0) {
                return;
            }
            final int pid = m.targetProvinceID;
            // Game.getProvince 只是 List.get()，没有越界检查
            if (pid < 0 || pid >= Game.getProvincesSize()) {
                return;
            }
            Province p = Game.getProvince(pid);
            if (p == null) {
                return;
            }
            if (p.getCivID() == m.civID) {
                return;   // 打到自己省（异常数据）不拆
            }
            List builtList = p.buildings;
            if (builtList == null || builtList.size() <= 1) {
                return;   // 至少给这个省留一栋
            }
            List cfg = BuildingsManager.buildings;
            if (cfg == null || cfg.isEmpty()) {
                return;
            }
            initFields(cfg.get(0));
            if (!fieldsOk) {
                return;
            }

            int bestPos = -1;
            double bestScore = -1.0;
            final int n = builtList.size();
            for (int i = 0; i < n; i++) {
                Object o = builtList.get(i);
                if (!(o instanceof ProvinceConstructedBuilding)) {
                    continue;
                }
                ProvinceConstructedBuilding cb = (ProvinceConstructedBuilding) o;
                final int b = cb.getBuilding();
                final int lv = cb.getBuildingID();
                if (!canDestroy(cfg, b, lv)) {
                    continue;
                }
                final double v = value(cfg, b, lv);
                final double score = v * (RAND_LO + RAND_SPAN * Math.random());
                if (score > bestScore) {
                    bestScore = score;
                    bestPos = i;
                }
            }
            if (bestPos < 0) {
                dbgSkips++;
                return;
            }
            Object o = builtList.get(bestPos);
            if (!(o instanceof ProvinceConstructedBuilding)) {
                return;
            }
            ProvinceConstructedBuilding target = (ProvinceConstructedBuilding) o;
            final int b = target.getBuilding();
            final int lv = target.getBuildingID();
            dbgLastBuilding = b;
            dbgLastLevel = lv;
            dbgStrikes++;
            // 拆：destroyBuilding 内部已做 Bonuses 回滚 / 建筑上限 / updateProvinceIncome / 机场注销 /
            // 雷达注册表对账（v77 AirRadarSync）/ noteProvinceBuildings
            p.destroyBuilding(b, lv);
            // 再补一次收尾（destroyBuilding 只刷省份收入，不刷省份价值与国家总收入脏标记）
            AirStrikeRefresh.afterStrike(p);
        } catch (Throwable t) {
            // 空袭结算线程不能抛
        }
    }

    /** 这一栋能不能拆：类型/档位在配置范围内、非唯一建筑、v1 再排除机场。 */
    private static boolean canDestroy(List cfg, int b, int lv) {
        try {
            if (b < 0 || b >= BuildingsManager.buildingsSize || b >= cfg.size()) {
                return false;   // ≥38 是资源建筑（BuildingsResources.json）
            }
            Object e = cfg.get(b);
            if (e == null) {
                return false;
            }
            String[] names = (String[]) F_NAME.get(e);
            if (names == null || lv < 0 || lv >= names.length) {
                return false;
            }
            if (F_UNIQ.getBoolean(e)) {
                return false;
            }
            if (F_GROUP.getInt(e) == GROUP_CAPITAL) {
                return false;
            }
            return b != BuildingsManager.AIRPORT_BUILDING_ID;
        } catch (Throwable t) {
            return false;
        }
    }

    /** 价值：金币造价 + 0.1×工期 + 2×经济 + 4×产出（缺项按 0）。 */
    private static double value(List cfg, int b, int lv) {
        try {
            Object e = cfg.get(b);
            if (e == null) {
                return 1.0;
            }
            double v = f(F_COST.get(e), lv)
                    + W_TIME * i(F_TIME.get(e), lv)
                    + W_ECON * f(F_ECON.get(e), lv)
                    + W_INC * f(F_INC.get(e), lv);
            return v > 0.0 ? v : 1.0;
        } catch (Throwable t) {
            return 1.0;
        }
    }

    private static float f(Object arr, int idx) {
        if (!(arr instanceof float[])) {
            return 0.0f;
        }
        float[] a = (float[]) arr;
        return (idx >= 0 && idx < a.length) ? a[idx] : 0.0f;
    }

    private static int i(Object arr, int idx) {
        if (!(arr instanceof int[])) {
            return 0;
        }
        int[] a = (int[]) arr;
        return (idx >= 0 && idx < a.length) ? a[idx] : 0;
    }

    /** 反射取一次 `BuildingsManager$Buildings` 的 public 字段（配置类造不出桩，只能用反射）。 */
    private static void initFields(Object cfgEntry) {
        if (fieldsInit) {
            return;
        }
        fieldsInit = true;
        try {
            Class c = cfgEntry.getClass();
            F_COST = c.getField("CostGold");
            F_TIME = c.getField("ConstructionTime");
            F_ECON = c.getField("Economy");
            F_INC = c.getField("IncomeProduction");
            F_NAME = c.getField("Name");
            F_GROUP = c.getField("GroupID");
            F_UNIQ = c.getField("UniqueCapitalBuilding");
            fieldsOk = true;
        } catch (Throwable t) {
            fieldsOk = false;
        }
    }
}
