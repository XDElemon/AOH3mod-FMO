# 终序千禧 · AI 空军接入 + 玩家空军复原（Operit 工程仓）

> 本仓由 Operit（手机端 AI）与"电脑端执行者"协同产出，用于 **smali 逆向改包**（包名 `age.of.history3.qiamxi.zhiri`）。
> ⚠️ 与本包无关的另一工程 `age.of.history3.TNO.yunsi` **勿混入**。

## 一、这是什么
在《终序千禧》（Age of History 3 汉化版）里接入 **AI 空军**，并复原/重建 **玩家侧自动出击**：
- **Phase A**：玩家侧派发链（能起飞、按目标派机、遵守自己的迷雾）——已验收
- **Phase B（进行中）**：**情报门 + 三档评分**（r6c001 已装机）→ **rove 巡炸**（B2）→ **cfg 配置驱动**（B3）

## 二、目录
| 目录 | 内容 |
|---|---|
| `toolchain/` | 构建/装机/抓样工具链 + **全部门禁脚本**（㉙㊽㊾㊿51/52/53/54 等） |
| `r6s5/` | 全部设计/调研/复盘文档、验收卡、**逐字件库** `phaseB_verbatim2/`（从历史补丁脚本精确抽取的方法体） |
| `patches/` | 本项目历次补丁脚本（r4c*/r5*/r6*）——**素材包核心**（含逐字 smali 原文） |
| `materials/` | 设计档/交接文档/铁律速查/方案书（从 docpack 复制） |
| `base/` | 底座 smali 树（`w3a_smali_20260918.tar.gz`＝R4c176b，6.4 MB） |
| `build_inputs/` | keystore、构建输入（若含大文件已被排除） |

## 三、复现三步
1. **解底座**：`tar xzf base/w3a_smali_20260918.tar.gz -C /tmp/revx`（得 5520 个 smali）
2. **打补丁**：按需运行 `patches/` 下脚本；**Phase B 施工脚本**见 `r6c001_b1a.py` / `r6c001_b1b.py`（内含"逐字件 + 规范化器 + 门禁"）
3. **汇编 → 打包 → 装机 → 三对齐**：
   ```
   java -cp "$SMALI_CP" RunSmali /tmp/revx /tmp/<batch>_classes.dex      # 必须出现 result=true
   bash toolchain/act/build_fast.sh <batch>                              # 只换 classes.dex 的快打包
   sh  toolchain/autotap_install.sh <apk>                                # vivo 安装框自动点按
   ```
   **三对齐判据**：`apk md5` ＋ **`apk 内 classes.dex md5`** ＋ `assets/map/Earth3/* = 18510` ＋ apk 字节数。

## 四、铁律（血泪换来，务必遵守）
1. **极性**：`if-eqz`=等于 0 跳 / `if-nez`=≠0 跳 / `if-ltz`=<0 跳 / `if-gez`=≥0 跳；**布尔返回值单列**（"条件成立才跳过"用 `if-nez`）。
2. **比较方向**：保留最小分用 `cmpg(best, score)`；写反会出现"永远挑最差/更近反被跳过"（r4c191、r5c046z2-E1 两次血案）。
3. **静态常量类型**：`Float.POSITIVE_INFINITY` 等是**基本类型**；`sget-object …:Ljava/lang/Float;` **能过校验、运行时 NoSuchFieldError**。要 +Inf 用 `Float.intBitsToFloat(0x7f800000)`。
4. **同寄存器不得跨类型汇合**（int/float/obj）——VerifyError 会把**整个类**废掉。
5. **寄存器**：工具链硬上限 16；借"死寄存器"需画像证明（引用写 0 次）。
6. **锚点**：smali 指令间普遍有空行 ⇒ 正则用 `\s*`；**逐字件可能有非法方言**（`mul-float/2addr {a, b}`）⇒ 必须过规范化器。
7. **门禁双查**：结构齐备 **＋ 方向正确**（只查结构会放过反极性）。
8. **磁盘**：满盘表现为"装机失败/会话异常"，不是写文件报错；每批清 `/tmp/*_{work,aligned,signed}.apk`。
9. **AI 隔离**：Phase A/B 只服务玩家；AI 智能线（`strikeTick_A1`/`a1*`/`a1b*`）与老链对非玩家机场**不得改动**。
10. **三对齐**：装完必须独立核验 apk/dex/Earth3，别拿旧 md5 对账。

## 五、素材包说明（别人怎么用）
- `patches/` + `materials/` 是"**当年怎么改的**"完整痕迹：每个补丁脚本里都嵌着**逐字 smali 方法体**与**真值表注释**，可直接复用。
- `r6s5/phaseB_verbatim2/` 是从中**精确抽取**的干净方法体（54 件），Phase B 就是靠它"逐字复原"。
- 已丢失不可复原的三件（B3-A1 骨架）：`updateOffensives` / `pickStrikeTarget` / `tryStrikeForAirport`（其补丁 r4c177/r4c178 不在素材里）；本工程用"路线 A"把它们的功能挂到现存的 `*P` 方法上（行为对齐）。

## 六、免责
仅供个人学习/单机 MOD 研究；请勿用于传播盗版或破坏他人游戏体验。
