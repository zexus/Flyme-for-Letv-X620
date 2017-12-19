.class public Lcom/letv/leui/widget/WifiConnectView;
.super Lcom/letv/leui/widget/BaseView;
.source "WifiConnectView.java"


# static fields
.field private static final BACK_CIRCLE_ANIM_DURATION:I = 0x3e8

.field private static final BACK_CIRCLE_COLOR:I

.field private static final WIFI_LINE1_ALPHA:Ljava/lang/String; = "wifiLine1Alpha"

.field private static final WIFI_LINE1_DELAY:I = 0xaf

.field private static final WIFI_LINE1_TRANSLATE_Y:Ljava/lang/String; = "wifiLine1TranslateY"

.field private static final WIFI_LINE2_ALPHA:Ljava/lang/String; = "wifiLine2Alpha"

.field private static final WIFI_LINE2_DELAY:I = 0xf5

.field private static final WIFI_LINE2_TRANSLATE_Y:Ljava/lang/String; = "wifiLine2TranslateY"

.field private static final WIFI_LINE3_ALPHA:Ljava/lang/String; = "wifiLine3Alpha"

.field private static final WIFI_LINE3_DELAY:I = 0x13b

.field private static final WIFI_LINE3_TRANSLATE_Y:Ljava/lang/String; = "wifiLine3TranslateY"

.field private static final WIFI_LINES_DURATION:I = 0x1f4

.field private static final WIFI_LINES_END_ALPHA:I = 0xff

.field private static final WIFI_LINES_START_ALPHA:I


# instance fields
.field private BACK_CIRCLE_WIDTH:F

.field private WIFI_LINE_END_TRANSLATE_Y:F

.field private WIFI_LINE_START_TRANSLATE_Y:F

.field private mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

.field private mHasConnect:Z

.field private mWifiLine1Paint:Landroid/graphics/Paint;

.field private mWifiLine2Paint:Landroid/graphics/Paint;

.field private mWifiLine3Paint:Landroid/graphics/Paint;

.field private wifiHasConnectAnimSet:Landroid/animation/AnimatorSet;

.field private wifiLine1:Landroid/graphics/Bitmap;

.field private wifiLine1Alpha:I

.field private wifiLine1TranslateY:F

.field private wifiLine2:Landroid/graphics/Bitmap;

.field private wifiLine2Alpha:I

.field private wifiLine2TranslateY:F

.field private wifiLine3:Landroid/graphics/Bitmap;

.field private wifiLine3Alpha:I

.field private wifiLine3TranslateY:F


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/WifiConnectView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mHasConnect:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/WifiConnectView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiHasConnectAnimSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "#43AD69"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/letv/leui/widget/WifiConnectView;->BACK_CIRCLE_COLOR:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/WifiConnectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/WifiConnectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_END_TRANSLATE_Y:F

    .line 65
    invoke-virtual {p0}, Lcom/letv/leui/widget/WifiConnectView;->init()V

    .line 63
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 202
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 204
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget v3, p0, Lcom/letv/leui/widget/WifiConnectView;->width:I

    iget v4, p0, Lcom/letv/leui/widget/WifiConnectView;->height:I

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v3, p0, Lcom/letv/leui/widget/WifiConnectView;->width:I

    iget v4, p0, Lcom/letv/leui/widget/WifiConnectView;->height:I

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    return-object v0

    .line 203
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .restart local v2    # "config":Landroid/graphics/Bitmap$Config;
    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ShapeHolder;->setRadius(F)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/WifiConnectView;->setWifiLine1Alpha(I)V

    .line 182
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/WifiConnectView;->setWifiLine2Alpha(I)V

    .line 183
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/WifiConnectView;->setWifiLine3Alpha(I)V

    .line 184
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->setWifiLine1TranslateY(F)V

    .line 185
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->setWifiLine2TranslateY(F)V

    .line 186
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->setWifiLine3TranslateY(F)V

    .line 188
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiHasConnectAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->setCancelAnimSet(Landroid/animation/Animator;)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    invoke-virtual {p0}, Lcom/letv/leui/widget/WifiConnectView;->invalidate()V

    .line 179
    return-void
.end method

