# FMO 技能文档（三份）

这三份是 DSHA 技能的**主副本**：仓库里存一份（这部分），容器里的 `/root/.dsh/skills/` 每次重启都会清空，
`/sdcard/Download/fmo_baseline/setup_env.sh` 会在自举后把它们复制回去。

| 技能 | 覆盖 |
|---|---|
| `fmo-patch-pipeline` | 环境自举（容器临时性）、Java→smali 主链、四道闸门、出包/签名/真机、踩坑与故障排查 |
| `fmo-air-tech-tree` | 64 槽位编码、科技 ID 固定化与过继/占位、国家树归属、编制名与图标、字段口径、代差数值、增删机型 SOP、存档兼容 |
| `fmo-air-rendering` | 雷达盘最终形态（同一 FBO + 单次合成 + 净 0.15）、投影/坐标事实、Java↔smali 桥、B24/B25/B26 口径、真机验收、历代翻车点 |

人工安装：

```bash
mkdir -p /root/.dsh/skills
cp -r skills/fmo-* /root/.dsh/skills/
```

写这三份时对齐的仓库状态：`2ef7ead`（v46 之后的文档提交）。
改动渲染/数据/工具链后，**顺手更新对应的 SKILL.md**，否则下次接手的人（包括你自己）会被旧口径带偏。
