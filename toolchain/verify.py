import sys, struct
path = sys.argv[1]
d = open(path,'rb').read()
# header
t, hs, fs = struct.unpack_from('<HHI', d, 0)
print('magic=%x hsz=%d fsz=%d len=%d OK=%s' % (t, hs, fs, len(d), 'YES' if fs==len(d) else 'NO'))
off = 8
strings = []
while off + 8 <= len(d):
    ctype = struct.unpack_from('<H', d, off)[0]
    hsize = struct.unpack_from('<H', d, off+2)[0]
    csize = struct.unpack_from('<I', d, off+4)[0]
    if csize == 0:
        print('BAD ZERO chunk at', off); break
    if ctype == 0x0001:
        scount = struct.unpack_from('<I', d, off+8)[0]
        flags = struct.unpack_from('<I', d, off+16)[0]
        strStart = struct.unpack_from('<I', d, off+20)[0]
        utf8 = (flags & 0x100) != 0
        offsets = struct.unpack_from('<%dI' % scount, d, off+28)
        base = off + strStart
        for i in range(scount):
            sp = base + offsets[i]
            if utf8:
                l0 = d[sp]; sp += 1
                if l0 & 0x80:
                    l0 = ((l0 & 0x7f) << 8) | d[sp]; sp += 1
                s = d[sp:sp+l0].decode('utf-8', errors='replace')
            else:
                ln = struct.unpack_from('<H', d, sp)[0]; sp += 2
                s = d[sp:sp+ln*2].decode('utf-16-le', errors='replace')
            strings.append(s)
        print('strings:', scount, 'has 0.0.1:', '0.0.1' in strings)
    if ctype == 0x0102:
        aStart = struct.unpack_from('<H', d, off+24)[0]
        aCount = struct.unpack_from('<H', d, off+28)[0]
        abase = off + hsize + aStart
        for a in range(aCount):
            aoff = abase + a*20
            nn = struct.unpack_from('<I', d, aoff+4)[0]
            if nn < len(strings) and strings[nn] == 'versionCode':
                tv_data = struct.unpack_from('<I', d, aoff+16)[0]
                ttype = struct.unpack_from('<H', d, aoff+14)[0]
                print('versionCode data=%d type=%d' % (tv_data, ttype))
    off += csize
sys.stdout.flush()