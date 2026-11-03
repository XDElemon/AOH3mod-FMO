package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.province.Province;

/**
 * v153：陆军表里删掉空军编制类型（7–10）之后的读档清洗。
 *
 * <p>背景：旧空军系统把飞机做成陆军编制类型（`Units.json` 的 ID 7–10，指向
 * `AirInterceptor/Fighter/Bomber/Attacker.json`），征兵列表里能看到、能征出来。
 * v153 起这些类型从游戏包里删除，但旧存档还留着两类引用：
 * <ul>
 *   <li>`Civilization.unlockedUnits` 里 unitID=7..10 的解锁记录 —— 原版
 *       `Civilization` 的一些方法会拿它去 `lUnitsTypes.get(unitID)`，类型没了就是越界；</li>
 *   <li>省军队列表里"用空军编制组出来的陆军编队"（regiment.uID 7..10）——
 *       原版 `ArmyDivision` 同理会按 uID 查表，越界。</li>
 * </ul>
 *
 * <p>所以读档收尾清一遍：解锁记录直接摘掉；含空军编制的编队用 `Province.removeArmy`
 * 摘掉（它同步文明位置缓存/布局）。正常对局里这些编队本来就是无效残留，删掉不心疼；
 * 混合编队（理论上不会出现）也一并删，宁可少一支部队也不能读档崩。</p>
 *
 * <p>纯 Java + 反射（`unlockedUnits` 是 private、`TechnologyTree$Unit` 在桩里是 Object），
 * 由 `LoadSavedGameManager.loadSave_Airforce` 在 `AirDivStore.sweepGhosts` 之后调用。</p>
 */
public final class AirUnitsCleaner {

    private static final int AIR_ID_MIN = 7;
    private static final int AIR_ID_MAX = 10;

    private AirUnitsCleaner() {
    }

    /** 读档清洗入口；返回清掉的条数（诊断用）。 */
    public static int sanitize() {
        int n = purgeUnlockedUnits() + purgeAirArmies();
        if (n > 0) {
            try {
                AirDbgLog.dWrite("nAU clean n=" + n);
            } catch (Throwable ignored) {
            }
        }
        return n;
    }

    /** 摘掉各文明里 unitID 7..10 的解锁记录（否则原版 UI 查 lUnitsTypes 会越界）。 */
    private static int purgeUnlockedUnits() {
        int n = 0;
        try {
            java.util.List civs = Game.lCivs;
            if (civs == null) {
                return 0;
            }
            for (int i = 0; i < civs.size(); i++) {
                Object civ = civs.get(i);
                if (civ == null) {
                    continue;
                }
                java.util.List list = unlockedUnitsOf(civ);
                if (list == null) {
                    continue;
                }
                for (int j = list.size() - 1; j >= 0; j--) {
                    int uid = unitIdOf(list.get(j));
                    if (uid >= AIR_ID_MIN && uid <= AIR_ID_MAX) {
                        list.remove(j);
                        n++;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return n;
    }

    private static java.util.List unlockedUnitsOf(Object civ) {
        try {
            java.lang.reflect.Field f = civ.getClass().getDeclaredField("unlockedUnits");
            f.setAccessible(true);
            Object v = f.get(civ);
            return v instanceof java.util.List ? (java.util.List) v : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int unitIdOf(Object unit) {
        if (unit == null) {
            return -1;
        }
        try {
            java.lang.reflect.Field f = unit.getClass().getField("unitID");
            Object v = f.get(unit);
            return v instanceof Integer ? ((Integer) v).intValue() : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** 摘掉省列表里含空军编制（uID 7..10）的编队（旧档残留）。 */
    private static int purgeAirArmies() {
        int n = 0;
        try {
            java.util.List provs = Game.lProvinces;
            if (provs == null) {
                return 0;
            }
            for (int pi = 0; pi < provs.size(); pi++) {
                Object o = provs.get(pi);
                if (!(o instanceof Province)) {
                    continue;
                }
                Province p = (Province) o;
                for (int i = p.getArmySize() - 1; i >= 0; i--) {
                    if (hasAirRegiment(p.getArmy(i))) {
                        p.removeArmy(i);
                        n++;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return n;
    }

    private static boolean hasAirRegiment(ArmyDivision d) {
        if (d == null || d.lArmyRegiment == null) {
            return false;
        }
        for (int i = 0; i < d.lArmyRegiment.size(); i++) {
            Object o = d.lArmyRegiment.get(i);
            if (o instanceof ArmyRegiment) {
                int uid = ((ArmyRegiment) o).uID;
                if (uid >= AIR_ID_MIN && uid <= AIR_ID_MAX) {
                    return true;
                }
            }
        }
        return false;
    }
}
