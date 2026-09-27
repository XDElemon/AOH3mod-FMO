#!/bin/bash
# ============================================================
# sync_and_push.sh "<commit message>"  —— 让 AI 自己把本批成果推到 GitHub
#   流程：① 刷新发布目录（源码+素材+文档+门禁） ② 同步到 Linux 侧 git 仓库
#         ③ 提交 ④ 推送（部署密钥 / SSH over 443，非交互）
#   前置（只需做一次）：
#     · 在本机生成 ~/.ssh/id_ed25519_gh（已生成，公钥见 README 或见下）
#     · 把该公钥贴到 GitHub 仓库 → Settings → Deploy keys → Add deploy key
#       ✅ 勾选 "Allow write access"
#     · 首次推送前设置： REMOTE=git@github.com:<你的用户名>/<仓库名>.git bash sync_and_push.sh --init
# ============================================================
set -uo pipefail
MSG="${1:-auto: batch update}"
PROJ='/sdcard/GLG/历史23'
REL='/sdcard/GLG/history23_release'
REPO='/root/history23_repo'
REMOTE_FILE="$PROJ/.git_remote"          # 只需写一次：git@github.com:user/repo.git

if [ "${MSG:-}" = "--init" ]; then
  [ -n "${REMOTE:-}" ] || { echo "用法: REMOTE=git@github.com:<user>/<repo>.git bash $0 --init"; exit 2; }
  echo "$REMOTE" > "$REMOTE_FILE"; echo "已记录 remote = $REMOTE"
  cd "$REPO" && git remote remove origin 2>/dev/null; git remote add origin "$REMOTE"
  git branch -M main 2>/dev/null
  echo "试连："; ssh -o StrictHostKeyChecking=accept-new -T git@github.com 2>&1 | head -3
  exit 0
fi

echo "== ① 刷新发布目录（不含 apk/大日志） =="
cd "$PROJ" && python3 release_pack.py | tail -4 || { echo "打包失败"; exit 1; }

echo "== ② 同步到 Linux 侧仓库 =="
mkdir -p "$REPO"
rsync -a --delete "$REL"/ "$REPO"/ 2>/dev/null || cp -a "$REL"/. "$REPO"/
cd "$REPO"
[ -f .git/config ] || { git init -q; git config user.email operit@local; git config user.name Operit; }

echo "== ③ 提交 =="
git add -A
if git diff --cached --quiet; then echo "（无变更）"; else
  git commit -q -m "$MSG" && echo "已提交: $(git log --oneline | head -1)"
fi

echo "== ④ 推送 =="
[ -f "$REMOTE_FILE" ] || { echo "✗ 还没设 remote：先跑 REMOTE=git@github.com:<user>/<repo>.git bash $0 --init"; exit 3; }
git remote get-url origin >/dev/null 2>&1 || git remote add origin "$(cat "$REMOTE_FILE")"
git branch -M main 2>/dev/null
git push -u origin main 2>&1 | tail -5
echo "== 完成：$(git rev-parse --short HEAD) =="
echo "公钥（贴到 Deploy keys 用）："; cat ~/.ssh/id_ed25519_gh.pub