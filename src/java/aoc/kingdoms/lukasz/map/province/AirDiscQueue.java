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
    /** 0 = 蓝盘（会被更大的蓝盘裁掉重叠部分）；1 = 红盘（永远画满） */
    private static final int[] TP = new int[MAX];
    private static int n = 0;
    /** 已画过的蓝盘下标（用于裁剪） */
    private static final int[] BIDX = new int[MAX];
    private static final int MAXBLK = 16;
    private static final int[] BS = new int[MAXBLK];
    private static final int[] BE = new int[MAXBLK];

    private AirDiscQueue() {
    }

    /** 每帧开始清空。 */
    public static void begin() {
        n = 0;
    }

    /** 蓝盘（建筑雷达省 / 飞机任务盘）。 */
    public static void addBlue(int cx, int cy, int rx, int ry) {
        add(cx, cy, rx, ry, COLOR_BLUE, 0);
    }

    /** 任意颜色的盘（防空红盘 / 导弹射程红盘）。 */
    public static void addColor(int cx, int cy, int rx, int ry, int rgb) {
        add(cx, cy, rx, ry, rgb, 1);
    }

    private static void add(int cx, int cy, int rx, int ry, int rgb, int type) {
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
        TP[n] = type;
        n++;
    }

    /** 半径降序排序后统一绘制（大的先画 ⇒ 小的压在上面），然后清空。 */
    public static void flush(Object sbObj) {
        try {
            sort();
            int blues = 0;
            for (int i = 0; i < n; i++) {
                if (TP[i] == 1) {
                    // 红盘：永远画满（红在蓝之上）
                    RadarOverlay.drawDiscAnyColor(sbObj, CX[i], CY[i], RX[i], RY[i], CO[i]);
                    continue;
                }
                // 蓝盘：若被"更大的蓝盘"压到，就把重叠部分裁掉（CPU 逐行差集）
                boolean clipped = false;
                for (int j = 0; j < blues; j++) {
                    if (intersects(i, BIDX[j])) {
                        clipped = true;
                        break;
                    }
                }
                if (!clipped) {
                    RadarOverlay.drawDiscAnyColor(sbObj, CX[i], CY[i], RX[i], RY[i], CO[i]);
                } else {
                    drawClipped(sbObj, i, blues);
                }
                if (blues < MAX) {
                    BIDX[blues++] = i;
                }
            }
        } catch (Throwable t) {
            // 渲染线程不能抛
        } finally {
            n = 0;
        }
    }

    /** 插入排序：半径降序；等半径保持加入顺序。 */
    private static void sort() {
        for (int i = 1; i < n; i++) {
            final int kx = CX[i];
            final int ky = CY[i];
            final int krx = RX[i];
            final int kry = RY[i];
            final int kco = CO[i];
            final int ktp = TP[i];
            int j = i - 1;
            while (j >= 0 && RX[j] < krx) {
                CX[j + 1] = CX[j];
                CY[j + 1] = CY[j];
                RX[j + 1] = RX[j];
                RY[j + 1] = RY[j];
                CO[j + 1] = CO[j];
                TP[j + 1] = TP[j];
                j--;
            }
            CX[j + 1] = kx;
            CY[j + 1] = ky;
            RX[j + 1] = krx;
            RY[j + 1] = kry;
            CO[j + 1] = kco;
            TP[j + 1] = ktp;
        }
    }

    private static boolean intersects(int a, int b) {
        final long dx = Math.abs((long) CX[a] - CX[b]);
        final long dy = Math.abs((long) CY[a] - CY[b]);
        return dx < (long) RX[a] + RX[b] && dy < (long) RY[a] + RY[b];
    }

    /** 把第 idx 个蓝盘按行裁掉"更大蓝盘"覆盖的区间，用矩形拼出剩余部分。 */
    private static void drawClipped(Object sbObj, int idx, int blues) {
        final int cx = CX[idx];
        final int cy = CY[idx];
        final int rx = RX[idx];
        final int ry = RY[idx];
        final int rgb = CO[idx];
        final int step = 2;
        for (int dy = -ry; dy <= ry; dy += step) {
            final double t = 1.0 - ((double) dy * dy) / ((double) ry * ry);
            if (t <= 0.0) {
                continue;
            }
            final double hw = rx * Math.sqrt(t);
            int start = cx - (int) hw;
            int end = cx + (int) hw;
            if (end <= start) {
                continue;
            }
            final int ya = cy + dy;
            final int bn = collectBlocked(ya, blues);
            // 已按左端排好序：逐个区间求差
            for (int k = 0; k < bn; k++) {
                final int bs = BS[k];
                final int be = BE[k];
                if (be <= start) {
                    continue;
                }
                if (bs > start) {
                    AirRect.fill(sbObj, start, ya, bs - start, step, rgb);
                }
                if (be > end) {
                    break;
                }
                if (be > start) {
                    start = be;
                }
                if (start >= end) {
                    break;
                }
            }
            if (start < end) {
                AirRect.fill(sbObj, start, ya, end - start, step, rgb);
            }
        }
    }

    /** 收集第 ya 行被"更大蓝盘"挡住的区间（左闭右开），按左端插入排序。 */
    private static int collectBlocked(int ya, int blues) {
        int bn = 0;
        for (int j = 0; j < blues && bn < MAXBLK; j++) {
            final int j2 = BIDX[j];
            final int dyj = ya - CY[j2];
            if (dyj <= -RY[j2] || dyj >= RY[j2]) {
                continue;
            }
            final double t = 1.0 - ((double) dyj * dyj) / ((double) RY[j2] * RY[j2]);
            if (t <= 0.0) {
                continue;
            }
            final double hw = RX[j2] * Math.sqrt(t);
            int bs = CX[j2] - (int) hw;
            int be = CX[j2] + (int) hw;
            if (be <= bs) {
                continue;
            }
            // 插入排序
            int k = bn - 1;
            while (k >= 0 && BS[k] > bs) {
                BS[k + 1] = BS[k];
                BE[k + 1] = BE[k];
                k--;
            }
            BS[k + 1] = bs;
            BE[k + 1] = be;
            bn++;
        }
        return bn;
    }
}
