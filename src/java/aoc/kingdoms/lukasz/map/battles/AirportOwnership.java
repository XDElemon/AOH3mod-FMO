package aoc.kingdoms.lukasz.map.battles;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * 机场归属联动：省份易主时，省上的机场与机场库存里的飞机一起易主。
 *
 * 这是用户报的 bug：和平会谈分完领土后，被吞并领土里的对方机场仍归对方 ——
 * 因为 allAirports 是 Map<文明, List<机场>>，机场只在"建它那个文明"的列表里，
 * 省份 civID 变了之后没有任何一处把它搬过去。
 *
 * 语义取「丙 = 缴获」：机场连同库存飞机一起归新主（用户的决定；
 * 等库存功能上线后再改「甲 = 飞机撤走」）。
 */
public class AirportOwnership {

    /**
     * Province.setCivID / setCivID_RemoveOldAddNewToCiv 的收尾钩子；幂等，可重复调用。
     * 任何异常都在这里吞掉并记日志 —— 机场联动绝不允许把领土变更整个搞崩。
     */
    public static void onProvinceOwnerChanged(int provinceID, int newCivID) {
        try {
            transfer(provinceID, newCivID);
        } catch (Throwable t) {
            AirDbgLog.dWrite("aptXfer fail " + provinceID);
        }
    }

    private static void transfer(int provinceID, int newCivID) {
        if (provinceID < 0 || newCivID <= 0) {
            return;
        }
        AirForceManager manager = AirForceManager.getInstance();
        if (manager == null || manager.allAirports == null) {
            return;
        }
        Map all = manager.allAirports;

        // 1) 这个省上的机场，可能挂在任何文明名下
        Airport found = null;
        Object oldKey = null;
        Iterator keys = all.keySet().iterator();
        while (keys.hasNext()) {
            Object key = keys.next();
            Object v = all.get(key);
            if (!(v instanceof List)) {
                continue;
            }
            List list = (List) v;
            for (int i = 0; i < list.size(); i++) {
                Object o = list.get(i);
                if (o instanceof Airport && ((Airport) o).provinceID == provinceID) {
                    found = (Airport) o;
                    oldKey = key;
                    break;
                }
            }
            if (found != null) {
                break;
            }
        }
        if (found == null) {
            return;
        }
        if (found.civID == newCivID) {
            return;                      // 已经是新主的，别重复搬
        }

        // 2) 从旧主名下摘掉
        Object oldListObj = all.get(oldKey);
        if (oldListObj instanceof List) {
            ((List) oldListObj).remove(found);
        }

        // 3) 挂到新主名下
        Integer key = Integer.valueOf(newCivID);
        Object listObj = all.get(key);
        List target;
        if (listObj instanceof List) {
            target = (List) listObj;
        } else {
            target = new ArrayList();
            all.put(key, target);
        }
        target.add(found);
        found.civID = newCivID;

        // 4) 库存里的飞机一起易主（丙）：Map<机型, List<飞机>>
        if (found.aircraft != null) {
            Iterator groups = found.aircraft.values().iterator();
            while (groups.hasNext()) {
                Object g = groups.next();
                if (!(g instanceof List)) {
                    continue;
                }
                List units = (List) g;
                for (int i = 0; i < units.size(); i++) {
                    Object u = units.get(i);
                    if (u instanceof AirUnit) {
                        ((AirUnit) u).civID = newCivID;
                    }
                }
            }
        }
    }
}
