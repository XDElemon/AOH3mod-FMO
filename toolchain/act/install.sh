#!/bin/bash
# ============================================================
# install-verify: 推送 → 装机 → 设备 dex 核验 → Earth3 核验 → force-stop → 清理
# 用法: bash install.sh <批次> [--yes]      # 不给 --yes 只打印计划
# 依赖: 设备面轮询器（r6s5/devbridge_poll.sh）已在 Operit 侧启动
# ============================================================
set -uo pipefail
source "$(dirname "$0")/common.sh"
BATCH="${1:-}"; [ -n "$BATCH" ] || die "用法: install.sh <批次> [--yes]"
GO=0; HANDOFF=0
for a in "$@"; do [ "$a" = "--yes" ] && GO=1; [ "$a" = "--handoff" ] && HANDOFF=1; done
APK="$BUILD_APK_DIR/dbg_signed77_v119_${BATCH}.apk"
DEVTMP="$DEV_TMP_DIR/${BATCH}.apk"
INSTLOG="$DEV_TMP_DIR/inst_${BATCH}.txt"

[ -f "$APK" ] || die "归档 apk 不存在: $APK"
APK_MD5=$(md5f "$APK")
apk_dex "$APK" /tmp/_inst_check.dex; DEX_MD5=$(md5f /tmp/_inst_check.dex)
E3N=$(apk_count "$APK" 'assets/map/Earth3/*')
echo "== 本地 apk"
echo "   $APK"
echo "   apk_md5=${APK_MD5:0:16}… dex_md5=${DEX_MD5:0:16}… Earth3=$E3N"
[ "$E3N" = "$EARTH3_COUNT" ] || warn "Earth3 不完整（$E3N）"

if [ "$HANDOFF" = 1 ]; then
  cat <<EOF
# ===== 交给 Operit shell 面执行（Shizuku / Root）· 批次 $BATCH =====
APK='$APK'
DEVTMP='$DEVTMP'
INSTLOG='$INSTLOG'
[ -f /data/local/tmp/autotap_install.sh ] || cp '$TOOLCHAIN/autotap_install.sh' /data/local/tmp/autotap_install.sh
cp "\$APK" "\$DEVTMP" && md5sum "\$DEVTMP"                 # 期望 $APK_MD5
nohup sh /data/local/tmp/autotap_install.sh "\$DEVTMP" "\$INSTLOG" >/dev/null 2>&1 &
sleep 20; tail -3 "\$INSTLOG" 2>/dev/null                    # 应出现 Success
P=\$(pm path $PKG | head -1 | sed 's/package://'); echo "\$P"
unzip -p "\$P" classes.dex | md5sum                          # 期望 $DEX_MD5
unzip -l "\$P" | grep -c 'assets/map/Earth3/'                # 期望 $EARTH3_COUNT
am force-stop $PKG
rm -f "\$DEVTMP" "\$INSTLOG"
echo DONE
# ===== 粘贴结束：把输出贴回 DSH 核验 =====
EOF
  exit 0
fi
if [ "$GO" != 1 ]; then
  echo "== 计划（未执行，需 --yes）"
  echo "   1) 设备面: cp $APK → $DEVTMP 并 md5 对齐"
  echo "   2) 设备面: nohup sh /data/local/tmp/autotap_install.sh $DEVTMP $INSTLOG &"
  echo "   3) 轮询 $INSTLOG → 成功"
  echo "   4) 设备面: pm path $PKG → unzip -p <apk> classes.dex | md5sum  应 = ${DEX_MD5:0:16}…"
  echo "   5) 设备面: am force-stop $PKG ；rm -f $DEVTMP $INSTLOG"
  exit 0
fi

echo "== 1/5 推送（设备面拷贝，apk 已在 /sdcard）"
dev_run "mkdir -p $DEV_TMP_DIR; cp '$APK' '$DEVTMP' && md5sum '$DEVTMP' && stat -c '%s' '$DEVTMP'" 300 | tee /tmp/_inst_push.txt
grep -q "$APK_MD5" /tmp/_inst_push.txt || die "设备侧 apk md5 与本地不一致，禁止继续"
ok "推送完成且 md5 对齐"

echo "== 2/5 装机（autotap_install.sh）"
dev_run "if [ ! -f /data/local/tmp/autotap_install.sh ]; then cp '$TOOLCHAIN/autotap_install.sh' /data/local/tmp/autotap_install.sh; fi; setsid sh /data/local/tmp/autotap_install.sh '$DEVTMP' '$INSTLOG' </dev/null >/dev/null 2>&1 & sleep 2; echo launched" 60

echo "== 3/5 等安装结果（最多 240s）"
INSTALL_OK=0
for i in $(seq 1 24); do
  R=$(dev_run "if [ -f '$INSTLOG' ]; then tail -3 '$INSTLOG'; else echo PENDING; fi" 30)
  echo "   [$((i*10))s] $(echo "$R" | tr '\n' ' ' | head -c 120)"
  echo "$R" | grep -qiE 'Success|成功' && { INSTALL_OK=1; break; }
  if echo "$R" | grep -qiE 'Failure|Error|INSTALL_FAILED'; then
    warn "autotap 安装失败，自动降级为三段式（install-create/write/commit，全自动无需点框）"
    dev_run "sh $R6S5/devinstall.sh '$DEVTMP'" 420 | tail -4
    break
  fi
  sleep 10
done
if [ "$INSTALL_OK" != 1 ]; then
  warn "autotap 未确认成功 → 再用三段式/核验确认"
  dev_run "sh $R6S5/devinstall.sh '$DEVTMP'" 420 | tail -4
fi

echo "== 4/5 设备 dex 核验"
DEV_DEX=$(dev_run "sh $R6S5/devverify.sh $DEX_MD5 $APK_MD5" 300)
echo "$DEV_DEX"
echo "$DEV_DEX" | grep -q "$DEX_MD5" || die "设备 dex md5 ≠ 本地 dex md5 —— 装机没生效或装错包"
ok "设备 dex 与本地一致"

echo "== 5/5 force-stop + 清理"
dev_run "am force-stop $PKG; rm -f '$DEVTMP' '$INSTLOG'; echo cleaned" 60
ok "装机完成：$BATCH"
echo "   提醒：① 用户实测 → 喊『抓』→ 跑 capture.sh ② 抓样基线需随装机重置"
