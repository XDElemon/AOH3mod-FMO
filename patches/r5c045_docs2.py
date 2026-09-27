# -*- coding: utf-8 -*-
# r5c045_docs2.py —— 收尾：更正 r5c045 产物 md5（a=坏/b=好）、记录 VerifyError 事故与修复、
#                     登记新门禁㉘ 与 install.sh 假阳性，往铁律追加【74】【75】
import io, time

TS = time.strftime('%Y-%m-%d %H:%M')
DOC = '/sdcard/GLG/历史23/r6s5/设计逻辑_r5c045.md'
PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
IRON = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'

OLD_DEX, NEW_DEX = 'b59e9084afbaa8bdfed2d2becb4713e8', '80b773703122e62bd36bfc26fa1fc0f3'
OLD_APK, NEW_APK = '86bf7bb5d20f9bdd7ba116ef03b4ea6e', '0afa275880783e2030201eb715b26c22'
OLD_DEX8, NEW_DEX8 = 'b59e9084…', '80b77370…'
OLD_APK8, NEW_APK8 = '86bf7bb5…', '0afa2758…'

PLAN_ADD = u'''
## 50. 【事故·已修】r5c045a 装机后启动闪退（VerifyError）—— 类名字符串写错 + 新门禁㉘（{TS}）
- **现象**：r5c045a 装机后**一进游戏就闪退**（进程起 → 立刻死）。
- **崩溃原文**：
  `java.lang.VerifyError: Verifier rejected class aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy:`
  `void ...msFxDrawTrail(SpriteBatch, AirMission) failed to verify: [0x52] 'this' argument 'Reference: textures.Image'`
  `not instance of 'Reference: textures.Images'`
- **根因**：新方法里的绘制调用被我写成了 `Laoc/kingdoms/lukasz/textures/Images;->draw(...)`（**复数类**），
  正确目标是 `Laoc/kingdoms/lukasz/textures/Image;->draw(...)`（**单数**）。`Images` 类里**没有** `draw` 方法；
  而接收者寄存器（`Images.pix` 字段）静态类型是 `Image` ⇒ ART 校验器直接拒绝整个类。
- **为什么门禁没拦住**：八件套（CheckInvoke/CheckRegs/CheckInit/CheckRange/CheckSig/Cast/Undef）**不校验**
  "被调用类是否真的声明了该方法"，只校验寄存器数/类型流等。⇒ 属门禁空白区。
- **修复**：更正类名（源码 `r5c045_fix.py` 中把 `IMG` 拆成 `IMG`=`…/Image;` 与 `IMGS`=`…/Images;`，
  并加 3 条后置断言：draw 目标必须是 `Image`、全文件不得出现 `Images;->draw`、pix 必须取自 `Images`）。
- **新常驻门禁㉘**：`toolchain/act/check_invoke_target.py` —— 逐条 invoke 校验目标类（含父类链）**真的声明了该方法**；
  父类不在树内（java/lang/Thread、libGDX 等）⇒ 记为"无法判定"跳过；第三人 `com/**` 既有噪声记入忽略。
  **负样本（坏产物）命中 1 条**（正是 9033 行）；**正样本 0 条**。→ 已按铁律⑥"新门禁先跑负样本"执行。
- **另一个坑（install.sh 假阳性）**：装机第 4 步"设备侧核 dex"在 Shizuku `cmd` 服务瞬时故障时会打印
  **空输入的 md5 `d41d8cd9…`** 却仍报"✅ 设备 dex 与本地一致"⇒ 该步不可信。
  本次已用独立命令复核：`cmd package path` → `md5sum base.apk` = `{APK}`、
  `unzip -p base.apk classes.dex | md5sum` = `{DEX}`（均与本地一致）。
- **最终状态**：r5c045（修复后）已装机；装机后 **启动自检无 VerifyError/FATAL，进程存活 65s+**。
  设计逻辑与本表 md5 均已更正为修复后产物：dex `{DEX8}` / apk `{APK8}`。
'''.replace('{TS}', TS).replace('{APK}', NEW_APK).replace('{DEX}', NEW_DEX).replace('{DEX8}', NEW_DEX8).replace('{APK8}', NEW_APK8)

DOC_ADD = u'''
## 12. 本批事故记录（借出，必读）：装机后闪退 → 已修复
- **现象**：首版产物（r5c045a）装机后**一进游戏就闪退**。
- **崩溃原文**：`VerifyError: ... msFxDrawTrail(...) failed to verify: [0x52] 'this' argument 'Reference: textures.Image' not instance of 'Reference: textures.Images'`
- **错误的规则（错在哪）**：新方法里"画尾迹点"这一步，**画的对象用错了类**——写成了"画在某张图片集合（Images）上"，
  而正确是"画在某张图片（Image）上"。`Images`（图片库，提供 `pix` 这种静态位图）**没有**绘制方法；
  接收者寄存器里装的是一张 `Image` ⇒ 系统加载该类时直接判定"非法"，整局游戏起不来。
- **正确的规则**：尾迹点（以及弹体）都应调用**图片对象自己的** `Image.draw(batch,x,y,w,h)`。
- **为什么之前会错（症状→原因）**：写新方法时把"取位图"用的类名（`Images`，复数）顺手复制到了"调用绘制"那一步；
  而项目的八件套门禁**只查寄存器/类型流，不查"被调用的类有没有这个方法"**，所以本地全绿、装机才炸。
  症状（一进游戏闪退）↔ 原因（一个类名复数写错）**一对一**。
- **修复动作**：更正类名，并**新增常驻门禁㉘**（`check_invoke_target.py`：逐条校验 invoke 目标类含父类链是否真的声明该方法；
  先用**坏产物**验证它必须报错＝负样本命中 1 条，再用修好的工作树验证 0 条）。
- **附带修正**：`install.sh` 第 4 步（设备侧 dex 核验）在 Shizuku 服务瞬时故障时会打印空 md5 却仍报"一致"⇒ **该步不可信**，
  每次装机必须用独立命令复核 `cmd package path` + `md5sum` + `unzip -p … classes.dex | md5sum`。
- **最终产物**（本文件头部 md5 已同步为这一版）：dex `{DEX}` / apk `{APK}`；
  装机后**启动自检通过（无 VerifyError/FATAL，进程存活 65s+）**。
- **教训（已写入铁律【74】【75】）**：①凡新增 invoke，必须过门禁㉘；②装机后必须独立核验设备侧 md5；
  ③"能通过八件套"≠"ART 会接受"。
'''.replace('{DEX}', NEW_DEX).replace('{APK}', NEW_APK)

