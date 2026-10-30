# FMO 技能文档（十七份）

这十七份是 DSHA 技能的**主副本**：仓库里存一份（这部分），容器里的 `/root/.dsh/skills/` 每次重启都会清空，
`/sdcard/Download/fmo_baseline/setup_env.sh` 会在自举后把它们复制回去。

| 技能 | 覆盖 |
|---|---|
| `fmo-patch-pipeline` | 环境自举、Java→smali 主链、四道闸门（B1–B47）、出包/签名/真机、踩坑与故障排查 |
| `fmo-air-rewrite` | 空军重写**总览**：M1（真源/连续移动/脱离陆军/真实运动学）已完成、M2–M7 路线、架构表、历史坑索引 |
| `fmo-air-motion` | **真实飞行运动学**（M1d）：AirCraft/AirMotion/AirPos、三种坐标空间、机头 180−heading、暂停自查、到点不停车、调参与 B44/B46 |
| `fmo-missile-types` | **导弹类型表**（M2 地基）：7 类数据、生成器、B47、能力↔类型映射、中段只探测/反导只拦核弹头口径、M2 内核接法 |
| `fmo-air-tech-tree` | 64 槽位编码、科技 ID、国家树、编制名与图标、字段口径、代差、增删机型 SOP、存档兼容；Agility/fuel 新语义 |
| `fmo-air-rendering` | 雷达盘最终形态（同一 FBO + 单次合成 + 净 0.15）、投影/坐标事实、Java↔smali 桥、B24/B25/B26、真机验收、历代翻车点 |
| `fmo-missile-system` | 旧 A2A 系统（`msFx*/adFx*`）细节：发射门槛、两套时钟、状态机、坐标契约、颜色、B8–B10/B35、v56–v69 翻车点（M2 后被类型表/`AirProjectile` 取代） |
| `fmo-capability-matrix` | 机型七项能力开关：数据 `capabilities{}`、严格口径、派生规则、B11/B20/B32/B36、核弹/尾炮/吊舱炮/纸面机坑；能力→导弹类型映射 |
| `fmo-build-integrity` | 出包完整性：`build/` 与 `stage/` 资产不同步事故、`build_candidate` 拦截、MissileTypes 一致性、出包后 6 项核对 |
| `fmo-offline-probe` | 离线真跑 smali：Interp 用法、mock 表、宽指令预翻、探针→闸门晋升、先红后绿；B45/B46/B47 三个新模板 |
| `fmo-disc-overlay` | 地图范围盘（蓝=探测/红=防空）叠放与裁剪：分层口径、AirDiscQueue/AirRect、半径排序、扫描行差集、五条死路、v88 未解问题 |
| `fmo-render-invisible` | 「代码在跑但屏幕上什么都没有」排查：开关实验、日志三门控、桥空判极性、原版内联、诊断包；新增坐标空间/机头/暂停三类 |
| `fmo-building-strike` | S8 建筑摧毁：建筑配置索引空间、唯一建筑、`destroyBuilding` 刷新清单、`AirBuildingStrike`、B42 |
| `fmo-air-defense` | **防空（反导阵地）全链路**：建筑识别、开火节奏、Buildings.json→AirDefCfg→AirDefCfgRt、SAM 运动学、百分比伤害+斩杀线、蓝/红盘半径与探测一致、B37/B49/B54/B55/B56 |
| `fmo-asset-config` | **改游戏资产配置的安全做法**：gdx Json 严格模式（未知键=整份失败）、数据类补字段、stage 覆盖、字节一致、B49 整合断言、列表空白排查 |

人工安装：

```bash
mkdir -p /root/.dsh/skills
cp -r skills/fmo-* /root/.dsh/skills/
```

写这几份时对齐的仓库状态：**v139（防空 v128–v139 全部验收）**，2026-10-30。
改动渲染/数据/导弹/工具链后，**顺手更新对应的 SKILL.md**，否则下次接手的人（包括你自己）会被旧口径带偏。
