# -*- coding: utf-8 -*-
# B3b 锚点精抓 v2
r = '/tmp/w3a/smali'
T = r + '/aoc/kingdoms/lukasz/map/technology/TechnologyTree.smali'
s = open(T, encoding='utf-8').read()
i = s.find('->techAvailable:I')
print('A tail repr:', repr(s[i:i+80]))
k = s.find('.end method', i)
print('A after end method:', repr(s[k:k+120]))

C = r + '/aoc/kingdoms/lukasz/map/civilization/Civilization.smali'
s2 = open(C, encoding='utf-8').read()
j = s2.find('.method public getAvailableToResearch')
e = s2.find('.end method', j)
print()
print('C method tail repr:', repr(s2[e-300:e+15]))

F = r + '/aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali'
s3 = open(F, encoding='utf-8').read()
k2 = s3.find('if-ge v6, v0, :cond_23a')
print()
print('B after anchor repr:', repr(s3[k2:k2+120]))