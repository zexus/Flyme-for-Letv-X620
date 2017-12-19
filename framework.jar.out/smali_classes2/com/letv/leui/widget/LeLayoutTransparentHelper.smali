.class public Lcom/letv/leui/widget/LeLayoutTransparentHelper;
.super Ljava/lang/Object;
.source "LeLayoutTransparentHelper.java"


# static fields
.field public static final MODE_BOTTOM:Z = false

.field public static final MODE_TOP:Z = true


# instance fields
.field private hideMode:Z

.field private hidePercent:F

.field private isTrasparent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->isTrasparent:Z

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->hideMode:Z

    .line 11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->isTrasparent:Z

    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .local v0, "mPaint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->hideMode:Z

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->hidePercent:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 36
    .end local v0    # "mPaint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0    # "mPaint":Landroid/graphics/Paint;
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->hidePercent:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public isTrasparent()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->isTrasparent:Z

    return v0
.end method

.method public setHideMode(Z)V
    .locals 0
    .param p1, "hideMode"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->hideMode:Z

    .line 30
    return-void
.end method

.method public setHidePercent(F)V
    .locals 0
    .param p1, "hidePercent"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->hidePercent:F

    .line 14
    return-void
.end method

.method public setTrasparent(Z)V
    .locals 0
    .param p1, "isTrasparent"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->isTrasparent:Z

    .line 20
    return-void
.end method
