#!/bin/bash
# =============================================================================
# preinstall.sh —— 预装流水线（AI 侧，第一段）
#
#   用法：  bash preinstall.sh <批次> <模板apk> [要检查的探针类...]
#   例：    bash preinstall.sh r6d152 /sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d151.apk
#
# 顺序（任何一步红 ⇒ 立即退出、不许装箱）：
#   ① 生成真机验证器（解析探针类里所有方法 ⇒ ProbeVerifier.smali ⇒ pv.dex）
#   ② 静态检查：check_params.py（pN/vN 越界）+ check_regtype.py（对象↔数值跨合并）
#   ③ 极性/结构门禁（若存在 check_<项目>.py 则一并跑）
#   ④ 汇编 + 八件套 verify.sh（Reg/Init/Range BAD 必须 0）
#   ⑤ 打包 build_fast.sh（模板＝上一个归档包）
#   ⑥ 从【要装的 APK】里抽出 classes.dex（“验的就是装的”）
#   ⑦ 打印第二段的设备侧命令（ART 校验）
#
# 第二段（安卓侧）：sh toolchain/act/verify_ondevice.sh /data/local/tmp/pi_classes.dex
#   出现 VerifyError ⇒ 不许装机。
# =============================================================================
set -u
ACT="$(cd "$(dirname "$0")" && pwd)"
cd "$ACT" || exit 1

BATCH="${1:-}"
TEMPLATE="${2:-}"
if [ -z "$BATCH" ] || [ -z "$TEMPLATE" ]; then
    echo "用法: bash preinstall.sh <批次> <模板apk> [探针类...]"
    exit 2
fi
shift 2
CLASSES=("$@")
if [ ${#CLASSES[@]} -eq 0 ]; then
    CLASSES=("/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali")
fi

fail() { echo; echo "❌ 流水线中止：$1"; exit 1; }

echo "===== ① 生成真机验证器 ====="
python3 gen_verifier.py "${CLASSES[@]}" || fail "生成验证器失败"

echo
echo "===== ② 静态检查 ====="
for f in "${CLASSES[@]}"; do
    echo "--- check_params: $(basename "$f")"
    python3 check_params.py --gate "$f" || fail "参数/寄存器编号越界：$f"
    echo "--- check_regtype(增量门禁): $(basename "$f")"
    python3 regtype_gate.py "$f" || fail "寄存器类型高危（较本批前新增）：$f"
    echo "--- check_castorder: $(basename "$f")"
    python3 check_castorder.py "$f" || fail "类型流高危（未 check-cast 就访问字段）：$f"
done

echo
echo "===== ③ 项目门禁（有就跑）====="
for g in check_r6d259.py check_r6t001.py check_r6d258.py sim_r6d258.py check_r6d257.py sim_r6d257.py check_r6d255.py sim_r6d255.py check_r6d174.py check_r6d173.py sim_near.py check_r6d172.py check_r6d171.py sim_adturn.py check_r6d169.py sim_addiag.py check_aircol.py check_r6d165.py check_r6d163.py check_r6d162.py check_r6d161.py check_r6d160.py check_r6d159.py check_r6d158.py check_r6d157.py check_r6d156.py check_r6d155.py check_r6d154.py check_r6d151_ad1.py check_r6d150_ad1.py check_r6d149_ad1.py check_r6d148_ad1.py; do
    if [ -f "$g" ]; then
        echo "--- $g"
        OUTG=$(python3 "$g" 2>&1); RC=$?
        echo "$OUTG" | tail -2
        if echo "$OUTG" | grep -q 'FileNotFoundError'; then
            echo "    ⤵ SKIP（该门禁的输入文件已不存在，如已回档的防空类）"
            continue
        fi
        if [ "$RC" != "0" ]; then
            fail "门禁未过：$g（exit=$RC）"
        fi
        # 双保险：失败输出里不得残留 ✅
        if echo "$OUTG" | grep -q '❌'; then
            fail "门禁输出含 ❌：$g"
        fi
    fi
done

echo
echo "===== ④ 汇编 + 八件套 ====="
bash assemble.sh "$BATCH" | tail -3
grep -q 'result=true' /tmp/.asm_out.txt || fail "汇编失败（RunSmali result != true）"
DEX="/tmp/${BATCH}_classes.dex"
[ -f "$DEX" ] || fail "找不到 $DEX"
bash verify.sh "$DEX" "$TEMPLATE" > /tmp/.pi_verify.txt 2>&1
grep -E 'Invoke/Regs/Init/Range BAD 合计' /tmp/.pi_verify.txt
grep -q 'Invoke/Regs/Init/Range BAD 合计=0' /tmp/.pi_verify.txt || fail "八件套 BAD != 0"

echo
echo "===== ⑤ 打包（模板＝$TEMPLATE）====="
bash build_fast.sh "$BATCH" "$DEX" "$TEMPLATE" | tail -3
APK="/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_${BATCH}.apk"
[ -f "$APK" ] || fail "找不到归档 $APK"

echo
echo "===== ⑥ 从要装的 APK 里抽 classes.dex ====="
OUT=/sdcard/GLG/历史23/pvtest/pi_classes.dex
python3 - "$APK" "$OUT" <<'PY'
import zipfile, hashlib, sys
apk, out = sys.argv[1], sys.argv[2]
b = zipfile.ZipFile(apk).read('classes.dex')
print('   apk 内 classes.dex md5 = %s  (%d bytes)' % (hashlib.md5(b).hexdigest(), len(b)))
open(out, 'wb').write(b)
PY
[ -f "$OUT" ] || fail "抽 dex 失败"

echo
echo "===== ⑦ 下一步：设备侧 ART 校验（必须做）====="
echo "  1) cp $OUT /sdcard/GLG/历史23/pvtest/pv.dex  →  /data/local/tmp/"
echo "  2) sh toolchain/act/verify_ondevice.sh /data/local/tmp/pi_classes.dex"
echo "  出现 VerifyError ⇒ 不许装机；出现 VERIFIER_DONE 且无 VerifyError ⇒ 可装 $APK"
echo
echo "✅ 第一段通过（静态 + 汇编 + 打包 + 抽 dex 全部 OK）"