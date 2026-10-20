package aoc.kingdoms.lukasz.map.battles;

/**
 * 空军图标（地图贴图 / 面板图标）的唯一入口：机型下标 → 图片编号。
 *
 * 契约（与机型表 data/aircraft_models.json 一致）：
 *   aid     = (gen-3)*16 + country*4 + typeAxis
 *   country = CN0 / EU1 / RU2 / US3
 *   typeAxis= 战斗机0 / 截击机1 / 攻击机2 / 轰炸机3
 *
 * 两条必须记住的事：
 *  1. **不要用 70+aid 当图片编号**。70+aid 只是机型表 packed 字段里的低字节编码
 *     （给 genOf 用），运行期的图片编号是 ImageManager.addImage 的返回值
 *     （= 图片列表下标），两者差着几百。真正的字段级映射是 pickAirImage。
 *  2. 图片只有一张来源：pickAirImage(代, 国家组, 类型轴)，它是 64 个
 *     Images.airG* 字段的唯一开关。以前有三条互相独立的"重算"路径
 *     （编制行 ImageID → 代 → pickAirImage），任何一处把行号/类型轴算错，
 *     就出现"名字对、图不对"（造 SU27 出 J20 图、地图上 J11 画成 J36）。
 */
public final class AirSprite {

    /** 机型槽位上限（4 国 × 4 类 × 4 代 = 64 槽，aid 0..63） */
    public static final int AID_MAX = 63;

    private AirSprite() {
    }

    /**
     * aid → (代, 国家组, 类型轴) 的打包值，便于一次返回三个数。
     * 打包格式：代<<8 | 组<<4 | 轴；越界返回 -1。
     */
    public static int packOf(int aid) {
        if (aid < 0 || aid > AID_MAX) {
            return -1;
        }
        return (((aid >> 4) + 3) << 8) | (((aid >> 2) & 3) << 4) | (aid & 3);
    }

    /** 机型下标 → 图片编号；越界返回 -1（调用方见到 -1 才走兜底） */
    public static int imageOf(int aid) {
        int p = packOf(aid);
        if (p < 0) {
            return -1;
        }
        return AirForceManager.pickAirImage((p >> 8) & 0xF, (p >> 4) & 0xF, p & 0xF);
    }

    /**
     * 编制行（Units.json 里 unitID 7..10 + armyID 行号）→ 机型下标。
     *
     * 编制表一行 = (gen-3)*4 + 国家组，即 armyID；aid = armyID*4 + 类型轴。
     * 单位表顺序 截击机7 / 战斗机8 / 轰炸机9 / 攻击机10，
     * 机型类型轴 战斗0 / 截击1 / 攻击2 / 轰炸3 ⇒ 类型轴 = (unitID-7) ^ 1。
     */
    public static int aidOfRow(int unitID, int armyID) {
        if (unitID < 7 || unitID > 10 || armyID < 0 || armyID > 15) {
            return -1;
        }
        return armyID * 4 + ((unitID - 7) ^ 1);
    }

    /** 编制行 → 图片（地图按编队记录画图走这条，不再经手 Data_Army.ImageID/代） */
    public static int imageOfRow(int unitID, int armyID) {
        return imageOf(aidOfRow(unitID, armyID));
    }

    /** 没有具体飞机时的兜底（空闲机场 / 面板图标 / 老存档）：该国该类型当前最优机型 */
    public static int imageForCiv(int civID, int typeAxis) {
        if (typeAxis < 0 || typeAxis > 3) {
            return -1;
        }
        int aid = AirModelPick.best(civID, AirForceManager.artGroupOf(civID), typeAxis);
        return imageOf(aid);
    }

    /** 同上，但入参是游戏枚举 AirType.ordinal()（截击0/战斗1/轰炸2/攻击3 ⇒ 类型轴 = ord ^ 1） */
    public static int imageForTypeOrdinal(int civID, int ordinal) {
        if (ordinal < 0 || ordinal > 3) {
            return -1;
        }
        return imageForCiv(civID, ordinal ^ 1);
    }
}
