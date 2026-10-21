#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""gen_air_roster_icons.py —— 生成空军编制的图标（编制卡片图）

为什么要有它：
  四个空军编制文件（AirFighter/AirInterceptor/AirBomber/AirAttacker.json）里每条编制
  的 `ImageID` 原先全是占位 67（= 战斗机图），于是面板里所有编制都显示成战斗机。
  每条编制对应一个机型（aid = armyID*4 + 类型轴），图标要以**那个机型的地图贴图**为主体，
  再配上"能看出是哪种飞机、哪一代"的版面，而不是贴图+纯色底。

素材：`assets/game/AirUnit/AirUnitlmages/Gen{3..6}/{CN,EU,RU,US}/{FIGHTER,INTERCEPTOR,
      BOMBER,ATTACKER}.png`（300×200，带 alpha，俯视侧向机位）
尺寸：与陆军编制图标一致 **200×118**

用法:
  python3 tools/gen_air_roster_icons.py --sample /tmp/icons_sample        # 出几张风格样张
  python3 tools/gen_air_roster_icons.py --all <素材暂存目录>               # 生成全部 64 张
"""
import argparse
import json
import math
import os
import random
import sys

from PIL import Image, ImageChops, ImageDraw, ImageEnhance, ImageFilter, ImageFont

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# 设计尺寸（1x）。游戏把编制图标按 `unitsFrame.png` 的尺寸（332×196）绘制，
# 所以 XXH 桶要原生按 1.66x 渲染，不能靠放大 200px 图（文字会糊）。
DESIGN_W, DESIGN_H = 200, 118
SC = 1.0
W, H = DESIGN_W, DESIGN_H


def s(v):
    """设计像素 -> 当前渲染倍率下的像素"""
    return int(round(v * SC))
FONT_B = "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf"
FONT_CJK = "/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc"

COUNTRY_COLOR = {"CN": (163, 32, 38), "EU": (40, 74, 140), "RU": (74, 110, 74),
                 "US": (54, 74, 116)}
COUNTRY_COLOR2 = {"CN": (214, 179, 74), "EU": (222, 196, 96), "RU": (200, 160, 80),
                  "US": (222, 222, 228)}
TYPE_CJK = {"FIGHTER": "战斗机", "INTERCEPTOR": "截击机", "BOMBER": "轰炸机",
            "ATTACKER": "攻击机"}
ROMAN = {3: "III", 4: "IV", 5: "V", 6: "VI"}


# ----------------------------------------------------------------- 基础工具
def load_sprite(path, trim=True):
    im = Image.open(path).convert("RGBA")
    if trim:
        bb = im.getchannel("A").getbbox()
        if bb:
            im = im.crop(bb)
    return im


def fit(plane, box_w, box_h):
    w, h = plane.size
    s = min(box_w / float(w), box_h / float(h))
    return plane.resize((max(1, int(w * s)), max(1, int(h * s))), Image.LANCZOS)


def shadow_of(plane, blur=5, opacity=120, spread=2):
    a = plane.getchannel("A")
    if spread:
        a = a.filter(ImageFilter.MaxFilter(spread * 2 + 1))
    sh = Image.new("RGBA", plane.size, (0, 0, 0, 0))
    sh.putalpha(a.point(lambda v: int(v * opacity / 255.0)))
    return sh.filter(ImageFilter.GaussianBlur(blur))


def paste_center(canvas, im, cx, cy):
    canvas.alpha_composite(im, (int(cx - im.width / 2), int(cy - im.height / 2)))


def vgrad(size, top, bottom):
    w, h = size
    img = Image.new("RGBA", size)
    d = ImageDraw.Draw(img)
    for y in range(h):
        t = y / float(max(1, h - 1))
        d.line([(0, y), (w, y)], fill=tuple(int(top[i] + (bottom[i] - top[i]) * t) for i in range(3)) + (255,))
    return img


def noise_layer(size, seed, blur=0, alpha=40, scale=1):
    rnd = random.Random(seed)
    w, h = size
    small = Image.new("L", (max(1, w // scale), max(1, h // scale)))
    small.putdata([rnd.randint(0, 255) for _ in range(small.width * small.height)])
    n = small.resize(size, Image.BICUBIC)
    if blur:
        n = n.filter(ImageFilter.GaussianBlur(blur))
    lay = Image.new("RGBA", size, (255, 255, 255, 0))
    lay.putalpha(n.point(lambda v: int(v * alpha / 255.0)))
    return lay


def font(size, cjk=False):
    try:
        return ImageFont.truetype(FONT_CJK if cjk else FONT_B, size)
    except OSError:
        return ImageFont.load_default()


def outline(plane, color, width=2):
    """给贴图描一圈发光边（用于压深底时把轮廓提出来）"""
    a = plane.getchannel("A")
    grown = a.filter(ImageFilter.MaxFilter(width * 2 + 1))
    ring = ImageChops.subtract(grown, a)
    lay = Image.new("RGBA", plane.size, color + (0,))
    lay.putalpha(ring.point(lambda v: int(v * 0.9)))
    out = Image.new("RGBA", plane.size, (0, 0, 0, 0))
    out.alpha_composite(lay)
    out.alpha_composite(plane)
    return out


def edge_art(plane, color=(214, 238, 255), fill_alpha=22):
    """把贴图变成"工程线稿"：1px 轮廓 + 极淡内部结构线 + 淡填充"""
    a = plane.getchannel("A")
    ring = ImageChops.subtract(a.filter(ImageFilter.MaxFilter(3)), a)
    lum = plane.convert("L")
    detail = lum.filter(ImageFilter.FIND_EDGES).filter(ImageFilter.GaussianBlur(0.6))
    detail = detail.point(lambda v: 0 if v < 26 else min(255, int((v - 26) * 2.2)))
    detail = ImageChops.multiply(detail, a.point(lambda v: 255 if v > 40 else 0))
    out = Image.new("RGBA", plane.size, (0, 0, 0, 0))
    fill = Image.new("RGBA", plane.size, color + (0,))
    fill.putalpha(a.point(lambda v: int(v * fill_alpha / 255.0)))
    out.alpha_composite(fill)
    for mask, boost, col in ((detail, 0.42, (150, 196, 226)), (ring, 1.0, color)):
        lay = Image.new("RGBA", plane.size, col + (0,))
        lay.putalpha(mask.point(lambda v, b=boost: int(v * b)))
        out.alpha_composite(lay)
    return out


# ----------------------------------------------------------------- 风格
def style_apron(plane, meta):
    """A 停机坪俯视：水泥板块 + 黄色滑行线 + 轮胎痕，飞机压在影子上"""
    bg = vgrad((W, H), (96, 100, 106), (54, 57, 62))
    # 斜射阳光：左上亮、右下暗
    sun = Image.new("L", (W, H), 0)
    sd = ImageDraw.Draw(sun)
    sd.polygon([(0, 0), (W * 0.9, 0), (0, H * 1.15)], fill=90)
    sun = sun.filter(ImageFilter.GaussianBlur(30))
    bg = Image.composite(Image.new("RGBA", (W, H), (255, 240, 210, 58)),
                         bg, sun)
    dark = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(dark).polygon([(W, H), (W, H * 0.45), (W * 0.45, H)], fill=(0, 0, 0, 60))
    bg.alpha_composite(dark.filter(ImageFilter.GaussianBlur(22)))
    d = ImageDraw.Draw(bg)
    for x in range(-40, W + 80, 58):          # 水泥板块缝
        d.line([(x, 0), (x - 30, H)], fill=(44, 46, 50, 210), width=2)
    for y in range(8, H, 40):
        d.line([(0, y), (W, y)], fill=(58, 61, 66, 170), width=1)
    d.line([(-10, 104), (W + 10, 40)], fill=(206, 166, 56, 240), width=6)   # 滑行中线
    for t in range(-20, W + 30, 18):                                        # 白色边线（虚线）
        y = 104 - (t + 10) * 0.45
        d.line([(t, y - 13), (t + 8, y - 16.6)], fill=(226, 226, 220, 170), width=2)
    rnd = random.Random(4)
    for _ in range(9):                                                      # 轮胎痕 / 油渍
        cx, cy = rnd.randint(6, W - 6), rnd.randint(6, H - 6)
        ln = rnd.randint(8, 24)
        d.line([(cx, cy), (cx + ln, cy - int(ln * 0.4))], fill=(34, 36, 40, 90), width=rnd.randint(1, 3))
    bg.alpha_composite(noise_layer((W, H), 3, blur=1, alpha=26))
    plane = fit(plane, 162, 100)
    paste_center(bg, shadow_of(plane, blur=7, opacity=150, spread=1), W / 2 + 3, H / 2 + 9)
    paste_center(bg, plane, W / 2, H / 2 - 1)
    return bg


def style_tactical(plane, meta):
    """B 战术指挥屏：稀疏网格 + 距离环 + 目标框，偏冷绿 HUD"""
    bg = vgrad((W, H), (7, 17, 19), (13, 31, 33))
    d = ImageDraw.Draw(bg)
    for x in range(0, W, 24):
        d.line([(x, 0), (x, H)], fill=(24, 62, 60, 70))
    for y in range(0, H, 24):
        d.line([(0, y), (W, y)], fill=(24, 62, 60, 70))
    cx, cy = W / 2, H / 2 + 1
    for r in (56, 38):                                   # 距离环（虚线）
        bbox = [cx - r * 1.42, cy - r, cx + r * 1.42, cy + r]
        for k in range(0, 360, 16):
            d.arc(bbox, k, k + 9, fill=(52, 140, 120, 105), width=1)
    # 目标框 + 十字
    bx, by = 66, 40
    for (px, py, sx, sy) in ((cx - bx, cy - by, 1, 1), (cx + bx, cy - by, -1, 1),
                             (cx - bx, cy + by, 1, -1), (cx + bx, cy + by, -1, -1)):
        d.line([(px, py), (px + 9 * sx, py)], fill=(110, 226, 190, 190), width=1)
        d.line([(px, py), (px, py + 7 * sy)], fill=(110, 226, 190, 190), width=1)
    plane = fit(plane, 148, 94)
    glow = Image.new("RGBA", plane.size, (0, 0, 0, 0))
    glow.putalpha(plane.getchannel("A").point(lambda v: int(v * 0.5)))
    glow = glow.filter(ImageFilter.GaussianBlur(8)).filter(ImageFilter.GaussianBlur(4))
    glow = Image.composite(Image.new("RGBA", glow.size, (64, 200, 162, 110)),
                           Image.new("RGBA", glow.size, (0, 0, 0, 0)), glow.getchannel("A"))
    paste_center(bg, glow, cx, cy)
    paste_center(bg, plane, cx, cy)
    d = ImageDraw.Draw(bg)
    d.line([(0, H - 20), (W, H - 20)], fill=(28, 74, 70, 150))
    d.text((8, H - 17), meta.get("code", "J-11"), font=font(10), fill=(126, 232, 198, 210))
    d.text((W - 22, 4), ROMAN.get(meta.get("gen", 3), "III"), font=font(11),
           fill=(126, 232, 198, 170))
    return bg


def style_poster(plane, meta):
    """C 海报卡：斜切色块 + 幽灵罗马数字 + 描边飞机 + 代际雪佛龙"""
    cc = COUNTRY_COLOR[meta.get("country", "CN")]
    bg = vgrad((W, H), (32, 33, 40), (13, 13, 17))
    ghost = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(ghost).text((W - 92, -26), ROMAN.get(meta.get("gen", 3), "III"),
                               font=font(112), fill=(255, 255, 255, 30))
    bg.alpha_composite(ghost)
    d = ImageDraw.Draw(bg)
    d.polygon([(W, 0), (W, H), (W - 62, H), (W - 30, 0)], fill=cc + (255,))
    d.line([(W - 30, 0), (W - 62, H)], fill=COUNTRY_COLOR2[meta.get("country", "CN")] + (200,), width=2)
    plane = outline(fit(plane, 168, 98), (246, 242, 232), width=2)
    paste_center(bg, shadow_of(plane, blur=7, opacity=185, spread=2), W / 2 + 2, H / 2 + 7)
    paste_center(bg, plane, W / 2 - 6, H / 2 - 2)
    d = ImageDraw.Draw(bg)
    for i in range(meta.get("gen", 3) - 2):
        x = 12 + i * 12
        d.polygon([(x, H - 13), (x + 5, H - 20), (x + 10, H - 13)],
                  fill=COUNTRY_COLOR2[meta.get("country", "CN")] + (255,))
    d.text((12, 8), meta.get("code", "J-11"), font=font(11), fill=(228, 226, 220, 210))
    d.rectangle([0, 0, W - 1, H - 1], outline=(240, 214, 150, 90))
    return bg


def style_night(plane, meta):
    """D 夜空巡航：深蓝天幕 + 月晕 + 双尾迹 + 机身轮廓提亮"""
    bg = vgrad((W, H), (10, 16, 34), (28, 44, 74))
    bg.alpha_composite(noise_layer((W, H), 12, blur=26, alpha=26, scale=10))
    # 地平线薄雾
    hz = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    hd = ImageDraw.Draw(hz)
    hd.rectangle([0, H - 26, W, H], fill=(120, 160, 200, 70))
    bg.alpha_composite(hz.filter(ImageFilter.GaussianBlur(12)))
    # 星星
    d = ImageDraw.Draw(bg)
    rnd = random.Random(31)
    for _ in range(46):
        x, y = rnd.randint(2, W - 3), rnd.randint(2, H - 30)
        r = 1 if rnd.random() < 0.85 else 2
        d.ellipse([x, y, x + r, y + r], fill=(210, 226, 245, rnd.randint(60, 150)))
    # 月晕（右上）
    moon = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(moon).ellipse([W - 52, -34, W + 12, 30], fill=(226, 238, 255, 190))
    moon = moon.filter(ImageFilter.GaussianBlur(9))
    halo = moon.filter(ImageFilter.GaussianBlur(18))
    bg.alpha_composite(halo)
    bg.alpha_composite(moon)
    # 双尾迹
    trail = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    td = ImageDraw.Draw(trail)
    td.line([(-8, 96), (100, 66)], fill=(196, 218, 244, 130), width=5)
    td.line([(-8, 86), (96, 58)], fill=(196, 218, 244, 90), width=3)
    bg.alpha_composite(trail.filter(ImageFilter.GaussianBlur(5)))
    plane = fit(plane, 152, 94)
    # 夜景：整体压暗一点，再补一道月光轮廓
    dark = ImageEnhance.Brightness(plane).enhance(0.82)
    rim = outline(dark, (206, 226, 255), width=1)
    paste_center(bg, shadow_of(plane, blur=10, opacity=120, spread=2), W / 2 + 7, H / 2 + 12)
    paste_center(bg, rim, W / 2, H / 2)
    return bg


def style_blueprint(plane, meta):
    """E 蓝图：细线稿飞机 + 淡网格 + 尺寸标注"""
    bg = vgrad((W, H), (11, 36, 56), (13, 46, 70))
    d = ImageDraw.Draw(bg)
    for x in range(0, W, 8):
        d.line([(x, 0), (x, H)], fill=(24, 66, 94, 40))
    for y in range(0, H, 8):
        d.line([(0, y), (W, y)], fill=(24, 66, 94, 40))
    for x in range(0, W, 48):
        d.line([(x, 0), (x, H)], fill=(34, 88, 122, 80))
    for y in range(0, H, 48):
        d.line([(0, y), (W, y)], fill=(34, 88, 122, 80))
    art = edge_art(fit(plane, 150, 90), fill_alpha=24, color=(226, 244, 255))
    paste_center(bg, art, W / 2, H / 2)
    d = ImageDraw.Draw(bg)
    # 尺寸线
    for y in (20, H - 20):
        d.line([(22, y), (W - 22, y)], fill=(146, 204, 236, 110), width=1)
        for x in range(22, W - 21, 10):
            d.line([(x, y - 2), (x, y + 2)], fill=(146, 204, 236, 110))
    d.text((6, 5), "%s  %s" % (meta.get("code", "J-11"), ROMAN.get(meta.get("gen", 3), "III")),
           font=font(9), fill=(176, 220, 244, 225))
    d.text((W - 34, H - 14), "1:72", font=font(8), fill=(146, 204, 236, 190))
    d.rectangle([2, 2, W - 3, H - 3], outline=(110, 180, 218, 90))
    return bg


def style_plate(plane, meta):
    """F 金属铭牌：拉丝金属 + 立体边框 + 内凹展示窗 + 铭条"""
    cc = COUNTRY_COLOR[meta.get("country", "CN")]
    bg = vgrad((W, H), (52, 56, 62), (32, 35, 40))
    bg.alpha_composite(noise_layer((W, H), 5, blur=0, alpha=30, scale=3))
    d = ImageDraw.Draw(bg)
    d.rectangle([0, 0, W - 1, H - 1], outline=(126, 132, 142, 160))
    d.line([(1, 1), (W - 2, 1)], fill=(198, 206, 216, 130))
    d.line([(1, 1), (1, H - 2)], fill=(198, 206, 216, 110))
    d.line([(1, H - 2), (W - 2, H - 2)], fill=(12, 13, 16, 220))
    d.line([(W - 2, 1), (W - 2, H - 2)], fill=(12, 13, 16, 220))
    win = [9, 11, W - 10, H - 25]
    d.rectangle(win, fill=(14, 16, 20, 255))
    d.line([(win[0], win[1]), (win[2], win[1])], fill=(6, 7, 9, 255))
    d.line([(win[0], win[1]), (win[0], win[3])], fill=(6, 7, 9, 255))
    inner = vgrad((win[2] - win[0] + 1, win[3] - win[1] + 1), (36, 42, 50), (13, 15, 19))
    bg.alpha_composite(inner, (win[0] + 1, win[1] + 1))
    plane = ImageEnhance.Brightness(fit(plane, 166, 78)).enhance(1.12)
    paste_center(bg, plane, W / 2, (win[1] + win[3]) / 2 + 1)
    # 展示窗顶部高光
    hi = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(hi).rectangle([win[0] + 2, win[1] + 2, win[2] - 2, win[1] + 22],
                                 fill=(180, 200, 220, 26))
    bg.alpha_composite(hi.filter(ImageFilter.GaussianBlur(6)))
    d = ImageDraw.Draw(bg)
    d.rectangle([9, H - 23, W - 10, H - 11], fill=(21, 23, 28, 255))
    d.line([(9, H - 23), (W - 10, H - 23)], fill=COUNTRY_COLOR2[meta.get("country", "CN")] + (210,))
    d.rectangle([9, 2, W - 10, 5], fill=cc + (240,))
    d.rectangle([9, 6, W - 10, 7], fill=COUNTRY_COLOR2[meta.get("country", "CN")] + (210,))
    d.text((14, H - 21), meta.get("code", "J-11"), font=font(9), fill=(228, 232, 240, 240))
    d.text((W - 52, H - 21), TYPE_CJK.get(meta.get("type", "FIGHTER"), ""),
           font=font(9, cjk=True), fill=(152, 160, 172, 240))
    return bg



def _blueprint_bg(with_dims=True):
    """蓝图底：深蓝渐变 + 细/粗网格 + 外框 + 图框刻度（刻度只走边框，不横穿飞机）"""
    bg = vgrad((W, H), (11, 36, 56), (13, 46, 70))
    d = ImageDraw.Draw(bg)
    st, bg_step = s(8), s(48)
    for x in range(0, W, st):
        d.line([(x, 0), (x, H)], fill=(24, 66, 94, 40))
    for y in range(0, H, st):
        d.line([(0, y), (W, y)], fill=(24, 66, 94, 40))
    for x in range(0, W, bg_step):
        d.line([(x, 0), (x, H)], fill=(34, 88, 122, 80))
    for y in range(0, H, bg_step):
        d.line([(0, y), (W, y)], fill=(34, 88, 122, 80))
    bd = s(2)
    d.rectangle([bd, bd, W - bd - 1, H - bd - 1], outline=(110, 180, 218, 90))
    if with_dims:
        tick = (146, 204, 236, 110)
        t0, t1, tstep = s(8), s(7), s(9)
        for x in range(t0, W - t1, tstep):
            d.line([(x, bd), (x, bd + s(4))], fill=tick, width=max(1, s(1)))
            d.line([(x, H - bd - s(4)), (x, H - bd)], fill=tick, width=max(1, s(1)))
        for y in range(t0, H - t1, tstep):
            d.line([(bd, y), (bd + s(4), y)], fill=tick, width=max(1, s(1)))
            d.line([(W - bd - s(4), y), (W - bd, y)], fill=tick, width=max(1, s(1)))
        r = s(2)
        for (cx, cy) in ((bd, bd), (W - bd - 1, bd), (bd, H - bd - 1), (W - bd - 1, H - bd - 1)):
            d.rectangle([cx - r, cy - r, cx + r, cy + r], outline=(150, 214, 246, 150))
    return bg


def _sprite_textured(plane, w=152, h=92, tint=0.0, bright=1.06, contrast=1.10,
                     outline_w=1, detail=0.30):
    """真实贴图（保留迷彩纹理）+ 白描边 + 淡结构线，蓝图里也看得出这是什么飞机"""
    tex = fit(plane, w, h)
    tex = ImageEnhance.Brightness(tex.convert("RGBA")).enhance(bright)
    tex = ImageEnhance.Contrast(tex).enhance(contrast)
    if tint > 0:
        layer = Image.new("RGBA", tex.size, (120, 190, 230, 255))
        layer.putalpha(tex.getchannel("A").point(lambda v: int(v * tint)))
        tex = Image.alpha_composite(tex, layer)
    out = Image.new("RGBA", tex.size, (0, 0, 0, 0))
    out.alpha_composite(tex)
    a = tex.getchannel("A")
    ring = ImageChops.subtract(a.filter(ImageFilter.MaxFilter(3)), a)
    rl = Image.new("RGBA", tex.size, (232, 246, 255, 0))
    rl.putalpha(ring.point(lambda v: int(v * 0.95)))
    out.alpha_composite(rl)
    if detail > 0:
        det = tex.convert("L").filter(ImageFilter.FIND_EDGES).filter(ImageFilter.GaussianBlur(0.5))
        det = det.point(lambda v: 0 if v < 24 else min(255, int((v - 24) * 2.0)))
        det = ImageChops.multiply(det, a.point(lambda v: 255 if v > 40 else 0))
        dl = Image.new("RGBA", tex.size, (210, 236, 255, 0))
        dl.putalpha(det.point(lambda v: int(v * detail)))
        out.alpha_composite(dl)
    return out


def _genscale(d, x, y, gen, on=(150, 214, 246, 255), off=(60, 104, 132, 255),
              w=5, h=7, gap=2):
    """代际刻度：4 格（III/IV/V/VI），当前代高亮 —— 比小罗马数字更容易一眼看出"""
    k = max(0, min(3, gen - 3))
    w, h, gap = s(w), s(h), s(gap)
    for i in range(4):
        col = on if i == k else off
        d.rectangle([x + i * (w + gap), y, x + i * (w + gap) + w, y + h], fill=col)


def _badge(canvas, box, text, fg=(150, 214, 246), bg=(8, 26, 42, 210), fs=10):
    d = ImageDraw.Draw(canvas)
    d.rectangle(box, fill=bg, outline=fg)
    tw = d.textlength(text, font=font(fs))
    d.text((box[0] + (box[2] - box[0] - tw) / 2, box[1] + (box[3] - box[1] - fs) / 2 - 1),
           text, font=font(fs), fill=fg)
    return canvas


def style_e1(plane, meta):
    """E1 蓝图 + 底部标题栏：贴图保留迷彩，栏内自动排「机名 ｜ 机种 ｜ GEN III + 代际刻度」

    所有尺寸都走 s()（设计像素 × 渲染倍率），因此可以直接按 1.66x 原生渲染 XXH 桶，
    文字不会因为放大 200px 图而糊掉。
    """
    bg = _blueprint_bg()
    art = _sprite_textured(plane, s(152), s(92), tint=0.08, bright=1.14, contrast=1.14)
    paste_center(bg, art, W / 2, H / 2 - s(12))
    d = ImageDraw.Draw(bg)
    bar_h = s(21)
    y0 = H - bar_h
    d.rectangle([s(3), y0, W - s(4), H - s(3)], fill=(8, 26, 42, 238))
    d.line([(s(3), y0), (W - s(4), y0)], fill=(148, 208, 240, 210))

    # 右侧固定：GEN + 罗马数字 + 4 格刻度
    gx = W - s(32)
    _genscale(d, gx, y0 + s(7), meta.get("gen", 3))
    gtxt = "GEN " + ROMAN.get(meta.get("gen", 3), "III")
    fs = s(9)
    gw = d.textlength(gtxt, font=font(fs))
    while fs > s(6) and gx - s(6) - gw < s(44):
        fs -= 1
        gw = d.textlength(gtxt, font=font(fs))
    d.text((gx - s(6) - gw, y0 + (bar_h - fs) / 2), gtxt, font=font(fs),
           fill=(226, 242, 252, 255))

    # 左侧：机名（自动缩字号）
    name_limit = gx - s(6) - gw - s(12)
    code = meta.get("code", "J-11")
    nfs = s(13)
    nw = d.textlength(code, font=font(nfs))
    while nfs > s(8) and nw > name_limit - s(8):
        nfs -= 1
        nw = d.textlength(code, font=font(nfs))
    d.text((s(9), y0 + (bar_h - nfs) / 2), code, font=font(nfs), fill=(240, 250, 255, 255))
    # 机种：剩余空间够才画
    if name_limit - (s(9) + nw) - s(4) >= s(34):
        tfs = s(8)
        d.text((s(9) + nw + s(8), y0 + (bar_h - tfs) / 2),
               TYPE_CJK.get(meta.get("type", "FIGHTER"), ""),
               font=font(tfs, cjk=True), fill=(152, 202, 230, 255))
    return bg


def style_e2(plane, meta):
    """E2 蓝图 + 左上机名牌 + 右上代际徽章：贴图最接近原色，文字最醒目"""
    bg = _blueprint_bg(with_dims=False)
    art = _sprite_textured(plane, 144, 90, tint=0.0, bright=1.18, contrast=1.18)
    paste_center(bg, art, W / 2 + 4, H / 2 + 11)
    d = ImageDraw.Draw(bg)
    nm = meta.get("code", "J-11")
    nw = d.textlength(nm, font=font(14))
    d.rectangle([6, 4, 12 + nw + 26, 24], fill=(8, 26, 42, 225), outline=(150, 214, 246, 200))
    d.text((10, 5), nm, font=font(14), fill=(242, 250, 255, 255))
    _genscale(d, 12 + nw + 2, 9, meta.get("gen", 3))
    box = (W - 54, 4, W - 8, 22)
    d.rectangle(box, fill=(8, 26, 42, 225), outline=(150, 214, 246, 200))
    tw = d.textlength("GEN", font=font(8))
    d.text((box[0] + (box[2] - box[0] - tw) / 2, box[1] + 2), "GEN", font=font(8),
           fill=(150, 200, 228, 255))
    rm = ROMAN.get(meta.get("gen", 3), "III")
    tw = d.textlength(rm, font=font(10))
    d.text((box[0] + (box[2] - box[0] - tw) / 2, box[1] + 10), rm, font=font(10),
           fill=(240, 250, 255, 255))
    return bg


def style_e3(plane, meta):
    """E3 蓝图 + 巨大代际水印 + 蓝晒轻染：贴图仍能看出迷彩结构"""
    bg = _blueprint_bg()
    ghost = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    gd = ImageDraw.Draw(ghost)
    gd.text((W - 76, H - 62), ROMAN.get(meta.get("gen", 3), "III"),
            font=font(76), fill=(150, 210, 240, 30), stroke_width=1,
            stroke_fill=(150, 210, 240, 70))
    bg.alpha_composite(ghost)
    art = _sprite_textured(plane, 152, 94, tint=0.10, bright=1.16, contrast=1.14, detail=0.24)
    paste_center(bg, art, W / 2 - 6, H / 2 - 4)
    d = ImageDraw.Draw(bg)
    nm = meta.get("code", "J-11")
    nw = d.textlength(nm, font=font(13))
    d.rectangle([6, 5, 12 + nw + 6, 24], fill=(8, 26, 42, 215), outline=(150, 214, 246, 200))
    d.text((10, 6), nm, font=font(13), fill=(240, 250, 255, 255))
    d.text((W - 46, 6), "GEN", font=font(8), fill=(150, 200, 228, 235))
    d.text((W - 48, 15), ROMAN.get(meta.get("gen", 3), "III"), font=font(10),
           fill=(236, 248, 255, 255))
    _genscale(d, W - 22, 8, meta.get("gen", 3))
    return bg


def style_e4(plane, meta):
    """E4 蓝图 + 技术图叠加：贴图上压结构线，左下斜角名牌，右上菱形代际章"""
    bg = _blueprint_bg()
    art = _sprite_textured(plane, 150, 90, tint=0.16, bright=1.14, contrast=1.20, detail=0.55)
    paste_center(bg, art, W / 2, H / 2 - 2)
    d = ImageDraw.Draw(bg)
    # 左下斜角名牌
    pts = [(4, H - 6), (4, H - 24), (86, H - 24), (78, H - 6)]
    d.polygon(pts, fill=(8, 26, 42, 235), outline=(150, 214, 246, 200))
    d.text((11, H - 21), meta.get("code", "J-11"), font=font(12), fill=(240, 250, 255, 255))
    # 右上菱形代际章
    cx, cy, r = W - 26, 20, 15
    d.polygon([(cx, cy - r), (cx + r, cy), (cx, cy + r), (cx - r, cy)],
              fill=(8, 26, 42, 225), outline=(150, 214, 246, 210))
    tw = d.textlength(ROMAN.get(meta.get("gen", 3), "III"), font=font(11))
    d.text((cx - tw / 2, cy - 7), ROMAN.get(meta.get("gen", 3), "III"), font=font(11),
           fill=(238, 248, 255, 255))
    _genscale(d, 92, H - 15, meta.get("gen", 3))
    return bg


STYLE_TITLE = {
    "A_apron": "A 停机坪俯视（混凝土 + 滑行黄线）",
    "B_tactical": "B 战术指挥屏（HUD 网格 + 距离环）",
    "C_poster": "C 海报卡（斜切国色 + 幽灵代号）",
    "D_night": "D 夜空巡航（星空月晕 + 双尾迹）",
    "E_blueprint": "E 蓝图线稿（工程图 + 尺寸线）",
    "F_plate": "F 金属铭牌（拉丝金属 + 内凹窗 + 铭条）",
}

STYLE_TITLE.update({
    "E1_titleblock": "E1 蓝图 + 底部标题块（J11 / 战斗机 / GEN III）",
    "E2_badge": "E2 蓝图 + 左上机名 + 右上代际徽章（贴图最接近原色）",
    "E3_watermark": "E3 蓝图 + 蓝晒双色调 + 大代际水印",
    "E4_stamp": "E4 蓝图 + 结构线叠加 + 斜角名牌 + 菱形代际章",
})

STYLE = "E1_titleblock"

STYLES = [("E1_titleblock", style_e1), ("E2_badge", style_e2),
          ("E3_watermark", style_e3), ("E4_stamp", style_e4),
          ("A_apron", style_apron), ("B_tactical", style_tactical), ("C_poster", style_poster),
          ("D_night", style_night), ("E_blueprint", style_blueprint), ("F_plate", style_plate)]


def sheet(items, out, scale=1.6, label_h=17):
    """把 (风格标题, [(子标题, 图), ...]) 排成一张带标题的对比图"""
    tiles = max(len(v) for _, v in items)
    tw, th = int(W * scale), int(H * scale)
    cw, ch = tw + 14, th + label_h + 12
    rows = len(items)
    sh = Image.new("RGBA", (12 + tiles * cw, 12 + rows * ch + 8), (238, 240, 244, 255))
    d = ImageDraw.Draw(sh)
    for r, (title, subs) in enumerate(items):
        y0 = 12 + r * ch
        d.text((14, y0), title, font=font(13, cjk=True), fill=(26, 28, 34, 255))
        for c, (sub, im) in enumerate(subs):
            x = 12 + c * cw
            d.text((x, y0 + label_h - 2), sub, font=font(10, cjk=True), fill=(96, 100, 108, 255))
            big = im.resize((tw, th), Image.LANCZOS)
            sh.alpha_composite(big, (x, y0 + label_h + 10))
            d.rectangle([x - 1, y0 + label_h + 9, x + tw, y0 + label_h + 10 + th],
                        outline=(176, 180, 188, 255))
    sh.convert("RGB").save(out)
    return out


def meta_of(path):
    """从 .../Gen3/CN/FIGHTER.png 解出元数据"""
    parts = path.replace("\\", "/").split("/")
    gen = int(parts[-3][3:]) if parts[-3].startswith("Gen") else 3
    country = parts[-2]
    tp = os.path.splitext(parts[-1])[0].upper()
    return {"gen": gen, "country": country, "type": tp, "code": CODE.get((gen, country, tp), "")}


CODE = {}


def load_codes():
    import json
    m = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"), encoding="utf-8"))["models"]
    for x in m:
        CODE[(x["gen"], x["country"], x["type"])] = x["modelCode"]


DEFAULT_APK = "/sdcard/Download/fmo_baseline/fmo_v32_tech.apk"
_ZIP = None
IMG_BASE = 70          # 编制图标起始序号：0..69 是原版陆军图标，70 起是空军


def sprite_bytes(stage, apk, gen, country, tp):
    """取该槽位的地图贴图：**素材暂存目录优先**（本批次新落的图），否则回落到模板 APK。

    为什么先看暂存目录：编制图标要画"这一版真正打进包里的那张图"。如果只看模板 APK，
    本批次换掉的 11 张新贴图（J16/F117/NEURON/…）会继续用旧图烤进图标，
    包里的地图贴图是新的、编制卡还是旧飞机 —— 这正是 v35 要避免的错位。
    """
    rel = "assets/game/AirUnit/AirUnitlmages/Gen%d/%s/%s.png" % (gen, country, tp)
    staged = os.path.join(stage, rel)
    if os.path.exists(staged):
        return open(staged, "rb").read()
    import zipfile
    global _ZIP
    if _ZIP is None:
        _ZIP = zipfile.ZipFile(apk)      # 880MB 包只开一次（64 次打开会慢到不可用）
    return _ZIP.read(rel)


def gen_all(stage, apk):
    """生成 64 张编制图标 + numOfImages.txt，写进素材暂存目录

    图标序号 = 70 + aid（aid = (gen-3)*16 + country*4 + typeAxis），
    与 `Data_Army.ImageID` 一致 —— 游戏里 ImageID 就是 `ArmyManager.armyImages` 的下标，
    而该列表由 `loadArmyImages()` 按 `numOfImages.txt` 顺序装载。
    """
    import io
    import zipfile
    apk = apk or DEFAULT_APK
    models = json.load(open(os.path.join(ROOT, "data", "aircraft_models.json"),
                            encoding="utf-8"))["models"]
    d = os.path.join(stage, "assets", "game", "units", "unitsImages")
    for sub in ("H", "XH", "XXH"):
        os.makedirs(os.path.join(d, sub), exist_ok=True)
    global W, H, SC
    styles = dict(STYLES)
    fn = styles[STYLE]
    made = 0
    for aid, m in enumerate(models):
        raw = sprite_bytes(stage, apk, m["gen"], m["country"], m["type"])
        idx = IMG_BASE + aid
        for bucket, scale, bw, bh in (("H", 1.0, 200, 118), ("XH", 4 / 3.0, 266, 157),
                                      ("XXH", 5 / 3.0, 332, 196)):
            SC = scale
            W, H = bw, bh          # 与原版三个桶的像素尺寸严格一致
            sprite = load_sprite(io.BytesIO(raw))
            meta = dict(gen=m["gen"], country=m["country"], type=m["type"], code=m["modelCode"])
            im = fn(sprite, dict(meta)).convert("RGBA")
            im.save(os.path.join(d, bucket, "%d.png" % idx), optimize=True)
        SC, W, H = 1.0, DESIGN_W, DESIGN_H
        made += 1
    total = IMG_BASE + made
    open(os.path.join(d, "numOfImages.txt"), "w").write("%d" % total)
    print("  ✅ 编制图标 %d 张（序号 %d..%d），numOfImages=%d -> %s"
          % (made, IMG_BASE, total - 1, total, d))
    return 0


def check_all(stage):
    """校验素材暂存目录：三桶齐全 70..133 + numOfImages 正确 + 尺寸对"""
    d = os.path.join(stage, "assets", "game", "units", "unitsImages")
    bad = []
    txt = os.path.join(d, "numOfImages.txt")
    if not os.path.exists(txt):
        bad.append("缺 numOfImages.txt")
    elif open(txt).read().strip() != str(IMG_BASE + 64):
        bad.append("numOfImages.txt = %r，应为 %d" % (open(txt).read().strip(), IMG_BASE + 64))
    sizes = {"H": (200, 118), "XH": (266, 157), "XXH": (332, 196)}
    for bucket, (w, h) in sizes.items():
        for i in range(IMG_BASE, IMG_BASE + 64):
            p = os.path.join(d, bucket, "%d.png" % i)
            if not os.path.exists(p):
                bad.append("缺 %s/%d.png" % (bucket, i))
                break
            im = Image.open(p)
            if im.size != (w, h):
                bad.append("%s/%d.png 尺寸 %s，应为 %s" % (bucket, i, im.size, (w, h)))
                break
    if bad:
        print("  ❌ 编制图标暂存目录不合格：")
        for b in bad:
            print("     - " + b)
        return 1
    print("  ✅ 编制图标 64 张 × 3 桶齐全，numOfImages=%d" % (IMG_BASE + 64))
    return 0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sample", metavar="OUTDIR")
    ap.add_argument("--sprites", default="/tmp/sprites")
    ap.add_argument("--all", metavar="STAGE")
    ap.add_argument("--apk")
    ap.add_argument("--check", metavar="STAGE")
    a = ap.parse_args()
    load_codes()

    if a.sample:
        os.makedirs(a.sample, exist_ok=True)
        picks = [("Gen3_CN_FIGHTER", "J11 · 战斗机"), ("Gen3_CN_BOMBER", "H6 · 轰炸机")]
        rows = []
        for name, fn in STYLES:
            subs = []
            for fname, disp in picks:
                pth = os.path.join(a.sprites, fname + ".png")
                if not os.path.exists(pth):
                    continue
                sprite = load_sprite(pth)
                meta = dict(gen=3, country="CN",
                            type="BOMBER" if "BOMBER" in fname else "FIGHTER",
                            code="H6" if "BOMBER" in fname else "J11")
                im = fn(sprite.copy(), dict(meta))
                im.convert("RGB").save(os.path.join(a.sample, "%s_%s.png" % (name, fname)))
                subs.append((disp, im))
            rows.append((STYLE_TITLE.get(name, name), subs))
        sheet(rows, os.path.join(a.sample, "样张_对比.png"))
        print("  ✅ 样张 %d 张 -> %s" % (sum(len(v) for _, v in rows), a.sample))
        return 0

    if a.all:
        return gen_all(a.all, getattr(a, "apk", None))

    if a.check:
        return check_all(a.check)
    print("用法: --sample OUTDIR | --all STAGE | --check STAGE")
    return 1


if __name__ == "__main__":
    sys.exit(main())
