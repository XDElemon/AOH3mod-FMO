package aoc.kingdoms.lukasz.map.battles;

import java.util.List;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.map.MapScale;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.army.ArmyRegiment;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;

/**
 * M1c（v96）空军图标/命中的**位置计算**（纯逻辑，不碰 libgdx）。
 *
 * <p>M1c 之前飞机图标是在"逐省画军队"的循环里画的（`drawProvinceArmyWithFlag` 看到
 * `airhq_` 前缀 → `drawAirDivisionAsPlane`）。编队不再进省以后那条路不会发生，
 * 所以这里每帧准备一份"要画的任务/停机编队 + 屏幕坐标"，由 smali 桥
 * `map/province/AirUx` 逐个调回 `drawAirDivisionAsPlane`（它内部还会用
 * `AirPos.fixX/fixY` 覆盖成连续坐标）。</p>
 *
 * <p><b>为什么坐标在这里算、绘制在 smali</b>：`drawAirDivisionAsPlane` 的形参是
 * `SpriteBatch`，Java 侧的桩会把它退化成 `Object`，直接调用会得到错误的 descriptor
 * （真机 NoSuchMethodError）。所以 Java 只算 `int x/y + key`，smali 负责把
 * `SpriteBatch` 原样传进去。</p>
 *
 * <p><b>两类图标</b>：
 * <ol>
 *   <li>在飞任务（`airDivisionAtProvinceID >= 0`）：坐标以 `AirPos` 为准，拿不到就用当前省中心，
 *       与 v93/v95 的绘制口径一致；</li>
 *   <li>停机编队（注册表里有、没有在飞任务）：停在机场省，按组序号做小偏移，避免全部叠在省中心。</li>
 * </ol></p>
 */
public final class AirIcons {

    /** 单帧最多画的图标数（够用，防越界）。 */
    public static final int CAP = 512;

    /** 本帧数量（`prepare()` 写，smali 循环读）。 */
    public static int cnt = 0;
    public static final int[] X = new int[CAP];
    public static final int[] Y = new int[CAP];
    public static final String[] KEY = new String[CAP];

    /** 点选结果（`pick()` 写，smali 桥读）。 */
    public static String pickKey = null;
    public static int pickProv = -1;
    public static int pickCiv = 0;
    /** 该任务的机场省（`handleProvinceClick` 依赖 selectedAirportProvinceID 下单）。 */
    public static int pickSrc = -1;

    /** 命中半径（屏幕像素，未乘 scale 的基准值）。 */
    private static final int HIT_R = 45;

    private AirIcons() {
    }

    /** 每帧调用一次：填 X/Y/KEY，返回数量。异常一律吞掉（绘制路径不许崩帧）。 */
    public static int prepare() {
        cnt = 0;
        try {
            AirForceManager mgr = AirForceManager.getInstance();
            if (mgr == null) {
                return 0;
            }
            MapScale ms = Game.mapScale;
            float scale = ms != null ? ms.getCurrentScale() : 1.0f;

            // ① 在飞任务
            List missions = mgr.activeMissions;
            if (missions != null) {
                int n = missions.size();
                for (int i = 0; i < n; i++) {
                    AirMission m = (AirMission) missions.get(i);
                    if (m == null) {
                        continue;
                    }
                    String key = keyOf(m);
                    if (key == null) {
                        continue;
                    }
                    int at = m.airDivisionAtProvinceID;
                    if (at < 0) {
                        continue; // 不在飞：交给下面的停机编队画
                    }
                    int prov = at > 0 ? at : m.sourceProvinceID; // at==0 是 pickup 的旧 bug
                    Province p = safeProvince(prov);
                    if (p == null) {
                        continue;
                    }
                    if (p.getArmyKeyID(key) >= 0) {
                        continue; // 过渡期兜底：还在省列表里就让旧路画，避免双画
                    }
                    if (!ProvinceDrawArmy.myOrDetectedMission(m)) {
                        continue;
                    }
                    int bx = ProvinceDrawArmy.getAirDrawPosX(prov, scale);
                    int by = ProvinceDrawArmy.getAirDrawPosY(prov, scale);
                    int mx = AirPos.fixX(m, bx);
                    int my = AirPos.fixY(m, by);
                    if (onScreen(mx, my)) {
                        add(key, mx, my);
                    }
                }
            }

            // ② 停机编队（注册表里没有在飞任务的）
            int sz = AirDivStore.size();
            for (int i = 0; i < sz; i++) {
                String key = AirDivStore.keyAt(i);
                if (key == null) {
                    continue;
                }
                AirMission m = AirForceManager.getAirMissionByKey(key);
                if (m != null && m.airDivisionAtProvinceID >= 0) {
                    continue; // 已在飞的由 ① 画
                }
                int prov = AirDivStore.provOf(key);
                if (prov < 0) {
                    continue;
                }
                Province p = safeProvince(prov);
                if (p == null) {
                    continue;
                }
                if (p.getArmyKeyID(key) >= 0) {
                    continue;
                }
                if (mgr.getAirportByProvinceID(prov) == null) {
                    continue; // 机场没了（被拆）就不再画停机编队
                }
                int bx = ProvinceDrawArmy.getAirDrawPosX(prov, scale);
                int by = ProvinceDrawArmy.getAirDrawPosY(prov, scale);
                int slot = i % 8;
                int px = bx + (slot % 4) * 22 - 33;
                int py = by + (slot / 4) * 24 - 12;
                if (onScreen(px, py)) {
                    add(key, px, py);
                }
            }
        } catch (Throwable t) {
            // 绘制路径的异常不许冒到游戏主循环
            return cnt;
        }
        return cnt;
    }