.method public getWifiLine1Alpha()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1Alpha:I

    return v0
.end method

.method public getWifiLine1TranslateY()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1TranslateY:F

    return v0
.end method

.method public getWifiLine2Alpha()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2Alpha:I

    return v0
.end method

.method public getWifiLine2TranslateY()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2TranslateY:F

    return v0
.end method

.method public getWifiLine3Alpha()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3Alpha:I

    return v0
.end method

.method public getWifiLine3TranslateY()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3TranslateY:F

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/letv/leui/widget/ShapeHolder;

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

    sget v1, Lcom/letv/leui/widget/WifiConnectView;->BACK_CIRCLE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ShapeHolder;->setColor(I)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine1Paint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine2Paint:Landroid/graphics/Paint;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine3Paint:Landroid/graphics/Paint;

    .line 77
    invoke-virtual {p0}, Lcom/letv/leui/widget/WifiConnectView;->cancelAnimation()V

    .line 69
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    iget-boolean v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mHasConnect:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/WifiConnectView;->drawShape(Landroid/graphics/Canvas;Lcom/letv/leui/widget/ShapeHolder;)V

    .line 101
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1TranslateY:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2TranslateY:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3TranslateY:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine3Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Lcom/letv/leui/widget/BaseView;->onLayout(ZIIII)V

    .line 84
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/WifiConnectView;->BACK_CIRCLE_WIDTH:F

    .line 85
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

    iget v1, p0, Lcom/letv/leui/widget/WifiConnectView;->BACK_CIRCLE_WIDTH:F

    iget v2, p0, Lcom/letv/leui/widget/WifiConnectView;->BACK_CIRCLE_WIDTH:F

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/ShapeHolder;->setXY(FF)V

    .line 87
    invoke-virtual {p0}, Lcom/letv/leui/widget/WifiConnectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108092d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0}, Lcom/letv/leui/widget/WifiConnectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108092e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/letv/leui/widget/WifiConnectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108092f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/WifiConnectView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3:Landroid/graphics/Bitmap;

    .line 91
    iget v0, p0, Lcom/letv/leui/widget/WifiConnectView;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    .line 81
    return-void
.end method

.method public setWifiLine1Alpha(I)V
    .locals 1
    .param p1, "wifiLine1Alpha"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1Alpha:I

    .line 235
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    return-void
.end method

.method public setWifiLine1TranslateY(F)V
    .locals 0
    .param p1, "wifiLine1TranslateY"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine1TranslateY:F

    .line 214
    return-void
.end method

.method public setWifiLine2Alpha(I)V
    .locals 1
    .param p1, "wifiLine2Alpha"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2Alpha:I

    .line 242
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    return-void
.end method

.method public setWifiLine2TranslateY(F)V
    .locals 0
    .param p1, "wifiLine2TranslateY"    # F

    .prologue
    .line 221
    iput p1, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine2TranslateY:F

    .line 220
    return-void
.end method

.method public setWifiLine3Alpha(I)V
    .locals 1
    .param p1, "wifiLine3Alpha"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3Alpha:I

    .line 249
    iget-object v0, p0, Lcom/letv/leui/widget/WifiConnectView;->mWifiLine3Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 247
    return-void
.end method

.method public setWifiLine3TranslateY(F)V
    .locals 0
    .param p1, "wifiLine3TranslateY"    # F

    .prologue
    .line 227
    iput p1, p0, Lcom/letv/leui/widget/WifiConnectView;->wifiLine3TranslateY:F

    .line 226
    return-void
.end method

