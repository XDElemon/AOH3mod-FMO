#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d153 —— 空军出动"起飞即消失"修复：把"驻场取消"改成"飞行样式"

【规则（设计层）】
  drawAirDivisionAsPlane(key)：
    无活动任务                -> 驻场样式（原样，不动）
    有活动任务：
      有有效航段(prev>=0且prev!=at)   -> 航段插值位置 + 平滑航向（原样，不动）
      无有效航段                    -> **不再 return**，改为：
          画在"当前位置"（= 传入的省槽位坐标 p1,p2）
          朝向 = 朝目标省中心的平滑航向（无目标/无缩放/零向量 -> 沿用 mission.dispHeading）
          HP 文本走任务池（= 现有的"有任务"渲染，天然飞行样式）

【实现（3 处跳转改向 + 1 处插入新块）】
  S1  ProvinceDrawArmy.smali  goto/16 :goto_1b4        (state∉{1,2,3}，即 PLANNING) -> :r6d153_to
  S2                         if-ltz v5, :cond_1b4      (prev<0)                     -> :r6d153_to
  S3                         if-eq v5, v6, :cond_1b4   (prev==at)                   -> :r6d153_to
  新块 :r6d153_to 插在 :cond_7e 之前，并在此之前加 `goto/16 :cond_7e` 让正常路径跳过新块
  （正常路径 = 航段插值路径 fallthrough；无任务路径在 line674 直接跳 :cond_7e，均不经新块）

【寄存器纪律（.registers 16；p0=v12,p1=v13,p2=v14,p3=v15）】
  只用 v0(scratch/targetID/dy) v1(heading,float) v2(mission,obj 只读) v3(dx) v4(mapScale/scale)
       v5(prev)，v6(at)，v7(state 暂存) —— 均为 int/obj，且 :cond_7e 之后这些寄存器都被重写后才读
  绝不写 p0..p3（p1/p2 是位置参数，必须原样传入绘制块）
"""
import io
import os
import sys

PD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
BAK = '.pre_r6d153'

A1 = '    goto/16 :goto_1b4'
A2 = '    if-ltz v5, :cond_1b4'
A3 = '    if-eq v5, v6, :cond_1b4'
# 锚点必须"带上下文"才唯一：:cond_7e 在别的类方法里也有同名跳转引用（4120 行）
A4 = '    move p2, v4\n\n    :cond_7e\n'
SKIP_GOTO = '    goto/16 :cond_7e\n\n'

NEW_BLOCK = '''    :r6d153_to

    iget v5, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivPrevProvinceID:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    move v7, v3

    iget v0, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :r6d153_tgt

    iget v1, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    goto/16 :r6d153_log

    :r6d153_tgt

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v4, :r6d153_sc

    iget v1, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    goto/16 :r6d153_log

    :r6d153_sc

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v3

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v0

    sub-int v3, v3, p1

    sub-int v0, v0, p2

    if-nez v3, :r6d153_calc

    if-nez v0, :r6d153_calc

    iget v1, v2, Laoc/kingdoms/lukasz/map/battles/AirMission;->dispHeading:F

    goto/16 :r6d153_log

    :r6d153_calc

    int-to-float v3, v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->calcHeading(FF)F

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->smoothHeading(Laoc/kingdoms/lukasz/map/battles/AirMission;F)F

    move-result v1

    :r6d153_log

    invoke-static {p3, v7, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->takeoff(Ljava/lang/String;IIIF)V

'''

PROBE_METHOD = '''
# 起飞空窗探针：key, state, prev, at, heading（每 60 次采样一次，走 dWrite）
.method public static takeoff(Ljava/lang/String;IIIF)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nTO k="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method
'''


def backup(path):
    if not os.path.exists(path + BAK):
        with io.open(path, 'r', encoding='utf-8') as f:
            data = f.read()
        with io.open(path + BAK, 'w', encoding='utf-8') as f:
            f.write(data)
        print('备份 %s%s' % (os.path.basename(path), BAK))
    else:
        print('备份已存在，跳过：%s%s' % (os.path.basename(path), BAK))


def main():
    backup(PD)
    backup(PP)

    with io.open(PD, 'r', encoding='utf-8') as f:
        t = f.read()

    if ':r6d153_to' in t:
        print('!! 已打过 r6d153 补丁，退出（先还原备份）')
        return 1

    for name, a in (('S1', A1), ('S2', A2), ('S3', A3), ('A4', A4)):
        n = t.count(a)
        print('锚点 %s 命中 %d 次 :: %s' % (name, n, a.strip()))
        if n != 1:
            print('!! 锚点不唯一，中止')
            return 1

    t = t.replace(A1, '    goto/16 :r6d153_to')
    t = t.replace(A2, '    if-ltz v5, :r6d153_to')
    t = t.replace(A3, '    if-eq v5, v6, :r6d153_to')
    t = t.replace(A4, '    move p2, v4\n\n' + SKIP_GOTO + NEW_BLOCK + '    :cond_7e\n', 1)

    with io.open(PD, 'w', encoding='utf-8') as f:
        f.write(t)
    print('已改 ProvinceDrawArmy.smali（3 改向 + 1 新块）')

    with io.open(PP, 'r', encoding='utf-8') as f:
        p = f.read()
    if 'takeoff(Ljava/lang/String;IIIF)V' in p:
        print('!! 探针方法已存在，跳过')
    else:
        p = p.rstrip('\n') + '\n' + PROBE_METHOD
        with io.open(PP, 'w', encoding='utf-8') as f:
            f.write(p)
        print('已加 AirPosProbe.takeoff(Ljava/lang/String;IIIF)V')

    return 0


if __name__ == '__main__':
    sys.exit(main())
