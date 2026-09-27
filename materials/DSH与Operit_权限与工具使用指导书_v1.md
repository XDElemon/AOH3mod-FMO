# DSH × Operit · 权限获取与工具使用经验指导书 v1

> 生成：2026-09-18 ｜ 来源：《终序千禧》空战重做项目（Android APK/smali 逆向，真实执行）全程实战沉淀
> 位置：`/sdcard/GLG/历史23/DSH与Operit_权限与工具使用指导书_v1.md`

---

## 0. 一句话结论

**DSH 负责"决策与编排"，Operit 负责"权限与执行"。**
DSH（标准模式）不直接持有系统权限；本项目中所有需要 Root/Shizuku 权限、Ubuntu 编译链、设备系统操作的动作，都是**通过 Operit 的工具面**完成的。DSH 只要把"要干什么"交出去、按下面的 SOP 编排即可。

---

## 1. 角色与通道（谁给权限、谁干活）

```
┌────────────┐   ①要权限/要干活    ┌──────────────────────────┐
│    DSH     │ ─────────────────→ │         Operit           │
│ （标准模式）│                     │  ├─ terminal（Ubuntu 24） │
│  决策/编排  │ ←───────────────── │  ├─ shell（Shizuku/Root） │
└────────────┘   ②结果/日志/文件    │  ├─ 文件工具（/sdcard）    │
                                  │  └─ 包机制（use_package）  │
                                  └──────────────────────────┘
                                             ↓ 真实动作
                                  Android 设备 / APK 产物 / 文档
```

| 需求 | 由谁执行 | 通道 |
|---|---|---|
| 改 smali / 写补丁 / 汇编 / 打包 | Operit **terminal**（Ubuntu proot） | 会话持久，可直接读写 `/sdcard` |
| 装机 / 强制停止 / 抓 logcat / 读设备私有文件 | Operit **shell**（Shizuku 或 Root） | `pm` / `am` / `logcat` / `/data/local/tmp` |
| 读写项目文档与产物 | Operit **文件工具** 或 proot `/sdcard` | 工作区＝外部存储设备 |
| 需要额外能力（图片转换/代码执行/网络等） | Operit **包机制** | `use_package` 激活 → `package_proxy` 调真实工具 |

> 关键：**权限不是"给 DSH 的"，是"给 Operit 的"**——DSH 的产出（命令、脚本、编排）经由 Operit 落地。

---

## 2. Operit 的两个执行面（本项目的全部基建）

### 2.1 `super_admin:terminal`（Ubuntu proot）
- 完整 Ubuntu，**已挂载 `/sdcard`、`/storage`**；同一会话上下文连贯（`cd` 会保留）。
- 适用：smali 编辑、jar 工具链、Python 脚本、打包签名、文档写入。
- 注意：**禁止在 proot 内 `find`/`du` 扫 `/sdcard` 大目录**（FUSE+ptrace 会卡死会话）；读大文件尾部用 `tail -c`（`dd if= bs=1M skip=N` 对 FUSE 大文件会返回 0 字节）。

### 2.2 `super_admin:shell`（Shizuku / Root）
- 直接在 Android 系统层执行：`pm path/install`、`am force-stop`、`logcat`、读写 `/data/local/tmp`、读 `/sdcard/Android/data/<包>/files`。
- 适用：装机、验机、抓样、清空间、崩溃取证。
- **后台常驻要点（实测）**：Shizuku shell 下 `nohup … &` 的子进程会**随会话结束被回收**——常驻任务必须用 **`setsid`** 脱离会话：`setsid sh /path/x.sh </dev/null >/dev/null 2>&1 &`；存活判据看**心跳文件 mtime 是否推进**（`ps` 在 Shizuku 下可能抓不到该进程）。

### 2.3 包机制
- 需要某能力时先 `use_package("包名")` 激活（本项目的常用包：`super_admin`、`extended_file_tools`、`file_converter`、`code_runner`、`workflow`、`daily_life` 等）。
- 调用时用 `package_proxy(tool_name="包名:工具名", params={...})`。

---

## 3. 权限获取清单（照做即可用）

