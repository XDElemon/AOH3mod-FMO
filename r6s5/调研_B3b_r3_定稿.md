# 调研 · B3b R3（定稿）：锚点 / 真值表 / 寄存器 / 门禁

> 2026-10-11｜施工前定稿（三轮调研之三）。**本批＝代码批**（3 处注入 + 1 个新方法）。

## 1) 规则真值表（唯一判定）
`allowed(techID, civID)`：
- `techID < 32` → **true**（旧科技，任何人）
- `techID > 74` → **true**
- `32..44` → 组需=**中(0)**；`45..54` → 组需=**美(3)**；`55..63` → 组需=**欧(1)**；`64..74` → 组需=**俄(2)**
- 组 = `AirForceManager.artGroupOf(civID)`（默认俄）。
- 隐藏=跳过建按钮（看不到）；禁用=闸门返回 false（研不了/AI不选）。

## 2) 锚点（逐字，施工前先验唯一命中）
- **A. TechnologyTree.smali**：嵌在 `getTechBG` 的 `.end method` 之后、`loadTechnology` 之前，新增方法：
```
.method public static isTechAllowedForCiv(II)Z
    .registers 5
    const/16 v0, 0x20
    if-ge p0, v0, :allow
    const/16 v0, 0x4a
    if-le p0, v0, :allow
    const/16 v0, 0x2c
    if-le p0, v0, :g3chk
    const/4 v1, 0x0
    goto :chk
:g3chk
    const/16 v0, 0x36
    if-le p0, v0, :g1chk
    const/4 v1, 0x3
    goto :chk
:g1chk
    const/16 v0, 0x3f
    if-le p0, v0, :g2set
    const/4 v1, 0x1
    goto :chk
:g2set
    const/4 v1, 0x2
:chk
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v2
    if-ne v1, v2, :allow
    const/4 v0, 0x0
    return v0
:allow
    const/4 v0, 0x1
    return v0
.end method
```
- **B. InGame_TechnologyTree.smali**（构造器循环顶部，`if-ge v6, v0, :cond_23a` 之后）：
```
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    invoke-static {v6, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z
    move-result v0
    if-nez v0, :b3b_vis_ok
    add-int/lit8 v6, v6, 0x1
    goto :goto_56
:b3b_vis_ok
```
- **C. Civilization.smali**（`getAvailableToResearch` 尾部替换）：
```
    :cond_5a
    const/16 v0, 0x20
    if-ge p1, v0, :b3b_allow
    const/16 v0, 0x4a
    if-le p1, v0, :b3b_allow
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I
    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->isTechAllowedForCiv(II)Z
    move-result v0
    if-nez v0, :b3b_allow
    const/4 v0, 0x0
    return v0
:b3b_allow
    const/4 v0, 0x1
    return v0
.end method
```
（原尾部 `:cond_5a / const/4 v0,0x1 / return v0 / .end method` 整体替换；`.registers 5` 中 v0 自由。）

## 3) 寄存器与工具链检查
- A：`.registers 5`（静态双参 → v0/v1/v2 自由）。
- B：构造器 `.registers 26`；该点 v0 可借（body 每次使用前重设）；**v5=0x64 为 body 在用字面量，勿动**。
- C：`.registers 5`；该点 v0 自由。
- 施工后必跑：`check_params`/`regtype_gate`/`check_castorder`（仅本批 3 个文件）→ `check_b3b.py` → assemble → 八件套。

## 4) 门禁 check_b3b.py（≥4 断言 + ≥3 负样本 + 行为级模拟器）
- S1 文本：A/B/C 三处嵌入逐字存在、标签唯一（`b3b_vis_ok`×2、`b3b_allow`×3 等计数）。
- S2 **行为级模拟器**：解析 A 的真实 smali 逐条执行（const/if-ge/if-le/goto/return；`artGroupOf` 以桩函数返回输入组）→ 断言全样本：tech∈{31,75,-1}=allow、32..44×4组、45..54×4组、55..63×4组、64..74×4组 共 16+4 条；再链接 C 的尾部逻辑（范围守卫+调用）交叉 8 条。
- S3 反转敏感性：把 A 中任一 `if-le` 改成 `if-lt` 或把组 3↔1 互换 → 模拟器必须变红（自检脚本内完成）。
- 负数样本：N1 删 B 注入→S1 红；N2 把 44→43→S2 红；N3 把组3改成组1→S2 红；N4 删 C 注入→S1 红。

## 5) 验收标准（可证伪）
- 中国玩家：树只见【旧32节点 + 中国空军块】；日本→美块；德→欧块；印→俄块；小国→俄块。
- 选择/队列/悬停均无他国科技；AI 正常研究自家线。
- 旧树、其余系统、无崩溃（回归）。
- 回退：重装 b3_v4。

## 7) 施工实际版（极性修正说明 · 2026-10-11）
> §2 的示意代码存在极性笔误；**实际施工版以 `_patch_b3b.py` 内 A/B/C 文本为准**（已通过行为级模拟器 68+10 样本 + 反转敏感性验证）。修正要点：
> - 范围守卫：`if-ge p0, 0x20, :nlow`（≥32 才继续；<32 直接 allow）＋ `if-le p0, 0x4a, :inr`（≤74 才继续；>74 allow）；
> - 组链：`if-gt`（>44 → 下跳；>54；>63）逐级判定；
> - 允许判定：`if-eq v1, v2, :allow`（组相等→允许）；B 块用 `if-nez v0, :b3b_vis_ok`；C 块用 `if-eqz v0, :b3b_no`。