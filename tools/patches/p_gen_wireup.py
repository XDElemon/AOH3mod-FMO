#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""补丁 · 把 AirMission.unitGenOf 从常量 3 改为「按 (civID, 国家组, 机型) 现算代际」

依据（实证，见 baseline/research_gen载体_v1.md）：
  - AirUnit.typeID 是 AircraftTypes.json 的 ID(1..4)，不是 AirModelTables 下标(0..50)，不能直查
  - 机型下标由 AirForceManager.artGroupOf + AirModelTables.bestIdx(civ, 国组, 型) 现算
  - AirType 枚举 ordinal 顺序 = INTERCEPTOR0 FIGHTER1 BOMBER2 ATTACKER3
    取图处用 `ordinal ^ 1` 映射成机型表下标 F0 I1 A2 B3，本补丁沿用同一映射

用法:
  python3 tools/patches/p_gen_wireup.py apply    # 原子写入（锚点必须命中）
  python3 tools/patches/p_gen_wireup.py check    # 只校验当前状态
"""
import os, sys

ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
TARGET = os.path.join(ROOT, 'src', 'smali', 'aoc', 'kingdoms', 'lukasz', 'map',
                      'battles', 'AirMission.smali')

OLD = """.method private static unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method"""

NEW = """.method private static unitGenOf(Laoc/kingdoms/lukasz/map/battles/AirUnit;)I
    .registers 6

    # r_genw: 代际取真值（A 路线：运行时推断，不改存档）
    if-eqz p0, :gen_stub
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->civID:I
    if-ltz v0, :gen_stub
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->type:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    if-eqz v1, :gen_stub
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I
    move-result v1
    const/4 v2, 0x1
    xor-int/2addr v1, v2
    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I
    move-result v2
    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->bestIdx(III)I
    move-result v3
    if-ltz v3, :gen_stub
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->genOf(I)I
    move-result v4
    return v4
    :gen_stub
    const/4 v0, 0x3
    return v0
.end method"""


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else 'check'
    src = open(TARGET, encoding='utf-8').read()
    applied = NEW in src
    pending = OLD in src

    if mode == 'check':
        print('目标:', TARGET)
        print('已应用:', applied, '| 可应用:', pending)
        return 0 if (applied or pending) else 1

    if mode == 'apply':
        if applied:
            print('已应用过，跳过')
            return 0
        if not pending:
            print('❌ 锚点未命中（unitGenOf 原文不符），拒绝写入')
            return 1
        out = src.replace(OLD, NEW, 1)
        tmp = TARGET + '.tmp'
        with open(tmp, 'w', encoding='utf-8') as f:
            f.write(out)
        os.replace(tmp, TARGET)
        print('✅ 已写入（原子替换）')
        return 0

    print('未知模式:', mode)
    return 2


if __name__ == '__main__':
    sys.exit(main())
