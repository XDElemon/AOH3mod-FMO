package aoc.kingdoms.lukasz.map.province;

import java.util.List;

/**
 * 地图建筑圆盘（v75）：把该省的空军建筑图标按「反应堆芯」式圆盘排布画在地图上。
 *
 * <p>替代原版三个固定槽位方法（drawAirportIcons / drawAirForceRadarIcons /
 * drawAirForceBuildingIcons）：原版是 36/28/53 写死像素、四栋权重不等、
 * 反导阵地图标画两张、中层反导画两次，且每帧最多画 4 遍。</p>
 *
 * <p>本类规则（2026-10-25 用户拍板）：
 * <ul>
 *   <li>圆心 = 省中心；格子边长 = 24 世界像素 × mapScale，跟随地图缩放；</li>
 *   <li>行宽按 ROWS 表（N=4 → 2/2，N=12 → 2/4/4/2），每行独立居中；</li>
 *   <li>填充顺序：从上到下、每行从左到右，按建造顺序；</li>
 *   <li>只统计注册过的空军建筑，非空军建筑不占槽；以后加建筑自动进盘。</li>
 * </ul></p>
 *
 * <p>绘制层级：挂在 RendererGame$3.drawWithoutScale 的城市层之后、军队之前，
 * 所以军队永远压在圆盘上（用户的明确要求）。</p>
 */
public final class AirProvinceIcons {

    /** 行宽表：N=1..24。N = 该省空军建筑数。 */
    private static final int[][] ROWS = {
            {1},
            {2},
            {1, 2},
            {2, 2},
            {1, 3, 1},
            {2, 2, 2},
            {2, 3, 2},
            {2, 4, 2},
            {3, 3, 3},
            {3, 4, 3},
            {3, 5, 3},
            {2, 4, 4, 2},
            {1, 3, 5, 3, 1},
            {2, 5, 5, 2},
            {5, 5, 5},
            {2, 4, 4, 4, 2},
            {1, 5, 5, 5, 1},
            {2, 4, 6, 4, 2},
            {2, 5, 5, 5, 2},
            {2, 4, 4, 4, 4, 2},
            {3, 5, 5, 5, 3},
            {1, 5, 5, 5, 5, 1},
            {3, 5, 7, 5, 3},
            {2, 4, 6, 6, 4, 2}
    };

    /** 格子边长基准（世界像素）。屏幕边长 = CELL_BASE × mapScale。 */
    private static final float CELL_BASE = 24.0f;

    /** 图标原始画布宽高比（53×45），用于等比适配格子，避免拉伸。 */
    private static final float ICON_AR = 45.0f / 53.0f;

    private AirProvinceIcons() {
    }

    /** 入口：每帧一次，画全图所有省的空军建筑圆盘。 */
    public static void drawAll(Object sbObj) {
        try {
            if (sbObj == null) {
                return;
            }
            aoc.kingdoms.lukasz.map.map.MapScale ms = aoc.kingdoms.lukasz.jakowski.Game.mapScale;
            if (ms == null) {
                return;
            }
            final float scale = ms.getCurrentScale();
            if (scale <= 0.0f) {
                return;
            }
            final int n = aoc.kingdoms.lukasz.jakowski.Game.getProvincesSize();
            if (n <= 0) {
                return;
            }

            aoc.kingdoms.lukasz.map.province.AirBldIcon.begin(sbObj);

            final int[] imgs = new int[ROWS.length];
            for (int pid = 0; pid < n; pid++) {
                aoc.kingdoms.lukasz.map.province.Province prov =
                        aoc.kingdoms.lukasz.jakowski.Game.getProvince(pid);
                if (prov == null) {
                    continue;
                }
                List bs = prov.buildings;
                if (bs == null || bs.isEmpty()) {
                    continue;
                }
                int cnt = 0;
                final int size = bs.size();
                for (int i = 0; i < size; i++) {
                    Object o = bs.get(i);
                    if (!(o instanceof aoc.kingdoms.lukasz.map.province.ProvinceConstructedBuilding)) {
                        continue;
                    }
                    int buildingID =
                            ((aoc.kingdoms.lukasz.map.province.ProvinceConstructedBuilding) o).getBuilding();
                    int imageID = imageOf(buildingID);
                    if (imageID < 0) {
                        continue;
                    }
                    if (cnt >= imgs.length) {
                        break;
                    }
                    imgs[cnt++] = imageID;
                }
                if (cnt == 0) {
                    continue;
                }
                drawDisc(sbObj, pid, scale, imgs, cnt);
            }
        } catch (Throwable t) {
            // 渲染线程不能抛；这个类出错只是图标不画，不能让整帧崩掉。
        }
    }

