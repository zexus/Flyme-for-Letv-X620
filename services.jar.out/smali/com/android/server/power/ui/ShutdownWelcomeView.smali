.class public Lcom/android/server/power/ui/ShutdownWelcomeView;
.super Landroid/view/View;
.source "ShutdownWelcomeView.java"


# static fields
.field public static final SHOW_TIME:J = 0x168L


# instance fields
.field private mTipColor:I

.field private mTipMsg:Ljava/lang/String;

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipColor:I

    .line 25
    const/16 v0, 0x48

    iput v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipTextSize:I

    .line 29
    invoke-direct {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->initView()V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setFocusable(Z)V

    .line 27
    return-void
.end method

.method private initTipPen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 52
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x1040609

    invoke-virtual {p0, v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipColor:I

    .line 37
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipTextSize:I

    .line 41
    invoke-direct {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->initTipPen()V

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    const/16 v2, 0xff

    invoke-virtual {p1, v2, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 92
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipMsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 94
    .local v0, "seq":I
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 96
    .local v1, "textWidth":F
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x42240000    # 41.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 88
    .end local v0    # "seq":I
    .end local v1    # "textWidth":F
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public setTipAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->invalidate()V

    .line 78
    return-void
.end method

.method public setWords(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownWelcomeView;->mTipMsg:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 65
    const-string/jumbo v2, "tipAlpha"

    const/16 v3, 0x32

    const/16 v4, 0xff

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 66
    .local v1, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 67
    .local v0, "objectTip":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 64
    return-void
.end method
