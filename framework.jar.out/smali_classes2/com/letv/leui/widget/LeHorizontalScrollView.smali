.class public Lcom/letv/leui/widget/LeHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "LeHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mCurrentOverScrollDistance:I

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mLeOverScrollEnable:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field protected mNeedRestoreOverScroll:Z

.field private mOverFling:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 157
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 82
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    .line 83
    iput v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 84
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    .line 86
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    .line 98
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 112
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 129
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 167
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initScrollView()V

    .line 170
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    .line 169
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setFillViewport(Z)V

    .line 174
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 280
    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 282
    .end local v1    # "childWidth":I
    :cond_1
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    const/4 v0, 0x0

    .line 1835
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_1

    .line 1836
    :cond_0
    return v0

    .line 1838
    :cond_1
    add-int v0, p1, p0

    if-le v0, p2, :cond_2

    .line 1839
    sub-int v0, p2, p1

    return v0

    .line 1841
    :cond_2
    return p0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1278
    if-eqz p1, :cond_0

    .line 1279
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollBy(II)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1024
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1025
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1034
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1036
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1037
    .local v0, "count":I
    const/4 v4, 0x0

    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1038
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1039
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1040
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1042
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1048
    if-ge p2, v8, :cond_2

    .line 1049
    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .line 1051
    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 1053
    move-object v1, v5

    .line 1054
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v7

    .line 1037
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1049
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1048
    .end local v7    # "viewIsFullyContained":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1057
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ge v8, v10, :cond_4

    const/4 v6, 0x1

    .line 1060
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1061
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1067
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1058
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    const/4 v6, 0x1

    .restart local v6    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .line 1070
    :cond_6
    if-eqz v7, :cond_7

    .line 1072
    move-object v1, v5

    .line 1073
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    .line 1074
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v6, :cond_0

    .line 1079
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1086
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 994
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 995
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 997
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    .line 998
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 999
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1000
    return-object p3

    .line 1003
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 961
    const/4 v1, 0x0

    .line 962
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 963
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 965
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 964
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 967
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 415
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 416
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 417
    :cond_0
    return v2

    .line 422
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 425
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 217
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 218
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setFocusable(Z)V

    .line 219
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setDescendantFocusability(I)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setWillNotDraw(Z)V

    .line 221
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 222
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    .line 223
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMinimumVelocity:I

    .line 224
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMaximumVelocity:I

    .line 226
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v3, v3}, Landroid/widget/OverScroller;->setEnableLeOverScroll(ZZ)V

    .line 228
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    .line 229
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    .line 216
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 435
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 433
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1257
    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1714
    if-ne p0, p1, :cond_0

    .line 1715
    const/4 v1, 0x1

    return v1

    .line 1718
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1719
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    const/4 v0, 0x0

    .line 1265
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1266
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1268
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1268
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 779
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 780
    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 784
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 785
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    .line 786
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 787
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 788
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 776
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 784
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 442
    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 439
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1169
    const/4 v4, 0x1

    .line 1171
    .local v4, "handled":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1172
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1173
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 1174
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .line 1176
    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1177
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1178
    move-object v5, p0

    .line 1181
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1182
    const/4 v4, 0x0

    .line 1188
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1190
    :cond_1
    return v4

    .line 1174
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "goLeft":Z
    goto :goto_0

    .line 1184
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .line 1185
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1184
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

    .restart local v2    # "delta":I
    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1460
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1463
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1465
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1467
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1468
    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    .line 1472
    :cond_0
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    .line 1459
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1485
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1486
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1487
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1488
    if-eqz p2, :cond_2

    .line 1489
    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    .line 1494
    :cond_0
    :goto_1
    return v1

    .line 1486
    .end local v1    # "scroll":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "scroll":Z
    goto :goto_0

    .line 1491
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 247
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 265
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 1202
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1203
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1205
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1207
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1209
    .local v3, "maxJump":I
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1210
    iget-object v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1211
    iget-object v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1212
    iget-object v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1213
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    .line 1214
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1237
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1238
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    .line 1237
    if-eqz v7, :cond_1

    .line 1244
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1245
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1246
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestFocus()Z

    .line 1247
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1249
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    return v7

    .line 1217
    :cond_2
    move v6, v3

    .line 1219
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1220
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1231
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    .line 1232
    return v9

    .line 1221
    :cond_4
    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1223
    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1225
    .local v1, "daRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 1227
    .local v5, "screenRight":I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1228
    sub-int v6, v1, v5

    goto :goto_1

    .line 1234
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_5
    if-ne p1, v10, :cond_6

    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    .restart local v6    # "scrollDelta":I
    :cond_6
    neg-int v6, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1353
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1333
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1334
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1335
    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    .line 1336
    return v0

    .line 1339
    :cond_0
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1340
    .local v3, "scrollRange":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1341
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1342
    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    .line 1343
    sub-int/2addr v3, v4

    .line 1348
    :cond_1
    :goto_0
    return v3

    .line 1344
    :cond_2
    if-le v4, v2, :cond_1

    .line 1345
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    .line 1387
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1404
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1405
    .local v3, "oldX":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .line 1406
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 1407
    .local v13, "x":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 1409
    .local v14, "y":I
    if-ne v3, v13, :cond_0

    if-eq v4, v14, :cond_1

    .line 1410
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1411
    .local v5, "range":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getOverScrollMode()I

    move-result v12

    .line 1417
    .local v12, "overscrollMode":I
    if-eqz v12, :cond_3

    .line 1418
    const/4 v0, 0x1

    if-ne v12, v0, :cond_4

    if-lez v5, :cond_4

    const/4 v11, 0x1

    .line 1419
    .local v11, "canOverscroll":Z
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_6

    .line 1420
    sub-int v1, v13, v3

    sub-int v2, v14, v4

    .line 1421
    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    .line 1420
    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v10

    .line 1422
    .local v10, "atEdge":Z
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1424
    if-eqz v10, :cond_1

    if-eqz v11, :cond_5

    .line 1443
    .end local v5    # "range":I
    .end local v10    # "atEdge":Z
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1444
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1386
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_2
    :goto_2
    return-void

    .line 1417
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v12    # "overscrollMode":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "canOverscroll":Z
    goto :goto_0

    .line 1418
    .end local v11    # "canOverscroll":Z
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "canOverscroll":Z
    goto :goto_0

    .line 1425
    .restart local v10    # "atEdge":Z
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_1

    .line 1429
    .end local v10    # "atEdge":Z
    :cond_6
    sub-int v1, v13, v3

    sub-int v2, v14, v4

    .line 1430
    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    .line 1429
    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1431
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1433
    if-eqz v11, :cond_1

    .line 1434
    if-gez v13, :cond_7

    if-ltz v3, :cond_7

    .line 1435
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1436
    :cond_7
    if-le v13, v5, :cond_1

    if-gt v3, v5, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 1449
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "range":I
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_8
    iput-boolean v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1506
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    return v9

    .line 1508
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1509
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1510
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1512
    .local v4, "screenRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1515
    .local v1, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-lez v7, :cond_1

    .line 1516
    add-int/2addr v3, v1

    .line 1520
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1521
    sub-int/2addr v4, v1

    .line 1524
    :cond_2
    const/4 v5, 0x0

    .line 1526
    .local v5, "scrollXDelta":I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v3, :cond_5

    .line 1531
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_4

    .line 1533
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    add-int/lit8 v5, v7, 0x0

    .line 1540
    :goto_0
    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1541
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1542
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1560
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_3
    :goto_1
    return v5

    .line 1536
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    add-int/lit8 v5, v7, 0x0

    goto :goto_0

    .line 1544
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_3

    .line 1549
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    .line 1551
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    rsub-int/lit8 v5, v7, 0x0

    .line 1558
    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 1554
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    rsub-int/lit8 v5, v7, 0x0

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1798
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1800
    iget-boolean v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v4, :cond_3

    .line 1802
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 1803
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1804
    .local v2, "scrollX":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1805
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1806
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1808
    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1809
    neg-int v4, v0

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1810
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1811
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1812
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1814
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1816
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1817
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1818
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1819
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1821
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1822
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    .line 1823
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    .line 1822
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1824
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1825
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1826
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1828
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1797
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    const/16 v5, 0x42

    .line 373
    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 375
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 379
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 381
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    .line 382
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    .line 381
    :cond_1
    return v3

    .line 384
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    .line 387
    :cond_3
    const/4 v1, 0x0

    .line 388
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 389
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 410
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    .line 391
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 392
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 394
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 398
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 399
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 401
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 405
    .local v1, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_1

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    .prologue
    .line 1730
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1732
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1735
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1737
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .line 1738
    sub-int v4, v15, v16

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int/lit8 v10, v16, 0x2

    .line 1737
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1738
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    .line 1737
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1740
    if-lez p1, :cond_3

    const/4 v13, 0x1

    .line 1742
    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1744
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    .line 1743
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1746
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    .line 1747
    move-object/from16 v14, p0

    .line 1750
    :cond_0
    if-eq v14, v12, :cond_1

    .line 1751
    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1754
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1729
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    .line 1740
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "movingRight":Z
    goto :goto_0

    .line 1751
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 1138
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1139
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1141
    .local v3, "width":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1142
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 1144
    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1146
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1147
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1148
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1149
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1153
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1138
    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "right":Z
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const/4 v1, 0x0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 184
    .local v0, "length":I
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 185
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 188
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mRight:I

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 194
    const/4 v3, 0x0

    return v3

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 198
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 199
    .local v1, "rightEdge":I
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 200
    .local v2, "span":I
    if-ge v2, v0, :cond_1

    .line 201
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    return v3

    .line 204
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLeOverScrollEnable()Z
    .locals 1

    .prologue
    .line 1944
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1358
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1363
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    .line 1364
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    .line 1363
    add-int/2addr v3, v4

    .line 1364
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1363
    invoke-static {p3, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1366
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1368
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1357
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1374
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1377
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    .line 1378
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1376
    invoke-static {p4, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1380
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 1379
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1382
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1373
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1939
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    .line 1938
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 824
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 798
    :pswitch_0
    iget-boolean v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 801
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 805
    .local v1, "hscroll":F
    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 807
    .local v0, "delta":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 808
    .local v4, "range":I
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 809
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 810
    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    .line 811
    const/4 v2, 0x0

    .line 815
    :cond_1
    :goto_1
    if-eq v2, v3, :cond_0

    .line 816
    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 817
    const/4 v5, 0x1

    return v5

    .line 803
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_0

    .line 812
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    .line 813
    move v2, v4

    goto :goto_1

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x0

    .line 951
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 952
    const-class v1, Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 953
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 954
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 955
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 956
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 957
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 950
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 935
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 936
    const-class v1, Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 937
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 938
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 939
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 940
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    .line 941
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 944
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 934
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 468
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 469
    return v0

    .line 472
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 560
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    return v0

    .line 483
    :pswitch_1
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 484
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_1

    .line 489
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 490
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_2

    .line 491
    const-string/jumbo v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 492
    const-string/jumbo v2, " in onInterceptTouchEvent"

    .line 491
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v11, v1

    .line 497
    .local v11, "x":I
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 498
    .local v12, "xDiff":I
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_1

    .line 499
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 500
    iput v11, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    .line 501
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 502
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 503
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 509
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v11, v1

    .line 510
    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v11, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 511
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 512
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_0

    .line 520
    :cond_3
    iput v11, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    .line 521
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 523
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initOrResetVelocityTracker()V

    .line 524
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 531
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_0

    :cond_4
    move v3, v0

    goto :goto_1

    .line 538
    .end local v11    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 539
    iput v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 540
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 545
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 546
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    .line 547
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 551
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 552
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_0

    .line 472
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
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1629
    const/4 v3, 0x0

    .line 1630
    .local v3, "restoreOffset":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->shouldRestoreOverScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1631
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 1635
    :cond_0
    const/4 v14, 0x0

    .line 1636
    .local v14, "childWidth":I
    const/4 v12, 0x0

    .line 1638
    .local v12, "childMargins":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1639
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1640
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 1641
    .local v13, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v12, v2, v4

    .line 1644
    .end local v13    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1651
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1655
    sub-int v2, p4, p2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v2, v4

    sub-int v2, v14, v2

    .line 1654
    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1656
    .local v17, "scrollRange":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    if-eqz v2, :cond_7

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    iget-boolean v4, v4, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    if-ne v2, v4, :cond_6

    .line 1658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    iget v2, v2, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1662
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    .line 1669
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move/from16 v0, v17

    if-le v2, v0, :cond_8

    .line 1670
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1677
    .end local v17    # "scrollRange":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollTo(II)V

    .line 1680
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1682
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1683
    .local v15, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move/from16 v16, v0

    .line 1684
    .local v16, "oldY":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v7

    .line 1685
    .local v7, "range":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1686
    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    .line 1685
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1686
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    .line 1685
    invoke-virtual/range {v2 .. v11}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1687
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v4, v15, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1627
    .end local v7    # "range":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :cond_5
    return-void

    .line 1660
    .restart local v17    # "scrollRange":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    iget v2, v2, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    sub-int v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    goto :goto_0

    .line 1664
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1665
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    goto :goto_1

    .line 1671
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-gez v2, :cond_4

    .line 1672
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 330
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 332
    iget-boolean v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 337
    .local v5, "widthMode":I
    if-nez v5, :cond_1

    .line 338
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 342
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 344
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_2

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    .line 348
    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    .line 347
    add-int/2addr v6, v7

    .line 348
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 347
    invoke-static {p2, v6, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 349
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 350
    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 351
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 353
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 329
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 17
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 836
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_5

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 839
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 840
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .line 842
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    if-eqz v2, :cond_2

    .line 877
    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 878
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-gez v2, :cond_7

    .line 879
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    .line 898
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->awakenScrollBars()Z

    .line 834
    return-void

    .line 843
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v11

    .line 846
    .local v11, "end":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-gez v2, :cond_3

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    add-int/2addr v4, v11

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 851
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidate()V

    goto :goto_0

    .line 849
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    add-int/2addr v4, v11

    invoke-virtual {v2, v3, v11, v4}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_2

    .line 855
    .end local v11    # "end":I
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0

    .line 860
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    .line 861
    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 862
    .local v12, "oldX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .line 863
    .local v13, "oldY":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 864
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidateParentIfNeeded()V

    .line 866
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    .line 867
    if-eqz p3, :cond_0

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto/16 :goto_0

    .line 871
    .end local v12    # "oldX":I
    .end local v13    # "oldY":I
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto/16 :goto_0

    .line 880
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-lez v2, :cond_1

    .line 881
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 882
    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v16

    .line 884
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getPaddingLeft()I

    move-result v14

    .line 885
    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getPaddingRight()I

    move-result v15

    .line 886
    .local v15, "paddingRight":I
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 888
    .local v10, "childWidth":I
    sub-int v2, v16, v14

    sub-int/2addr v2, v15

    if-le v10, v2, :cond_8

    .line 889
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v16, v15

    if-ge v2, v3, :cond_8

    .line 890
    sub-int v2, v16, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    neg-int v3, v3

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_1

    .line 891
    :cond_8
    sub-int v2, v16, v14

    sub-int/2addr v2, v15

    if-gt v10, v2, :cond_1

    .line 892
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1588
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1589
    const/16 p1, 0x42

    .line 1594
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 1595
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1599
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 1600
    return v3

    .line 1590
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1591
    const/16 p1, 0x11

    goto :goto_0

    .line 1596
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "nextFocus":Landroid/view/View;
    goto :goto_1

    .line 1603
    :cond_3
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1604
    return v3

    .line 1607
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1846
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 1849
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1850
    return-void

    :cond_0
    move-object v0, p1

    .line 1852
    check-cast v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    .line 1853
    .local v0, "ss":Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1854
    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    .line 1855
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestLayout()V

    .line 1845
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 1860
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 1863
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    .line 1865
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1866
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1867
    .local v0, "ss":Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    .line 1868
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    .line 1869
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1694
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1696
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1697
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1698
    :cond_0
    return-void

    .line 1700
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1702
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1703
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1704
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1705
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1706
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    .line 1693
    .end local v2    # "scrollDelta":I
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    .line 570
    .local v20, "action":I
    move/from16 v0, v20

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 773
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 572
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 573
    const/4 v2, 0x0

    return v2

    .line 575
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 577
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_2

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    .line 580
    .local v30, "parent":Landroid/view/ViewParent;
    if-eqz v30, :cond_2

    .line 581
    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 590
    .end local v30    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 595
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    .line 596
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    .line 575
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 600
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 601
    .local v21, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    .line 602
    const-string/jumbo v2, "HorizontalScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 606
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v33, v0

    .line 607
    .local v33, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    sub-int v24, v2, v33

    .line 608
    .local v24, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_7

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    .line 610
    .restart local v30    # "parent":Landroid/view/ViewParent;
    if-eqz v30, :cond_6

    .line 611
    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 613
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 614
    if-lez v24, :cond_d

    .line 615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    sub-int v24, v24, v2

    .line 620
    .end local v30    # "parent":Landroid/view/ViewParent;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 622
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    .line 625
    const/16 v25, 0x0

    .line 626
    .local v25, "incrementalDeltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_9

    .line 627
    move/from16 v25, v24

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    if-eqz v2, :cond_9

    if-eqz v25, :cond_9

    .line 630
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    mul-int v2, v2, v24

    if-lez v2, :cond_f

    .line 631
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v23, v3, v2

    .line 632
    .local v23, "coeff":F
    const/4 v2, 0x0

    cmpg-float v2, v23, v2

    if-gez v2, :cond_8

    const/16 v23, 0x0

    .line 633
    :cond_8
    move/from16 v0, v25

    int-to-float v2, v0

    mul-float v2, v2, v23

    float-to-int v0, v2

    move/from16 v25, v0

    .line 634
    if-lez v24, :cond_e

    .line 635
    if-nez v25, :cond_9

    const/16 v25, 0x1

    .line 646
    .end local v23    # "coeff":F
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move/from16 v27, v0

    .line 647
    .local v27, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move/from16 v28, v0

    .line 648
    .local v28, "oldY":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v7

    .line 649
    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getOverScrollMode()I

    move-result v29

    .line 659
    .local v29, "overscrollMode":I
    if-eqz v29, :cond_10

    .line 660
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_11

    if-lez v7, :cond_11

    const/16 v22, 0x1

    .line 662
    .local v22, "canOverscroll":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_12

    move/from16 v3, v25

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 672
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_0

    if-eqz v22, :cond_0

    .line 674
    add-int v31, v27, v24

    .line 675
    .local v31, "pulledToX":I
    if-gez v31, :cond_13

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 677
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    .line 676
    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 688
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 690
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 617
    .end local v7    # "range":I
    .end local v22    # "canOverscroll":Z
    .end local v25    # "incrementalDeltaX":I
    .end local v27    # "oldX":I
    .end local v28    # "oldY":I
    .end local v29    # "overscrollMode":I
    .end local v31    # "pulledToX":I
    .restart local v30    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    add-int v24, v24, v2

    goto/16 :goto_2

    .line 637
    .end local v30    # "parent":Landroid/view/ViewParent;
    .restart local v23    # "coeff":F
    .restart local v25    # "incrementalDeltaX":I
    :cond_e
    if-nez v25, :cond_9

    const/16 v25, -0x1

    goto/16 :goto_3

    .line 640
    .end local v23    # "coeff":F
    :cond_f
    div-int/lit8 v25, v25, 0x2

    goto/16 :goto_3

    .line 659
    .restart local v7    # "range":I
    .restart local v27    # "oldX":I
    .restart local v28    # "oldY":I
    .restart local v29    # "overscrollMode":I
    :cond_10
    const/16 v22, 0x1

    .restart local v22    # "canOverscroll":Z
    goto/16 :goto_4

    .line 660
    .end local v22    # "canOverscroll":Z
    :cond_11
    const/16 v22, 0x0

    .restart local v22    # "canOverscroll":Z
    goto/16 :goto_4

    :cond_12
    move/from16 v3, v24

    .line 662
    goto/16 :goto_5

    .line 681
    .restart local v31    # "pulledToX":I
    :cond_13
    move/from16 v0, v31

    if-le v0, v7, :cond_b

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 683
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 682
    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_b

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 696
    .end local v7    # "range":I
    .end local v21    # "activePointerIndex":I
    .end local v22    # "canOverscroll":Z
    .end local v24    # "deltaX":I
    .end local v25    # "incrementalDeltaX":I
    .end local v27    # "oldX":I
    .end local v28    # "oldY":I
    .end local v29    # "overscrollMode":I
    .end local v31    # "pulledToX":I
    .end local v33    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 698
    .local v32, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 699
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .line 701
    .local v26, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_14

    .line 703
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_17

    .line 704
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_16

    .line 705
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-nez v2, :cond_15

    .line 706
    move/from16 v0, v26

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fling(I)V

    .line 734
    :cond_14
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 735
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    .line 742
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 708
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v12

    .line 709
    .local v12, "end":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidate()V

    goto :goto_7

    .line 714
    .end local v12    # "end":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_14

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v12

    .line 716
    .restart local v12    # "end":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidate()V

    goto :goto_7

    .line 723
    .end local v12    # "end":I
    :cond_17
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_18

    .line 724
    move/from16 v0, v26

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fling(I)V

    goto :goto_7

    .line 726
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v17

    .line 726
    const/16 v16, 0x0

    .line 727
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 726
    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_7

    .line 750
    .end local v26    # "initialVelocity":I
    .end local v32    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v17

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .line 754
    :cond_19
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .line 755
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    .line 762
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    .line 770
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1923
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1925
    if-eqz p1, :cond_1

    .line 1926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 1928
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    .line 1929
    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeHorizontalScrollView$1;-><init>(Lcom/letv/leui/widget/LeHorizontalScrollView;)V

    .line 1933
    const-wide/16 v2, 0xc8

    .line 1929
    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1102
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1103
    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1105
    .local v3, "width":I
    if-eqz v1, :cond_2

    .line 1106
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1107
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1108
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1109
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1110
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1111
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1120
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1122
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1102
    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "right":Z
    goto :goto_0

    .line 1115
    .restart local v3    # "width":I
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1116
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 1117
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 903
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    return v5

    .line 906
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 930
    return v4

    .line 908
    :sswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 909
    return v4

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 912
    .local v1, "viewportWidth":I
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    add-int/2addr v2, v1

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 913
    .local v0, "targetScrollX":I
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-eq v0, v2, :cond_2

    .line 914
    invoke-virtual {p0, v0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollTo(II)V

    .line 915
    return v5

    .line 917
    :cond_2
    return v4

    .line 919
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 920
    return v4

    .line 922
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 923
    .restart local v1    # "viewportWidth":I
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 924
    .restart local v0    # "targetScrollX":I
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-eq v0, v2, :cond_4

    .line 925
    invoke-virtual {p0, v0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollTo(II)V

    .line 926
    return v5

    .line 928
    :cond_4
    return v4

    .line 906
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1565
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1566
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1571
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1564
    return-void

    .line 1569
    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1614
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1615
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1614
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1617
    invoke-direct {p0, p2, p3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    .line 451
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 447
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1623
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1621
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1766
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1767
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1768
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1769
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1770
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1771
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1764
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 308
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    .line 309
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestLayout()V

    .line 306
    :cond_0
    return-void
.end method

.method public setLeOverScrollEnable(Z)V
    .locals 0
    .param p1, "leOverScrollEnable"    # Z

    .prologue
    .line 1952
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    .line 1951
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1779
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v1, :cond_0

    .line 1781
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1782
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1783
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1784
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1785
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1792
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1777
    return-void

    .line 1788
    :cond_1
    iput-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1789
    iput-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 324
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldRestoreOverScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1918
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    if-eqz v1, :cond_0

    .line 1919
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    .line 1918
    :cond_0
    :goto_0
    return v0

    .line 1919
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1294
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1296
    return-void

    .line 1298
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1299
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1301
    .local v5, "width":I
    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1302
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1303
    .local v2, "maxX":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .line 1304
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1306
    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1307
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .line 1314
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastScroll:J

    .line 1293
    return-void

    .line 1309
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1310
    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1312
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1324
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollBy(II)V

    .line 1323
    return-void
.end method
