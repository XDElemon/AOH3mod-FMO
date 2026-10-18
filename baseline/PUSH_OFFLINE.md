# 推不上去时的交付方式（git bundle）

容器里没有 GitHub 凭据，无法 `git push`。用 bundle 把提交打包，可由任何有权限的一侧导入。

## 产物

`fmo_incremental.bundle`（约 50 KB，**增量**：只含 `61e9db4..main` 与 `61e9db4..candidate/gen-wireup` 的新对象）

## 导入方式（在能访问仓库的机器上）

```bash
git clone https://github.com/XDElemon/AOH3mod-FMO.git fmo
cd fmo
git fetch /path/to/fmo_incremental.bundle main:fmo-main candidate/gen-wireup:fmo-cand

# 检视后合并主线
git checkout main
git merge --ff-only fmo-main        # 13 个提交
git push origin main

# 候选分支（可选）
git push origin fmo-cand:candidate/gen-wireup
```

## 校验

```bash
git bundle verify fmo_incremental.bundle
# 期望：两个 ref 列出，且声明前置 commit 61e9db4
```

## 说明

- 这是**增量**包，前置是远端当前的 `61e9db4`（仓库 main 最新提交）。若远端已有新提交，`--ff-only` 会失败，此时改用 `git merge fmo-main` 手工解决。
- bundle 不含 `assets_r6t007`（675 MB 素材），也不含构建产物 APK。
