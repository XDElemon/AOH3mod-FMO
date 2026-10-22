package aoc.kingdoms.lukasz.map.battles;

/**
 * 文明 tag → 空军科技树国家组（0=中国 1=欧洲 2=俄国 3=美国）。
 *
 * 本文件由 tools/gen_air_tags.py 从 data/air_tags.json 生成，勿手改。
 *
 * 口径（v37）：
 *   中国 = chi/chn + pak（巴基斯坦）
 *   欧洲 = 欧洲各国（见 TAG_EU，按现有 tag 量力而为）
 *   美国 = usa + tai/jap/kor/aus/can/isr/sau/tur
 *   俄国 = rus/sov + ind/vnm/prk/irn 等，**其余一切未知 tag 全部兜底到俄国组**
 *          （旧实现默认中国：中国玩家看着对，别的文明全部拿到中国机）
 *
 * 判定核心 groupOfCode(int) 故意写成纯整数单方法 —— 行为闸门是只跑入口方法体的微型解释器，
 * 不跟进嵌套调用；拆成两层这条最该被执行的判定反而测不到。
 */
public final class AirGroupTags {

    public static final int CN = 0;
    public static final int EU = 1;
    public static final int RU = 2;
    public static final int US = 3;

    /** 未知 tag 的归属（规格：一律落俄国组） */
    public static final int DEFAULT_GROUP = 3;

    /** CN 组：chi chn pak */
    private static final int[] TAG_CN = {
            0x636869 /*chi*/, 0x63686e /*chn*/, 0x70616b /*pak*/,
    };

    /** EU 组：alb aut bel bos bul cro csk cyp cze den eng est fin fra ger gre hol hun ice ire ita kos lat lit lux mac mol ned nor pol por rom sco ser slo slv spa svk svn swe swi swz ukr wal yug */
    private static final int[] TAG_EU = {
            0x616c62 /*alb*/, 0x617574 /*aut*/, 0x62656c /*bel*/, 0x626f73 /*bos*/,
            0x62756c /*bul*/, 0x63726f /*cro*/, 0x63736b /*csk*/, 0x637970 /*cyp*/,
            0x637a65 /*cze*/, 0x64656e /*den*/, 0x656e67 /*eng*/, 0x657374 /*est*/,
            0x66696e /*fin*/, 0x667261 /*fra*/, 0x676572 /*ger*/, 0x677265 /*gre*/,
            0x686f6c /*hol*/, 0x68756e /*hun*/, 0x696365 /*ice*/, 0x697265 /*ire*/,
            0x697461 /*ita*/, 0x6b6f73 /*kos*/, 0x6c6174 /*lat*/, 0x6c6974 /*lit*/,
            0x6c7578 /*lux*/, 0x6d6163 /*mac*/, 0x6d6f6c /*mol*/, 0x6e6564 /*ned*/,
            0x6e6f72 /*nor*/, 0x706f6c /*pol*/, 0x706f72 /*por*/, 0x726f6d /*rom*/,
            0x73636f /*sco*/, 0x736572 /*ser*/, 0x736c6f /*slo*/, 0x736c76 /*slv*/,
            0x737061 /*spa*/, 0x73766b /*svk*/, 0x73766e /*svn*/, 0x737765 /*swe*/,
            0x737769 /*swi*/, 0x73777a /*swz*/, 0x756b72 /*ukr*/, 0x77616c /*wal*/,
            0x797567 /*yug*/,
    };

    /** RU 组：ind irn prk rus sov vnm */
    private static final int[] TAG_RU = {
            0x696e64 /*ind*/, 0x69726e /*irn*/, 0x70726b /*prk*/, 0x727573 /*rus*/,
            0x736f76 /*sov*/, 0x766e6d /*vnm*/,
    };

    /** US 组：aus can isr jap kor sau tai tur usa */
    private static final int[] TAG_US = {
            0x617573 /*aus*/, 0x63616e /*can*/, 0x697372 /*isr*/, 0x6a6170 /*jap*/,
            0x6b6f72 /*kor*/, 0x736175 /*sau*/, 0x746169 /*tai*/, 0x747572 /*tur*/,
            0x757361 /*usa*/,
    };

    private AirGroupTags() {
    }

    /** 文明 ID → 国家组；拿不到文明/没有 tag → 兜底组 */
    public static int groupOfCiv(int civID) {
        aoc.kingdoms.lukasz.map.civilization.Civilization civ =
                aoc.kingdoms.lukasz.jakowski.Game.getCiv(civID);
        if (civ == null) {
            return DEFAULT_GROUP;
        }
        return groupOfTag(civ.getCivTag());
    }

    /** 文明 tag → 国家组；null/不足 3 字母 → 兜底组 */
    public static int groupOfTag(String tag) {
        int code = codeOf(tag);
        if (code == 0) {
            return DEFAULT_GROUP;
        }
        return groupOfCode(code);
    }

    /** tag 前 3 个小写字母压成整数；取不到 → 0 */
    public static int codeOf(String tag) {
        if (tag == null) {
            return 0;
        }
        String t = tag.toLowerCase();
        if (t.length() < 3) {
            return 0;
        }
        return (t.charAt(0) << 16) | (t.charAt(1) << 8) | t.charAt(2);
    }

    /** 三字母代码 → 国家组（纯整数查表；未知代码 → DEFAULT_GROUP） */
    public static int groupOfCode(int code) {
        if (code == 0) {
            return DEFAULT_GROUP;
        }
        for (int i = 0; i < TAG_CN.length; i++) {
            if (TAG_CN[i] == code) {
                return CN;
            }
        }
        for (int i = 0; i < TAG_EU.length; i++) {
            if (TAG_EU[i] == code) {
                return EU;
            }
        }
        for (int i = 0; i < TAG_US.length; i++) {
            if (TAG_US[i] == code) {
                return US;
            }
        }
        for (int i = 0; i < TAG_RU.length; i++) {
            if (TAG_RU[i] == code) {
                return RU;
            }
        }
        return DEFAULT_GROUP;
    }
}
