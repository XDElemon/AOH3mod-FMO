# -*- coding: utf-8 -*-
# r5c024_patch.py — 建造队列进存档（DTO 字段 + 写侧 + 读侧 + 2 探针）
# 铁律：不新增寄存器（复用 v9/v12/v13）；探针不插在 invoke 与 move-result 之间
import io, os, shutil

SM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali'
LD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali'
DTO = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport.smali'

AIRPORT = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
SAVEA = 'Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'

def backup(p):
    b = p + '.pre_r5c024'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    return b

def patch(path, anchor, add, tag):
    t = io.open(path, encoding='utf-8').read()
    n = t.count(anchor)
    assert n == 1, '[%s] 锚点命中 %d 次（应为 1）' % (tag, n)
    assert add.strip() not in t, '[%s] 补丁已存在' % tag
    backup(path)
    io.open(path, 'w', encoding='utf-8').write(t.replace(anchor, anchor + add))
    print('[%s] OK' % tag)

# ---------- 1) DTO 加字段（照抄同文件 List 字段范式，带 Signature） ----------
A1 = '.field public strikePaused:Z\n'
NEW1 = u'''
# R5c024: 建造队列（元素＝AirUnit$AirType，与 Airport.buildQueue 同源）
.field public buildQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;",
            ">;"
        }
    .end annotation
.end field
'''
patch(DTO, A1, NEW1, 'DTO.buildQueue')

# ---------- 2) 写侧：紧跟 strikePaused 写入之后 ----------
A2 = '    iput-boolean v8, v7, %s->strikePaused:Z\n' % SAVEA
NEW2 = u'''
    # R5c024: 建造队列序列化（v9 = Airport.buildQueue；v12/v13 仅作探针暂存）
    iget-object v9, v6, %s->buildQueue:Ljava/util/List;

    iput-object v9, v7, %s->buildQueue:Ljava/util/List;

    if-eqz v9, :e5_qsave_skip

    const-string v12, "Qsave"

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, %s->e5i(Ljava/lang/String;I)V

    :e5_qsave_skip
''' % (AIRPORT, SAVEA, DBG)
patch(SM, A2, NEW2, 'SAVE.buildQueue')

# ---------- 3) 读侧：紧跟 autoStrikeOff 回填之后 ----------
A3 = '    iput-boolean v12, v11, %s->autoStrikeOff:Z\n' % AIRPORT
NEW3 = u'''
    # R5c024: 建造队列回填（旧档无该键 ⇒ null ⇒ 保留构造器空表）
    iget-object v12, v7, %s->buildQueue:Ljava/util/List;

    if-eqz v12, :e5_aptq_skip

    iput-object v12, v11, %s->buildQueue:Ljava/util/List;

    const-string v13, "Qload"

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v13, v12}, %s->e5i(Ljava/lang/String;I)V

    :e5_aptq_skip
''' % (SAVEA, AIRPORT, DBG)
patch(LD, A3, NEW3, 'LOAD.buildQueue')

print('r5c024 补丁完成')
