# FMO 技能文档（七份）

这七份是 DSHA 技能的**主副本**：仓库里存一份（这部分），容器里的 `/root/.dsh/skills/` 每次重启都会清空，
`/sdcard/Download/fmo_baseline/setup_env.sh` 会在自举后把它们复制回去。

| 技能 | 覆盖 |
|---|---|
| `fmo-patch-pipeline` | 环境自举（容器临时性）、Java→smali 主链、四道闸门、出包/签名/真机、踩坑与故障排查 |
| `fmo-air-tech-tree` | 64 槽位编码、科技 ID 固定化与过继/占位、国家树归属、编制名与图标、字段口径、代差数值、增删机型 SOP、存档兼容 |
| `fmo-air-rendering` | 雷达盘最终形态（同一 FBO + 单次合成 + 净 0.15）、投影/坐标事实、Java↔smali 桥、B24/B25/B26 口径、真机验收、历代翻车点 |
| `fmo-missile-system` | 空空导弹（A2A）：发射门槛、**发射时定死的结算方式（`msHourMode`）**、`msFxInit` 状态机、世界↔屏幕单次换算、接触径/伤害、速度收口、国家色、B8–B10/B35、`nMS` 日志口径、v56–v69 翻车点 |
| `fmo-capability-matrix` | 机型七项能力开关（对空/对地机炮、空空/空地、战术核弹、常规/核 ALBM）：数据 `capabilities{}`、严格口径、派生规则、B11/B20/B32/B36、核弹/尾炮/吊舱炮/纸面机的判定坑 |
| `fmo-build-integrity` | 出包完整性：`build/` 与 `stage/` 资产不同步的历史事故、`build_candidate` 拦截、出包后 6 项核对（manifest/dex/资产/签名/对齐/指纹） |
| `fmo-offline-probe` | 离线真跑 smali：Interp 用法、mock 表、宽指令预翻、探针→闸门晋升、先红后绿纪律 |

人工安装：

```bash
mkdir -p /root/.dsh/skills
cp -r skills/fmo-* /root/.dsh/skills/
```

写这几份时对齐的仓库状态：v71（2026-10-25，机型七项能力开关，机炮拆对空/对地）。
改动渲染/数据/导弹/工具链后，**顺手更新对应的 SKILL.md**，否则下次接手的人（包括你自己）会被旧口径带偏。
