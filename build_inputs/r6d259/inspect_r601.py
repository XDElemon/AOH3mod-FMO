from pathlib import Path
IG = Path('/tmp/w3a/smali/aoc/kingdoms/lukasz/menus/InitGame.smali')
ig = IG.read_text(encoding='utf-8')
a = ig.find('# r6t001: TNO UI assets')
b = ig.find('dWrite(Ljava/lang/String;)V', a)
seg = ig[a:b]
print('a=', a, 'b=', b, 'len=', len(seg))
print('move-result v0:', seg.count('move-result v0'))
print('const-string v0:', seg.count('const-string v0'))
print('invoke-static {v0}:', seg.count('invoke-static {v0}'))
print('dWrite total:', ig.count('AirDbgLog;->dWrite'))
print('---- seg tail 900 ----')
print(seg[-900:])