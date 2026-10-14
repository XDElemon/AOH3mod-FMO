# -*- coding: utf-8 -*-
"""r6d306 补丁（纯诊断 v3）：
E1 scWatch cap 极性修正（if-ge→if-lt；v1<cap 才继续记录）
E2 新增字段 dbgMOV
E3 actionMove(II) 入口加 nMOV 探针（坐标 + 7 个模式旗），cap256"""
import hashlib, os, sys, time

BATCH = "r6d306"
ROOTS = ["/tmp/w3a/smali", "/root/history23_repo/src/smali"]
TREE = "aoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree.smali"
MM = "aoc/kingdoms/lukasz/menu/MenuManager.smali"

E1_OLD = "    if-ge v1, v2, :sw_go2"
E1_NEW = "    if-lt v1, v2, :sw_go2"
E2_OLD = ".field public static dbgSCM:I"
E2_NEW = ".field public static dbgSCM:I\n.field public static dbgMOV:I"

E3_OLD = ('.method public final actionMove(II)Z\n'
          '    .registers 7\n'
          '    .param p1, "nPosX"    # I\n'
          '    .param p2, "nPosY"    # I\n'
          '\n'
          '    .line 2438\n'
          '    const/4 v0, 0x0\n'
          '\n')

def APP(attr, arg, call):
    return ('    const-string v1, "%s"\n'
            '    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n'
            '    move-result-object v0\n'
            '    %s\n'
            '    invoke-virtual {v0, %s}, Ljava/lang/StringBuilder;->append(%s)Ljava/lang/StringBuilder;\n'
            '    move-result-object v0\n') % (attr, call, arg, 'Z' if arg == 'v2' and 'boolean' in call else ('Z' if call.endswith(':Z') else ('I' if call.endswith(':I') else 'I')))

# 手工逐段构建，避免上面小函数的推断错误；统一用 append(Z) 仅在 boolean 段
BLK = []
BLK.append('    # r6d306 nMOV 总入口探针（只用 v0-v3；p0=v4）\n')
BLK.append('    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgMOV:I\n')
BLK.append('    const/16 v1, 0x100\n')
BLK.append('    if-ge v0, v1, :nmov_skip\n')
BLK.append('    add-int/lit8 v0, v0, 0x1\n')
BLK.append('    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->dbgMOV:I\n')
BLK.append('    :try_start_nmov\n')
BLK.append('    new-instance v0, Ljava/lang/StringBuilder;\n')
BLK.append('    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V\n')

def kv_str(attr):
    BLK.append('    const-string v1, "%s"\n' % attr)
    BLK.append('    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n')
    BLK.append('    move-result-object v0\n')

def append_int(reg):
    BLK.append('    invoke-virtual {v0, %s}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;\n' % reg)
    BLK.append('    move-result-object v0\n')

def append_z(reg):
    BLK.append('    invoke-virtual {v0, %s}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;\n' % reg)
    BLK.append('    move-result-object v0\n')

kv_str('nMOV x=')
append_int('p1')
kv_str(' y=')
append_int('p2')
kv_str(' d=')
BLK.append('    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;\n')
BLK.append('    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z\n')
BLK.append('    move-result v2\n')
append_z('v2')
for name, fld in ((' c=', 'colorPickerMode'), (' r=', 'menuResizeMode'), (' t=', 'menu_MoveByTitleMode'), (' i=', 'menu_MoveInnerElements'), (' s=', 'textScrollableMode'), (' p=', 'pieChartMode')):
    kv_str(name)
    BLK.append('    iget-boolean v2, p0, Laoc/kingdoms/lukasz/menu/MenuManager;->%s:Z\n' % fld)
    append_z('v2')
BLK.append('    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n')
BLK.append('    move-result-object v1\n')
BLK.append('    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V\n')
BLK.append('    :try_end_nmov\n')
BLK.append('    .catch Ljava/lang/Exception; {:try_start_nmov .. :try_end_nmov} :catch_nmov\n')
BLK.append('    const/4 v0, 0x0\n')
BLK.append('    const/4 v1, 0x0\n')
BLK.append('    const/4 v2, 0x0\n')
BLK.append('    const/4 v3, 0x0\n')
BLK.append('    goto :nmov_done\n')
BLK.append('    :catch_nmov\n')
BLK.append('    move-exception v3\n')
BLK.append('    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V\n')
BLK.append('    const/4 v0, 0x0\n')
BLK.append('    const/4 v1, 0x0\n')
BLK.append('    const/4 v2, 0x0\n')
BLK.append('    const/4 v3, 0x0\n')
BLK.append('    :nmov_done\n')
BLK.append('    :nmov_skip\n')
BLK.append('    .line 2438\n')
BLK.append('    const/4 v0, 0x0\n')
BLK.append('\n')
E3_NEW = E3_OLD + "".join(BLK)

ok = True
for root in ROOTS:
    for rel, name, old in ((TREE, "E1", E1_OLD), (TREE, "E2", E2_OLD), (MM, "E3head", E3_OLD)):
        t = root + "/" + rel
        s = open(t, encoding="utf-8").read()
        c = s.count(old)
        print("PRE", root.split("/")[1], name, c)
        if c != 1: ok = False
if not ok:
    print("ABORT"); sys.exit(1)

for root in ROOTS:
    for rel in (TREE, MM):
        t = root + "/" + rel
        raw = open(t, encoding="utf-8").read()
        bak = t + ".pre_" + BATCH
        if not os.path.exists(bak): open(bak, "w", encoding="utf-8").write(raw)
    t = root + "/" + TREE
    s = open(t, encoding="utf-8").read()
    s = s.replace(E1_OLD, E1_NEW, 1).replace(E2_OLD, E2_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE tree", root.split("/")[1], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])
    t = root + "/" + MM
    s = open(t, encoding="utf-8").read()
    s = s.replace(E3_OLD, E3_NEW, 1)
    open(t, "w", encoding="utf-8").write(s)
    print("WROTE mm", root.split("/")[1], hashlib.md5(s.encode("utf-8")).hexdigest()[:12])

print("DONE", BATCH, time.strftime("%H:%M:%S"))