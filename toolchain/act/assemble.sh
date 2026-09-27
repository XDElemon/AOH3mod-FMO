#!/bin/bash
# ============================================================
# smali-assemble: /tmp/w3a/smali ──RunSmali──> dex
# 用法: bash assemble.sh <批次> [输出dex路径]
# 例:   bash assemble.sh r4c177            → /tmp/r4c177_classes.dex
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
BATCH="${1:-}"; [ -n "$BATCH" ] || die "用法: assemble.sh <批次> [输出dex路径]"
OUT="${2:-/tmp/${BATCH}_classes.dex}"

need_tmp
[ -d "$SMALI_TREE" ] || die "工作树不在: $SMALI_TREE"
[ -f "$OUT" ] && { cp -p "$OUT" "$OUT.pre_$BATCH" || true; warn "旧产物已备份为 $OUT.pre_$BATCH"; }

echo "== 汇编 $SMALI_TREE -> $OUT"
cd /tmp || die "进不去 /tmp"
java -cp "$SMALI_CP" RunSmali "$SMALI_TREE" "$OUT" 2>&1 | tee /tmp/.asm_out.txt | tail -20
rc=${PIPESTATUS[0]}
[ "$rc" = 0 ] || die "RunSmali 退出码 $rc（常见：标签重复/未定义、寄存器越界、指令格式错）"
# 【r5c030 修】RunSmali 失败时仍返回 0，必须在输出里核对 result=true，否则会静默沿用旧 dex
grep -q 'result=true' /tmp/.asm_out.txt || { grep -n 'result=false\|cannot fit\|undefined\|Invalid' /tmp/.asm_out.txt | head -10; die "RunSmali 报 result≠true（汇编未成功，禁止沿用旧 dex）"; }
[ -s "$OUT" ] || die "产物为空: $OUT"

DEX_MD5=$(md5f "$OUT")
ok "汇编完成: $OUT ($(stat -c %s "$OUT") bytes)"
echo "   dex_md5=$DEX_MD5"
echo "   ⚠️ 汇编非确定：装哪版核哪版 md5，别拿旧 md5 对账"
echo "   下一步: bash verify.sh $OUT <上一版归档apk>"
