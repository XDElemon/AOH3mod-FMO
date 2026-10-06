#!/system/bin/sh
# verify_ondevice.sh —— 在设备上真起 ART 校验我们的探针类（先验后装）
#
# 用法（需先由 AI 侧把两个 dex 放到 /data/local/tmp）：
#   sh verify_ondevice.sh /data/local/tmp/r6dXXX_classes.dex
#
# 做法：用 app_process 起一个 ART VM，CLASSPATH = 待验 dex + 验证器 dex，
#       然后调用 ProbeVerifier.main，它会逐个调用 AirPosProbe 的方法。
#       —— 若某方法过不了 ART 校验，会打印 VerifyError（前三次闪退就是这个）。
#       —— 打印 PROBE_ERR ＜方法名＞ :: 其他异常 表示"校验通过，只是运行期缺依赖/空参"。
#
# 判据：
#   OK   = 输出里没有 VerifyError，且最后有 VERIFIER_DONE
#   FAIL = 出现 java.lang.VerifyError
DEX="$1"
if [ -z "$DEX" ]; then
    echo "用法: sh verify_ondevice.sh /data/local/tmp/r6dXXX_classes.dex"
    exit 2
fi
PV=/data/local/tmp/pv.dex
if [ ! -f "$PV" ]; then
    echo "缺 $PV（验证器 dex，由 AI 侧 /sdcard/GLG/历史23/pvtest/pv.dex 拷入）"
    exit 2
fi
OUT=/data/local/tmp/pv_out.txt
CLASSPATH="$PV:$DEX" app_process /system/bin ProbeVerifier > "$OUT" 2>&1
echo "---- 输出 ----"
cat "$OUT"
echo "---- 判定 ----"
if grep -q 'VerifyError' "$OUT"; then
    echo "FAIL: 存在 VerifyError（不许装机）"
    exit 1
fi
if grep -q 'VERIFIER_DONE' "$OUT"; then
    echo "OK: ART 校验无 VerifyError"
    exit 0
fi
echo "WARN: 未跑到结束（可能 app_process 起不来），请人工看输出"
exit 1