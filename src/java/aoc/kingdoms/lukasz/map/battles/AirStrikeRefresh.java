package aoc.kingdoms.lukasz.map.battles;

/**
 * v73：空袭/对地打击后的收尾刷新（Bug 修复）。
 *
 * <p>背景：`AirMission.executeAttack` 改完省份经济/人口后**不刷新收入缓存**，
 * 导致预算面板一直显示旧值（`fProvinceIncome` / `civ.fTotalIncomePerMonth` 都是缓存，
 * 不每帧/每月全量重算）。这里提供唯一收尾入口，原版类里只加一条 invoke。
 *
 * <p>顺序：先刷省份收入，再重算省份价值（战争分），最后把国家月度总收入标脏。
 */
public class AirStrikeRefresh {

    public static void afterStrike(Object provinceObj) {
        try {
            if (!(provinceObj instanceof aoc.kingdoms.lukasz.map.province.Province)) {
                return;
            }
            aoc.kingdoms.lukasz.map.province.Province p =
                    (aoc.kingdoms.lukasz.map.province.Province) provinceObj;
            p.updateProvinceIncome();
            p.updateProvinceValue();
            int civ = p.getCivID();
            aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread gt =
                    aoc.kingdoms.lukasz.jakowski.Game.gameThread;
            if (gt != null) {
                gt.addCivUpdateTotalIncomePerMonth(civ);
            }
        } catch (Throwable ignored) {
            // 收尾刷新失败不影响战果
        }
    }
}
