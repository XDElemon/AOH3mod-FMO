# -*- coding: utf-8 -*-
# check_invoke_target.py —— 门禁㉘：invoke 目标方法必须真实存在（含父类链）
#   起因（r5c045 血案）：新方法里把 `textures/Image;->draw(...)` 误写成 `textures/Images;->draw(...)`，
#   八件套全过（它不校验"目标类是否声明该方法"），装机后 ART 直接 VerifyError 闪退：
#     "failed to verify: [0x52] 'this' argument 'Reference: textures.Image' not instance of 'Reference: textures.Images'"
#   判据：对每条 invoke-{virtual,static,direct,super,interface}，取目标类 C 与签名 sig；
#        沿 C → C.super 链查找 `.method ... name(params)ret`；找不到 ⇒ FAIL（打印类/方法/行号）。
#   interface 调用：若目标类在 smali 树中不存在，则记为 SKIP（外部接口，无法判定）。
#   用法: python3 check_invoke_target.py [smali_root]   （默认 /tmp/w3a/smali）
import io, os, re, sys

ROOT = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
SKIP_DIRS = ('.pre_r5c', '.bak')

CLS_DECL = re.compile(r'^\.class\s+.*?L(?P<name>[^;\s]+);\s*$', re.M)
SUPER = re.compile(r'^\.super\s+L(?P<name>[^;\s]+);\s*$', re.M)
METHOD = re.compile(r'^\.method\s+(?:.*?\s)?(?P<sig>[^(\s]+\([^)]*\)\S+)\s*$', re.M)
INVOKE = re.compile(r'^\s*invoke-(?P<kind>\S+)\s+\{[^}]*\},\s*(?P<cls>\S+?)->(?P<sig>[^(\s]+\([^)]*\)\S+)\s*$')


def main():
    methods = {}      # class -> set(declared sigs)
    supers = {}       # class -> super class
    files = 0
    for dp, dn, fn in os.walk(ROOT):
        if any(s in dp for s in SKIP_DIRS):
            continue
        for f in fn:
            if not f.endswith('.smali') or any(s in f for s in SKIP_DIRS):
                continue
            p = os.path.join(dp, f)
            try:
                t = io.open(p, encoding='utf-8', errors='ignore').read()
            except Exception:
                continue
            files += 1
            m = CLS_DECL.search(t)
            if not m:
                continue
            cls = m.group('name')
            methods[cls] = set(METHOD.findall(t))
            sm = SUPER.search(t)
            if sm:
                supers[cls] = sm.group('name')

    # 走到 java/lang/Object 就说明"链全在树内"，此时未找到 ⇒ 真 BAD；
    # 链上遇到"不在树里的类"（java/lang/Thread、libGDX 等外部父类）⇒ 无法判定 ⇒ SKIP。
    OBJ_METHODS = {
        'equals(Ljava/lang/Object;)Z', 'hashCode()I', 'toString()Ljava/lang/String;',
        'getClass()Ljava/lang/Class;', 'clone()Ljava/lang/Object;', 'finalize()V',
        'notify()V', 'notifyAll()V', 'wait()V', 'wait(J)V', 'wait(JI)V',
    }
    bad, unknown, checked = [], 0, 0
    for dp, dn, fn in os.walk(ROOT):
        if any(s in dp for s in SKIP_DIRS):
            continue
        for f in fn:
            if not f.endswith('.smali') or any(s in f for s in SKIP_DIRS):
                continue
            p = os.path.join(dp, f)
            try:
                lines = io.open(p, encoding='utf-8', errors='ignore').read().split('\n')
            except Exception:
                continue
            for i, ln in enumerate(lines, 1):
                m = INVOKE.match(ln)
                if not m:
                    continue
                cls, sig, kind = m.group('cls'), m.group('sig'), m.group('kind')
                if cls.startswith('L'):
                    cls = cls[1:]          # invoke 里写的是 Laoc/...;，类表键是不带 L 的 aoc/...
                if cls.endswith(';'):
                    cls = cls[:-1]         # 去掉尾部分号（invoke 的类名带 ';'，.class 行的键不带）
                if cls.startswith('[') or cls not in methods:
                    unknown += 1           # 数组 / 外部类（libGDX、java/*）⇒ 无法判定
                    continue
                checked += 1
                cur, hops, found, blind = cls, 0, False, False
                while cur and hops < 24:
                    if sig in methods.get(cur, ()) or (cur.endswith('java/lang/Object') and sig in OBJ_METHODS):
                        found = True
                        break
                    nxt = supers.get(cur)
                    if nxt is None or nxt not in methods:
                        # 链在此断掉：只有终点就是 Object 时才敢判 BAD；否则无法判定
                        blind = not (nxt is None or nxt == 'java/lang/Object')
                        break
                    cur = nxt
                    hops += 1
                if found:
                    continue
                if blind:
                    unknown += 1
                else:
                    bad.append((p.replace(ROOT + '/', ''), i, cls, sig))

    print('扫描 %d 个 smali，invoke 行 %d 条（其中 %d 条目标类不在树内/为数组 ⇒ 无法判定，跳过）' % (files, checked + unknown, unknown))
    IGNORE_PREFIXES = ('com/',)      # 第三方库（未修改）中的既有噪声；我们只改 aoc/**
    ign = [b for b in bad if b[0].startswith(IGNORE_PREFIXES)]
    bad = [b for b in bad if not b[0].startswith(IGNORE_PREFIXES)]
    if ign:
        print('（忽略第三方既有 %d 条，例：%s）' % (len(ign), ign[0][0]))
    if bad:
        print('❌ INVOKE-TARGET BAD: %d 条' % len(bad))
        for p, i, cls, sig in bad[:40]:
            print('   %s:%d  %s->%s' % (p, i, cls, sig))
        print('判据: 目标类在树内存在、但该类及其父类链都没有声明该方法 ⇒ ART 会 VerifyError')
        return 1
    print('✅ INVOKE-TARGET OK：0 条（目标类存在时，方法签名均可在自身或父类链中找到）')
    return 0


if __name__ == '__main__':
    sys.exit(main())