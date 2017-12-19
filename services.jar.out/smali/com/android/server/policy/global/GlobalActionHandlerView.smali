.class public Lcom/android/server/policy/global/GlobalActionHandlerView;
.super Landroid/view/View;
.source "GlobalActionHandlerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;,
        Lcom/android/server/policy/global/GlobalActionHandlerView$1;,
        Lcom/android/server/policy/global/GlobalActionHandlerView$2;,
        Lcom/android/server/policy/global/GlobalActionHandlerView$3;
    }
.end annotation


# static fields
.field public static final CIRCLE_DELAY_TIME:J = 0xdcL

.field public static final HIDE_TIME:J = 0xfaL

.field public static final REBOOT_TIME:J = 0x12cL

.field public static final SHOW_TIME:J = 0x15eL

.field public static final SHUTDOWN_TIME:J = 0x12cL


# instance fields
.field private density:F

.field private mAnimator:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

.field mCancel:Z

.field private mHandlerRect:Landroid/graphics/Rect;

.field private mHostCallback:Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

.field private mInitBottom:I

.field private mLocked:Z

.field private mMaxTriMarqueeOffset:I

.field private mTipColor:I

.field private mTipMsg:Ljava/lang/String;

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipRegionHeight:I

.field private mTipRegionWidth:I

.field private mTipTextSize:I

.field private mTriAlphaIn:Landroid/animation/ValueAnimator;

.field mTriAlphaInListener:Landroid/animation/Animator$AnimatorListener;

.field private mTriColor:I

.field private mTriColorAlpha:I

.field private mTriHeight:I

.field private mTriMarqueeOffset:I

.field private mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

.field mTriMoveListener:Landroid/animation/Animator$AnimatorListener;

.field private mTriPaint:Landroid/graphics/Paint;

.field private mTriPath:Landroid/graphics/Path;

.field private mTriPenWidth:I

.field private mTriRegionHeight:I

.field private mTriRegionWidth:I

.field private mTriWidth:I

