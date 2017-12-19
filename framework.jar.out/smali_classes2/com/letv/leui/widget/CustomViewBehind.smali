.class public Lcom/letv/leui/widget/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MARGIN_THRESHOLD:I = 0x30

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# instance fields
.field private mActivePointerId:I

.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMarginThreshold:I

.field private mMaximumVelocity:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

.field private mVisibleAlways:Z

.field private mWidthChanged:Z

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchMode:I

    .line 33
    iput-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .line 420
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    .line 690
    iput-boolean v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorEnabled:Z

    .line 52
    const/high16 v1, 0x42400000    # 48.0f

    .line 53
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 52
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    .line 55
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 57
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMaximumVelocity:I

    .line 50
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 736
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 737
    .local v0, "y":I
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 738
    return v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 345
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 343
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 353
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 351
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 330
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 331
    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 333
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 334
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 335
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .line 336
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->recycleVelocityTracker()V

    .line 328
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 333
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 363
    iput-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 373
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 368
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 668
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_0

    .line 669
    return-void

    .line 670
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 671
    .local v6, "alpha":I
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    const/4 v7, 0x0

    .line 673
    .local v7, "left":I
    const/4 v8, 0x0

    .line 674
    .local v8, "right":I
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 687
    :cond_1
    :goto_0
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 667
    return-void

    .line 677
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_0

    .line 680
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 683
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_0
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 695
    iget-boolean v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_0

    .line 696
    return-void

    .line 697
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 698
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 699
    .local v3, "tag":Ljava/lang/String;
    const-string/jumbo v4, "CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 700
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 702
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 703
    .local v1, "offset":I
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v4, :cond_3

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 705
    .local v2, "right":I
    sub-int v0, v2, v1

    .line 706
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 707
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 714
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 694
    .end local v1    # "offset":I
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    return-void

    .line 708
    .restart local v1    # "offset":I
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 710
    .restart local v0    # "left":I
    add-int v2, v0, v1

    .line 711
    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 712
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 640
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_1

    .line 641
    :cond_0
    return-void

    .line 642
    :cond_1
    const/4 v0, 0x0

    .line 643
    .local v0, "left":I
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    .line 655
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 656
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 639
    return-void

    .line 645
    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 647
    :cond_4
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 648
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 650
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 653
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 4
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 550
    const/4 v0, 0x0

    .line 552
    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    .line 556
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 557
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    return v1

    .line 559
    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    return v1

    .line 562
    :cond_3
    return v3
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 567
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    .line 569
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 572
    :cond_2
    return v2
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "widthOffset":I
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getAboveOffsetLeft()I

    move-result v0

    .line 524
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_2

    .line 525
    packed-switch p2, :pswitch_data_0

    .line 546
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    return v1

    .line 527
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 529
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 531
    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 532
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 534
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 536
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 538
    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 539
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 541
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 543
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 532
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 539
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 475
    if-le p1, v1, :cond_1

    const/4 p1, 0x2

    .line 476
    :cond_0
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    if-le p1, v1, :cond_2

    .line 477
    return v2

    .line 475
    :cond_1
    if-ge p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 479
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v0, v1, :cond_3

    if-ge p1, v1, :cond_3

    .line 480
    const/4 v0, 0x2

    return v0

    .line 482
    :cond_3
    return p1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 577
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 578
    .local v1, "right":I
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v4, :cond_1

    .line 579
    if-lt p2, v0, :cond_0

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 580
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_3

    .line 581
    if-gt p2, v1, :cond_2

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-lt p2, v4, :cond_2

    move v3, v2

    :cond_2
    return v3

    .line 582
    :cond_3
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 583
    if-lt p2, v0, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_5

    :cond_4
    :goto_1
    return v2

    :cond_5
    if-gt p2, v1, :cond_6

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_4

    :cond_6
    move v2, v3

    goto :goto_1

    .line 585
    :cond_7
    return v3
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 612
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_1

    .line 613
    cmpl-float v2, p1, v3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 614
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 615
    cmpg-float v2, p1, v3

    if-gez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 616
    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 617
    return v0

    .line 619
    :cond_4
    return v1
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 623
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v2, :cond_1

    .line 624
    cmpg-float v2, p1, v3

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 625
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 626
    cmpl-float v2, p1, v3

    if-lez v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 627
    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 628
    return v0

    .line 630
    :cond_4
    return v1
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    .line 593
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 599
    const/4 v0, 0x0

    return v0

    .line 595
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 597
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    return v0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 603
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_2

    if-nez p2, :cond_2

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 605
    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-eq v2, v0, :cond_3

    iget v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 606
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_4

    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 608
    :cond_5
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v8}, Lcom/letv/leui/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 124
    return v10

    .line 129
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v8}, Lcom/letv/leui/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 130
    iput-boolean v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 131
    return v11

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 136
    .local v0, "action":I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    if-eqz v8, :cond_2

    .line 138
    return v11

    .line 141
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 203
    :cond_3
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    return v8

    .line 143
    :pswitch_1
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .line 144
    .local v1, "activePointerId":I
    if-eq v1, v9, :cond_3

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 149
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 150
    .local v4, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 151
    .local v6, "y":I
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    int-to-float v9, v4

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v5, v8

    .line 152
    .local v5, "xDiff":I
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    int-to-float v9, v6

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v7, v8

    .line 154
    .local v7, "yDiff":I
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    if-le v5, v8, :cond_3

    sub-int v8, v5, v7

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    int-to-float v9, v4

    iget v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    iput-boolean v11, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 157
    int-to-float v8, v4

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 158
    int-to-float v8, v6

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    .line 160
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    .line 161
    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 163
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 171
    .end local v1    # "activePointerId":I
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":I
    .end local v5    # "xDiff":I
    .end local v6    # "y":I
    .end local v7    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 172
    .restart local v6    # "y":I
    iput-boolean v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v8

    iput v9, p0, Lcom/letv/leui/widget/CustomViewBehind;->mInitialMotionX:F

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 174
    int-to-float v8, v6

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    .line 175
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .line 177
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->initOrResetVelocityTracker()V

    .line 178
    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 185
    .end local v6    # "y":I
    :pswitch_3
    iput-boolean v10, p0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 186
    iput v9, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .line 187
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 190
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 191
    .local v2, "index":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 192
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    .line 193
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    goto/16 :goto_0

    .line 197
    .end local v2    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 198
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 199
    iget v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 382
    sub-int v2, p4, p2

    .line 383
    .local v2, "width":I
    sub-int v1, p5, p3

    .line 384
    .local v1, "height":I
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 385
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v5, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 389
    :cond_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthChanged:Z

    if-eqz v3, :cond_1

    .line 390
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v3}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v0

    .line 391
    .local v0, "currentPage":I
    packed-switch v0, :pswitch_data_0

    .line 401
    :goto_0
    :pswitch_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthChanged:Z

    .line 381
    .end local v0    # "currentPage":I
    :cond_1
    return-void

    .line 393
    .restart local v0    # "currentPage":I
    :pswitch_1
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v3, v5, v5, v6}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 396
    :pswitch_2
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZZ)V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 408
    invoke-static {v5, p1}, Lcom/letv/leui/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 409
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/letv/leui/widget/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 410
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/letv/leui/widget/CustomViewBehind;->setMeasuredDimension(II)V

    .line 411
    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/letv/leui/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 412
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/letv/leui/widget/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 413
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 414
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 407
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v22

    if-nez v22, :cond_0

    .line 214
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    return v22

    .line 218
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->IsBeingDragged()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 219
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 220
    const/16 v22, 0x0

    return v22

    .line 223
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->initVelocityTrackerIfNotExists()V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 227
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 309
    :cond_2
    :goto_0
    :pswitch_0
    const/16 v22, 0x1

    return v22

    .line 229
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getChildCount()I

    move-result v22

    if-nez v22, :cond_3

    .line 230
    const/16 v22, 0x0

    return v22

    .line 233
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    .line 235
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    goto :goto_0

    .line 239
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 240
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 241
    .local v20, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 242
    .local v21, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v6, v22, v23

    .line 243
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    move/from16 v22, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v7, v22, v23

    .line 245
    .local v7, "deltaY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5

    .line 246
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v22

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v23

    sub-float v22, v22, v23

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v22

    .line 245
    if-eqz v22, :cond_5

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 249
    .local v13, "parent":Landroid/view/ViewParent;
    if-eqz v13, :cond_4

    .line 250
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 252
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 253
    const/16 v22, 0x0

    cmpl-float v22, v6, v22

    if-lez v22, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v6, v6, v22

    .line 259
    .end local v13    # "parent":Landroid/view/ViewParent;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 260
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 261
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionY:F

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v11, v0

    .line 263
    .local v11, "oldScrollX":F
    add-float v16, v11, v6

    .line 265
    .local v16, "scrollX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getLeftBound()I

    move-result v22

    move/from16 v0, v22

    int-to-float v9, v0

    .line 266
    .local v9, "leftBound":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getRightBound()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    .line 268
    .local v15, "rightBound":F
    cmpg-float v22, v16, v9

    if-gez v22, :cond_8

    .line 269
    move/from16 v16, v9

    .line 274
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    move/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v16, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mLastMotionX:F

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getScrollY()I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/letv/leui/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_0

    .line 256
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .restart local v13    # "parent":Landroid/view/ViewParent;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v6, v6, v22

    goto/16 :goto_1

    .line 270
    .end local v13    # "parent":Landroid/view/ViewParent;
    .restart local v9    # "leftBound":F
    .restart local v11    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_8
    cmpl-float v22, v16, v15

    if-lez v22, :cond_6

    .line 271
    move/from16 v16, v15

    goto :goto_2

    .line 282
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v9    # "leftBound":F
    .end local v11    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v20    # "x":I
    .end local v21    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 285
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v8, v0

    .line 287
    .local v8, "initialVelocity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v17

    .line 288
    .local v17, "scrollX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v22

    sub-int v22, v17, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    .line 288
    div-float v12, v22, v23

    .line 290
    .local v12, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 291
    .local v14, "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 292
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 294
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v12, v8, v1}, Lcom/letv/leui/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v10

    .line 295
    .local v10, "nextPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 299
    .end local v10    # "nextPage":I
    .end local v18    # "totalDelta":I
    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mActivePointerId:I

    .line 300
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewBehind;->mIsBeingDragged:Z

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewBehind;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 297
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v23

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 305
    .end local v8    # "initialVelocity":I
    .end local v12    # "pageOffset":F
    .end local v14    # "pointerIndex":I
    .end local v17    # "scrollX":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewBehind;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "vis":I
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    if-nez v1, :cond_4

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    if-eqz v1, :cond_3

    .line 498
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    .line 513
    :cond_1
    :goto_1
    if-ne v0, v2, :cond_2

    .line 514
    const-string/jumbo v1, "CustomViewBehind"

    const-string/jumbo v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_2
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->setVisibility(I)V

    .line 493
    return-void

    .line 497
    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    .line 499
    :cond_4
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_5

    iget-boolean v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    if-eqz v1, :cond_6

    .line 502
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_1

    .line 501
    :cond_6
    const/4 v0, 0x4

    goto :goto_2

    .line 503
    :cond_7
    iget v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 504
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt p2, v4, :cond_8

    iget-boolean v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    if-eqz v4, :cond_a

    :cond_8
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 506
    if-nez p2, :cond_b

    const/4 v0, 0x4

    .line 507
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_c

    .line 508
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    goto :goto_1

    :cond_9
    move v1, v3

    .line 504
    goto :goto_3

    :cond_a
    move v3, v2

    .line 505
    goto :goto_4

    .line 506
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 510
    :cond_c
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/letv/leui/widget/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_1
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 113
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    .line 111
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .param p1, "t"    # Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTransformer:Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    .line 66
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mChildrenEnabled:Z

    .line 106
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public setCustomViewAbove(Lcom/letv/leui/widget/CustomViewAbove;)V
    .locals 0
    .param p1, "customViewAbove"    # Lcom/letv/leui/widget/CustomViewAbove;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    .line 62
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 469
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeDegree:F

    .line 468
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 465
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mFadeEnabled:Z

    .line 464
    return-void
.end method

.method public setMenuVisibleAlways(Z)V
    .locals 0
    .param p1, "visibleAlways"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    .line 746
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 428
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mMode:I

    .line 427
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0
    .param p1, "scrollScale"    # F

    .prologue
    .line 442
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mScrollScale:F

    .line 441
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    .line 454
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 724
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 726
    iput-object v2, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 728
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 729
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 730
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string/jumbo v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 731
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    .line 723
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 743
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->refreshDrawableState()V

    .line 741
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mSelectorEnabled:Z

    .line 719
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 451
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    .line 449
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mShadowWidth:I

    .line 461
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->invalidate()V

    .line 459
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mTouchMode:I

    .line 588
    return-void
.end method

.method public setVisibleAlways(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mVisibleAlways:Z

    .line 324
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 71
    iget v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthChanged:Z

    .line 72
    iput p1, p0, Lcom/letv/leui/widget/CustomViewBehind;->mWidthOffset:I

    .line 73
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewBehind;->requestLayout()V

    .line 70
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
