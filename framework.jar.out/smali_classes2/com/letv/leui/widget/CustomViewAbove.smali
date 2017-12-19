.class public Lcom/letv/leui/widget/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;,
        Lcom/letv/leui/widget/CustomViewAbove$SimpleOnPageChangeListener;,
        Lcom/letv/leui/widget/CustomViewAbove$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

.field private mViewOffsetLeft:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/CustomViewAbove;)Lcom/letv/leui/widget/CustomViewBehind;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/letv/leui/widget/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 55
    iput-boolean v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    .line 62
    iput v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewOffsetLeft:I

    .line 615
    iput v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    .line 674
    iput-boolean v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    .line 946
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    .line 128
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->initCustomViewAbove()V

    .line 126
    return-void
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 592
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrolling:Z

    .line 593
    .local v0, "needPopulate":Z
    if-eqz v0, :cond_2

    .line 595
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 596
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 597
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 598
    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 599
    .local v2, "oldY":I
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 600
    .local v3, "x":I
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 601
    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 602
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 605
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    .line 606
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 612
    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrolling:Z

    .line 591
    return-void

    .line 608
    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    .line 609
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 971
    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    .line 972
    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 973
    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    .line 974
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 976
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 978
    iput-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 970
    :cond_0
    return-void
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 668
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 669
    .local v0, "activePointerIndex":I
    if-ne v0, v1, :cond_0

    .line 670
    iput v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 671
    :cond_0
    return v0
.end method

