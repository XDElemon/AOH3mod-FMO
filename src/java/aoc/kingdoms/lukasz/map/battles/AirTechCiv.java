package aoc.kingdoms.lukasz.map.battles;

/**
 * 空军科技的国家组归属 —— 科技页签「只显示本国节点」的唯一判据。
 *
 * 本文件由 tools/gen_air_tech_civ.py 生成，勿手改。
 * 改机型表（data/aircraft_models.json）后重跑生成器。
 *
 * 为什么需要它：科技 ID 99..148 一条科技 = 一个机型，机型属于某一国家组
 * （CN0/EU1/RU2/US3）。面板原来只按页签过滤，四国节点全挤在 air 页签里，
 * 于是玩家能看到并研究别国机型（中国玩家点得到美国 B-21）。
 * 共用机型存位掩码：F-35 同时属于 US 与 EU，两国玩家都要能研究它。
 *
 * 归属对照（机型名 → 国家组）：
 *   J11      CN     J8       CN     Q5       CN
 *   H6       CN     EF2000   EU     JAS39    EU
 *   HARRIER  EU     TORNADO  EU     SU27     RU
 *   MIG31    RU     SU25     RU     TU160    RU
 *   F14      US     A10      US     B1       US
 *   J20      CN     J10      CN     H7       CN
 *   RAFALE   EU     MIRAGE2K EU     MIRAGE4  EU
 *   SU57     RU     SU30     RU     SU34     RU
 *   TU22M    RU     F22      US     F35      EU+US
 *   B2       US     J20B     CN     J35      CN
 *   H20      CN     FCAS     EU     SU75     RU
 *   MIG41    RU     TU170    RU     F35A     US
 *   X32      US     B21      US     J36      CN
 *   J50      CN     H29      CN     TEMPEST  EU
 *   ASFX     EU     X02S     RU     PAKDP    RU
 *   TU202    RU     F47      US     CFA44    US
 *   FAXX     US     B3       US
 */
public final class AirTechCiv {

    /** 空军科技起始 ID（与 tools/gen_air_techs.py 的 BASE_ID 一致） */
    public static final int AIR_BASE = 99;

    /** 下标 = techID - AIR_BASE；值 = 国家组位掩码（bit0=CN bit1=EU bit2=RU bit3=US） */
    private static final int[] MASK = {
            1, 1, 1, 1, 2, 2, 2, 2,
            4, 4, 4, 4, 8, 8, 8, 1,
            1, 1, 2, 2, 2, 4, 4, 4,
            4, 8, 10, 8, 1, 1, 1, 2,
            4, 4, 4, 8, 8, 8, 1, 1,
            1, 2, 2, 4, 4, 4, 8, 8,
            8, 8,
    };

    private AirTechCiv() {
    }

    /** 空军科技 → 国家组位掩码；不是空军科技返回 0 */
    public static int maskOf(int techID) {
        int i = techID - AIR_BASE;
        if (i < 0 || i >= MASK.length) {
            return 0;
        }
        return MASK[i];
    }

    /**
     * 只按国家组判定（纯函数，行为闸门直接跑它）。
     *
     * 非空军科技一律放行：原来的 B3b 门禁把 32..74 号**通用陆地科技**
     * （TradeCenter/ArmoryWorkshop/…/MediumTank）按 ID 段硬分给四个国家，
     * 等于每个国家只能研究其中四分之一 —— 那段逻辑随本次改动一起废除。
     *
     * 注意：这里故意把查表写在本方法内、不转调 maskOf。行为闸门是"只跑入口方法体"
     * 的微型解释器，不跟进嵌套调用；拆成两层会让这条最该被执行的判定反而测不到。
     */
    public static boolean allowedGroup(int techID, int group) {
        int i = techID - AIR_BASE;
        if (i < 0 || i >= MASK.length) {
            return true;
        }
        return (MASK[i] & (1 << group)) != 0;
    }

    /** 游戏侧入口：用文明自己的国家组判定 */
    public static boolean allowed(int techID, int civID) {
        return allowedGroup(techID, AirForceManager.artGroupOf(civID));
    }
}
