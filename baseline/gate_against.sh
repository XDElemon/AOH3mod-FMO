#!/bin/bash
# ============================================================
# gate_against.sh <基线apk> <新apk> <允许列表文件>
# 允许列表文件：每行一个方法签名，例如
#   Laoc/kingdoms/lukasz/map/battles/AirMission;->unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
# 判据：新包相对基线，方法体变化必须全部落在允许列表内；否则失败。
# ============================================================
set -euo pipefail
[ $# -eq 3 ] || { echo "用法: gate_against.sh <基线apk> <新apk> <allow.txt>"; exit 2; }
BASE="$1"; NEW="$2"; ALLOW="$3"
[ -f "$BASE" ] || { echo "基线不存在: $BASE"; exit 2; }
[ -f "$NEW" ]  || { echo "新包不存在: $NEW"; exit 2; }
[ -f "$ALLOW" ] || { echo "允许列表不存在: $ALLOW"; exit 2; }
DIR="$(cd "$(dirname "$0")" && pwd)"
python3 "$DIR/../tools/gates/gate_change_scope.py" --base "$BASE" --new "$NEW" --allow-file "$ALLOW"
