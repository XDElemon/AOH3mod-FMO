package aoc.kingdoms.lukasz.map.province;

/**
 * 雷达/防空范围盘的**本帧排序队列**（v83 建立，v89 重写裁剪）。
 *
 * <p>问题：四类盘（建筑蓝盘、飞机蓝盘、防空红盘、导弹红盘）原来按"颜色分组"画，
 * 后画的整组会把先画的盖掉——反导阵地的红盘比蓝盘大时，蓝盘整块被红盘埋掉。</p>
 *
 * <p>规则（用户 2026-10-25/26 拍板）：
 * <ol>
 *   <li>按半径从大到小画（大圈先画、小圈后画），于是任何小圈都完整可见；</li>
 *   <li>红盘画满、不裁；</li>
 *   <li>蓝盘只在「更大的蓝盘 ∩ 红盘」这块给红让位（露出红），
 *       其余地方（蓝蓝重叠、只有红没有更大蓝）一律照常画——否则会裁出洞。</li>
 * </ol>
 *
 * <p>v88 真机错误（大蓝盘在左 → 小蓝盘整块消失；在右 → 形状错乱）的根因：
 * {@code rowInterval()} 把横区间打包成 {@code (left<<16)+right} 返回 int，
 * 解码却写成 {@code iv - (iv>>16)}（少减了 {@code left<<16}）⇒ 左端非 0 时右端解成天文数字，
 * 裁剪区间覆盖整行；左端为负/右端为负时打包本身也会串位（{@code +right} 跨进制）。
 * v89 起**不再打包**：区间用两个 int 字段直接取，交叉后按左端排序、合并、再与当前行求交。</p>
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

    /** 已画过的蓝盘下标（只有这些"更大的蓝盘"才会让小蓝盘让位） */
    private static final int[] BIDX = new int[MAX];
    /** 已画过的红盘下标（只有已经画在下面的红盘才需要露出来） */
    private static final int[] RIDX = new int[MAX];

    /** 单行最多参与运算的区间数（更大的蓝盘 / 合并后的遮挡段各最多这么多个）。 */
    private static final int MAXIV = 64;
    /** 交叉出来的原始区间上限（蓝 × 红 的笛卡尔积截断）。 */
    private static final int MAXRAW = 256;

    private static final int[] BI = new int[MAXIV];   // 更大蓝盘在该行的区间
    private static final int[] BJ = new int[MAXIV];
    private static final int[] RS = new int[MAXRAW];  // 交叉原始区间（排序前）
    private static final int[] RE = new int[MAXRAW];
    private static final int[] BS = new int[MAXIV];   // 排序+合并+裁剪后的遮挡区间
    private static final int[] BE = new int[MAXIV];

    /** {@link #rowInterval} 的输出（避免返回 int 打包：v88 的解码 bug 就出在这里）。 */
    private static int sRowL;
    private static int sRowR;

    /** 诊断计数（不写日志，只给探针/诊断包读；正常帧几百到一两千）。 */
    public static int dbgDiscs = 0;
    public static int dbgRects = 0;
    public static int dbgClipped = 0;

    private AirDiscQueue() {
    }

    /** 每帧开始清空。 */
    public static void begin() {
        n = 0;
        dbgDiscs = 0;
        dbgRects = 0;
        dbgClipped = 0;
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
            int reds = 0;
            for (int i = 0; i < n; i++) {
                // 单个盘出错不能连坐后面的盘（v88 是整个 flush 一个 try，最坏会让后半屏全空）
                try {
                    if (TP[i] == 1) {
                        // 红盘：永远画满
                        RadarOverlay.drawDiscAnyColor(sbObj, CX[i], CY[i], RX[i], RY[i], CO[i]);
                        dbgDiscs++;
                        if (reds < MAX) {
                            RIDX[reds++] = i;
                        }
                        continue;
                    }
                    // 蓝盘：只有"更大的蓝盘 ∩ 红盘"的地方才需要让位给红色；
                    // 其它蓝蓝重叠同色，不必裁（裁了就是洞）
                    boolean need = false;
                    for (int j = 0; j < blues && !need; j++) {
                        if (!intersects(i, BIDX[j])) {
                            continue;
                        }
                        for (int k = 0; k < reds; k++) {
                            if (intersects(i, RIDX[k])) {
                                need = true;
                                break;
                            }
                        }
                    }
                    if (!need) {
                        RadarOverlay.drawDiscAnyColor(sbObj, CX[i], CY[i], RX[i], RY[i], CO[i]);
                        dbgDiscs++;
                    } else {
                        drawClipped(sbObj, i, blues, reds);
                        dbgClipped++;
                    }
                    if (blues < MAX) {
                        BIDX[blues++] = i;
                    }
                } catch (Throwable t) {
                    // 该盘跳过，继续画后面的
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

    /**
     * 把第 idx 个蓝盘按行裁掉"更大蓝盘 ∩ 红盘"的区间，用矩形拼出剩余部分。
     *
     * <p>行距：默认 1~2px（盘越小越细），半径很大时按 {@link #stepFor} 加粗，
     * 保证单盘矩形数有上界（真机上每帧都要过一遍 CPU + 顶点生成，别在雷达省扎堆时卡顿）。</p>
     */
    private static void drawClipped(Object sbObj, int idx, int blues, int reds) {
        final int cx = CX[idx];
        final int cy = CY[idx];
        final int rx = RX[idx];
        final int ry = RY[idx];
        final int rgb = CO[idx];

        // 整盘都被「某个更大蓝盘 ∩ 某个红盘」包住 ⇒ 一点都画不出来（同心的小蓝=反导阵地常见）
        for (int j = 0; j < blues; j++) {
            if (!covers(BIDX[j], idx)) {
                continue;
            }
            for (int k = 0; k < reds; k++) {
                if (covers(RIDX[k], idx)) {
                    return;
                }
            }
        }
        // 只有这些行会真正被裁；其余行整行一个矩形就够（省掉每行的区间运算）
        int cutTop = Integer.MAX_VALUE;
        int cutBottom = Integer.MIN_VALUE;
        for (int j = 0; j < blues; j++) {
            final int b = BIDX[j];
            for (int k = 0; k < reds; k++) {
                final int r = RIDX[k];
                final int l = Math.max(CX[b] - RX[b], CX[r] - RX[r]);
                final int rr = Math.min(CX[b] + RX[b], CX[r] + RX[r]);
                if (l >= rr) {
                    continue;
                }
                final int t = Math.max(CY[b] - RY[b], CY[r] - RY[r]);
                final int bt = Math.min(CY[b] + RY[b], CY[r] + RY[r]);
                if (t >= bt) {
                    continue;
                }
                if (t < cutTop) {
                    cutTop = t;
                }
                if (bt > cutBottom) {
                    cutBottom = bt;
                }
            }
        }

        final int step = stepFor(ry);
        final long ry2 = (long) ry * (long) ry;
        int ya = cy - ry;
        while (ya < cy + ry) {
            final long dy = (long) ya - cy;
            final double t = 1.0 - (double) (dy * dy) / (double) ry2;
            if (t <= 0.0) {
                ya += step;
                continue;
            }
            final double hw = rx * Math.sqrt(t);
            int start = cx - (int) (hw + 0.5);
            int end = cx + (int) (hw + 0.5);
            if (end - start < 2) {
                ya += step;
                continue;
            }
            if (ya + step <= cutTop || ya >= cutBottom) {
                // 这一行完全在裁剪区之外 ⇒ 整行直接画（不做区间运算）
                AirRect.fill(sbObj, start, ya, end - start, step, rgb);
                dbgRects++;
                ya += step;
                continue;
            }
            final int bn = collectBlocked(ya, blues, reds, start, end);
            for (int k = 0; k < bn; k++) {
                final int bs = BS[k];
                final int be = BE[k];
                if (be <= start) {
                    continue;
                }
                if (bs > start) {
                    AirRect.fill(sbObj, start, ya, bs - start, step, rgb);
                    dbgRects++;
                }
                if (be >= end) {
                    // 一直挡到圆盘右端 ⇒ 本行画完了；必须把 start 推到末尾再收尾
                    start = end;
                    break;
                }
                start = be;
                if (start >= end) {
                    break;
                }
            }
            if (start < end) {
                AirRect.fill(sbObj, start, ya, end - start, step, rgb);
                dbgRects++;
            }
            ya += step;
        }
    }

    /** a 是否（保守地判定）完全包住 b：同心/近同心椭圆走精确解，其余一律判否（宁可多画不许漏画）。 */
    private static boolean covers(int a, int b) {
        if (RX[a] <= RX[b] || RY[a] <= RY[b]) {
            return false;
        }
        final double dx = (double) CX[a] - CX[b];
        final double dy = (double) CY[a] - CY[b];
        final double ex = RX[a] - RX[b];
        final double ey = RY[a] - RY[b];
        return (dx * dx) / (ex * ex) + (dy * dy) / (ey * ey) <= 1.0;
    }

    /** 行距：≤260 用 1px（小盘的裁剪口看不出台阶），更大的盘用 2~4px 控制矩形数。 */
    private static int stepFor(int ry) {
        if (ry <= 260) {
            return 1;
        }
        if (ry <= 700) {
            return 2;
        }
        if (ry <= 1400) {
            return 3;
        }
        return 4;
    }

    /**
     * 收集第 ya 行需要遮挡的区间：[clipL, clipR) 与「更大蓝盘 ∩ 红盘」的交集，
     * 按左端排序 + 合并重叠 + 裁到当前行内。结果写进 BS/BE（左闭右开），返回段数。
     */
    private static int collectBlocked(int ya, int blues, int reds, int clipL, int clipR) {
        // 1) 更大蓝盘在该行的区间
        int nbi = 0;
        for (int j = 0; j < blues && nbi < MAXIV; j++) {
            final int b = BIDX[j];
            if (!rowInterval(b, ya)) {
                continue;
            }
            BI[nbi] = sRowL;
            BJ[nbi] = sRowR;
            nbi++;
        }
        if (nbi == 0) {
            return 0;
        }
        // 2) 与红盘在该行的区间两两求交（只有这块才需要给红让位）
        int raw = 0;
        for (int r = 0; r < reds && raw < MAXRAW; r++) {
            final int rd = RIDX[r];
            if (!rowInterval(rd, ya)) {
                continue;
            }
            final int rs = sRowL;
            final int re = sRowR;
            for (int b = 0; b < nbi && raw < MAXRAW; b++) {
                final int s2 = Math.max(rs, BI[b]);
                final int e2 = Math.min(re, BJ[b]);
                if (e2 <= s2) {
                    continue;
                }
                RS[raw] = s2;
                RE[raw] = e2;
                raw++;
            }
        }
        if (raw == 0) {
            return 0;
        }
        // 3) 按左端排序（插排：raw 很小），再合并重叠并裁到本行
        for (int i = 1; i < raw; i++) {
            final int s = RS[i];
            final int e = RE[i];
            int j = i - 1;
            while (j >= 0 && RS[j] > s) {
                RS[j + 1] = RS[j];
                RE[j + 1] = RE[j];
                j--;
            }
            RS[j + 1] = s;
            RE[j + 1] = e;
        }
        int bn = 0;
        for (int k = 0; k < raw; k++) {
            final int s = Math.max(RS[k], clipL);
            final int e = Math.min(RE[k], clipR);
            if (e <= s) {
                continue;
            }
            if (bn > 0 && s <= BE[bn - 1]) {
                if (e > BE[bn - 1]) {
                    BE[bn - 1] = e;
                }
            } else {
                if (bn >= MAXIV) {
                    break;
                }
                BS[bn] = s;
                BE[bn] = e;
                bn++;
            }
        }
        return bn;
    }

    /**
     * 第 ya 行圆盘 d 的横区间 [左, 右)，写进 {@link #sRowL}/{@link #sRowR}；不在该行返回 false。
     *
     * <p>v89：不再打包成 int。v88 的 {@code (left<<16)+right} 在 left 为负（盘伸出屏幕左缘）
     * 或 right 为负（盘整个在屏幕左侧外）时本身就会串位，加上解码少减一次更是全错。</p>
     */
    private static boolean rowInterval(int d, int ya) {
        final long dy = (long) ya - CY[d];
        final long ry = RY[d];
        if (dy <= -ry || dy >= ry) {
            return false;
        }
        final double t = 1.0 - (double) (dy * dy) / (double) (ry * ry);
        if (t <= 0.0) {
            return false;
        }
        final double hw = RX[d] * Math.sqrt(t);
        final int s = CX[d] - (int) (hw + 0.5);
        final int e = CX[d] + (int) (hw + 0.5);
        if (e <= s) {
            return false;
        }
        sRowL = s;
        sRowR = e;
        return true;
    }
}