    /** building id（运行期列表下标）→ 图标 image id；非空军建筑返回 -1。 */
    private static int imageOf(int buildingID) {
        if (buildingID < 0) {
            return -1;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.AIRPORT_BUILDING_ID) {
            return aoc.kingdoms.lukasz.textures.Images.airUnit;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.RADAR_BUILDING_ID) {
            return aoc.kingdoms.lukasz.textures.Images.radarUnit;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.AAA_BUILDING_ID) {
            return aoc.kingdoms.lukasz.textures.Images.antiAir;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.LONGRADAR_BUILDING_ID) {
            return aoc.kingdoms.lukasz.textures.Images.longwaveRadar;
        }
        return -1;
    }

    /** 按行宽表把一个省的 cnt 个图标排成圆盘并逐格落笔。 */
    private static void drawDisc(Object sbObj, int pid, float scale, int[] imgs, int cnt) {
        final int[] rows = rowsFor(cnt);
        final int m = rows.length;

        int cell = Math.round(CELL_BASE * scale);
        if (cell < 6) {
            cell = 6;
        }
        final int gap = Math.max(1, Math.round(cell * 0.12f));
        final int pitch = cell + gap;
        final int totalH = m * cell + (m - 1) * gap;

        final int cx = aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.getDrawPosX(pid, scale);
        final int cy = aoc.kingdoms.lukasz.jakowski.Renderer.RendererGame.getDrawPosY(pid, scale);

        final int iw = cell;
        final int ih = Math.max(1, Math.round(cell * ICON_AR));
        final int dy = (cell - ih) / 2;

        final int y0 = cy - totalH / 2;
        int k = 0;
        for (int i = 0; i < m; i++) {
            final int c = rows[i];
            final int w = c * cell + (c - 1) * gap;
            final int x0 = cx - w / 2;
            final int y = y0 + i * pitch;
            for (int j = 0; j < c && k < cnt; j++) {
                final int x = x0 + j * pitch;
                aoc.kingdoms.lukasz.map.province.AirBldIcon.drawIcon(sbObj, imgs[k], x, y + dy, iw, ih);
                k++;
            }
        }
    }

    /** N → 每行格数；N>24 时用近似圆盘兜底。 */
    private static int[] rowsFor(int n) {
        if (n >= 1 && n <= ROWS.length) {
            return ROWS[n - 1];
        }
        final double r = Math.sqrt(n / Math.PI);
        final int m = Math.max(1, (int) Math.round(2.0 * r));
        final int[] rows = new int[m];
        for (int i = 0; i < m; i++) {
            final double y = i - (m - 1) / 2.0;
            final double hw = Math.sqrt(Math.max(r * r - y * y, 0.0));
            rows[i] = Math.max(1, (int) Math.round(2.0 * hw));
        }
        for (int i = 0; i < m; i++) {
            final int j = m - 1 - i;
            if (i < j) {
                final int v = Math.min(rows[i], rows[j]);
                rows[i] = v;
                rows[j] = v;
            }
        }
        int sum = 0;
        for (int i = 0; i < m; i++) {
            sum += rows[i];
        }
        int guard = 0;
        while (sum != n && guard++ < 4096) {
            if (sum > n) {
                int idx = 0;
                for (int i = 1; i < m; i++) {
                    if (rows[i] > rows[idx]) {
                        idx = i;
                    }
                }
                if (rows[idx] <= 1) {
                    break;
                }
                rows[idx]--;
                sum--;
            } else {
                int idx = 0;
                for (int i = 1; i < m; i++) {
                    if (rows[i] < rows[idx]) {
                        idx = i;
                    }
                }
                rows[idx]++;
                sum++;
            }
        }
        return rows;
    }
}
