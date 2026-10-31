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
 *   <li>行宽按 ROW_W 表（N=4 → 2/2，N=12 → 2/4/4/2），每行独立居中；</li>
 *   <li>填充顺序：从上到下、每行从左到右，按建造顺序；</li>
 *   <li>只统计注册过的空军建筑，非空军建筑不占槽；以后加建筑自动进盘。</li>
 * </ul></p>
 *
 * <p>绘制层级：挂在 RendererGame$3.drawWithoutScale 的城市层之后、军队之前，
 * 所以军队永远压在圆盘上（用户的明确要求）。</p>
 */
public final class AirProvinceIcons {

    /*
     * 行宽表（N=1..24）摊平成两个一维数组：ROW_O[n-1] 是第 n 种形状的起始下标，
     * ROW_O[n] 是结束（不含）。
     * 不用 int[][]：javac 会生成 filled-new-array + move-object/from16 的二维字面量，
     * B31 会把那种形态误判成 ART VerifyError 风险。
     */
    private static final int[] ROW_W = {
            1, 2, 1, 2, 2, 2, 1, 3, 1, 2, 2, 2, 2, 3, 2, 2, 4, 2, 3, 3,
            3, 3, 4, 3, 3, 5, 3, 2, 4, 4, 2, 1, 3, 5, 3, 1, 2, 5, 5, 2,
            5, 5, 5, 2, 4, 4, 4, 2, 1, 5, 5, 5, 1, 2, 4, 6, 4, 2, 2, 5,
            5, 5, 2, 2, 4, 4, 4, 4, 2, 3, 5, 5, 5, 3, 1, 5, 5, 5, 5, 1,
            3, 5, 7, 5, 3, 2, 4, 6, 6, 4, 2
    };

    private static final int[] ROW_O = {
            0, 1, 2, 4, 6, 9, 12, 15, 18, 21, 24, 27, 31, 36,
            40, 43, 48, 53, 58, 63, 69, 74, 80, 85, 91
    };

    /** 格子边长基准（世界像素）。屏幕边长 = CELL_BASE × mapScale。 */
    private static final float CELL_BASE = 24.0f;

    /** 图标原始画布宽高比（53×45），用于等比适配格子，避免拉伸。 */
    private static final float ICON_AR = 45.0f / 53.0f;

    /** 解析后的贴图 id（首次绘制时确定；坏值时现场重载一次）。 */
    private static int imgAir = -1;
    private static int imgRadar = -1;
    private static int imgAaa = -1;
    private static int imgLong = -1;
    private static boolean imgReady = false;

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

            initImages();
            aoc.kingdoms.lukasz.map.province.AirBldIcon.begin(sbObj);

            final int[] imgs = new int[ROW_O.length - 1];
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

    /** 把四张图 id 解析出来；id 无效（<0 或越界）就现场按原路径重载一次。 */
    private static void initImages() {
        if (imgReady) {
            return;
        }
        imgReady = true;
        final int nimg = aoc.kingdoms.lukasz.textures.ImageManager.getImagesSize();
        imgAir = valid(aoc.kingdoms.lukasz.textures.Images.airUnit, nimg);
        imgRadar = valid(aoc.kingdoms.lukasz.textures.Images.radarUnit, nimg);
        imgAaa = valid(aoc.kingdoms.lukasz.textures.Images.antiAir, nimg);
        imgLong = valid(aoc.kingdoms.lukasz.textures.Images.longwaveRadar, nimg);
        if (imgAir < 0) {
            imgAir = aoc.kingdoms.lukasz.textures.ImageManager.addImage("ui/"
                    + aoc.kingdoms.lukasz.jakowski.CFG.getRescouresPath() + "icons/AirUnit.png");
        }
        if (imgRadar < 0) {
            imgRadar = aoc.kingdoms.lukasz.textures.ImageManager.addImage(
                    "game/AirUnit/AirUnitlmages/RadarUnit.png");
        }
        if (imgAaa < 0) {
            imgAaa = aoc.kingdoms.lukasz.textures.ImageManager.addImage(
                    "game/buildings/provinceIcons/antiAir.png");
        }
        if (imgLong < 0) {
            imgLong = aoc.kingdoms.lukasz.textures.ImageManager.addImage(
                    "game/buildings/provinceIcons/longwaveRadar.png");
        }
    }

    private static int valid(int id, int nimg) {
        return (id >= 0 && id < nimg) ? id : -1;
    }

    /** building id（运行期列表下标）→ 图标 image id；非空军建筑返回 -1。 */
    private static int imageOf(int buildingID) {
        if (buildingID < 0) {
            return -1;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.AIRPORT_BUILDING_ID) {
            return imgAir;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.RADAR_BUILDING_ID) {
            return imgRadar;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.AAA_BUILDING_ID) {
            return imgAaa;
        }
        if (buildingID == aoc.kingdoms.lukasz.map.BuildingsManager.LONGRADAR_BUILDING_ID) {
            return imgLong;
        }
        return -1;
    }

    /** 按行宽表把一个省的 cnt 个图标排成圆盘并逐格落笔。 */
    private static void drawDisc(Object sbObj, int pid, float scale, int[] imgs, int cnt) {
        // 现有数据每省每种建筑唯一 ⇒ 空军建筑最多 4 个；24 格表足够覆盖未来扩展。
        final int n = cnt > ROW_O.length - 1 ? ROW_O.length - 1 : cnt;
        final int off = ROW_O[n - 1];
        final int m = ROW_O[n] - off;

        int cell = Math.round(CELL_BASE * scale);
        if (cell < 6) {
            cell = 6;
        }
        final int gap = Math.max(1, Math.round(cell * 0.12f));
        final int pitch = cell + gap;
        final int totalH = m * cell + (m - 1) * gap;

        // v144：建筑图标必须**严格跟地图走**（用户 2026-10-31 报：图标移出屏幕后，
        // 在别处同样的高度又能看到它在原位置 = X 粘屏）。
        // 根因：`RendererGame.getDrawPosX` 用的是**每省缓存的 translateProvincePosX**，
        // 省被剔除/离屏时不更新；而 getDrawPosY 用的是实时 mapCoords.posY。X/Y 不对称 ⇒ 只有 X 粘屏。
        // 改用 `ProvinceDrawArmy.getAirDrawPosX/Y`：两者都是 (省中心 + 当前相机) × zoom。
        final int cx = aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.getAirDrawPosX(pid, scale);
        final int cy = aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy.getAirDrawPosY(pid, scale);

        final int iw = cell;
        final int ih = Math.max(1, Math.round(cell * ICON_AR));
        final int dy = (cell - ih) / 2;

        final int y0 = cy - totalH / 2;
        int k = 0;
        for (int i = 0; i < m; i++) {
            final int c = ROW_W[off + i];
            final int w = c * cell + (c - 1) * gap;
            final int x0 = cx - w / 2;
            final int y = y0 + i * pitch;
            for (int j = 0; j < c && k < cnt; j++) {
                final int x = x0 + j * pitch;
                // 一张坏图不能拖垮整盘：逐张兜异常。
                try {
                    aoc.kingdoms.lukasz.map.province.AirBldIcon.drawIcon(
                            sbObj, imgs[k], x, y + dy, iw, ih);
                } catch (Throwable t) {
                    // 单张失败跳过，继续画剩下的
                }
                k++;
            }
        }
    }
}
