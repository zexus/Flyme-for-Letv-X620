.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;
.super Landroid/view/View;
.source "MaterialHeader.java"

# interfaces
.implements Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;
    }
.end annotation


# instance fields
.field private mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

.field private mPtrFrameLayout:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

.field private mScale:F

.field private mScaleAnimation:Landroid/view/animation/Animation;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;F)F
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    .line 23
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 34
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->initView()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    .line 23
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 39
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->initView()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    .line 23
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScaleAnimation:Landroid/view/animation/Animation;

    .line 44
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->initView()V

    .line 42
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    .line 80
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 78
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    if-ne p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->invalidate()V

    .line 85
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 114
    .local v2, "saveCount":I
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 115
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 116
    .local v0, "l":I
    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 118
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 112
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
    const/4 v2, 0x0

    .line 107
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 108
    .local v0, "size":I
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setBounds(IIII)V

    .line 106
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->getPaddingBottom()I

    move-result v2

    add-int v0, v1, v2

    .line 101
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 99
    return-void
.end method

.method public onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 7
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    .line 166
    invoke-virtual {p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPercent()F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 168
    .local v0, "percent":F
    const/4 v3, 0x2

    if-ne p3, v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    .line 170
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->showArrow(Z)V

    .line 172
    mul-float v2, v0, v5

    .line 173
    .local v2, "strokeStart":F
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 174
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setArrowScale(F)V

    .line 177
    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v0

    const/high16 v4, -0x41800000    # -0.25f

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .line 178
    .local v1, "rotation":F
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v3, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 179
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->invalidate()V

    .line 164
    .end local v1    # "rotation":F
    .end local v2    # "strokeStart":F
    :cond_0
    return-void
.end method

.method public onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setAlpha(I)V

    .line 150
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->start()V

    .line 148
    return-void
.end method

.method public onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 1
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->stop()V

    .line 159
    return-void
.end method

.method public onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 139
    return-void
.end method

.method public onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 1
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 129
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScale:F

    .line 130
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->stop()V

    .line 128
    return-void
.end method

.method public setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mDrawable:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 95
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->invalidate()V

    .line 93
    return-void
.end method

.method public setPtrFrameLayout(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 49
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$2;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;)V

    .line 56
    .local v0, "mPtrUIHandlerHook":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mScaleAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$3;

    invoke-direct {v2, p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader$3;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mPtrFrameLayout:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .line 75
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialHeader;->mPtrFrameLayout:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->setRefreshCompleteHook(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;)V

    .line 47
    return-void
.end method