| # | 权限 | 在哪里给 | 验证方法 |
|---|---|---|---|
| 1 | **Shizuku/Root** | Operit 设置 → 授权 Shizuku（或 Root） | shell 面 `whoami`、`pm path <包名>` 有输出 |
| 2 | **存储访问** | 系统授予 Operit 存储权限 | proot `ls /sdcard`、`df -h /sdcard` 正常 |
| 3 | **设备私有目录读**（抓样用） | 通常需 Shizuku/Root | shell `ls /sdcard/Android/data/<包>/files` 可读 |
| 4 | **/data/local/tmp 写**（安装用） | Shizuku/Root | shell `echo t > /data/local/tmp/t && cat /data/local/tmp/t` |
| 5 | 包管理/强制停止 | 同上 | `pm install ...` / `am force-stop <包>` 返回 Success |

**一句话自检**（全部通过就算权限齐）：
```bash
# shell 面
whoami && pm path age.of.history3.qiamxi.zhiri | head -1 && ls /sdcard/Android/data/age.of.history3.qiamxi.zhiri/files | head -3
# terminal 面
ls /sdcard | head -3 && df -h /sdcard | tail -1
```

---

## 4. DSH 侧怎么接入（推荐配置）

1. **模式**：选**标准模式**（有文件编辑/Shell/Skills/计划/子代理/工作流）；PTC/极简/创造见文末备注。
2. **不要另造权限体系**：让 DSH 把"需要系统权限的动作"明确交给 Operit：
 - 说清"用 terminal 跑这个命令" / "用 shell 跑这个命令" / "写这个文件到 /sdcard/…"；
 - 命令尽量**幂等、带前置检查**（如"先 ls 再 cp"），方便失败重试。
3. **抽象成 Skills/清单**（本项目已验证的 5 个高频动作）：
 | 技能 | 内容 |
 |---|---|
 | `smali-assemble` | `RunSmali`［工作树 /tmp/w3a/smali → 输出 dex］ |
 | `verify-eight` | 八件套 `run_verify.sh <dex> aoc/kingdoms/lukasz` ＋与上一版对照 diff |
 | `build-apk` | 重建（`rebuild_v119fix.py`）→ `zipalign` → `apksigner` |
 | `install-verify` | 推送（md5 对齐）→ `autotap_install.sh` → 设备 dex md5 核验 → `am force-stop` |
 | `capture-sample` | 按 `live_baseline.txt` 增量抓样 → 更新基线 |
4. **约定 DSH 的"行为准则"**（可直接写进 DSH 的 preset/系统提示）：
 - 先读《空战重做_交接文档_v1.md》与《…铁律》再动手；
 - 每批改动：小步→核验→留回滚点；
 - 每步产物要有"可核验证据"（md5/清单计数/日志行）。

---

## 5. 实战 SOP（一个批次的标准动作）

```
①备份（.bak） → ②改（补丁脚本 .py + py_compile）
→ ③汇编（terminal：RunSmali）
→ ④验证（terminal：八件套 + baksmali 全类 diff / DumpMeth 抽检）
→ ⑤打包（terminal：rebuild → zipalign → apksigner）
→ ⑥装机（shell：推送 md5→install→设备 dex md5 核验→force-stop→清理）
→ ⑦实测（用户）→ ⑧抓样（shell：增量 tail -c）→ ⑨归档（文档+回滚点）
```
失败处理：立刻回滚点重装（`build_apk/` 里留有历代 apk），**不要在不稳定的包上继续堆改动**。

---

## 6. 坑与对策（本项目实测，按杀伤力排序）

