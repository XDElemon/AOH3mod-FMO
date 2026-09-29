import io
PD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
src = io.open(PD, encoding='utf-8').read()

OLD = '''    # r6d075：选中空军编队时，跳过陆军金框
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :dpa_draw
    return-void
    :dpa_draw
'''
NEW = '''    # r6d077：仅当"当前选中的是空军编队"时跳过陆军金框
    # 依据：getActiveDivKey() 读 Game.activeArmy[0]，陆军选中时同样非空 ⇒
    #      必须再用 airhq_ 前缀区分"选中态是否为空军"（陆军 key 无此前缀）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getActiveDivKey()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :dpa_draw

    const-string v1, "airhq_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    if-eqz v1, :dpa_draw
    return-void
    :dpa_draw
'''
assert src.count(OLD) == 1, ('OLD', src.count(OLD))
src = src.replace(OLD, NEW, 1)
io.open(PD, 'w', encoding='utf-8').write(src)
print('guard=%d airhq=%d' % (src.count(':dpa_draw'), src.count('"airhq_"')))