.method private getWindowBackgroud()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 169
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 170
    const v4, 0x1010054

    aput v4, v3, v5

    .line 168
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 173
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 175
    return v1
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 356
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "v$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 357
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    const/4 v3, 0x1

    return v3

    .line 361
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isInternalContentView(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 372
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    return v1

    .line 376
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 952
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 953
    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 956
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 957
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 958
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 959
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 960
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 948
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 956
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private setDefaultBackgroud(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "background"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 186
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 984
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 982
    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    .line 965
    return-void
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 633
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/letv/leui/widget/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    return v1

    .line 636
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 646
    return v1

    .line 639
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->isInternalContentView(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    return v1

    .line 641
    :pswitch_1
    return v1

    .line 643
    :pswitch_2
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/letv/leui/widget/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    return v1

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    return v0
.end method

.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1040
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1041
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 1042
    const/4 v0, 0x0

    .line 1044
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 1046
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1048
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 1049
    if-ne p1, v4, :cond_3

    .line 1050
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 1068
    .end local v1    # "handled":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1069
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->playSoundEffect(I)V

    .line 1071
    :cond_2
    return v1

    .line 1051
    .restart local v1    # "handled":Z
    :cond_3
    if-ne p1, v5, :cond_1

    .line 1055
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 1056
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 1058
    .local v1, "handled":Z
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 1061
    .local v1, "handled":Z
    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 1063
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->pageLeft()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 1064
    .local v1, "handled":Z
    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1066
    :cond_8
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 537
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 538
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 540
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 541
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 542
    .local v2, "x":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 544
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 545
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    .line 546
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->pageScrolled(I)V

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->invalidate()V

    .line 551
    return-void

    .line 556
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    .line 536
    return-void
.end method

.method determineTargetPage(FII)I
    .locals 3
    .param p1, "pageOffset"    # F
    .param p2, "velocity"    # I
    .param p3, "deltaX"    # I

    .prologue
    .line 918
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    .line 919
    .local v0, "targetPage":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 920
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 921
    add-int/lit8 v0, v0, -0x1

    .line 928
    :cond_0
    :goto_0
    return v0

    .line 922
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 937
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 940
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 941
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/letv/leui/widget/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 942
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/letv/leui/widget/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 936
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    .prologue
    .line 316
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 317
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 318
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1012
    const/4 v0, 0x0

    .line 1013
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1014
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1036
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    .line 1016
    .restart local v0    # "handled":Z
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 1019
    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 1022
    .local v0, "handled":Z
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1027
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 1029
    .local v0, "handled":Z
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 1014
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getAboveOffsetLeft()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewOffsetLeft:I

    return v0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    return v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v0

    return v0
.end method

.method public getChildWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v0

    return v0

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 329
    const/4 v0, 0x0

    return v0

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    return v0

    .line 327
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeftBound()I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 932
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRightBound()I
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    .line 132
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setWillNotDraw(Z)V

    .line 133
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setDescendantFocusability(I)V

    .line 134
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setFocusable(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 136
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/letv/leui/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 137
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 138
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    .line 139
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mMinimumVelocity:I

    .line 140
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mMaximumVelocity:I

    .line 141
    new-instance v3, Lcom/letv/leui/widget/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/CustomViewAbove$2;-><init>(Lcom/letv/leui/widget/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setInternalPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .line 157
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 158
    .local v2, "density":F
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mFlingDistance:I

    .line 131
    return-void
.end method

.method public isMenuOpen()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v13, 0xff00

    const/4 v10, -0x1

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 679
    iget-boolean v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    if-nez v9, :cond_0

    .line 680
    return v12

    .line 684
    :cond_0
    iget-object v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v9}, Lcom/letv/leui/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 685
    iput-boolean v12, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 686
    return v8

    .line 689
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v0, v9, 0xff

    .line 691
    .local v0, "action":I
    const/4 v9, 0x3

    if-eq v0, v9, :cond_2

    if-ne v0, v8, :cond_3

    .line 693
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    .line 694
    return v12

    .line 692
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    .line 691
    if-nez v9, :cond_2

    .line 697
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 749
    :cond_5
    :goto_0
    iget-boolean v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v9, :cond_7

    .line 750
    iget-object v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_6

    .line 751
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 753
    :cond_6
    iget-object v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 755
    :cond_7
    iget-boolean v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v9, :cond_8

    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    :cond_8
    return v8

    .line 700
    :sswitch_0
    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 701
    .local v1, "activePointerId":I
    if-eq v1, v10, :cond_5

    .line 703
    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 704
    .local v3, "pointerIndex":I
    if-eq v3, v10, :cond_5

    .line 706
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 707
    .local v4, "x":F
    iget v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    sub-float v2, v4, v9

    .line 708
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 709
    .local v5, "xDiff":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 710
    .local v6, "y":F
    iget v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 713
    .local v7, "yDiff":F
    iget v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_9

    cmpl-float v9, v5, v7

    if-lez v9, :cond_9

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 717
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->startDrag()V

    .line 718
    iput v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 719
    invoke-direct {p0, v8}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 720
    :cond_9
    iget v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    .line 721
    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_0

    .line 726
    .end local v1    # "activePointerId":I
    .end local v2    # "dx":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 727
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x8

    if-lt v10, v11, :cond_a

    .line 726
    :cond_a
    and-int/2addr v9, v13

    iput v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 729
    iget v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInitialMotionX:F

    iput v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 730
    iget v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionY:F

    .line 732
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 733
    iput-boolean v12, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 734
    iput-boolean v12, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    .line 735
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 736
    iget-object v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v10, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget v11, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 737
    iget v13, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    .line 736
    add-float/2addr v12, v13

    invoke-virtual {v9, v10, v11, v12}, Lcom/letv/leui/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v9

    .line 735
    if-eqz v9, :cond_5

    .line 738
    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    goto/16 :goto_0

    .line 741
    :cond_b
    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_0

    .line 745
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 697
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 515
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 516
    .local v1, "width":I
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 517
    .local v0, "height":I
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 514
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    .line 490
    invoke-static {v4, p1}, Lcom/letv/leui/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 491
    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/letv/leui/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 492
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setMeasuredDimension(II)V

    .line 494
    invoke-static {p1, v4, v3}, Lcom/letv/leui/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 495
    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 496
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 488
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 582
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 503
    if-eq p1, p3, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    .line 509
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    .line 500
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 764
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 766
    const/16 v24, 0x0

    return v24

    .line 768
    :cond_0
    const/16 v24, 0x1

    return v24

    .line 772
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 776
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 777
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    .line 778
    const/16 v24, 0x0

    return v24

    .line 773
    :cond_3
    const/16 v24, 0x0

    return v24

    .line 781
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 783
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 784
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 786
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 788
    and-int/lit16 v0, v4, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 900
    :cond_6
    :goto_0
    :pswitch_0
    const/16 v24, 0x1

    return v24

    .line 791
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 794
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    goto :goto_0

    .line 797
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 801
    .local v14, "pointerIndex":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v14, v0, :cond_6

    .line 803
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 804
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v7, v20, v24

    .line 805
    .local v7, "dx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 806
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 807
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 810
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-gtz v24, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_a

    .line 811
    :cond_7
    cmpl-float v24, v21, v23

    if-lez v24, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v24

    .line 810
    if-eqz v24, :cond_a

    .line 814
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->startDrag()V

    .line 815
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 816
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 823
    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 826
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 829
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 830
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v6, v24, v20

    .line 831
    .local v6, "deltaX":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    int-to-float v12, v0

    .line 833
    .local v12, "oldScrollX":F
    add-float v16, v12, v6

    .line 835
    .local v16, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getLeftBound()I

    move-result v24

    move/from16 v0, v24

    int-to-float v10, v0

    .line 836
    .local v10, "leftBound":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getRightBound()I

    move-result v24

    move/from16 v0, v24

    int-to-float v15, v0

    .line 838
    .local v15, "rightBound":F
    cmpg-float v24, v16, v10

    if-gez v24, :cond_b

    .line 839
    move/from16 v16, v10

    .line 844
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v24, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v16, v25

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 845
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    .line 847
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_0

    .line 820
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .restart local v7    # "dx":F
    .restart local v14    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_a
    const/16 v24, 0x0

    return v24

    .line 840
    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    .restart local v5    # "activePointerIndex":I
    .restart local v6    # "deltaX":F
    .restart local v10    # "leftBound":F
    .restart local v12    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_b
    cmpl-float v24, v16, v15

    if-lez v24, :cond_9

    .line 841
    move/from16 v16, v15

    goto :goto_1

    .line 851
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v20    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 853
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 854
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v9, v0

    .line 855
    .local v9, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v17

    .line 856
    .local v17, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v24

    sub-int v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    .line 856
    div-float v13, v24, v25

    .line 858
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 859
    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 860
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 861
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v18, v0

    .line 863
    .local v18, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v13, v9, v1}, Lcom/letv/leui/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 864
    .local v11, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 868
    .end local v11    # "nextPage":I
    .end local v18    # "totalDelta":I
    .end local v20    # "x":F
    :goto_2
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_0

    .line 866
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_2

    .line 870
    .end local v5    # "activePointerIndex":I
    .end local v9    # "initialVelocity":I
    .end local v13    # "pageOffset":F
    .end local v17    # "scrollX":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    .line 872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    move/from16 v28, v0

    .line 871
    add-float v27, v27, v28

    invoke-virtual/range {v24 .. v27}, Lcom/letv/leui/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v24

    .line 870
    if-eqz v24, :cond_6

    .line 874
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_0

    .line 879
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 881
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_0

    .line 886
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .line 887
    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 888
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    .line 889
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_0

    .line 893
    .end local v8    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 894
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 895
    .restart local v14    # "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 897
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_0

    .line 788
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-lez v0, :cond_0

    .line 1076
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1077
    return v2

    .line 1079
    :cond_0
    return v1
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1083
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-ge v0, v1, :cond_0

    .line 1084
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1085
    return v1

    .line 1087
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pageScrolled(I)V
    .locals 6
    .param p1, "xpos"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getWidth()I

    move-result v3

    .line 561
    .local v3, "widthWithMargin":I
    div-int v2, p1, v3

    .line 562
    .local v2, "position":I
    rem-int v1, p1, v3

    .line 563
    .local v1, "offsetPixels":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 565
    .local v0, "offset":F
    invoke-virtual {p0, v2, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->onPageScrolled(IFI)V

    .line 559
    return-void
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 909
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 910
    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    .line 913
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/letv/leui/widget/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 908
    return-void
.end method

.method public setAboveOffsetLeft(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/CustomViewBehind;->setVisibleAlways(Z)V

    .line 527
    iput p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewOffsetLeft:I

    .line 528
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->requestLayout()V

    .line 525
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 471
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    .line 474
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/letv/leui/widget/CustomViewAbove;->addView(Landroid/view/View;II)V

    .line 476
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getWindowBackgroud()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setDefaultBackgroud(Landroid/view/View;I)V

    .line 470
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 199
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 198
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 209
    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 221
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 229
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v3, 0x0

    .line 234
    if-nez p3, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-ne v2, p1, :cond_0

    .line 235
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 236
    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 241
    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-eq v2, p1, :cond_3

    const/4 v1, 0x1

    .line 242
    .local v1, "dispatchSelected":Z
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    .line 243
    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 244
    .local v0, "destX":I
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 247
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 250
    :cond_2
    if-eqz p2, :cond_4

    .line 251
    invoke-virtual {p0, v0, v3, p4}, Lcom/letv/leui/widget/CustomViewAbove;->smoothScrollTo(III)V

    .line 233
    :goto_1
    return-void

    .line 241
    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "dispatchSelected":Z
    goto :goto_0

    .line 253
    .restart local v0    # "destX":I
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    .line 254
    invoke-virtual {p0, v0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    goto :goto_1
.end method

.method public setCustomViewBehind(Lcom/letv/leui/widget/CustomViewBehind;)V
    .locals 0
    .param p1, "cvb"    # Lcom/letv/leui/widget/CustomViewBehind;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    .line 483
    return-void
.end method

.method setInternalPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .line 285
    .local v0, "oldListener":Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .line 286
    return-object v0
.end method

.method public setOnClosedListener(Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    .line 272
    return-void
.end method

.method public setOnOpenedListener(Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    .line 268
    return-void
.end method

.method public setOnPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .line 264
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    .line 402
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 618
    iput p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    .line 617
    return-void
.end method

.method public slideAllowed(F)Z
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "allowed":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 664
    .local v0, "allowed":Z
    :goto_0
    return v0

    .line 660
    .local v0, "allowed":Z
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    .local v0, "allowed":Z
    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/CustomViewAbove;->smoothScrollTo(III)V

    .line 412
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 427
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 428
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v2

    .line 431
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v3

    .line 432
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 433
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 434
    .local v5, "dy":I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 435
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    .line 436
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_1

    .line 441
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 446
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrolling:Z

    .line 449
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v11

    .line 450
    .local v11, "width":I
    div-int/lit8 v9, v11, 0x2

    .line 451
    .local v9, "halfWidth":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v1, v12

    int-to-float v12, v11

    div-float/2addr v1, v12

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 452
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v12, v9

    .line 453
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    .line 452
    mul-float/2addr v12, v13

    add-float v7, v1, v12

    .line 455
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 456
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 457
    if-lez p3, :cond_4

    .line 458
    move/from16 v0, p3

    int-to-float v1, v0

    div-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v12, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 464
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 466
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 467
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->invalidate()V

    .line 424
    return-void

    .line 460
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .line 461
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v1, v12

    float-to-int v6, v1

    .line 462
    const/16 v6, 0x258

    goto :goto_1
.end method