.field protected mViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHostCallback:Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/global/GlobalActionHandlerView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/global/GlobalActionHandlerView;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionHandlerView;I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setMarqueeOffset(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;-><init>(Landroid/content/Context;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locked"    # Z

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionWidth:I

    .line 38
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    .line 40
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    .line 41
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    .line 42
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPenWidth:I

    .line 43
    const v0, 0x44ffffff    # 2047.9999f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    .line 44
    const/16 v0, 0x44

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    .line 45
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    .line 46
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    .line 51
    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionWidth:I

    .line 52
    const/16 v0, 0x168

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipColor:I

    .line 54
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipTextSize:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    .line 64
    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    .line 248
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    .line 250
    new-instance v0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView$1;-><init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaInListener:Landroid/animation/Animator$AnimatorListener;

    .line 277
    new-instance v0, Lcom/android/server/policy/global/GlobalActionHandlerView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView$2;-><init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveListener:Landroid/animation/Animator$AnimatorListener;

    .line 445
    new-instance v0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView$3;-><init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mAnimator:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .line 72
    iput-boolean p2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mLocked:Z

    .line 73
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->init()V

    .line 70
    return-void
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 322
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    return-void

    .line 324
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 325
    .local v4, "textWidth":F
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 326
    .local v2, "startX":I
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v3, v5, v6

    .line 327
    .local v3, "startY":I
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 331
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 332
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 335
    .local v1, "seq":I
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    int-to-float v6, v2

    int-to-float v7, v3

    iget-object v8, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 336
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 321
    return-void
.end method

.method private drawTri(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 396
    .local v1, "startX":I
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v3, v4

    .line 397
    .local v2, "startY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 398
    .local v0, "seq":I
    int-to-float v3, v1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 399
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 394
    return-void
.end method

.method private drawbaseLine(Landroid/graphics/Canvas;IIF)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "textWidth"    # F

    .prologue
    .line 350
    move/from16 v0, p2

    int-to-float v2, v0

    .line 351
    .local v2, "baseX":F
    move/from16 v0, p3

    int-to-float v3, v0

    .line 353
    .local v3, "baseY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v31

    .line 354
    .local v31, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float v9, v3, v1

    .line 355
    .local v9, "topY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float v15, v3, v1

    .line 356
    .local v15, "ascentY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v21, v3, v1

    .line 357
    .local v21, "descentY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float v27, v3, v1

    .line 358
    .local v27, "bottomY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float v32, v3, v1

    .line 361
    .local v32, "leading":F
    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 363
    .local v6, "baseLinePaint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    add-float v4, v2, p4

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 367
    const/high16 v1, 0x40a00000    # 5.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 370
    new-instance v12, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v12, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 371
    .local v12, "topLinePaint":Landroid/graphics/Paint;
    const v1, -0x333334

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    add-float v10, v2, p4

    move-object/from16 v7, p1

    move v8, v2

    move v11, v9

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 375
    new-instance v18, Landroid/graphics/Paint;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 376
    .local v18, "ascentLinePaint":Landroid/graphics/Paint;
    const v1, -0xff0100

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    add-float v16, v2, p4

    move-object/from16 v13, p1

    move v14, v2

    move/from16 v17, v15

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 380
    new-instance v24, Landroid/graphics/Paint;

    const/4 v1, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 381
    .local v24, "descentLinePaint":Landroid/graphics/Paint;
    const/16 v1, -0x100

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    add-float v22, v2, p4

    move-object/from16 v19, p1

    move/from16 v20, v2

    move/from16 v23, v21

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 385
    new-instance v30, Landroid/graphics/Paint;

    const/4 v1, 0x1

    move-object/from16 v0, v30

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 386
    .local v30, "bottomLinePaint":Landroid/graphics/Paint;
    const v1, -0xff01

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    add-float v28, v2, p4

    move-object/from16 v25, p1

    move/from16 v26, v2

    move/from16 v29, v27

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->density:F

    .line 79
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTip()V

    .line 80
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTri()V

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionWidth:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    .line 76
    return-void
.end method

.method private initMove()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 232
    const-string/jumbo v2, "marqueeOffset"

    new-array v3, v7, [I

    aput v5, v3, v5

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 233
    .local v1, "triMarquee":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v2, "triAlpha"

    new-array v3, v7, [I

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    aput v4, v3, v5

    aput v5, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 234
    .local v0, "triAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    .line 235
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x41a

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 236
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 237
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    return-void
.end method

.method private initTip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mLocked:Z

    if-eqz v0, :cond_0

    const v0, 0x104060f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipTextSize:I

    .line 89
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionWidth:I

    .line 90
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    return-void

    .line 87
    :cond_0
    const v0, 0x104060b

    goto :goto_0
.end method

.method private initTri()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    .line 104
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionWidth:I

    .line 106
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    .line 107
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    .line 108
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPenWidth:I

    .line 111
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->density:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    .line 114
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTriPath()V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initMove()V

    .line 128
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTriAlphaIn()V

    .line 102
    return-void
.end method

.method private initTriAlphaIn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 242
    const-string/jumbo v0, "triAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x41a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaInListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    return-void
.end method

.method private initTriPath()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    return-void
.end method

.method private setMarqueeOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    .line 195
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->invalidate(Landroid/graphics/Rect;)V

    .line 193
    return-void
.end method


# virtual methods
.method public destroyMarquee()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->stopMarquee()V

    .line 205
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 203
    :cond_1
    return-void
.end method

.method public getGlobalActionAnimatorCallback()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mAnimator:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    return-object v0
.end method

.method public getInitBottom()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    return v0
.end method

.method public getRegionHeight()I
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 165
    return-void
.end method

.method public isHintHandlerRect(FF)Z
    .locals 6
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    .line 145
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 146
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLocationInWindow([I)V

    .line 148
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 149
    .local v1, "startX":I
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v2, v3, v4

    .line 150
    .local v2, "startY":I
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->drawTip(Landroid/graphics/Canvas;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->drawTri(Landroid/graphics/Canvas;)V

    .line 307
    return-void
.end method

.method public reBoot()V
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 186
    return-void
.end method

.method public setGlobalActionViewManager(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0
    .param p1, "viewManager"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 423
    return-void
.end method

.method public setHostViewCallback(Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;)V
    .locals 0
    .param p1, "hostCallback"    # Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHostCallback:Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    .line 431
    return-void
.end method

.method public setInitBottom(I)V
    .locals 0
    .param p1, "initBottom"    # I

    .prologue
    .line 420
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    .line 419
    return-void
.end method

.method public setTriAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->invalidate()V

    .line 198
    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setTranslationY(F)V

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setAlpha(F)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 161
    const/high16 v1, 0x3f800000    # 1.0f

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 154
    return-void
.end method

.method public shutDown()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    .line 174
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 175
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 177
    const/4 v2, 0x0

    .line 174
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 180
    const-string/jumbo v1, "marqueeOffset"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 181
    .local v0, "triMove":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 173
    return-void
.end method

.method public startMarquee()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    .line 223
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 220
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    .line 215
    return-void
.end method
