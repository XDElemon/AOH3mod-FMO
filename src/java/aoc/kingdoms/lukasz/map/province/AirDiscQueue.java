package aoc.kingdoms.lukasz.map.province;

/**
 * 雷达/防空范围盘的**本帧排序队列**（v83）。
 *
 * <p>问题：四类盘（建筑蓝盘、飞机蓝盘、防空红盘、导弹红盘）原来按"颜色分组"画，
 * 后画的整组会把先画的盖掉——反导阵地的红盘比蓝盘大时，蓝盘整块被红盘埋掉。</p>
 *
 * <p>规则（用户 2026-10-25 拍板）：**按半径从大到小画**——大圈先画、小圈后画，
 * 于是任何小圈都完整可见；大圈只在被小圈占住的一小块被盖，轮廓仍然读得出来。
 * 同色圈重叠时颜色一致，天然融合。</p>
 *
 * <p>用法：每帧 {@link #begin()} → 各处 {@link #addBlue}/{@link #addColor} 入库 →
 * {@link #flush(Object)} 排序并统一落笔。</p>
 */
public final class AirDiscQueue {

    /** 单帧最多收集的盘数（一屏雷达省/任务一般远小于这个数）。 */
    private static final int MAX = 256;

    /** 蓝盘颜色（0.2, 0.2, 1.0）——与 RadarOverlay.drawDisc 的 tint 同值。 */
    private static final int COLOR_BLUE = 0x3333FF;

    private static final int[] CX = new int[MAX];
    private static final int[] CY = new int[MAX];
    private static final int[] RX = new int[MAX];
    private static final int[] RY = new int[MAX];
    private static final int[] CO = new int[MAX];
    private static int n = 0;

    private AirDiscQueue() {
    }

    /** 每帧开始清空。 */
    public static void begin() {
        n = 0;
    }

    /** 蓝盘（建筑雷达省 / 飞机任务盘）。 */
    public static void addBlue(int cx, int cy, int rx, int ry) {
        add(cx, cy, rx, ry, COLOR_BLUE);
    }

    /** 任意颜色的盘（防空红盘 / 导弹射程红盘）。 */
    public static void addColor(int cx, int cy, int rx, int ry, int rgb) {
        add(cx, cy, rx, ry, rgb);
    }

    private static void add(int cx, int cy, int rx, int ry, int rgb) {
        if (rx <= 0 || ry <= 0) {
            return;
        }
        if (n >= MAX) {
            return;
        }
        CX[n] = cx;
        CY[n] = cy;
        RX[n] = rx;
        RY[n] = ry;
        CO[n] = rgb;
        n++;
    }

    /** 半径降序排序后统一绘制（大的先画 ⇒ 小的压在上面），然后清空。 */
    public static void flush(Object sbObj) {
        try {
            // 插入排序：盘数很少，且稳定（等半径保持加入顺序）
            for (int i = 1; i < n; i++) {
                final int kx = CX[i];
                final int ky = CY[i];
                final int krx = RX[i];
                final int kry = RY[i];
                final int kco = CO[i];
                int j = i - 1;
                while (j >= 0 && RX[j] < krx) {
                    CX[j + 1] = CX[j];
                    CY[j + 1] = CY[j];
                    RX[j + 1] = RX[j];
                    RY[j + 1] = RY[j];
                    CO[j + 1] = CO[j];
                    j--;
                }
                CX[j + 1] = kx;
                CY[j + 1] = ky;
                RX[j + 1] = krx;
                RY[j + 1] = kry;
                CO[j + 1] = kco;
            }
            for (int i = 0; i < n; i++) {
                RadarOverlay.drawDiscAnyColor(sbObj, CX[i], CY[i], RX[i], RY[i], CO[i]);
            }
        } catch (Throwable t) {
            // 渲染线程不能抛
        } finally {
            n = 0;
        }
    }
}
