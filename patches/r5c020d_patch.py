# -*- coding: utf-8 -*-
# R5c020d：自动打击「开局默认＝关」
#  · Airport 构造器默认值 0(开) -> 1(关)（用空闲 v6）
#  · 存档 DTO 字段改名 autoStrikeOff -> strikePaused，并把 DTO 无参构造器默认置 1(关)
#    ⇒ 旧档（含旧键 autoStrikeOff）缺新键 ⇒ 取默认 1 ⇒ 也是「关」；旧键被 Json 忽略
#  · 存/读档两处拷贝同步改名
import io, os, shutil
R = '/tmp/w3a/smali/'
AF = R + 'aoc/kingdoms/lukasz/map/battles/Airport.smali'
SA = R + 'aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport.smali'
SG = R + 'aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali'
LG = R + 'aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali'

def load(p):
    b = p + '.pre_r5c020d'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    return io.open(p, encoding='utf-8').read()

def rep1(t, old, new, tag):
    c = t.count(old)
    assert c == 1, '%s 锚点不唯一 (%d)' % (tag, c)
    print('  OK', tag)
    return t.replace(old, new)

# (a) Airport 构造器：默认关
t = load(AF)
t = rep1(t,
         u'    # R5c020: 此处 v0 仍为 0 ⇒ autoStrikeOff=false（=开启）\n'
         u'    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n',
         u'    # R5c020d: 开局默认＝关（autoStrikeOff=true）\n'
         u'    const/4 v6, 0x1\n'
         u'    iput-boolean v6, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n',
         'Airport 默认＝关')
io.open(AF, 'w', encoding='utf-8').write(t)

# (b) DTO：字段改名 + 无参构造器默认关
t = load(SA)
t = rep1(t,
         u'.field public autoStrikeOff:Z\n',
         u'.field public strikePaused:Z\n',
         'DTO 字段改名 strikePaused')
t = rep1(t,
         u'.method public constructor <init>()V\n    .registers 1\n',
         u'.method public constructor <init>()V\n'
         u'    .registers 2\n'
         u'    # R5c020d: 缺键（旧档）时取默认＝关\n'
         u'    const/4 v0, 0x1\n'
         u'    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->strikePaused:Z\n',
         'DTO 构造器默认＝关')
io.open(SA, 'w', encoding='utf-8').write(t)

# (c) 存档写出：目标字段改名
t = load(SG)
t = rep1(t,
         u'    iput-boolean v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->autoStrikeOff:Z\n',
         u'    iput-boolean v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->strikePaused:Z\n',
         '存档目标改名')
io.open(SG, 'w', encoding='utf-8').write(t)

# (d) 读档读入：源字段改名
t = load(LG)
t = rep1(t,
         u'    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->autoStrikeOff:Z\n',
         u'    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->strikePaused:Z\n',
         '读档源改名')
io.open(LG, 'w', encoding='utf-8').write(t)

print('OK: r5c020d 完成（自动打击开局默认＝关；旧档亦为关）')