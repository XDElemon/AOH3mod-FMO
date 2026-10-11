# -*- coding: utf-8 -*-
# B3b 锚点逐字先验（两棵树）
roots = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
for r in roots:
    print('===== tree:', r)
    T = r + '/aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali'
    s = open(T, encoding='utf-8').read()
    i = s.find('sget v0, Laoc/kingdoms/lukasz/textures/Images;->techAvailable:I')
    print('A ctx:', repr(s[i-60:i+90]))
    print('A slice count:', s.count('sget v0, Laoc/kingdoms/lukasz/textures/Images;->techAvailable:I\n    return v0\n.end method'))
    C = r + '/aoc/kingdoms/lukasz/map/civilization/Civilization.smali'
    s2 = open(C, encoding='utf-8').read()
    blk = '    :cond_5a\n    const/4 v0, 0x1\n    return v0\n.end method'
    print('C block count:', s2.count(blk))
    j = s2.find(blk)
    print('C ctx:', repr(s2[j-90:j+70]))
    F = r + '/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
    s3 = open(F, encoding='utf-8').read()
    k = s3.find('if-ge v6, v0, :cond_23a')
    print('B ctx:', repr(s3[k-40:k+70]))
    print('B count:', s3.count('if-ge v6, v0, :cond_23a'))
    print()