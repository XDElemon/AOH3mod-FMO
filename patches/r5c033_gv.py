# -*- coding: utf-8 -*-
# r5c033_gv.py —— 人物不死（GV 方案）：改两个 GV JSON + 给 rebuild 脚本加注入
#   1) GV_Advisors.json  : CHANCE_OF_DEATH 全 0（覆盖全部 7 个 characterDies 调用点）
#   2) GV_GameUpdate.json: GAME_UPDATE_DEATH_RULER_MIN_TURN_ID 极大（关掉总闸门）
#   3) /tmp/rebuild_v119fix.py 增加两段资源替换（照抄 RadarConfig 那几段的写法）
import io, os, re, shutil, subprocess, sys

APK = '/storage/emulated/0/GLG/历史23/build_apk/dbg_signed77_v119_r5c031.apk'
RB = '/tmp/rebuild_v119fix.py'
OUT_ADV = '/tmp/GV_Advisors_new.json'
OUT_UPD = '/tmp/GV_GameUpdate_new.json'
MARK = 'r5c033 GV'


def main():
    rb = io.open(RB, encoding='utf-8').read()
    if MARK in rb:
        print('rebuild 已打过 GV 注入补丁（幂等退出）')
        return 0

    # ---- 1) 取出原 JSON ----
    adv = subprocess.run(['unzip', '-p', APK, 'assets/game/gameValues/GV_Advisors.json'],
                         capture_output=True, text=True).stdout
    upd = subprocess.run(['unzip', '-p', APK, 'assets/game/gameValues/GV_GameUpdate.json'],
                         capture_output=True, text=True).stdout
    assert 'CHANCE_OF_DEATH' in adv and 'GAME_UPDATE_DEATH_RULER_MIN_TURN_ID' in upd, '取原始 GV 失败'

    # ---- 2) GV_Advisors.json：CHANCE_OF_DEATH 全 0（保持条目数）----
    m = re.search(r'CHANCE_OF_DEATH:\s*\[([^\]]*)\]', adv)
    assert m, 'CHANCE_OF_DEATH 未找到'
    n = len([x for x in m.group(1).split(',') if x.strip()])
    zeros = '[' + ','.join(['0'] * n) + ']'
    adv2 = adv[:m.start()] + ('CHANCE_OF_DEATH: ' + zeros) + adv[m.end():]
    assert 'CHANCE_OF_DEATH: %s' % zeros in adv2
    io.open(OUT_ADV, 'w', encoding='utf-8').write(adv2)
    print('  GV_Advisors.json: CHANCE_OF_DEATH %d 项 → 全 0' % n)

    # ---- 3) GV_GameUpdate.json：总闸门设极大 ----
    m2 = re.search(r'GAME_UPDATE_DEATH_RULER_MIN_TURN_ID:\s*(\d+)', upd)
    assert m2, 'MIN_TURN_ID 未找到'
    old_val = m2.group(1)
    upd2 = upd[:m2.start(1)] + '999999999' + upd[m2.end(1):]
    io.open(OUT_UPD, 'w', encoding='utf-8').write(upd2)
    print('  GV_GameUpdate.json: MIN_TURN_ID %s → 999999999' % old_val)
    print('    （注意：EVERY_X_DAYS 一律不动——它们参与取模，设 0 会除零）')

    # ---- 4) rebuild 注入 ----
    anchor = '        if i.filename == "assets/ui/graph/airDot.png":'
    assert rb.count(anchor) == 1, 'rebuild 锚点不唯一'
    block = (
        '        # r5c033 GV: 人物不死（顾问/将领/元首不再自然死亡）\n'
        '        if i.filename == "assets/game/gameValues/GV_Advisors.json":\n'
        '            data = open("/tmp/GV_Advisors_new.json", "rb").read()\n'
        '            zi = zipfile.ZipInfo(i.filename, date_time=(2026,9,24,10,0,0))\n'
        '            zi.compress_type = 8\n'
        '            out.writestr(zi, data)\n'
        '            continue\n'
        '        if i.filename == "assets/game/gameValues/GV_GameUpdate.json":\n'
        '            data = open("/tmp/GV_GameUpdate_new.json", "rb").read()\n'
        '            zi = zipfile.ZipInfo(i.filename, date_time=(2026,9,24,10,0,0))\n'
        '            zi.compress_type = 8\n'
        '            out.writestr(zi, data)\n'
        '            continue\n')
    if not os.path.exists(RB + '.pre_r5c033'):
        shutil.copy2(RB, RB + '.pre_r5c033')
        print('  backup -> rebuild_v119fix.py.pre_r5c033')
    rb2 = rb.replace(anchor, block + anchor, 1)
    io.open(RB, 'w', encoding='utf-8').write(rb2)
    print('  rebuild_v119fix.py 已加入两段 GV 注入')
    return 0


if __name__ == '__main__':
    sys.exit(main())