# -*- coding: utf-8 -*-
# R5c022：E5 修复批（两处，均为最小改动）
#  D1) Save_Airforce_Data 主文件写出：FileManager.getSaveType(绝对路径) -> Gdx.files.absolute(绝对路径)
#      （Android 上 getSaveType==FileManager$3==Gdx.files.local ⇒ 加内部存储前缀，写到别处；读侧用 absolute ⇒ 读不到）
#  D2) InitGame.initGame() 里删掉"省数据未就绪时"的那次 loadSave_Airforce()
#      ⇒ afRestored 保持 false ⇒ 由 AFM.updateAll 的门（视图==IN_GAME 时）做唯一一次 sync+load
#  另加 1 个门探针 nE5 GATE a=1（验证门真的触发）
#
# 极性/无分支说明（纪律⑮⑯）：
#  - 本批**不新增任何分支**，不新增 move-result 配对（唯一 move-result-object 紧跟其 invoke）。
#  - 唯一的判定仍是既有的 `if-nez v0, :cond_22`（= afRestored==false 才进）——未改动。
#  4 情形模拟（D2 目标行为）：
#   ①新游戏：NewGame 置 afRestored=true ⇒ 门不进 ⇒ 不读档 ✔（无档可读）
#   ②启动进旧档：本批后 initGame 不读档（afRestored 仍 false）⇒ 进游戏首帧门进 ⇒ sync+load ✔
#   ③菜单读档：Menu_LoadSavedGame 自己做 sync+load（置 true）⇒ 门不进 ✔
#   ④门触发后：afRestored=true ⇒ 后续帧永不再进（只读一次）✔
import io

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
SGM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali'
IGM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menus/InitGame.smali'
DL = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'


def rd(p):
    return io.open(p, encoding='utf-8').read().split('\n')


def wr(p, L):
    io.open(p, 'w', encoding='utf-8').write('\n'.join(L))


def span(L, sig):
    st = [i for i, l in enumerate(L) if l.startswith('.method') and sig in l]
    assert len(st) == 1, 'method %s hits=%d' % (sig, len(st))
    st = st[0]
    for j in range(st + 1, len(L)):
        if L[j].strip() == '.end method':
            return st, j
    raise AssertionError('no end for ' + sig)


def one(L, a, b, needle, tag):
    h = [i for i in range(a, b + 1) if needle in L[i]]
    assert len(h) == 1, 'anchor %s hits=%d (%s)' % (tag, len(h), needle)
    return h[0]


def nxt(L, i, needle, tag):
    for j in range(i + 1, i + 6):
        if L[j].strip() == needle:
            return j
    raise AssertionError('next %s not found after %d' % (tag, i))


# ---------- D1（幂等） ----------
L = rd(SGM)
a, b = span(L, 'Save_Airforce_Data(')
h = [i for i in range(a, b + 1) if 'FileManager;->getSaveType(Ljava/lang/String;)' in L[i]]
if len(h) == 0:
    print('D1: 已完成过，跳过')
else:
    assert len(h) == 1, 'D1a hits=%d' % len(h)
    i = h[0]
    m = nxt(L, i, 'move-result-object v3', 'D1b')
    L = L[:i] + [
        '    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;',
        '    invoke-interface {v10, v3}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;',
        '    move-result-object v3',
    ] + L[m + 1:]
    wr(SGM, L)
    print('D1: 主文件写出已改为 Gdx.files.absolute（与读侧一致）')

# ---------- D2 ----------
L = rd(IGM)
a, b = span(L, 'public initGame()V')
h = [i for i in range(a, b + 1) if 'LoadSavedGameManager;->loadSave_Airforce()Z' in L[i]]
if len(h) == 0:
    print('D2: 已完成过，跳过')
else:
    assert len(h) == 1, 'D2 hits=%d' % len(h)
    i = h[0]
    win = '\n'.join(L[max(a, i - 8):i])
    assert 'AF_CALL:initgame' in win, 'D2 上下文不含 AF_CALL:initgame:\n' + win
    note = [
        '    # R5c022: 省建筑数据此时尚未加载(实测 bl2315=0)，此处读档会把存档机场全丢；',
        '    #          改为不在此读档 => afRestored 保持 false => 由 AFM.updateAll 的门(视图==IN_GAME)读一次',
    ]
    L = L[:i] + note + L[i + 1:]
    wr(IGM, L)
    print('D2: InitGame 的提前读档已移除（改为交给 updateAll 的门）')

# ---------- 门探针 ----------
L = rd(AFM)
a, b = span(L, 'public updateAll()V')
i = one(L, a, b, 'sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->afRestored:Z', 'GATE')
L = L[:i + 1] + [
    '    const-string v1, "GATE"',
    '    const/4 v2, 0x1',
    '    invoke-static {v1, v2}, %s->e5i(Ljava/lang/String;I)V' % DL,
] + L[i + 1:]
wr(AFM, L)
print('GATE: updateAll 门探针已加')
print('OK: r5c022 完成')