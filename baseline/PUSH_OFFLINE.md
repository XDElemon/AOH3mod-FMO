# 推不上去时的交付方式（git bundle）

容器里没有 GitHub 凭据，无法 `git push`。用 bundle 把提交打包，可由任何有权限的一侧导入。

## 产物

`fmo_incremental.bundle`（约 1.5 MB，**增量，2026-10-27 更新**：含 `61e9db4..main`（182 个提交，到 `377ea283` / v96）
与两个候选分支的新对象）

## 导入方式（在能访问仓库的机器上）

```bash
git clone https://github.com/XDElemon/AOH3mod-FMO.git fmo
cd fmo
git fetch /path/to/fmo_incremental.bundle \
    refs/heads/main:fmo-main \
    refs/remotes/origin/candidate/gen-wireup:fmo-cand \
    refs/remotes/origin/candidate/gen-stats:fmo-cand2

# 检视后合并主线
git checkout main
git merge --ff-only fmo-main        # 182 个提交（含 v89-v96）
git push origin main

# 候选分支（可选）
git push origin fmo-cand:candidate/gen-wireup
```

## 校验

```bash
git bundle verify fmo_incremental.bundle
# 期望：main(=377ea283) + 两个候选分支，且声明前置 commit 61e9db4
```

## 说明

- 这是**增量**包，前置是 `61e9db4`（上一次 bundle 的基线）。本次已把它之后到 v96 的全部提交打进来（取代 2026-10-18 那份小包）。若远端已有新提交，`--ff-only` 会失败，此时改用 `git merge fmo-main` 手工解决。
- bundle 不含 `assets_r6t007`（675 MB 素材），也不含构建产物 APK。
