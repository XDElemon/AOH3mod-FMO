#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""补丁 · 让 AircraftDataManager 读取「每代数组」（路线 A 的代码半边）

四处改动（全部走锚点，原子写入）：
  A1  AircraftTypeData: 新增两个数组字段
  A2  applyType: 末尾插入一行 invoke（仅加载成功的分支会执行）
  A3  新增 private static applyGenStats(AirUnit)V（新方法，不内联）
  A4  AirMission.unitGenOf: private -> public（供 A3 调用）

用法:
  python3 tools/patches/p_gen_stats.py apply|check|revert
"""
import os, sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
BAT = os.path.join(ROOT, 'src', 'smali', 'aoc', 'kingdoms', 'lukasz', 'map', 'battles')
T_DATA = os.path.join(BAT, 'AircraftDataManager$AircraftTypeData.smali')
T_MGR = os.path.join(BAT, 'AircraftDataManager.smali')
T_MIS = os.path.join(BAT, 'AirMission.smali')

FIELDS = """.field public AirAttackByGen:[I

.field public DefenseByGen:[I

"""

ANCHOR_FIELD = '.method public constructor <init>()V'

ANCHOR_CALL = """    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->applyGenStats(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V

    :cond_86
    return-void
.end method
"""

OLD_CALL = """    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F

    :cond_86
    return-void
.end method
"""

NEW_METHOD = """.method private static applyGenStats(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V
    .registers 7

    # r_genstats: 按代覆盖 atk / maxHp(=def*2)。数组缺失或 gen 越界则保持 applyType 的结果
    if-eqz p0, :gs_done

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-eqz v0, :gs_done

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-eqz v1, :gs_done

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :gs_done

    aget-object v0, v0, v1

    if-eqz v0, :gs_done

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirMission;->unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I

    move-result v1

    if-ltz v1, :gs_done

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->AirAttackByGen:[I

    if-eqz v2, :gs_done

    array-length v3, v2

    if-ge v1, v3, :gs_done

    aget v4, v2, v1

    int-to-float v4, v4

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->airAttack:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->DefenseByGen:[I

    if-eqz v2, :gs_done

    array-length v3, v2

    if-ge v1, v3, :gs_done

    aget v4, v2, v1

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->maxHp:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->hp:F
    :gs_done
    return-void
.end method

.method public static load()V
"""

OLD_METHOD_HEAD = '.method public static load()V\n'

OLD_UG = '.method private static unitGenOf('
NEW_UG = '.method public static unitGenOf('


def apply():
    # A1 字段
    s = open(T_DATA, encoding='utf-8').read()
    if 'AirAttackByGen:[I' in s:
        print('A1 已应用')
    else:
        assert ANCHOR_FIELD in s, 'A1 锚点未命中'
        s = s.replace(ANCHOR_FIELD, FIELDS + ANCHOR_FIELD, 1)
        open(T_DATA, 'w', encoding='utf-8').write(s)
        print('A1 字段已加')

    # A2 + A3
    s = open(T_MGR, encoding='utf-8').read()
    if 'applyGenStats' in s:
        print('A2/A3 已应用')
    else:
        assert s.count(OLD_CALL) == 1, 'A2 锚点不唯一'
        assert s.count(OLD_METHOD_HEAD) == 1, 'A3 锚点不唯一'
        s = s.replace(OLD_CALL, ANCHOR_CALL, 1)
        s = s.replace(OLD_METHOD_HEAD, NEW_METHOD, 1)
        open(T_MGR, 'w', encoding='utf-8').write(s)
        print('A2 invoke + A3 新方法 已加')

    # A4 可见性
    s = open(T_MIS, encoding='utf-8').read()
    if NEW_UG in s:
        print('A4 已应用')
    else:
        assert s.count(OLD_UG) == 1, 'A4 锚点不唯一'
        s = s.replace(OLD_UG, NEW_UG, 1)
        open(T_MIS, 'w', encoding='utf-8').write(s)
        print('A4 unitGenOf -> public')


def check():
    ok = True
    for tag, path, needle in (
        ('A1', T_DATA, 'AirAttackByGen:[I'),
        ('A2', T_MGR, 'invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->applyGenStats'),
        ('A3', T_MGR, '.method private static applyGenStats'),
        ('A4', T_MIS, NEW_UG),
    ):
        hit = needle in open(path, encoding='utf-8').read()
        print('  %s %s' % ('✅' if hit else '❌', tag))
        ok = ok and hit
    return 0 if ok else 1


def revert():
    # A1
    s = open(T_DATA, encoding='utf-8').read()
    s = s.replace(FIELDS, '', 1)
    open(T_DATA, 'w', encoding='utf-8').write(s)
    # A2/A3
    s = open(T_MGR, encoding='utf-8').read()
    s = s.replace(ANCHOR_CALL, OLD_CALL, 1)
    s = s.replace(NEW_METHOD, OLD_METHOD_HEAD, 1)
    open(T_MGR, 'w', encoding='utf-8').write(s)
    # A4
    s = open(T_MIS, encoding='utf-8').read()
    s = s.replace(NEW_UG, OLD_UG, 1)
    open(T_MIS, 'w', encoding='utf-8').write(s)
    print('已回退')


if __name__ == '__main__':
    m = sys.argv[1] if len(sys.argv) > 1 else 'check'
    if m == 'apply':
        apply()
    elif m == 'revert':
        revert()
    sys.exit(check())
