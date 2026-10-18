#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
按《终序千禧 FMO》仓库里源码/配置的真实素材名，生成文字占位图。
命名来源：
  1) assets_r6t007/game/AirUnit/AircraftTypes.json  -> 4 机型 INTERCEPTOR/FIGHTER/BOMBER/ATTACKER
  2) assets_r6t007/game/AirUnit/AirUnitlmages/     -> Gen3~6/{CN,EU,RU,US}/<机型>.png + Models/*
  3) assets_r6t007/ui/interface/{H,XH,XXH}/icons/airs_*.png
尺寸对齐真实文件：Gen/Models=300x200, airs_*=77x77, ringAlly=256x256, ringSel112=112x112, ringSel84=84x84, RadarUnit=53x45
"""
import os, shutil
from PIL import Image, ImageDraw, ImageFont

OUT = os.environ.get("PLACEHOLDER_OUT", "/sdcard/Download/fmo_placeholder_assets")
F_BOLD = "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"
F_REG  = "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf"
F_CJK  = "/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc"

GEN_COLOR = {3:(0,168,150), 4:(40,120,235), 5:(150,70,215), 6:(220,60,60)}
COUNTRY_CN = {"CN":"中国", "EU":"欧洲", "RU":"俄罗斯", "US":"美国"}
GEN_CN = {3:"三代", 4:"四代", 5:"五代", 6:"六代"}
TYPE_CN = {"FIGHTER":"战斗机", "INTERCEPTOR":"截击机", "ATTACKER":"攻击机", "BOMBER":"轰炸机"}
MODELS = ['A-10','ASF-X','B-1','B-2','CFA-44','EF-2000','F-14','F-22','F-35','F-47','FCAS','H-20',
          'H-29','H-6','H-7','Harrier','J-10','J-20','J-35','J-36','J-50','J-8','JAS-39','MIG-31',
          'MIG-41','Q-5','SU-25','SU-27-J-11','SU-27','SU-34','SU-57','TU-160','TU-170','TU-202',
          'Tempest','Tornado-Gen5','Tornado','X-02S','X-32']
AIRS = ['airs_aim','airs_attack','airs_cancel','airs_no','airs_ok','airs_patrol',
        'airs_pay_aa','airs_pay_ground','airs_pay_nuke','airs_pay_nuke_gray','airs_return','airs_slot']


def font(path, size, index=0):
    try:
        return ImageFont.truetype(path, size, index=index)
    except Exception:
        return ImageFont.truetype(F_BOLD, size)


def fit(draw, text, path, maxw, start, floor=10, index=0):
    s = start
    while s > floor:
        f = font(path, s, index)
        if draw.textlength(text, font=f) <= maxw:
            return f
        s -= 1
    return font(path, floor, index)


def ctext(draw, box, text, path, maxw, start, fill, y=None):
    f = fit(draw, text, path, maxw, start)
    x0, y0, x1, y1 = box
    tw = draw.textlength(text, font=f)
    tx = x0 + (x1 - x0 - tw) / 2
    ty = y if y is not None else y0 + (y1 - y0 - f.size) / 2
    draw.text((tx, ty), text, font=f, fill=fill)
    return f.size


def gen_image(gen, country, typ, path):
    W, H = 300, 200
    acc = GEN_COLOR[gen]
    im = Image.new("RGBA", (W, H), (16, 20, 26, 240))
    d = ImageDraw.Draw(im)
    d.rectangle([0, 0, W - 1, 9], fill=acc)
    d.rectangle([0, 0, W - 1, H - 1], outline=acc, width=2)
    ctext(d, (10, 18, W - 10, 18), f"Gen{gen} · {country}", F_BOLD, W - 24, 40, (255, 255, 255))
    h1 = 26 if gen == 3 else 26
    ctext(d, (10, 66, W - 10, 66), typ, F_BOLD, W - 24, 34, acc, y=62)
    ctext(d, (10, 104, W - 10, 104), f"{GEN_CN[gen]} · {COUNTRY_CN[country]} · {TYPE_CN[typ]}",
          F_CJK, W - 24, 22, (200, 205, 212), y=104)
    ctext(d, (10, 158, W - 10, 158), "PLACEHOLDER", F_BOLD, W - 24, 14, (110, 116, 126), y=160)
    im.save(path)


def type_image(typ, path):
    W, H = 300, 200
    im = Image.new("RGBA", (W, H), (16, 20, 26, 240))
    d = ImageDraw.Draw(im)
    d.rectangle([0, 0, W - 1, 9], fill=(120, 128, 140))
    d.rectangle([0, 0, W - 1, H - 1], outline=(120, 128, 140), width=2)
    ctext(d, (10, 40, W - 10, 40), typ, F_BOLD, W - 24, 40, (255, 255, 255), y=40)
    ctext(d, (10, 100, W - 10, 100), f"{TYPE_CN[typ]} · 基础图", F_CJK, W - 24, 22, (200, 205, 212), y=104)
    ctext(d, (10, 158, W - 10, 158), "PLACEHOLDER", F_BOLD, W - 24, 14, (110, 116, 126), y=160)
    im.save(path)


def model_image(name, path):
    W, H = 300, 200
    im = Image.new("RGBA", (W, H), (16, 20, 26, 240))
    d = ImageDraw.Draw(im)
    d.rectangle([0, 0, W - 1, 9], fill=(200, 170, 60))
    d.rectangle([0, 0, W - 1, H - 1], outline=(200, 170, 60), width=2)
    ctext(d, (10, 46, W - 10, 46), name, F_BOLD, W - 24, 46, (255, 255, 255), y=46)
    ctext(d, (10, 108, W - 10, 108), "机型立绘占位", F_CJK, W - 24, 22, (200, 205, 212), y=110)
    ctext(d, (10, 158, W - 10, 158), "MODELS", F_BOLD, W - 24, 14, (110, 116, 126), y=160)
    im.save(path)


def ring_image(size, label, color, path, filled_center=True):
    im = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    pad = max(3, size // 14)
    d.ellipse([pad, pad, size - pad, size - pad], outline=color, width=max(3, size // 12))
    if filled_center and size >= 100:
        d.ellipse([size // 2 - size // 10, size // 2 - size // 10,
                   size // 2 + size // 10, size // 2 + size // 10], fill=color)
    if size >= 84:
        f = font(F_BOLD, max(9, size // 9))
        tw = d.textlength(label, font=f)
        d.text(((size - tw) / 2, size * 0.70), label, font=f, fill=color)
    im.save(path)


def airs_image(name, path):
    W, H = 77, 77
    im = Image.new("RGBA", (W, H), (22, 26, 34, 235))
    d = ImageDraw.Draw(im)
    short = name.replace("airs_", "").upper()
    acc = {"PATROL": (60, 170, 240), "ATTACK": (235, 90, 70), "AIM": (240, 180, 60),
           "PAY_AA": (150, 120, 240), "PAY_GROUND": (235, 140, 60), "PAY_NUKE": (220, 60, 60),
           "PAY_NUKE_GRAY": (140, 140, 140), "RETURN": (90, 200, 140), "SLOT": (120, 130, 145),
           "OK": (80, 200, 110), "NO": (200, 70, 70), "CANCEL": (170, 80, 80)}.get(short, (160, 165, 175))
    d.rounded_rectangle([1, 1, W - 2, H - 2], radius=8, outline=acc, width=2)
    parts = short.split("_")
    if len(parts) == 2 and len(parts[0]) <= 3:
        lines = [parts[0], parts[1]]
    else:
        mid = len(short) // 2
        lines = [short[:mid], short[mid:]] if len(short) > 6 else [short]
    fs = min(15, int(66 / max(len(l) for l in lines) * 1.55))
    f = font(F_BOLD, max(9, fs))
    total = len(lines) * (f.size + 2)
    y = (H - total) / 2
    for l in lines:
        tw = d.textlength(l, font=f)
        d.text(((W - tw) / 2, y), l, font=f, fill=acc)
        y += f.size + 2
    im.save(path)


def radar_image(path):
    W, H = 53, 45
    im = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    d.ellipse([2, 2, W - 3, H - 3], outline=(90, 200, 140), width=2)
    d.ellipse([W // 2 - 4, H // 2 - 4, W // 2 + 4, H // 2 + 4], fill=(90, 200, 140))
    f = font(F_BOLD, 9)
    tw = d.textlength("RDR", font=f)
    d.text(((W - tw) / 2, H - 13), "RDR", font=f, fill=(90, 200, 140))
    im.save(path)


def main():
    if os.path.isdir(OUT):
        shutil.rmtree(OUT)
    base = os.path.join(OUT, "assets", "game", "AirUnit", "AirUnitlmages")
    os.makedirs(base, exist_ok=True)
    made = []

    def reg(p):
        im = Image.open(p)
        made.append((os.path.relpath(p, OUT), im.size[0], im.size[1], os.path.getsize(p)))
        im.close()

    # 1) 64 张代际图
    for gen in (3, 4, 5, 6):
        for c in ("CN", "EU", "RU", "US"):
            d = os.path.join(base, f"Gen{gen}", c)
            os.makedirs(d, exist_ok=True)
            for t in ("FIGHTER", "INTERCEPTOR", "ATTACKER", "BOMBER"):
                p = os.path.join(d, f"{t}.png")
                gen_image(gen, c, t, p)
                reg(p)
    # 2) 4 张基础机型 + RadarUnit
    for t in ("FIGHTER", "INTERCEPTOR", "ATTACKER", "BOMBER"):
        p = os.path.join(base, f"{t}.png")
        type_image(t, p)
        reg(p)
    p = os.path.join(base, "RadarUnit.png")
    radar_image(p)
    reg(p)
    # 3) 三个阵营环 + ringSel
    for nm, col in (("ringAlly", (70, 200, 120)), ("ringEnemy", (220, 70, 70)), ("ringFriend", (70, 140, 235))):
        p = os.path.join(base, f"{nm}.png")
        ring_image(256, nm.replace("ring", "").upper(), col, p, filled_center=False)
        reg(p)
    for nm, sz in (("ringSel112", 112), ("ringSel84", 84)):
        p = os.path.join(base, f"{nm}.png")
        ring_image(sz, "SEL", (240, 190, 60), p, filled_center=False)
        reg(p)
    # 4) Models 39
    dm = os.path.join(base, "Models")
    os.makedirs(dm, exist_ok=True)
    for m in MODELS:
        p = os.path.join(dm, f"{m}.png")
        model_image(m, p)
        reg(p)
    # 5) airs_* × 3 套
    for v in ("H", "XH", "XXH"):
        di = os.path.join(OUT, "assets", "ui", "interface", v, "icons")
        os.makedirs(di, exist_ok=True)
        for a in AIRS:
            p = os.path.join(di, f"{a}.png")
            airs_image(a, p)
            reg(p)

    made.sort()
    with open(os.path.join(OUT, "MANIFEST.tsv"), "w", encoding="utf-8") as f:
        f.write("path\twidth\theight\tbytes\n")
        for r in made:
            f.write("%s\t%d\t%d\t%d\n" % r)
    print("生成文件数:", len(made))
    from collections import Counter
    c = Counter(os.path.dirname(r[0]) for r in made)
    for k, v in sorted(c.items()):
        print(f"   {v:>3}  {k}")


if __name__ == "__main__":
    main()
