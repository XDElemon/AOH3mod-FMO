package aoc.kingdoms.lukasz.map.battles;

/**
 * 建造/选型面板的悬浮属性串（v38）：给 `InGame_AirForceOptions$BtnBuild` /
 * `$BtnSelect` 的 `buildElementHover()` 追加两行。
 *
 * 为什么要有它：那两处 hover 文本是**手写 smali** 的 StringBuilder 拼接序列
 * （`航程 … / 载弹 … / 花费 … / 建造时间 … 回合`）。再往里塞 `if-eqz` 判断
 * "是不是无人机"就又多了一个分支极性风险点（本仓栽过 7 次），所以判定与
 * 格式化都放在 Java 里，smali 只保留一条同构的 `invoke-static` + `append`：
 *
 *   iget v6, v2, …->RadarDetect:F
 *   invoke-static {v6}, AirPanelText->radarInt(F)I     → append(I)
 *   iget-boolean v6, v2, …->IsDrone:Z
 *   invoke-static {v6}, AirPanelText->droneTag(Z)Ljava/lang/String;  → append(String)
 *
 * 契约（纯函数，闸门 B23 直接跑）：
 *   radarInt(550.0f) = 550      radarInt(0) = 0      radarInt(-1) = 0
 *   droneTag(true)   = "\n无人机"   droneTag(false) = ""
 *
 * droneTag 返回**带前导换行**的整行：非无人机机型追加空串 ⇒ 面板上什么都不多，
 * 无人机机型多出独立一行"无人机"（规格：加一行，而不是塞进机型名）。
 */
public final class AirPanelText {

    private AirPanelText() {
    }

    /** 探测范围 → 面板上显示的整数（四舍五入；0/负数当 0，不显示 -1） */
    public static int radarInt(float v) {
        if (!(v > 0.0f)) {
            return 0;
        }
        return (int) (v + 0.5f);
    }

    /** 无人机标记 → 追加到 hover 串的片段（带前导换行 = 独立一行；非无人机为空串） */
    public static String droneTag(boolean isDrone) {
        if (isDrone) {
            return "\n无人机";
        }
        return "";
    }
}
