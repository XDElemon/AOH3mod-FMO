# -*- coding: utf-8 -*-
# r5c034_fix_p0p1.py —— 修真机抓到的 VerifyError：实例方法里 p0=this、p1=参数
#   1) 修 r5c033_patch.py 的 UPD 块（updateAIBuildUp 内所有"机场"访问从 p0 改成 p1）
#   2) 给 r5c033_sitecheck.py 增加 ⑨ 寄存器约定检查（同类错误以后本地就能报）
import io, re, sys

PATCH = '/sdcard/GLG/历史23/r5c033_patch.py'
SITE = '/sdcard/GLG/历史23/r5c033_sitecheck.py'


def fix_patch():
    t = io.open(PATCH, encoding='utf-8').read()
    if '# r5c034 fix' in t:
        print('patch 脚本已修（幂等退出）')
        return
    m = re.search(r"^UPD = u'''(.*?)^'''", t, re.S | re.M)
    assert m, 'UPD 块未找到'
    upd = m.group(1)
    n1 = upd.count(', p0, Laoc/kingdoms/lukasz/map/battles/Airport;->')
    n2 = upd.count('{p0, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->')
    upd2 = upd.replace(', p0, Laoc/kingdoms/lukasz/map/battles/Airport;->',
                       ', p1, Laoc/kingdoms/lukasz/map/battles/Airport;->')
    upd2 = upd2.replace('{p0, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->',
                        '{p1, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->')
    assert ', p0, Laoc/kingdoms/lukasz/map/battles/Airport;->' not in upd2
    assert '{p0, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->' not in upd2
    t2 = t[:m.start(1)] + upd2 + t[m.end(1):]
    t2 = t2.replace("    # r5c033 P1b: AI 造机 —— 每机场每回合最多补 1 架",
                    "    # r5c034 fix: 本方法是实例方法 ⇒ p0=this(AFM)、p1=机场（原先误用 p0）\n"
                    "    # r5c033 P1b: AI 造机 —— 每机场每回合最多补 1 架", 1)
    io.open(PATCH, 'w', encoding='utf-8').write(t2)
    print('  r5c033_patch.py UPD 块已修：机场访问 p0→p1（改 %d + %d 处）' % (n1, n2))


def fix_sitecheck():
    t = io.open(SITE, encoding='utf-8').read()
    if '⑨ 寄存器约定' in t:
        print('sitecheck 已含 ⑨（幂等退出）')
        return
    anchor = "    # ---------- 5) P1a 判据未回退 ----------"
    assert t.count(anchor) == 1, 'sitecheck 锚点不唯一'
    add = (
        "    # ---------- 4b) 寄存器约定（实例/静态方法的 p0/p1）----------\n"
        "    if I is not None:\n"
        "        s = '\\n'.join(I)\n"
        "        bad = ', p0, Laoc/kingdoms/lukasz/map/battles/Airport;->' in s\n"
        "        has1 = 'p1, Laoc/kingdoms/lukasz/map/battles/Airport;->' in s\n"
        "        chk((has1 and not bad), '⑨ 寄存器约定：实例方法里机场必须是 p1（禁止 p0）',\n"
        "            'forbidden_p0=%s has_p1=%s' % (bad, has1))\n"
        "    if P is not None:\n"
        "        s = '\\n'.join(P)\n"
        "        ok = 'p0, Laoc/kingdoms/lukasz/map/battles/Airport;->' in s\n"
        "        chk(ok, '⑨b 寄存器约定：静态方法里机场必须是 p0', 'has_p0=%s' % ok)\n\n")
    t = t.replace(anchor, add + anchor, 1)
    io.open(SITE, 'w', encoding='utf-8').write(t)
    print('  r5c033_sitecheck.py 已加 ⑨/⑨b 寄存器约定检查')


if __name__ == '__main__':
    fix_patch()
    fix_sitecheck()
    print('DONE')