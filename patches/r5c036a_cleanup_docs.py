# -*- coding: utf-8 -*-
# r5c036a_cleanup_docs.py —— 落盘：磁盘清理记录（哪些删了、哪些必须留）
import io, time

HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

TXT = u'''

## §9 磁盘清理记录（{TS}）

### 背景
构建/装机把三个地方塞满了：`/data` 曾只剩 **1.4G 可用（100%）**，装机直接失败。

### 清理内容（可安全清，铁律⑬）
| 位置 | 清理前 | 清理后 | 删除内容 |
|---|---|---|---|
| AI 电脑 `/tmp` | **19 GB** | **1.4 GB** | `r5c0*_signed.apk` / `r5c0*_aligned.apk` / `r4c*_*` / `v119fix_unsigned.apk`（约 17 GB 中间产物）、`review_*` 沙箱（4个）、`bk_*` 反汇编 dumps（14个，仅留 `bk_pos36a`） |
| Android `/data/local/tmp` | **5.8 GB** | **719 MB** | 8 个残留 apk 副本（×0.69G）、`dd026/027.txt`（各 0.15G）、`ui*.xml`、`inst_r4*/r5c0*`、`*.log/*.out/*.md5`、`dev*.dex`、`cur.apk/cur.dex` |
| `build_apk/` | **9 GB（13个归档）** | **2.1 GB（3个）** | 旧归档 r5c025–r5c031、r5c033、r5c035、r5c035a |
| **合计释放** | —— | —— | **≈ 30 GB（可用 1.4G → 32G）** |

### 必须保留（别再删）
- `/tmp/w3a`（工作树）、`/tmp/rebuild_v119fix.py`、`/tmp/base_v119.apk`（必须干净）、`/tmp/debug.keystore`、工具链 jar、`/tmp/e3/assets/map/Earth3/**`、当前 dex（`/tmp/r5c036a_classes.dex` 等）；
- `build_apk/` 只留：**现役 r5c036a** ＋ 回滚点 **r5c035b / r5c034**；
- `/data/local/tmp/autotap_install.sh`（装机脚本）、`r5c036a.apk`（待装）。
'''.replace('{TS}', time.strftime('%Y-%m-%d %H:%M'))


def main():
    s = io.open(HAND, encoding='utf-8').read()
    if '§9 磁盘清理记录' in s:
        print('SKIP(已存在)')
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(HAND, 'w', encoding='utf-8').write(s + TXT)
    print('OK 交接文档 §9')


main()