.method public startAnimation(Z)V
    .locals 17
    .param p1, "hasConnect"    # Z

    .prologue
    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/WifiConnectView;->cancelAnimation()V

    .line 124
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/WifiConnectView;->mHasConnect:Z

    .line 126
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/WifiConnectView;->wifiHasConnectAnimSet:Landroid/animation/AnimatorSet;

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/letv/leui/widget/WifiConnectView;->mHasConnect:Z

    if-eqz v12, :cond_0

    .line 127
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/letv/leui/widget/WifiConnectView;->wifiHasConnectAnimSet:Landroid/animation/AnimatorSet;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/WifiConnectView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x10c000d

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 130
    .local v3, "cInterpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 131
    .local v2, "bInterpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 134
    .local v4, "hInterpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/WifiConnectView;->mBackCircle:Lcom/letv/leui/widget/ShapeHolder;

    const-string/jumbo v13, "radius"

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v15, v14, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/WifiConnectView;->BACK_CIRCLE_WIDTH:F

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 135
    .local v5, "mCircleAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3, v12}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    .line 136
    new-instance v12, Lcom/letv/leui/widget/WifiConnectView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/WifiConnectView$1;-><init>(Lcom/letv/leui/widget/WifiConnectView;)V

    invoke-virtual {v5, v12}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    const-string/jumbo v12, "wifiLine1Alpha"

    const/4 v13, 0x0

    const/16 v14, 0xff

    filled-new-array {v13, v14}, [I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 144
    .local v6, "wifiLine1AlphaAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0xaf

    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2, v12, v13}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    .line 145
    const-string/jumbo v12, "wifiLine1TranslateY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_END_TRANSLATE_Y:F

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 146
    .local v7, "wifiLine1TranslateYAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0xaf

    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v12, v13}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    .line 148
    const-string/jumbo v12, "wifiLine2Alpha"

    const/4 v13, 0x0

    const/16 v14, 0xff

    filled-new-array {v13, v14}, [I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 149
    .local v8, "wifiLine2AlphaAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0xf5

    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2, v12, v13}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    .line 150
    const-string/jumbo v12, "wifiLine2TranslateY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_END_TRANSLATE_Y:F

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 151
    .local v9, "wifiLine2TranslateYAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0xf5

    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4, v12, v13}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    .line 153
    const-string/jumbo v12, "wifiLine3Alpha"

    const/4 v13, 0x0

    const/16 v14, 0xff

    filled-new-array {v13, v14}, [I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 154
    .local v10, "wifiLine3AlphaAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0x13b

    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2, v12, v13}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    .line 155
    const-string/jumbo v12, "wifiLine3TranslateY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_START_TRANSLATE_Y:F

    const/4 v15, 0x0

    aput v14, v13, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/WifiConnectView;->WIFI_LINE_END_TRANSLATE_Y:F

    const/4 v15, 0x1

    aput v14, v13, v15

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 156
    .local v11, "wifiLine3TranslateYAnim":Landroid/animation/ObjectAnimator;
    const/16 v12, 0x13b

    const/16 v13, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4, v12, v13}, Lcom/letv/leui/widget/WifiConnectView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/WifiConnectView;->wifiHasConnectAnimSet:Landroid/animation/AnimatorSet;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/animation/Animator;

    .line 159
    const/4 v14, 0x0

    aput-object v5, v13, v14

    .line 160
    const/4 v14, 0x1

    aput-object v6, v13, v14

    const/4 v14, 0x2

    aput-object v7, v13, v14

    .line 161
    const/4 v14, 0x3

    aput-object v8, v13, v14

    const/4 v14, 0x4

    aput-object v9, v13, v14

    .line 162
    const/4 v14, 0x5

    aput-object v10, v13, v14

    const/4 v14, 0x6

    aput-object v11, v13, v14

    .line 158
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 165
    .end local v2    # "bInterpolator":Landroid/view/animation/Interpolator;
    .end local v3    # "cInterpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "hInterpolator":Landroid/view/animation/Interpolator;
    .end local v5    # "mCircleAnim":Landroid/animation/ObjectAnimator;
    .end local v6    # "wifiLine1AlphaAnim":Landroid/animation/ObjectAnimator;
    .end local v7    # "wifiLine1TranslateYAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "wifiLine2AlphaAnim":Landroid/animation/ObjectAnimator;
    .end local v9    # "wifiLine2TranslateYAnim":Landroid/animation/ObjectAnimator;
    .end local v10    # "wifiLine3AlphaAnim":Landroid/animation/ObjectAnimator;
    .end local v11    # "wifiLine3TranslateYAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v12, Lcom/letv/leui/widget/WifiConnectView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/WifiConnectView$2;-><init>(Lcom/letv/leui/widget/WifiConnectView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/letv/leui/widget/WifiConnectView;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
