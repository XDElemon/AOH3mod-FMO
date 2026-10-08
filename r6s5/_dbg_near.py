#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""临时调试：追踪 nearX 在 A4 场景下的逐指令执行（只看循环内关键步）"""
import importlib.util
spec = importlib.util.spec_from_file_location('sn', '/sdcard/GLG/历史23/toolchain/act/sim_near.py')
sn = importlib.util.module_from_spec(spec)
spec.loader.exec_module(sn)

text = open(sn.DIAG, encoding='utf-8').read()
ins, labels = sn.parse(text=text)
# 打补丁：让 run 带 trace
import types

orig_do_invoke = sn.do_invoke


def traced_invoke(t, regs):
    v = orig_do_invoke(t, regs)
    print('      INVOKE %-70s -> %r' % (t[:70], v))
    return v


sn.do_invoke = traced_invoke

# 手工单步：复制 run 的主循环逻辑太费事 ⇒ 改为在每个 if 处打印
import re as _re
src = open('/sdcard/GLG/历史23/toolchain/act/sim_near.py', encoding='utf-8').read()

print('=== A4 场景 missions = [mk(-1,99), mk(11,73), mk(11,99,live=False)] ===')
ms = [sn.mk(-1, 99), sn.mk(11, 73), sn.mk(11, 99, live=False)]
print('结果 =', sn.run(ins, labels, 10, ms))
print()
print('=== 分别单测三个 mission，看谁被算进来 ===')
for m in ms:
    print('  %-28s -> %s' % (m, sn.run(ins, labels, 10, [m])))