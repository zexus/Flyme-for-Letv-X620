.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mCurrentOverScrollDistance:I

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field protected mLeOverScrollEnable:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field protected mNeedRestoreOverScroll:Z

.field private mNestedYOffset:I

.field private mOverFling:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 177
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 109
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 116
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 133
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 146
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 151
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 152
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 161
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 162
    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2084
    iput v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 2085
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 186
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 189
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    .line 188
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 305
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 307
    .end local v1    # "childHeight":I
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

    .line 1960
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_1

    .line 1976
    :cond_0
    return v0

    .line 1978
    :cond_1
    add-int v0, p1, p0

    if-le v0, p2, :cond_2

    .line 1984
    sub-int v0, p2, p1

    return v0

    .line 1986
    :cond_2
    return p0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1301
    if-eqz p1, :cond_0

    .line 1302
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1303
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1801
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 1803
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 1806
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-nez v0, :cond_0

    .line 1808
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1809
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1810
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1814
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1815
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1816
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1800
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1047
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1048
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1057
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1059
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1060
    .local v0, "count":I
    const/4 v4, 0x0

    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1061
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1062
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1063
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1065
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1071
    if-ge p2, v9, :cond_2

    .line 1072
    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1074
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_3

    .line 1076
    move-object v1, v5

    .line 1077
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v8

    .line 1060
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1072
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1071
    .end local v8    # "viewIsFullyContained":Z
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_1

    .line 1080
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-ge v9, v10, :cond_4

    const/4 v7, 0x1

    .line 1084
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1085
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1091
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1081
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    const/4 v7, 0x1

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_3

    .line 1094
    :cond_6
    if-eqz v8, :cond_7

    .line 1096
    move-object v1, v5

    .line 1097
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_2

    .line 1098
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_7
    if-eqz v7, :cond_0

    .line 1103
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_2

    .line 1110
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1790
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_4

    .line 1791
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1792
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1793
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 1794
    if-eqz v0, :cond_2

    .line 1795
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 1789
    :cond_2
    return-void

    .line 1791
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_0

    .line 1790
    .end local v0    # "canFling":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1018
    const/4 v2, 0x0

    .line 1019
    .local v2, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1020
    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1022
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1024
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    .line 1025
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1024
    sub-int/2addr v4, v5

    .line 1025
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1024
    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 1023
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1027
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return v2
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 448
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 449
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    .line 452
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 450
    :cond_0
    return v2

    .line 455
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_1
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 458
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 241
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 242
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 243
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 245
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 246
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 250
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isThemeLeui()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    .line 251
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v3, v3}, Landroid/widget/OverScroller;->setEnableLeOverScroll(ZZ)V

    .line 253
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 254
    iget v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 240
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 258
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 468
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 466
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1280
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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
    .line 1753
    if-ne p0, p1, :cond_0

    .line 1754
    const/4 v1, 0x1

    return v1

    .line 1757
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1758
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1288
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1289
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1291
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1292
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1291
    :cond_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 836
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 837
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 841
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 842
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 843
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 844
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 845
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 833
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 475
    iput-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 472
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1193
    const/4 v3, 0x1

    .line 1195
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1196
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1197
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1198
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1200
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1201
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1202
    move-object v5, p0

    .line 1205
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1206
    const/4 v3, 0x0

    .line 1212
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1214
    :cond_1
    return v3

    .line 1198
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "up":Z
    goto :goto_0

    .line 1208
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1209
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1208
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    .restart local v2    # "delta":I
    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1496
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1499
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1501
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1503
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1495
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1517
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1518
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1519
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1520
    if-eqz p2, :cond_2

    .line 1521
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1526
    :cond_0
    :goto_1
    return v1

    .line 1518
    .end local v1    # "scroll":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "scroll":Z
    goto :goto_0

    .line 1523
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 263
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 272
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 290
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 1226
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1227
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1229
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1231
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1233
    .local v3, "maxJump":I
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1234
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1235
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1236
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1237
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1238
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1260
    .end local v6    # "scrollDelta":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1261
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    .line 1260
    if-eqz v7, :cond_1

    .line 1267
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1268
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1269
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1270
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1272
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    return v7

    .line 1241
    :cond_2
    move v6, v3

    .line 1243
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 1244
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 1254
    :cond_3
    :goto_1
    if-nez v6, :cond_5

    .line 1255
    return v9

    .line 1245
    :cond_4
    if-ne p1, v10, :cond_3

    .line 1246
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1247
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1248
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v7, v8

    .line 1249
    .local v5, "screenBottom":I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 1250
    sub-int v6, v1, v5

    goto :goto_1

    .line 1257
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_5
    if-ne p1, v10, :cond_6

    .end local v6    # "scrollDelta":I
    :goto_2
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .restart local v6    # "scrollDelta":I
    :cond_6
    neg-int v6, v6

    goto :goto_2
