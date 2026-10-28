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

    /**
     * v107：导弹面板行 —— 逐机型的导弹速度/射程/载弹/近炸半径（B23 同款契约：返回带前导换行的整段）。
     *
     * <p>为什么要它：`Speed`/`MissileSpeed` 从 v107 起逐机型不同，但面板原来只有速度/航程/载弹，
     * 看不到"导弹快不快、够不够远"。这行把 `AirModelStats`（真源）与 `MissileTypes`（类型近炸半径）
     * 直接拼给人看，避免"改了数据却看不出区别"。</p>
     *
     * <p>无空空导弹的机型（轰炸机等）只显示挂载结论，不显示数字，免得读者以为是 0 射程。</p>
     */
    public static String missileLine(int modelAid) {
        try {
            StringBuilder b = new StringBuilder();
            b.append("\n导弹：");
            if (AirModelStats.canAAMissile(modelAid)) {
                int spd = (int) (AirModelStats.missileSpeed(modelAid) + 0.5f);
                b.append("速度 ").append(spd);
                b.append(" · 射程 ").append(AirModelStats.missileRangeOf(modelAid));
                b.append(" · 载弹 ").append(AirModelStats.missileCountOf(modelAid));
                int t = MissileTypeIds.indexOf("AAM");
                if (t >= 0) {
                    b.append(" · 近炸 ").append((int) (MissileTypes.fuseRadiusOf(t) + 0.5f));
                }
            } else {
                b.append("无空空弹");
            }
            if (AirModelStats.canAGMissile(modelAid)) {
                b.append("｜空地：有");
            }
            if (AirModelStats.hasGun(modelAid)) {
                b.append("｜机炮：同省");
            }
            return b.toString();
        } catch (Throwable t) {
            return "";
        }
    }

    /** 无人机标记 → 追加到 hover 串的片段（带前导换行 = 独立一行；非无人机为空串） */
    public static String droneTag(boolean isDrone) {
        if (isDrone) {
            return "\n无人机";
        }
        return "";
    }
}
