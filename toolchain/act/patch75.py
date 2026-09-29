import io, shutil
PD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
BK = PD + '.pre_r6d067'

# 0) 复原干净基线
shutil.copyfile(BK, PD)
src = io.open(PD, encoding='utf-8').read()
helper = io.open('/tmp/asr.txt', encoding='utf-8').read()

# 1) 插入细环 helper（锚点：drawAirDivisionAsPlane 方法头）
A1 = '.method public static final drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V'
assert src.count(A1) == 1, ('A1', src.count(A1))
src = src.replace(A1, helper + A1, 1)

# 2) 挂点：在该方法 .registers 16 之后插调用
A2 = A1 + '\n    .registers 16\n'
assert src.count(A2) == 1, ('A2', src.count(A2))
CALL = ('    # r6d067 A5：选中空军编队 ⇒ 画金环\n'
        '    invoke-static {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;'
        '->airSelRingDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V\n\n')
src = src.replace(A2, A2 + CALL, 1)

# 3) 金框守卫：插到真绘制者 drawProvinceArmyActive(SpriteBatch;III)V 的首条指令前
lines = src.split('\n')
H = '.method private static final drawProvinceArmyActive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V'
i = [k for k, l in enumerate(lines) if l == H]
assert len(i) == 1, ('H', i)
j = i[0]
while not lines[j].strip().startswith('.line'):
    j += 1
guard = [
    '    # r6d075：选中空军编队时，跳过陆军金框',
    '    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;',
    '    move-result-object v0',
    '    if-eqz v0, :dpa_draw',
    '    return-void',
    '    :dpa_draw',
]
lines[j:j] = guard
io.open(PD, 'w', encoding='utf-8').write('\n'.join(lines))
print('restored+patched: helper=%d call=%d guard=%d' % (
    ('\n'.join(lines)).count('.method public static airSelRingDraw'),
    ('\n'.join(lines)).count('->airSelRingDraw('),
    ('\n'.join(lines)).count(':dpa_draw')))