.end method

.method public canScrollVertically(I)Z
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1385
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1386
    return v1

    .line 1389
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1426
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1443
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1444
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1445
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .line 1446
    .local v13, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 1448
    .local v14, "y":I
    if-ne v3, v13, :cond_0

    if-eq v4, v14, :cond_2

    .line 1449
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1450
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v12

    .line 1451
    .local v12, "overscrollMode":I
    if-eqz v12, :cond_4

    .line 1452
    const/4 v0, 0x1

    if-ne v12, v0, :cond_5

    if-lez v6, :cond_5

    const/4 v11, 0x1

    .line 1454
    .local v11, "canOverscroll":Z
    :goto_0
    sub-int v1, v13, v3

    sub-int v2, v14, v4

    .line 1455
    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    .line 1454
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v10

    .line 1456
    .local v10, "atEdge":Z
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1459
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_1

    if-eqz v10, :cond_1

    if-eqz v11, :cond_6

    .line 1463
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-nez v0, :cond_2

    if-eqz v11, :cond_2

    .line 1465
    if-gez v14, :cond_7

    if-ltz v4, :cond_7

    .line 1466
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1473
    .end local v6    # "range":I
    .end local v10    # "atEdge":Z
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1475
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1425
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_3
    :goto_3
    return-void

    .line 1451
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v12    # "overscrollMode":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_4
    const/4 v11, 0x1

    .restart local v11    # "canOverscroll":Z
    goto :goto_0

    .line 1452
    .end local v11    # "canOverscroll":Z
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "canOverscroll":Z
    goto :goto_0

    .line 1460
    .restart local v10    # "atEdge":Z
    :cond_6
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_1

    .line 1467
    :cond_7
    if-le v14, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 1468
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    .line 1478
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "atEdge":Z
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_8
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_9

    .line 1479
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1480
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1483
    :cond_9
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_3

    .line 1484
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mOverFling:Z

    goto :goto_3
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1538
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    return v9

    .line 1540
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1541
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1542
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1544
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1547
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 1548
    add-int/2addr v5, v2

    .line 1552
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1553
    sub-int/2addr v4, v2

    .line 1556
    :cond_2
    const/4 v6, 0x0

    .line 1558
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_5

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1565
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x0

    .line 1572
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1573
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1574
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1592
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_3
    :goto_1
    return v6

    .line 1568
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x0

    goto :goto_0

    .line 1576
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_3

    .line 1581
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1583
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    rsub-int/lit8 v6, v7, 0x0

    .line 1590
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1586
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    rsub-int/lit8 v6, v7, 0x0

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1380
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1360
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1361
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1362
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1363
    return v0

    .line 1366
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1367
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1368
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1369
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 1370
    sub-int/2addr v3, v4

    .line 1375
    :cond_1
    :goto_0
    return v3

    .line 1371
    :cond_2
    if-le v4, v2, :cond_1

    .line 1372
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1900
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1902
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_3

    .line 1904
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1905
    .local v3, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    .line 1906
    .local v0, "clipToPadding":Z
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1907
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1912
    .local v2, "restoreCount":I
    if-eqz v0, :cond_4

    .line 1913
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 1914
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 1915
    .local v1, "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 1916
    .local v4, "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 1923
    .local v5, "translateY":F
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1924
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1925
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1926
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1928
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1930
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_1
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1931
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1936
    .restart local v2    # "restoreCount":I
    if-eqz v0, :cond_5

    .line 1937
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v6, v7, v8

    .line 1938
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v1, v7, v8

    .line 1939
    .restart local v1    # "height":I
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v7

    .line 1940
    .restart local v4    # "translateX":F
    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    int-to-float v5, v7

    .line 1947
    .restart local v5    # "translateY":F
    :goto_1
    neg-int v7, v6

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 1948
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v5

    .line 1947
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1949
    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1950
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, v6, v1}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1951
    iget-object v7, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1952
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1954
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1899
    .end local v0    # "clipToPadding":Z
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollY":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_3
    return-void

    .line 1918
    .restart local v0    # "clipToPadding":Z
    .restart local v2    # "restoreCount":I
    .restart local v3    # "scrollY":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 1919
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1920
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 1921
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_0

    .line 1942
    .end local v1    # "height":I
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    .end local v6    # "width":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    .line 1943
    .restart local v6    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    .line 1944
    .restart local v1    # "height":I
    const/4 v4, 0x0

    .line 1945
    .restart local v4    # "translateX":F
    const/4 v5, 0x0

    .restart local v5    # "translateY":F
    goto :goto_1
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 2019
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2020
    const-string/jumbo v0, "fillViewport"

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2018
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    const/16 v5, 0x82

    .line 405
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 407
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_3

    .line 408
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    .line 409
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 410
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 411
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 413
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 414
    if-eq v2, p0, :cond_1

    .line 415
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    .line 413
    :cond_1
    return v3

    .line 417
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_2
    return v3

    .line 420
    :cond_3
    const/4 v1, 0x0

    .line 421
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 422
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 443
    .end local v1    # "handled":Z
    :cond_4
    :goto_0
    return v1

    .line 424
    .restart local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 425
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 427
    .local v1, "handled":Z
    :cond_5
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 431
    .local v1, "handled":Z
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 432
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 434
    .local v1, "handled":Z
    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_0

    .line 438
    .local v1, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_1

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1769
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1771
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_0

    .line 1772
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 1775
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1776
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1778
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1779
    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 1778
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1781
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_1

    .line 1782
    const-string/jumbo v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1785
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1768
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_2
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 1162
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1163
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1165
    .local v2, "height":I
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1166
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1168
    if-eqz v1, :cond_0

    .line 1169
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1170
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1171
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1172
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1173
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1177
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1162
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 981
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 217
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 218
    const/4 v3, 0x0

    return v3

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 222
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 223
    .local v0, "bottomEdge":I
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 224
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 225
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    return v3

    .line 228
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v1, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    return v1

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 208
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 209
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1

    .line 212
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLeOverScrollEnable()Z
    .locals 1

    .prologue
    .line 2110
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 1396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1401
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    .line 1402
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    .line 1401
    add-int/2addr v3, v4

    .line 1402
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1401
    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1405
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1404
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1407
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1394
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
    .line 1413
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1416
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 1417
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1415
    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1419
    .local v1, "childWidthMeasureSpec":I
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 1418
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 1421
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1412
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 2139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 2138
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1660
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1662
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1664
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1666
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1667
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1668
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1672
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_2

    .line 1673
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1659
    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 876
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 855
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 856
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 857
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 859
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 860
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 861
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 862
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 863
    const/4 v1, 0x0

    .line 867
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_0

    .line 868
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 869
    const/4 v5, 0x1

    return v5

    .line 864
    :cond_2
    if-le v1, v3, :cond_1

    .line 865
    move v1, v3

    goto :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1008
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1009
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1010
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1011
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1012
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1013
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1014
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1007
    return-void

    .line 1009
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "scrollable":Z
    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 987
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 988
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 990
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 991
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 992
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 994
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 993
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 995
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 997
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 998
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 999
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 986
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 502
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 503
    return v0

    .line 509
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 606
    :cond_2
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v0

    .line 510
    :cond_3
    return v3

    .line 524
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 525
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 530
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 531
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_4

    .line 532
    const-string/jumbo v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 533
    const-string/jumbo v2, " in onInterceptTouchEvent"

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_4
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 538
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 539
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 540
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 541
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 542
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 543
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 544
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 545
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_5

    .line 546
    const-string/jumbo v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 548
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 549
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 550
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 557
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 558
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_6

    .line 559
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 560
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 568
    :cond_6
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 569
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 571
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 572
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 578
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 579
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_7

    .line 580
    const-string/jumbo v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 582
    :cond_7
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_0

    :cond_8
    move v3, v0

    .line 578
    goto :goto_1

    .line 589
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 590
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 591
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 592
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 593
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 595
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 598
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1681
    const/4 v2, 0x0

    .line 1682
    .local v2, "restoreOffset":I
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_0

    .line 1683
    invoke-virtual {p0}, Landroid/widget/ScrollView;->shouldRestoreOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 1688
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1689
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1691
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1694
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1696
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1697
    iget-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v0, :cond_2

    .line 1698
    iget-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v0, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1699
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1702
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1704
    .local v10, "childHeight":I
    :goto_0
    sub-int v0, p5, p3

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v0, v1

    sub-int v0, v10, v0

    .line 1703
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1707
    .local v13, "scrollRange":I
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v0, v13, :cond_6

    .line 1708
    iput v13, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1715
    .end local v10    # "childHeight":I
    .end local v13    # "scrollRange":I
    :cond_3
    :goto_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1718
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 1720
    iget v11, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1721
    .local v11, "oldX":I
    iget v12, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1722
    .local v12, "oldY":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1723
    .local v6, "range":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1724
    iget v8, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 1723
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1724
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    .line 1723
    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1725
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v11, v12}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1679
    .end local v6    # "range":I
    .end local v11    # "oldX":I
    .end local v12    # "oldY":I
    :cond_4
    return-void

    .line 1702
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "childHeight":I
    goto :goto_0

    .line 1709
    .restart local v13    # "scrollRange":I
    :cond_6
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v0, :cond_3

    .line 1710
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 354
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 356
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v9, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 361
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    .line 362
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 366
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 367
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 368
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-ge v9, v3, :cond_2

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 372
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v7, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 373
    .local v7, "targetSdkVersion":I
    const/16 v9, 0x17

    if-lt v7, v9, :cond_3

    .line 374
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v8, v9, v10

    .line 375
    .local v8, "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v5, v9, v10

    .line 382
    .local v5, "heightPadding":I
    :goto_0
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 381
    invoke-static {p1, v8, v9}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 384
    .local v2, "childWidthMeasureSpec":I
    sub-int v9, v3, v5

    const/high16 v10, 0x40000000    # 2.0f

    .line 383
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 385
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 353
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "height":I
    .end local v5    # "heightPadding":I
    .end local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "targetSdkVersion":I
    .end local v8    # "widthPadding":I
    :cond_2
    return-void

    .line 377
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "height":I
    .restart local v6    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "targetSdkVersion":I
    :cond_3
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int v8, v9, v10

    .line 378
    .restart local v8    # "widthPadding":I
    iget v9, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    iget v10, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int v5, v9, v10

    .restart local v5    # "heightPadding":I
    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1891
    if-nez p4, :cond_0

    .line 1892
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1893
    const/4 v0, 0x1

    return v0

    .line 1895
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 1879
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1880
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 1881
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .line 1882
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 1883
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 1878
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 1864
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1865
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 1863
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 17
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 886
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_4

    .line 887
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mScrollX:I

    .line 888
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mScrollY:I

    .line 890
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mOverFling:Z

    if-eqz v2, :cond_2

    .line 920
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_1

    .line 922
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 923
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v2, :cond_6

    .line 924
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 944
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 881
    return-void

    .line 891
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 892
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    .line 894
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v2, :cond_3

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mOverflingDistance:I

    add-int/2addr v4, v9

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 899
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_0

    .line 897
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mOverflingDistance:I

    add-int/2addr v4, v9

    invoke-virtual {v2, v3, v9, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_2

    .line 903
    .end local v9    # "bottom":I
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ScrollView;->mScrollX:I

    .line 904
    .local v13, "oldX":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    .line 906
    .local v14, "oldY":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mScrollX:I

    .line 907
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mScrollY:I

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 909
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v13, v14}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 910
    if-eqz p4, :cond_0

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto/16 :goto_0

    .line 916
    .end local v13    # "oldX":I
    .end local v14    # "oldY":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto/16 :goto_0

    .line 925
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v2, :cond_1

    .line 926
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 927
    .local v10, "child":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v12

    .line 929
    .local v12, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v16

    .line 930
    .local v16, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v15

    .line 931
    .local v15, "paddingBottom":I
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 933
    .local v11, "childHeight":I
    sub-int v2, v12, v16

    sub-int/2addr v2, v15

    if-le v11, v2, :cond_7

    .line 934
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    neg-int v2, v2

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v12, v15

    if-ge v2, v3, :cond_7

    .line 935
    sub-int v2, v12, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_1

    .line 936
    :cond_7
    sub-int v2, v12, v16

    sub-int/2addr v2, v15

    if-gt v11, v2, :cond_1

    .line 937
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1620
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1621
    const/16 p1, 0x82

    .line 1626
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    .line 1627
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1631
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    .line 1632
    return v3

    .line 1622
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1623
    const/16 p1, 0x21

    goto :goto_0

    .line 1628
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "nextFocus":Landroid/view/View;
    goto :goto_1

    .line 1635
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1636
    return v3

    .line 1639
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1991
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 1994
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1995
    return-void

    :cond_0
    move-object v0, p1

    .line 1997
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 1998
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1999
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2000
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 1990
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2005
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2008
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    .line 2010
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2011
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2012
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    .line 2013
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1732
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1734
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1735
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1736
    :cond_0
    return-void

    .line 1741
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1742
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1743
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1744
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1745
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1731
    .end local v1    # "scrollDelta":I
    :cond_2
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 1859
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1873
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 1872
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 39
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 611
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 613
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v37

    .line 615
    .local v37, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v23

    .line 617
    .local v23, "actionMasked":I
    if-nez v23, :cond_0

    .line 618
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 620
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 622
    packed-switch v23, :pswitch_data_0

    .line 826
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 829
    :cond_2
    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->recycle()V

    .line 830
    const/4 v2, 0x1

    return v2

    .line 624
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 625
    const/4 v2, 0x0

    return v2

    .line 627
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 630
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_4

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    .line 633
    .local v33, "parent":Landroid/view/ViewParent;
    if-eqz v33, :cond_4

    .line 634
    const/4 v2, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 643
    .end local v33    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 647
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 652
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 653
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 654
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 627
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 658
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    .line 659
    .local v24, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_7

    .line 660
    const-string/jumbo v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in onTouchEvent MOVE"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 664
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v38, v0

    .line 665
    .local v38, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v27, v2, v38

    .line 666
    .local v27, "deltaY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v27, v27, v2

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 669
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 671
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    .line 673
    .restart local v33    # "parent":Landroid/view/ViewParent;
    if-eqz v33, :cond_9

    .line 674
    const/4 v2, 0x1

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 676
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 677
    if-lez v27, :cond_e

    .line 678
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int v27, v27, v2

    .line 683
    .end local v33    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v38, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 688
    move/from16 v28, v27

    .line 690
    .local v28, "incrementalDeltaY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_c

    .line 691
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-eqz v2, :cond_c

    if-eqz v28, :cond_c

    .line 692
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    mul-int v2, v2, v27

    if-lez v2, :cond_10

    .line 693
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v26, v3, v2

    .line 694
    .local v26, "coeff":F
    const/4 v2, 0x0

    cmpg-float v2, v26, v2

    if-gez v2, :cond_b

    const/16 v26, 0x0

    .line 695
    :cond_b
    move/from16 v0, v28

    int-to-float v2, v0

    mul-float v2, v2, v26

    float-to-int v0, v2

    move/from16 v28, v0

    .line 696
    if-lez v27, :cond_f

    .line 697
    if-nez v28, :cond_c

    const/16 v28, 0x1

    .line 707
    .end local v26    # "coeff":F
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v31, v0

    .line 708
    .local v31, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 709
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v32

    .line 710
    .local v32, "overscrollMode":I
    if-eqz v32, :cond_11

    .line 711
    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_12

    if-lez v8, :cond_12

    const/16 v25, 0x1

    .line 720
    .local v25, "canOverscroll":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_13

    move/from16 v4, v28

    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 727
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v2, v31

    .line 728
    .local v4, "scrolledDeltaY":I
    sub-int v6, v27, v4

    .line 729
    .local v6, "unconsumedY":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 730
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 731
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 732
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 680
    .end local v4    # "scrolledDeltaY":I
    .end local v6    # "unconsumedY":I
    .end local v8    # "range":I
    .end local v25    # "canOverscroll":Z
    .end local v28    # "incrementalDeltaY":I
    .end local v31    # "oldY":I
    .end local v32    # "overscrollMode":I
    .restart local v33    # "parent":Landroid/view/ViewParent;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int v27, v27, v2

    goto/16 :goto_2

    .line 699
    .end local v33    # "parent":Landroid/view/ViewParent;
    .restart local v26    # "coeff":F
    .restart local v28    # "incrementalDeltaY":I
    :cond_f
    if-nez v28, :cond_c

    const/16 v28, -0x1

    goto/16 :goto_3

    .line 702
    .end local v26    # "coeff":F
    :cond_10
    div-int/lit8 v28, v28, 0x2

    goto/16 :goto_3

    .line 710
    .restart local v8    # "range":I
    .restart local v31    # "oldY":I
    .restart local v32    # "overscrollMode":I
    :cond_11
    const/16 v25, 0x1

    .restart local v25    # "canOverscroll":Z
    goto :goto_4

    .line 711
    .end local v25    # "canOverscroll":Z
    :cond_12
    const/16 v25, 0x0

    .restart local v25    # "canOverscroll":Z
    goto :goto_4

    :cond_13
    move/from16 v4, v27

    .line 720
    goto :goto_5

    .line 724
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_6

    .line 734
    .restart local v4    # "scrolledDeltaY":I
    .restart local v6    # "unconsumedY":I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_1

    if-eqz v25, :cond_1

    .line 736
    add-int v35, v31, v27

    .line 737
    .local v35, "pulledToY":I
    if-gez v35, :cond_18

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 739
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 738
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_16

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 750
    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 752
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 743
    :cond_18
    move/from16 v0, v35

    if-le v0, v8, :cond_16

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 745
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    .line 744
    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_16

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 758
    .end local v4    # "scrolledDeltaY":I
    .end local v6    # "unconsumedY":I
    .end local v8    # "range":I
    .end local v24    # "activePointerIndex":I
    .end local v25    # "canOverscroll":Z
    .end local v27    # "deltaY":I
    .end local v28    # "incrementalDeltaY":I
    .end local v31    # "oldY":I
    .end local v32    # "overscrollMode":I
    .end local v35    # "pulledToY":I
    .end local v38    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    .line 760
    .local v36, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 761
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    .line 764
    .local v30, "initialVelocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_1c

    .line 765
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_1b

    .line 766
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-nez v2, :cond_1a

    .line 767
    move/from16 v0, v30

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 792
    :cond_19
    :goto_8
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 793
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 769
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v15

    .line 770
    .local v15, "bottom":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_8

    .line 775
    .end local v15    # "bottom":I
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_19

    .line 776
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v15

    .line 777
    .restart local v15    # "bottom":I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->invalidate()V

    goto :goto_8

    .line 784
    .end local v15    # "bottom":I
    :cond_1c
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_1d

    .line 785
    move/from16 v0, v30

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    goto :goto_8

    .line 786
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v18, v0

    .line 787
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v22

    .line 786
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 788
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_8

    .line 797
    .end local v30    # "initialVelocity":I
    .end local v36    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v22

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v16 .. v22}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 801
    :cond_1e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 802
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 806
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v29

    .line 807
    .local v29, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 808
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 812
    .end local v29    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 815
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v34

    .line 816
    .local v34, "pointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v34

    if-ne v0, v2, :cond_1f

    .line 817
    const-string/jumbo v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 818
    const-string/jumbo v5, " in onTouchEvent POINTER_UP"

    .line 817
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 822
    :cond_1f
    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 622
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

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2125
    if-eqz p1, :cond_1

    .line 2126
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 2128
    iput-boolean v1, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 2129
    new-instance v0, Landroid/widget/ScrollView$1;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    .line 2133
    const-wide/16 v2, 0xc8

    .line 2129
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1126
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    const/4 v1, 0x1

    .line 1127
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1129
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1130
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1131
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1132
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1133
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1134
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1135
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1144
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1146
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1126
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0

    .line 1139
    .restart local v2    # "height":I
    :cond_2
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1140
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_0

    .line 1141
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 950
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 951
    return v5

    .line 953
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 954
    return v4

    .line 956
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 976
    return v4

    .line 959
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 960
    .local v1, "viewportHeight":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v2, v1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 961
    .local v0, "targetScrollY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v2, :cond_2

    .line 962
    invoke-virtual {p0, v4, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 963
    return v5

    .line 965
    :cond_2
    return v4

    .line 968
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v2, v3

    .line 969
    .restart local v1    # "viewportHeight":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v2, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 970
    .restart local v0    # "targetScrollY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v2, :cond_3

    .line 971
    invoke-virtual {p0, v4, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 972
    return v5

    .line 974
    :cond_3
    return v4

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1597
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1598
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1603
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1596
    return-void

    .line 1601
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1646
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1647
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1646
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1649
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 484
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 480
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1654
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1655
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1653
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1828
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1829
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1830
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 1831
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 1832
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1833
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1826
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 331
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 332
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 333
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 330
    :cond_0
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-nez v0, :cond_0

    .line 2071
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 2073
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 2069
    return-void
.end method

.method public setLeOverScrollEnable(Z)V
    .locals 3
    .param p1, "leOverScrollEnable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2092
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    .line 2094
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_0

    .line 2095
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v2, v2}, Landroid/widget/OverScroller;->setEnableLeOverScroll(ZZ)V

    .line 2096
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 2097
    iget v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 2091
    :goto_0
    return-void

    .line 2099
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2100
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 2101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1841
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mLeOverScrollEnable:Z

    if-nez v1, :cond_0

    .line 1843
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1844
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1845
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1846
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1847
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1854
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1839
    return-void

    .line 1850
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1851
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 348
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldRestoreOverScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2118
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    if-eqz v1, :cond_0

    .line 2119
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2118
    :cond_0
    :goto_0
    return v0

    .line 2119
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .locals 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1317
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1319
    return-void

    .line 1321
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1322
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1323
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .line 1324
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1325
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1326
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1327
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1329
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1330
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1341
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    .line 1316
    return-void

    .line 1332
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1333
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1334
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1335
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1336
    iput-object v11, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1339
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1351
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1350
    return-void
.end method