IRON_ADD = u'''
## 【74】新增 invoke 必须核"目标类真的声明了该方法"（Image vs Images 血案，r5c045a 闪退）
- 事故：新方法把 `textures/Image;->draw(SpriteBatch;IIII)V` 写成 `textures/Images;->draw(...)`（多一个 s）。
  **八件套全绿**（它只查寄存器数、类型流、Cast/Undef 白噪、Sig 增减），
  但装机后 ART 直接 `VerifyError: ... 'this' argument 'Reference: textures.Image' not instance of 'Reference: textures.Images'` ⇒ **一进游戏闪退**。
- 判据（已固化为常驻门禁 **㉘** `toolchain/act/check_invoke_target.py`）：
  逐条 invoke 取目标类 + 签名，沿"类 → 父类链"查找 `.method`；链上遇到**不在树内**的类（java/lang/Thread、libGDX 等）⇒ 记"无法判定"跳过；
  第三人 `com/**` 既有噪声（本次 9 条，evalex 库）列入忽略；**只有链在树内走完都没找到 ⇒ FAIL**。
- **新门禁必须先跑负样本（铁律⑥）**：本次先用坏工作树跑 ⇒ 精确命中 1 条（9033 行）；修好后再跑 ⇒ 0 条。
- 附带经验：门禁自身也会错。㉘ 首版有两个 bug——① 类名捕获**没去前导 `L`**；② **没去尾部 `;`**（导致全部 invoke 被当成"外部类"跳过、永不报警）。
  ⇒ **门禁上线前必须能让它抓到已知坏样本**，否则等于没有门禁。
- 速记：**invoke 的类名字符串是代码，不是注释；写新 invoke 一律"从原文件复制"并过㉘。**

## 【75】`install.sh` 第 4 步（设备侧核 dex）存在假阳性 —— 装机后必须独立复核
- 现象：Shizuku `cmd` 服务瞬时故障（`Failure calling service ... Failed transaction`）时，
  该步打印 `device dex md5: d41d8cd98f00b204e9800998ecf8427e`（＝**空输入的 md5**）却仍输出 `✅ 设备 dex 与本地一致`。
- 后果：看起来"装机并核验成功"，实际**没验**。（本次 r5c045a 闪退时若只信这一步，会误判为"产物没问题、是别的原因"。）
- 强制流程（每次装机后必做，不看脚本结论）：
  1) `P=$(cmd package path <包名> | sed 's/package://')`；
  2) `md5sum "$P"` 应 = 归档 apk 的 md5；
  3) `unzip -p "$P" classes.dex | md5sum` 应 = 本批 dex 的 md5。
- 速记：**任何"自动核验"都要有独立复算；空 md5、异常输出一律视为失败。**
'''

def main():
    d = io.open(DOC, encoding='utf-8').read()
    n = d.replace(OLD_DEX, NEW_DEX).replace(OLD_APK, NEW_APK)
    if '## 12. 本批事故记录' not in n:
        n = n.rstrip('\n') + '\n' + DOC_ADD
    io.open(DOC, 'w', encoding='utf-8').write(n)
    print('[OK] 设计逻辑_r5c045.md 已更正 md5 + 追加事故记录')

    p = io.open(PLAN, encoding='utf-8').read()
    p2 = p.replace(OLD_DEX, NEW_DEX).replace(OLD_APK, NEW_APK)
    if '## 50. 【事故·已修】' not in p2:
        p2 = p2.rstrip('\n') + '\n' + PLAN_ADD
    io.open(PLAN, 'w', encoding='utf-8').write(p2)
    print('[OK] 计划书 §50 + §49 内 md5 已更正')

    h = io.open(HAND, encoding='utf-8').read()
    h2 = h.replace('`' + OLD_DEX8 + '` / `' + OLD_APK8 + '`', '`' + NEW_DEX8 + '` / `' + NEW_APK8 + '`')
    h2 = h2.replace('⏳待验收（拖动/缩放地图时导弹应随地图走）',
                    '⏳待验收（已修首版闪退：VerifyError 类名复数写错；门禁㉘已建；拖动/缩放时导弹应随地图走）')
    io.open(HAND, 'w', encoding='utf-8').write(h2)
    print('[OK] 交接文档 md5/状态已更正')

    r = io.open(IRON, encoding='utf-8').read()
    if '【74】' not in r:
        io.open(IRON, 'w', encoding='utf-8').write(r.rstrip('\n') + '\n' + IRON_ADD)
        print('[OK] 铁律【74】【75】已追加')
    else:
        print('SKIP 铁律')
    print('DONE', TS)


if __name__ == '__main__':
    main()