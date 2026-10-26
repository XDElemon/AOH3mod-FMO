#!/bin/bash
# AirLab 启动脚本：编译 AirCraft + AirLab，然后起本地服务（默认 8765）
set -uo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
PORT="${1:-8765}"
mkdir -p /tmp/airlab_cls /tmp/airlab_src
cd "$ROOT"
# 只编需要的两个文件（-sourcepath 指到空目录，避免扫到仓库里的中文文件名）
javac -encoding UTF-8 -sourcepath /tmp/airlab_src -d /tmp/airlab_cls \
      src/java/aoc/kingdoms/lukasz/map/battles/AirCraft.java tools/airlab/AirLab.java || exit 1
export AIRLAB_ROOT="$ROOT"
exec java -cp /tmp/airlab_cls fmo.airlab.AirLab "$PORT"