    private static void add(String key, int x, int y) {
        if (cnt >= CAP || key == null) {
            return;
        }
        X[cnt] = x;
        Y[cnt] = y;
        KEY[cnt] = key;
        cnt++;
    }

    /**
     * 按点击坐标找最近的**在飞任务**；命中写 pickKey/pickProv/pickCiv 并返回 true。
     * 停机编队不在这里选（继续走机场那条老路）。
     */
    public static boolean pick(int sx, int sy) {
        pickKey = null;
        pickProv = -1;
        pickCiv = 0;
        pickSrc = -1;
        try {
            AirForceManager mgr = AirForceManager.getInstance();
            if (mgr == null || mgr.activeMissions == null) {
                return false;
            }
            MapScale ms = Game.mapScale;
            float scale = ms != null ? ms.getCurrentScale() : 1.0f;
            int r = (int) (HIT_R * scale);
            if (r < 36) {
                r = 36;
            }
            long best = (long) r * r;
            List missions = mgr.activeMissions;
            int n = missions.size();
            for (int i = 0; i < n; i++) {
                AirMission m = (AirMission) missions.get(i);
                if (m == null) {
                    continue;
                }
                int at = m.airDivisionAtProvinceID;
                if (at < 0) {
                    continue;
                }
                String key = keyOf(m);
                if (key == null || m.civID < 0) {
                    continue;
                }
                int prov = at > 0 ? at : m.sourceProvinceID;
                Province p = safeProvince(prov);
                if (p == null) {
                    continue;
                }
                if (!ProvinceDrawArmy.myOrDetectedMission(m)) {
                    continue;
                }
                int bx = ProvinceDrawArmy.getAirDrawPosX(prov, scale);
                int by = ProvinceDrawArmy.getAirDrawPosY(prov, scale);
                int cx = AirPos.fixX(m, bx) + 20; // drawAirDivisionAsPlane 的视觉中心偏 +20
                int cy = AirPos.fixY(m, by) + 20;
                long dx = cx - sx;
                long dy = cy - sy;
                long d2 = dx * dx + dy * dy;
                if (d2 <= best) {
                    best = d2;
                    pickKey = key;
                    pickProv = prov;
                    pickCiv = m.civID;
                    pickSrc = m.sourceAirport != null ? m.sourceAirport.provinceID : m.sourceProvinceID;
                }
            }
        } catch (Throwable t) {
            pickKey = null;
        }
        if (pickKey != null) {
            try {
                AirForceManager m2 = AirForceManager.getInstance();
                if (m2 != null) {
                    m2.selectedAirportProvinceID = pickSrc; // 下单入口 handleProvinceClick 的门
                }
            } catch (Throwable t) {
                // 忽略：拿不到实例也不影响选中本身
            }
        }
        return pickKey != null;
    }

    /** 逐个绘制前重设 `dgAir*` 静态量（等价于原版在省循环里做的接力）。 */
    public static void setDgFor(String key) {
        try {
            AirMission m = AirForceManager.getAirMissionByKey(key);
            ArmyDivision d = (m != null && m.airhqDivision != null) ? m.airhqDivision : AirDivStore.byKey(key);
            int civ = 0;
            if (d != null) {
                civ = d.civID;
            } else if (m != null) {
                civ = m.civID;
            } else {
                civ = keyCiv(key);
            }
            AirForceManager.dgAirCiv = civ;
            AirForceManager.dgAirGroup = AirForceManager.artGroupOf(civ);
            int uid = -1;
            int aid = -1;
            if (d != null && d.lArmyRegiment != null && !d.lArmyRegiment.isEmpty()) {
                Object o = d.lArmyRegiment.get(0);
                if (o instanceof ArmyRegiment) {
                    uid = ((ArmyRegiment) o).uID;
                    aid = ((ArmyRegiment) o).aID;
                }
            }
            // -1 时 airImgForKey 会自动回落到任务内飞机机型 / key 解析，见 v96 调研
            AirForceManager.dgAirUid = uid;
            AirForceManager.dgAirAid = aid;
        } catch (Throwable t) {
            // 忽略：宁可沿用上一组 dg，也不许崩帧
        }
    }

    /** 任务标识：优先 `airhqKey`，缺失时用与 `getAirDivKey()` 相同的两段式兜底。 */
    public static String keyOf(AirMission m) {
        if (m == null) {
            return null;
        }
        if (m.airhqKey != null) {
            return m.airhqKey;
        }
        return "airhq_" + m.civID + "_" + m.sourceProvinceID;
    }

    /** 屏幕裁剪：原版只在可见省里画，我们自己遍历必须自己裁（否则全图机场图标都画）。 */
    private static boolean onScreen(int x, int y) {
        int w = CFG.GAME_WIDTH;
        int h = CFG.GAME_HEIGHT;
        if (w <= 0 || h <= 0) {
            return true; // 尺寸未就绪时不裁，宁可多画不可漏画
        }
        return x > -160 && x < w + 160 && y > -160 && y < h + 160;
    }

    /** 安全取省：`Game.getProvince` 内部是 List.get，越界/负 id 会抛 IndexOutOfBounds。 */
    private static Province safeProvince(int prov) {
        if (prov < 0) {
            return null;
        }
        try {
            List all = Game.lProvinces;
            if (all != null && prov >= all.size()) {
                return null;
            }
            return Game.getProvince(prov);
        } catch (Throwable t) {
            return null;
        }
    }

    /** 从 key（`airhq_<civ>_<prov>[...]`）解出文明 id；失败返回 0。 */
    public static int keyCiv(String key) {
        if (key == null) {
            return 0;
        }
        String[] t = key.split("_");
        if (t.length < 2) {
            return 0;
        }
        try {
            return Integer.parseInt(t[1]);
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