| # | 坑 | 现象 | 对策 |
|---|---|---|---|
| 1 | **旧进程陷阱** | 装完"修复无效" | 装机后**必 `am force-stop`**，确认进程死透再测 |
| 2 | **空间撑爆** | `install … not enough space` | 装完即清 `/data/local/tmp/*.apk`；定期 `df -h /data` |
| 3 | **安装三段式** | "User rejected permissions" | 用 `install-create`→`install-write`→`install-commit`（已有 `autotap_install.sh` 封装） |
| 4 | **跨类私有访问** | 运行时 `IllegalAccessError`/`NoSuchField` | 只能走 public getter；动手前 `grep '\.field'` 查可见性（本地静态检查抓不到） |
| 5 | **本地验证≠真机** | 八件套全绿仍闪退 | VerifyError/IllegalAccessError 必须**真机启动**验证 |
| 6 | **工具类路径缺依赖** | baksmali `NoClassDefFoundError: org.jf.util.jcommander` | classpath 里补 `/usr/share/java/smali-util-…jar`（jcommander 子集在里面） |
| 7 | **proot 扫盘卡死** | 会话无响应 | proot 内禁 `find`/`du` 扫 `/sdcard` 大目录 |
| 8 | **FUSE 大文件读 0 字节** | `dd skip` 读空 | 用 `tail -c` |
| 9 | **并行调用串流** | 输出错乱/结果对不上 | 同一会话**串行**发命令，一条完成再下一条 |
| 10 | **日志污染** | logcat 里全是 AI 服务文本 | 时间窗过滤 + `grep 'E AndroidRuntime'`；探针文件分清 `airdbg_key.txt`（dKey）/`airdbg_tick.txt`（logOnce） |
| 11 | **shell 引号吞变量** | `$` 类名被展开成空 | 写 `.py` 文件执行；heredoc 用 `'PYEOF'`；避免 `set -e` |
| 12 | **汇编码非确定** | 同源两次汇编 md5 不同 | **装哪版核哪版**，别拿旧 md5 对新包 |
| 13 | **版本降级** | `INSTALL_FAILED_VERSION_DOWNGRADE` | 递增 versionCode 或 `-d` 策略；每次发版必核对 |
| 14 | **`/data/media/0` 拒绝访问** | Permission denied | 换路径（走 `/sdcard/...` 或 `/data/local/tmp`） |
| 15 | **后台进程被会话回收** | 后台任务启动即消失 | 用 `setsid`（仅 `nohup` 不够）；用心跳文件 mtime 判活 |

---

## 7. 常用命令速查（双面）

**terminal（Ubuntu）**
```bash
# 汇编 / 反汇编 / 验证 / 打包（完整可直接抄）
java -cp '/tmp:/tmp/smali-2.5.2.jar:/usr/share/java/smali-util-2.5.2.git2771eae.jar:/tmp/dexlib2-2.5.2.jar:/tmp/antlr-runtime-3.5.2.jar:/tmp/guava.jar' RunSmali /tmp/w3a/smali /tmp/x_classes.dex
cd '/sdcard/GLG/历史23/toolchain/verify_dex' && bash run_verify.sh /tmp/x_classes.dex aoc/kingdoms/lukasz
python3 -m py_compile /tmp/patch.py && python3 /tmp/patch.py
```
**shell（设备）**
```bash
pm path age.of.history3.qiamxi.zhiri | head -1
unzip -p "$(pm path age.of.history3.qiamxi.zhiri | head -1 | sed 's/package://')" classes.dex | md5sum
am force-stop age.of.history3.qiamxi.zhiri
rm -f /data/local/tmp/*.apk
# 抓样（增量）
F=/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt
B=$(cat '/sdcard/GLG/历史23/r6s5/live_baseline.txt'); SZ=$(stat -c %s "$F")
tail -c +$((B+1)) "$F" > /sdcard/GLG/历史23/r6s5/sample.txt; echo "$SZ" > '/sdcard/GLG/历史23/r6s5/live_baseline.txt'
```

---

## 8. 安全与边界（务必遵守）

- 只操作**本项目包**与产物；不碰无关包（如 `age.of.history3.TNO.yunsi`）。
- 安装/清理动作先确认目标路径；**装完必清**临时 apk。
- 大改动前必备份（smali `.bak` ＋ apk 回滚点）；先小步验证再全量。
- 对外部依赖（地图源/基线包/工具 jar）保持**持久备份**（例：`build_inputs/e3_src.tar`）。

---

## 9. 备注：DSH 四种模式的定位（与本指导书的关系）

| 模式 | 定位 |
|---|---|
| **标准模式** | ✅ **主用**：文件编辑＋Shell＋Skills＋计划＋子代理＋工作流＝本指导书的全部前提 |
| PTC 模式 | ⚠️ 后置：把"汇编→验证→打包→签名"这类**固定长链**做成一个程序，适合发布流水线；会隐藏中间态，不适合调试期 |
| 极简模式 | ❌ 不适合：只有持久 shell，丢失编辑/计划/技能 |
| 创造模式 | 🛠️ 第二阶段：把本指导书＋项目铁律**固化成专属 preset/Skills**（本项目推荐做） |

---
*（v1 · 2026-09-18 · 与《空战重做_交接文档_v1.md》配套使用）*