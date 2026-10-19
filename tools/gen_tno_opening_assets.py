#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
gen_tno_opening_assets.py —— 生成 TNO 开局面板所需素材（全量版）

输入（TNO 源码素材 + 游戏自带）:
  SRC/TNO_Intro_BG.png            945x466  面板底图（TNO 原版）
  SRC/assets/gfx/logo/gameLogo_XXH.png      FMO 原版 logo
  SRC/assets/game/fonts/SourceHanSerifSC-SemiBold.otf   海报标题字体

输出（暂存目录，随后整体注入 APK）:
  OUT/assets/ui/tno/opening/panel_bg.png   945x466  面板底图（白底块已抹平）
  OUT/assets/ui/tno/opening/tab_off.png    224x31   页签 常态
  OUT/assets/ui/tno/opening/tab_on.png     224x31   页签 选中
  OUT/assets/ui/tno/opening/btn_off.png    163x34   导航/关闭 常态
  OUT/assets/ui/tno/opening/btn_on.png     163x34   导航/关闭 高亮
  OUT/assets/ui/tno/opening/poster.png     189x426  右栏海报

判据: 6 张全部存在、尺寸精确、均带 alpha 或为不透明海报。
"""
import os
import sys
from PIL import Image, ImageDraw, ImageFont

# ---- 尺寸（严格取 TNO 原版 .gui 数值）----
PANEL_W, PANEL_H = 945, 466
TAB_W, TAB_H = 224, 31
BTN_W, BTN_H = 163, 34
POSTER_W, POSTER_H = 189, 426
# 海报区在面板中的位置（.gui: x=749 y=31，poster 189x426）
POSTER_X, POSTER_Y = 749, 31

# ---- 配色（与 tno_frame / 预览图一致：深蓝黑 + 暗金）----
C_PANEL = (6, 16, 21, 255)
C_FILL_OFF = (11, 18, 24, 235)
C_FILL_ON = (24, 34, 44, 245)
C_EDGE_OFF = (74, 63, 34, 255)
C_EDGE_ON = (201, 169, 97, 255)
C_HL = (232, 207, 143, 170)
C_GOLD = (201, 169, 97, 255)
C_TEXT = (232, 214, 168, 255)


def rounded_plate(w, h, fill, edge, radius=5, hl=None):
    """带 1px 描边 + 顶部高光线的圆角板"""
    img = Image.new("RGBA", (w, h), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    d.rounded_rectangle([0, 0, w - 1, h - 1], radius=radius, fill=fill, outline=edge, width=1)
    if hl:
        d.line([(radius, 1), (w - 1 - radius, 1)], fill=hl)
    return img


def build_panel_bg(src):
    """TNO 原版面板底图，把右侧海报占位的白块抹成同色深底（海报会盖上去）"""
    im = Image.open(src).convert("RGBA")
    if im.size != (PANEL_W, PANEL_H):
        raise SystemExit("panel bg 尺寸异常: %s" % (im.size,))
    d = ImageDraw.Draw(im)
    # 白块内缩 2px，保留原描边
    d.rectangle([POSTER_X + 2, POSTER_Y + 2,
                 POSTER_X + POSTER_W - 3, POSTER_Y + POSTER_H - 3], fill=C_PANEL)
    return im


def build_poster(logo, font_path):
    """右栏海报：深底 + 双描边 + FMO logo + 竖排标题"""
    im = Image.new("RGBA", (POSTER_W, POSTER_H), C_PANEL)
    d = ImageDraw.Draw(im)
    d.rectangle([0, 0, POSTER_W - 1, POSTER_H - 1], outline=C_GOLD, width=2)
    d.rectangle([5, 5, POSTER_W - 6, POSTER_H - 6], outline=(58, 51, 32, 255), width=1)

    # logo 等比缩到 内宽 - 24
    lg = Image.open(logo).convert("RGBA")
    tw = POSTER_W - 24
    th = int(lg.size[1] * tw / lg.size[0])
    lg = lg.resize((tw, th), Image.LANCZOS)
    im.alpha_composite(lg, ((POSTER_W - tw) // 2, 22))

    # 分隔线
    d.line([(16, 22 + th + 14), (POSTER_W - 16, 22 + th + 14)], fill=(90, 76, 40, 255))

    # 竖排标题（逐字画，避免竖排字体依赖）
    title = "终序千禧"
    f = ImageFont.truetype(font_path, 30)
    cy = 22 + th + 30
    for ch in title:
        w = d.textlength(ch, font=f)
        d.text(((POSTER_W - w) // 2, cy), ch, font=f, fill=C_TEXT)
        cy += 34

    # 副标题放在下半部偏上：底部 68px 会被关闭按钮盖住，留空
    f2 = ImageFont.truetype(font_path, 13)
    sub = "FINAL MILLENNIUM ORDER"
    w = d.textlength(sub, font=f2)
    d.text(((POSTER_W - w) // 2, POSTER_H - 126), sub, font=f2, fill=(150, 132, 92, 255))
    return im


def main():
    if len(sys.argv) < 3:
        raise SystemExit("用法: gen_tno_opening_assets.py <src_dir> <out_stage_dir>")
    src, out = sys.argv[1], sys.argv[2]
    dst = os.path.join(out, "assets", "ui", "tno", "opening")
    os.makedirs(dst, exist_ok=True)

    panel_src = os.path.join(src, "TNO_Intro_BG.png")
    logo = os.path.join(src, "assets", "gfx", "logo", "gameLogo_XXH.png")
    font = os.path.join(src, "assets", "game", "fonts", "SourceHanSerifSC-SemiBold.otf")
    for p in (panel_src, logo, font):
        if not os.path.exists(p):
            raise SystemExit("缺输入: %s" % p)

    jobs = [
        ("panel_bg.png", build_panel_bg(panel_src)),
        ("tab_off.png", rounded_plate(TAB_W, TAB_H, C_FILL_OFF, C_EDGE_OFF, 5)),
        ("tab_on.png", rounded_plate(TAB_W, TAB_H, C_FILL_ON, C_EDGE_ON, 5, C_HL)),
        ("btn_off.png", rounded_plate(BTN_W, BTN_H, C_FILL_OFF, C_EDGE_OFF, 6)),
        ("btn_on.png", rounded_plate(BTN_W, BTN_H, C_FILL_ON, C_EDGE_ON, 6, C_HL)),
        ("poster.png", build_poster(logo, font)),
    ]
    expect = {
        "panel_bg.png": (PANEL_W, PANEL_H),
        "tab_off.png": (TAB_W, TAB_H),
        "tab_on.png": (TAB_W, TAB_H),
        "btn_off.png": (BTN_W, BTN_H),
        "btn_on.png": (BTN_W, BTN_H),
        "poster.png": (POSTER_W, POSTER_H),
    }
    for name, im in jobs:
        path = os.path.join(dst, name)
        im.save(path, optimize=True)
        got = Image.open(path).size
        if got != expect[name]:
            raise SystemExit("❌ %s 尺寸 %s != %s" % (name, got, expect[name]))
        print("  %-14s %4dx%-4d %6d B" % (name, got[0], got[1], os.path.getsize(path)))

    print("✅ 素材生成完毕 -> %s" % dst)


if __name__ == "__main__":
    main()
