.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;
.super Ljava/lang/Object;
.source "PtrLocalDisplay.java"


# static fields
.field public static SCREEN_DENSITY:F

.field public static SCREEN_HEIGHT_DP:I

.field public static SCREEN_HEIGHT_PIXELS:I

.field public static SCREEN_WIDTH_DP:I

.field public static SCREEN_WIDTH_PIXELS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static designedDP2px(F)I
    .locals 2
    .param p0, "designedDp"    # F

    .prologue
    .line 36
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_WIDTH_DP:I

    const/16 v1, 0x140

    if-eq v0, v1, :cond_0

    .line 37
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_WIDTH_DP:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x43a00000    # 320.0f

    div-float p0, v0, v1

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public static dp2px(F)I
    .locals 3
    .param p0, "dp"    # F

    .prologue
    .line 31
    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_DENSITY:F

    .line 32
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 22
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_WIDTH_PIXELS:I

    .line 24
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_HEIGHT_PIXELS:I

    .line 25
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_DENSITY:F

    .line 26
    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_WIDTH_PIXELS:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_WIDTH_DP:I

    .line 27
    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_HEIGHT_PIXELS:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_HEIGHT_DP:I

    .line 16
    return-void
.end method

.method public static setPadding(Landroid/view/View;FFFF)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 43
    invoke-static {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->designedDP2px(F)I

    move-result v0

    invoke-static {p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v1

    invoke-static {p3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->designedDP2px(F)I

    move-result v2

    invoke-static {p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    return-void
.end method
