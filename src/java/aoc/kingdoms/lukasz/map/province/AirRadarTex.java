package aoc.kingdoms.lukasz.map.province;

/**
 * 雷达盘的两种单位贴图（v79）：**纯数学算像素**，由 smali 侧的 AirTexBake 填进 Pixmap。
 *
 * <p>为什么这样拆：libgdx 的 Pixmap/Texture 在 Java 桩里退化成 Object，Java 调不了；
 * 但"算一个 256×256 的 ARGB 数组"是纯数学，Java 写最稳（极性/边界由 javac 保证）。
 * smali 侧只做 drawPixel 循环 + 建纹理。</p>
 */
public final class AirRadarTex {

    /** 扫描扇面一圈的周期（毫秒）。3 秒/圈。 */
    private static final float PERIOD_MS = 3000.0f;

    /** 白色 + alpha 的 RGBA8888 打包（R/G/B 全 255，低字节留给 alpha）。 */
    private static final int PACK_WHITE = 0xFFFFFF00;

    private AirRadarTex() {
    }

    /** 当前扫描角度（0..360，顺时针增大）。 */
    public static float rotation() {
        final long t = System.currentTimeMillis() % (long) PERIOD_MS;
        return t * 360.0f / PERIOD_MS;
    }

    /**
     * 盘面织物：中间**淡填充**、接近边缘**亮描边**（方案③）。
     *
     * @param size     边长（像素）
     * @param bodyA    中心区 alpha（0..255）
     * @param rimA     边缘环 alpha（0..255）
     * @param rimStart 边缘环起点（0..1，按半径比例）
     */
    public static int[] fabric(int size, int bodyA, int rimA, float rimStart) {
        final int[] px = new int[size * size];
        final float rMax = size * 0.5f - 1.0f;
        final float cx = (size - 1) * 0.5f;
        final float cy = (size - 1) * 0.5f;
        for (int y = 0; y < size; y++) {
            for (int x = 0; x < size; x++) {
                final float dx = x - cx;
                final float dy = y - cy;
                final float r = (float) Math.sqrt(dx * dx + dy * dy) / rMax;
                if (r > 1.0f) {
                    px[y * size + x] = 0;
                    continue;
                }
                float a;
                if (r <= rimStart) {
                    a = bodyA / 255.0f;
                } else {
                    float t = (r - rimStart) / (1.0f - rimStart);
                    if (t > 1.0f) {
                        t = 1.0f;
                    }
                    // 平滑过渡到亮环
                    t = t * t * (3.0f - 2.0f * t);
                    a = (bodyA + (rimA - bodyA) * t) / 255.0f;
                }
                final int ai = (int) (a * 255.0f + 0.5f);
                px[y * size + x] = PACK_WHITE | ai;
            }
        }
        return px;
    }

    /**
     * 扫描扇面：前沿最亮，向后 {@code spanDeg} 度拖尾渐隐；中心与外缘都压低，
     * 与盘面填充/描边融合，不产生硬边。
     *
     * @param size    边长（像素）
     * @param spanDeg 拖尾角宽（度）
     * @param maxA    前沿 alpha（0..255）
     */
    public static int[] sweep(int size, float spanDeg, float maxA, float baseAngleDeg) {
        final int[] px = new int[size * size];
        final float rMax = size * 0.5f - 1.0f;
        final float cx = (size - 1) * 0.5f;
        final float cy = (size - 1) * 0.5f;
        for (int y = 0; y < size; y++) {
            for (int x = 0; x < size; x++) {
                final float dx = x - cx;
                final float dy = y - cy;
                final float r = (float) Math.sqrt(dx * dx + dy * dy) / rMax;
                if (r > 1.0f) {
                    px[y * size + x] = 0;
                    continue;
                }
                // 角度：0° = 正右，顺时针增长（屏幕 y 向下）
                float deg = (float) (Math.atan2(dy, dx) * 180.0 / Math.PI);
                if (deg < 0.0f) {
                    deg += 360.0f;
                }
                float d = baseAngleDeg - deg;        // 距扇面前沿的角度差
                while (d < 0.0f) {
                    d += 360.0f;
                }
                while (d >= 360.0f) {
                    d -= 360.0f;
                }
                float a = 0.0f;
                if (d < spanDeg) {
                    float t = d / spanDeg;
                    a = (1.0f - t) * (1.0f - t);
                }
                // 径向两端压低：中心不要针尖、外缘与描边融合
                float fadeIn = (r - 0.04f) / 0.22f;
                if (fadeIn > 1.0f) {
                    fadeIn = 1.0f;
                }
                if (fadeIn < 0.0f) {
                    fadeIn = 0.0f;
                }
                float fadeOut = (1.0f - r) / 0.20f;
                if (fadeOut > 1.0f) {
                    fadeOut = 1.0f;
                }
                if (fadeOut < 0.0f) {
                    fadeOut = 0.0f;
                }
                a = a * fadeIn * fadeOut * (maxA / 255.0f);
                final int ai = (int) (a * 255.0f + 0.5f);
                px[y * size + x] = PACK_WHITE | ai;
            }
        }
        return px;
    }
}
