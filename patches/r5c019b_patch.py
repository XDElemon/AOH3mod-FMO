# -*- coding: utf-8 -*-
# R5c019b 五处修正：
#  [1] AirMission.applyArmyDamage：String.valueOf(lArmyRegiment) -> lArmyRegiment.size()
#      （消 ConcurrentModificationException 闪退；保留"团数"观测）
#  [2] AFM a1bPick  k=4 语义：if-gtz -> if-lez（在飞>0 才记）
#  [3] AFM a1bPick  0x30 护门：if-gez v5 -> if-ltz v5（选中才打印）
#  [4] AFM a1bRetarget 0x32 护门：if-gez v0 -> if-ltz v0
#  [5] AFM a1bRetarget 档宽与选靶侧同相对尺度：a1bRtTol *= 0.5（370*0.1*0.5 = 18.5）
import io, os, shutil

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
AM, AF = B + 'AirMission.smali', B + 'AirForceManager.smali'

def load(p):
    b = p + '.pre_r5c019b'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    return io.open(p, encoding='utf-8').read()

def repl(t, old, new, tag):
    c = t.count(old)
    assert c == 1, '锚点未唯一命中: %s (count=%d)' % (tag, c)
    print('  OK', tag)
    return t.replace(old, new)

# ---------------- [1] AirMission ----------------
t = load(AM)
t = repl(t,
'    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
'    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;\n'
'    move-result-object v6\n'
'    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n',
'    # R5c019b: 不再 String.valueOf(活列表)（会 CME 闪退）→ 只记团数\n'
'    iget-object v6, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n'
'    if-eqz v6, :axa_obj0\n'
'    invoke-interface {v6}, Ljava/util/List;->size()I\n'
'    move-result v6\n'
'    goto :axa_objw\n'
':axa_obj0\n'
'    const/4 v6, -0x1\n'
':axa_objw\n'
'    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n',
'AM 探针消 CME')
io.open(AM, 'w', encoding='utf-8').write(t)

# ---------------- [2..5] AirForceManager ----------------
t = load(AF)
t = repl(t, 'if-gtz v10, :bp_key', 'if-lez v10, :bp_key', 'k=4 极性')
t = repl(t, 'if-gez v5, :bp_pk_done', 'if-ltz v5, :bp_pk_done', '0x30 护门')
t = repl(t, 'if-gez v0, :rt_pk_done', 'if-ltz v0, :rt_pk_done', '0x32 护门')
t = repl(t,
'    mul-float v10, v10, v11\n'
'    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtTol:F\n',
'    mul-float v10, v10, v11\n'
'    # R5c019b: 重瞄只在半程内选 ⇒ 档宽同乘 0.5（与选靶侧同一相对尺度）\n'
'    const v11, 0x3f000000    # 0.5f\n'
'    mul-float v10, v10, v11\n'
'    sput v10, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bRtTol:F\n',
'重瞄档宽 18.5')
io.open(AF, 'w', encoding='utf-8').write(t)
print('OK: r5c019b 五处完成（备份 .pre_r5c019b）')