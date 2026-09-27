# -*- coding: utf-8 -*-
# R4c202：配置改从 APK 资产读取（assets/strike_config.json），外部文件仅作可选覆盖
#  ① 新增 cfgReadAsset(String)String —— 走 libGDX Gdx.files.internal(...).readString()
#  ② loadStrikeConfig：先读资产，成功就直接解析；失败才回落到原来的外部路径逻辑
import io

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
src = io.open(P, encoding='utf-8').read()

def rep1(old, new, tag):
    global src
    n = src.count(old)
    assert n == 1, 'anchor[%s] count=%d' % (tag, n)
    src = src.replace(old, new, 1)
    print('OK %s' % tag)

# ① helper
HELPER = '''.method public static cfgReadAsset(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    # R4c202：读 APK 内资产（libGDX Gdx.files.internal），失败返回 null
    const/4 v0, 0x0
    :cra_try
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;
    if-eqz v1, :cra_end
    invoke-interface {v1, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    move-result-object v2
    if-eqz v2, :cra_end
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;
    move-result-object v0
    :cra_end
    return-object v0
    :cra_catch
    const/4 v0, 0x0
    return-object v0
    .catch Ljava/lang/Throwable; {:cra_try .. :cra_end} :cra_catch
.end method

'''
rep1('.method public static dbgCand(II)V\n', HELPER + '.method public static dbgCand(II)V\n', 'cfgReadAsset')

# ② 资产优先
EXT = '    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/strike_config.json"\n'
NEW = ('    # R4c202：资产优先\n'
       '    const-string v0, "strike_config.json"\n'
       '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->cfgReadAsset(Ljava/lang/String;)Ljava/lang/String;\n'
       '    move-result-object v11\n'
       '    if-nez v11, :lc_ext_r\n'
       '    const-string v12, "AIRDBG"\n'
       '    new-instance v10, Ljava/lang/StringBuilder;\n'
       '    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V\n'
       '    const-string v13, "nRTXT3 asset len="\n'
       '    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
       '    invoke-virtual {v11}, Ljava/lang/String;->length()I\n'
       '    move-result v6\n'
       '    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n'
       '    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n'
       '    move-result-object v13\n'
       '    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I\n'
       '    move-result v6\n'
       '    goto :lc_ok\n'
       '    :lc_ext_r\n'
       + EXT)
rep1(EXT, NEW, 'asset first')

io.open(P, 'w', encoding='utf-8').write(src)
print('WROTE ok bytes=%d' % len(src.encode('utf-8')))