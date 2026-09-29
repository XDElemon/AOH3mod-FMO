#!/usr/bin/env python3
# r6d061 极性修正：根因两处 + 新方法 cfgFix 自查出的一处
import io, sys

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(AFM, encoding='utf-8').read()

EDITS = [
    # 根因1：cfgExtractInt 的文本非空守卫写反 ⇒ 非空即返回默认值
    ('    if-nez p0, :cond_6e\n\n    new-instance v0, Ljava/lang/StringBuilder;',
     '    if-eqz p0, :cond_6e\n\n    new-instance v0, Ljava/lang/StringBuilder;',
     '根因1 cfgExtractInt 守卫 if-nez→if-eqz'),
    # 根因2：prob 下限钳位写反 ⇒ 非负值被清零
    ('    if-ltz v2, :cond_42\n\n    const/4 v2, 0x0\n\n    :cond_42',
     '    if-gez v2, :cond_42\n\n    const/4 v2, 0x0\n\n    :cond_42',
     '根因2 demoLoadCfg prob 下限钳位 if-ltz→if-gez'),
    # 新方法自查：stage==0 才打 CFGT
    ('    if-nez v2, :cf_st0\n\n    goto :cf_writes',
     '    if-eqz v2, :cf_st0\n\n    goto :cf_writes',
     'cfgFix CFGT 守卫 if-nez→if-eqz'),
    # 新方法自查：prob 下限钳位同根因2
    ('    if-ltz v2, :cf_p1\n\n    const/4 v2, 0x0\n\n    :cf_p1',
     '    if-gez v2, :cf_p1\n\n    const/4 v2, 0x0\n\n    :cf_p1',
     'cfgFix prob 下限钳位 if-ltz→if-gez'),
]

for old, new, label in EDITS:
    n = src.count(old)
    if n != 1:
        print('❌ 锚点 [%s] 命中 %d 次（必须 1）' % (label, n))
        sys.exit(1)
    src = src.replace(old, new, 1)
    print('✅ %s' % label)

io.open(AFM, 'w', encoding='utf-8').write(src)
# 断言：改完后再核对极性
chk = io.open(AFM, encoding='utf-8').read()
m = chk[chk.index('.method public static cfgExtractInt'):]
m = m[:m.index('.end method')]
print('cfgExtractInt 首条:', m.split('\n')[2].strip())
print('== 极性修正完成 ==')