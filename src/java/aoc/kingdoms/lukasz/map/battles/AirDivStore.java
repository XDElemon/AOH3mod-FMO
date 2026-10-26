package aoc.kingdoms.lukasz.map.battles;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.province.Province;

/**
 * M1c（v96）空军编队注册表 —— 空军彻底脱离陆军的第一块地基。
 *
 * <p><b>为什么要有这个类</b>：M1c 之前，空中编队是 `ArmyDivision`，靠
 * `Province.addArmy` 塞进省军队列表，于是"图标画在省槽位、点选靠省槽位几何、
 * AI 靠省里有没有这个 key 判断能不能起飞、出击架数靠省里编队的团数"。
 * 编队一旦不再入省，这四件事都会断，所以先把"编队对象"搬到一个独立的表里，
 * 让上层的查询有一个不依赖省军队列表的真相来源。</p>
 *
 * <p><b>怎么接入</b>：`Province.addArmy` 的 airhq_ 分支直接调用 {@link #put}
 * 并 return（不进 `lArmies`）。这样 `syncAirModelDivisions` / `dedupAirhqDivision` /
 * `placeAirDivision` / `returnAirDivisionHome` 等所有原版 addArmy 入口**一次性**全部改道，
 * 不需要逐个改调用点，也就不会漏。</p>
 *
 * <p><b>回退</b>：没有"关掉注册表就回到进省"的开关（入口已经改道，关掉只会让编队凭空消失）；
 * 要回退请直接装回 v95。</p>
 *
 * <p><b>生命周期</b>：编队对象由 `syncAirModelDivisions` 按机场停场飞机重建（每回合/读档收尾），
 * 与修改前一致；只是重建后先进这里、不进省。任务起飞时 `pickupAirDivision` 从这里取，
 * 落地时 `returnAirDivisionHome` 再 put 回来。M1c 仍是过渡态：M2 弹药实体化、M6 生产循环
 * 会把这里换成正式的 "AirGroup" 表。</p>
 *
 * <p><b>存档</b>：不落盘。旧存档里的 airhq 编队本来就被 `Province.addArmy_Load` 的反向判据
 * 丢掉（见 2026-10-27 调研），读档后由 sync 重建，所以这里没有迁移逻辑。</p>
 */
public final class AirDivStore {

    /** key -> 编队对象。LinkedHashMap 保证绘制顺序稳定（避免图标每帧跳动）。 */
    private static final Map<String, ArmyDivision> DIVS = new LinkedHashMap<String, ArmyDivision>();
    /** key -> 所属省（停机展示用；任务在飞时该值可能过期，绘制以 AirPos 为准）。 */
    private static final Map<String, Integer> PROV = new LinkedHashMap<String, Integer>();
    /** 稳定遍历顺序（put 时追加、remove 时摘除），供每帧绘制用，避免分配临时集合。 */
    private static final List<String> ORDER = new ArrayList<String>();

    /** 诊断计数（不写日志）。 */
    public static int dbgPuts = 0;
    public static int dbgRemoves = 0;
    public static int dbgSweeps = 0;

    private AirDivStore() {
    }

    /**
     * 登记一个空军编队（替代原来的 `province.addArmy`）。
     *
     * @return 编队 key（`Province.addArmy` 的返回值语义就是这个 String，原版调用方全部丢弃）
     */
    public static String put(Province p, ArmyDivision d) {
        if (d == null) {
            return null;
        }
        String key = d.key;
        if (key == null) {
            return key;
        }
        if (!DIVS.containsKey(key)) {
            ORDER.add(key);
        }
        DIVS.put(key, d);
        PROV.put(key, Integer.valueOf(p != null ? p.iProvinceID : d.provinceID));
        dbgPuts++;
        return key;
    }

    /** 按 key 取编队（替代 `province.getArmy(key)`）。p 只为保持调用点签名兼容，可传 null。 */
    public static ArmyDivision getArmy(Province p, String key) {
        return key == null ? null : DIVS.get(key);
    }

    /** 替代 `province.getArmyKeyID(key)`：存在返回 0，不存在返回 -1（原版只判 `if-ltz`）。 */
    public static int keyId(Province p, String key) {
        return (key != null && DIVS.containsKey(key)) ? 0 : -1;
    }

    /** 摘除（sync 清理多余槽位时用）。 */
    public static void removeArmy(Province p, String key) {
        if (key == null) {
            return;
        }
        if (DIVS.remove(key) != null) {
            ORDER.remove(key);
            PROV.remove(key);
            dbgRemoves++;
        }
    }

    /** 不带省参数的取法（渲染 / 选中等只有 key 的场景）。 */
    public static ArmyDivision byKey(String key) {
        return key == null ? null : DIVS.get(key);
    }

    /** 停机编队所在省；未知返回 -1。 */
    public static int provOf(String key) {
        if (key == null) {
            return -1;
        }
        Integer v = PROV.get(key);
        return v == null ? -1 : v.intValue();
    }

    /** 当前登记数量。 */
    public static int size() {
        return DIVS.size();
    }

    /** 第 i 个 key（0..{@link #size()}-1）；越界返回 null。 */
    public static String keyAt(int i) {
        if (i < 0 || i >= ORDER.size()) {
            return null;
        }
        return ORDER.get(i);
    }


    /**
     * 旧存档清洗：把省军队列表里残留的 `airhq_` 编队**显式**摘掉。
     *
     * <p>为什么需要：旧档的省存档（`Provinces_Armies_*.json`）里仍写着 airhq 编队。
     * 当前原版 `Province.addArmy_Load` 的判据是反的（不存在就丢），所以它们**目前**不会进列表；
     * 但那是 bug 兜住的，一旦有人"修好"那个判据，旧档幽灵就会全部回到省列表。
     * 所以读档收尾显式扫一遍，用 `Province.removeArmy(i)`（它会同步文明位置缓存 / 布局），
     * 不要直接动 `lArmies`。</p>
     *
     * @return 清掉的条数（诊断用）
     */
    public static int sweepGhosts() {
        int n = 0;
        try {
            List provinces = Game.lProvinces;
            if (provinces == null) {
                return 0;
            }
            for (int pi = 0; pi < provinces.size(); pi++) {
                Province prov = (Province) provinces.get(pi);
                if (prov == null) {
                    continue;
                }
                for (int i = prov.getArmySize() - 1; i >= 0; i--) {
                    ArmyDivision d = prov.getArmy(i);
                    if (d == null || d.key == null) {
                        continue;
                    }
                    if (!d.key.startsWith("airhq_")) {
                        continue;
                    }
                    prov.removeArmy(i);
                    n++;
                }
            }
        } catch (Throwable t) {
            // 清洗失败不许挡住读档
        }
        dbgSweeps += n;
        return n;
    }

    /** 清空（读档时调用，避免同进程旧 missionID 的记录残留）。 */
    public static void clear() {
        DIVS.clear();
        PROV.clear();
        ORDER.clear();
    }
}
