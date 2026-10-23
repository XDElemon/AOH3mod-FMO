package aoc.kingdoms.lukasz.map.province;

import java.io.FileOutputStream;

/**
 * 临时诊断（v49d 专用）：把雷达/红盘渲染路径的实况追加到游戏自己的外部目录，
 * 免开 debug 开关、免 logcat 权限，跑几秒就能读出"到底走到哪一步"。
 *
 * <p><b>发布版必须整体删掉这个类与三处调用</b>（渲染线程上写文件，且会往存档目录丢垃圾）。
 */
public final class RadarDiag {

    private static final String PATH =
            "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt";
    private static final int MAX_LINES = 400;
    private static int n = 0;

    private RadarDiag() {
    }

    public static void log(String s) {
        if (n >= MAX_LINES) {
            return;
        }
        n++;
        try {
            FileOutputStream os = new FileOutputStream(PATH, true);
            os.write(("RDT " + s + "\n").getBytes("UTF-8"));
            os.flush();
            os.close();
        } catch (Throwable t) {
            // 诊断失败不能影响渲染
        }
    }

    public static String i(int v) {
        return Integer.toString(v);
    }

    public static String f(float v) {
        int x = (int) (v * 100.0f);
        return (x / 100) + "." + (x % 100 < 10 ? "0" : "") + (x % 100);
    }
}
