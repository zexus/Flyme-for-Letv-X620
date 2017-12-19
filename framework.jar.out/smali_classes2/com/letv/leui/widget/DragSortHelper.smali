.class public Lcom/letv/leui/widget/DragSortHelper;
.super Ljava/lang/Object;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/DragSortHelper$HeightCache;,
        Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;,
        Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;,
        Lcom/letv/leui/widget/DragSortHelper$DropAnimator;,
        Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;,
        Lcom/letv/leui/widget/DragSortHelper$DragListener;,
        Lcom/letv/leui/widget/DragSortHelper$DropListener;,
        Lcom/letv/leui/widget/DragSortHelper$DragSortListener;,
        Lcom/letv/leui/widget/DragSortHelper$LimitedListener;,
        Lcom/letv/leui/widget/DragSortHelper$DragScroller;,
        Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;,
        Lcom/letv/leui/widget/DragSortHelper$1;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final STOPPED:I = 0x3

.field public static final TAG_DRAG_SORT:Ljava/lang/String; = "LeListView_DRAG_SORT"

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

.field private mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimDuration:I

.field private mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

.field private mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLeListView:Lcom/letv/leui/widget/LeListView;

.field private mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    return v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic -get13(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    return-object v0
.end method

.method static synthetic -get14(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    return v0
.end method

.method static synthetic -get15(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic -get16(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    return v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/DragSortHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/DragSortHelper;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/DragSortHelper;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/DragSortHelper;Z)V
    .locals 0
    .param p1, "forceInvalidate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/DragSortHelper;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->dropFloatView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "leListView"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3eaaaaab

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mTouchLoc:Landroid/graphics/Point;

    .line 56
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    .line 61
    iput v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    .line 62
    iput v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    .line 64
    const/16 v0, 0x96

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    .line 89
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    .line 151
    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    .line 158
    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    .line 174
    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mWidthMeasureSpec:I

    .line 180
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    .line 192
    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    .line 199
    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    .line 223
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    .line 231
    new-instance v0, Lcom/letv/leui/widget/DragSortHelper$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortHelper$1;-><init>(Lcom/letv/leui/widget/DragSortHelper;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    .line 283
    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    .line 289
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    .line 294
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    .line 319
    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    .line 326
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    .line 340
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    .line 347
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    .line 352
    iput-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    .line 366
    new-instance v0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;-><init>(Lcom/letv/leui/widget/DragSortHelper;I)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    .line 1121
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V

    .line 374
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leListView"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/DragSortHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V

    .line 370
    return-void
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1228
    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1229
    .local v2, "first":I
    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v4

    .line 1231
    .local v4, "last":I
    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1232
    .local v0, "begin":I
    sub-int v6, v4, v2

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1234
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1235
    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6, v3}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1236
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1237
    add-int v6, v2, v3

    invoke-virtual {p0, v6, v5, v9}, Lcom/letv/leui/widget/DragSortHelper;->adjustItem(ILandroid/view/View;Z)V

    .line 1234
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1227
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1245
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1246
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->adjustItem(ILandroid/view/View;Z)V

    .line 1242
    :cond_0
    return-void
.end method

.method private adjustOnReorder()V
    .locals 6

    .prologue
    .line 1043
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1045
    .local v0, "firstPos":I
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1048
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1049
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1050
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1051
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1054
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/letv/leui/widget/LeListView;->setSelectionFromTop(II)V

    .line 1042
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 1418
    const/4 v0, 0x0

    .line 1420
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v1

    .line 1422
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1423
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(II)I

    move-result v5

    .line 1425
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 1426
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 1427
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 1428
    sub-int/2addr v4, v1

    .line 1429
    sub-int/2addr v3, v1

    .line 1432
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    .line 1433
    .local v2, "maxBlank":I
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 1434
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 1437
    :cond_1
    if-gt p1, p3, :cond_3

    .line 1438
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 1439
    sub-int v7, v2, v3

    add-int/lit8 v0, v7, 0x0

    .line 1457
    :cond_2
    :goto_0
    return v0

    .line 1441
    :cond_3
    if-ne p1, p4, :cond_6

    .line 1442
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 1443
    sub-int v7, v4, v2

    add-int/lit8 v0, v7, 0x0

    goto :goto_0

    .line 1444
    :cond_4
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 1445
    sub-int v7, v6, v5

    add-int/lit8 v0, v7, 0x0

    goto :goto_0

    .line 1447
    :cond_5
    add-int/lit8 v0, v4, 0x0

    goto :goto_0

    .line 1450
    :cond_6
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 1451
    rsub-int/lit8 v0, v2, 0x0

    goto :goto_0

    .line 1452
    :cond_7
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 1453
    rsub-int/lit8 v0, v3, 0x0

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v6, 0x0

    .line 2147
    const/4 v4, 0x0

    .line 2149
    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/letv/leui/widget/DragSortHelper;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .line 2150
    .local v2, "i":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 2151
    return v6

    .line 2153
    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2154
    .local v3, "position":I
    move v1, v3

    .line 2155
    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .line 2156
    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    .line 2157
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2156
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2159
    :cond_1
    if-ne v3, v0, :cond_2

    .line 2160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2162
    :cond_2
    aput v1, p3, v4

    .line 2163
    aput v0, p4, v4

    .line 2164
    add-int/lit8 v4, v4, 0x1

    .line 2165
    move v1, v3

    .line 2166
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 2170
    :cond_3
    if-ne v0, p2, :cond_4

    .line 2175
    move v0, p1

    .line 2177
    :cond_4
    aput v1, p3, v4

    .line 2178
    aput v0, p4, v4

    .line 2179
    add-int/lit8 v4, v4, 0x1

    .line 2181
    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 2182
    aget v5, p3, v6

    if-ne v5, p1, :cond_5

    add-int/lit8 v5, v4, -0x1

    aget v5, p4, v5

    if-ne v5, p1, :cond_5

    .line 2187
    add-int/lit8 v5, v4, -0x1

    aget v5, p3, v5

    aput v5, p3, v6

    .line 2188
    add-int/lit8 v4, v4, -0x1

    .line 2191
    :cond_5
    return v4
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 1382
    iget-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 1383
    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .line 1384
    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1388
    .local v3, "slideHeight":I
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v4, :cond_4

    .line 1389
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    .line 1390
    if-eqz v1, :cond_1

    .line 1391
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .line 1414
    .local v0, "height":I
    :goto_1
    return v0

    .line 1382
    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isSliding":Z
    goto :goto_0

    .line 1393
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 1395
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    .line 1397
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 1399
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 1401
    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    .line 1402
    if-eqz v1, :cond_5

    .line 1403
    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 1405
    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 1407
    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    .line 1409
    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 1411
    .end local v0    # "height":I
    :cond_7
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1375
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1012
    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    .line 1013
    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 1014
    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .line 1015
    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    .line 1011
    return-void
.end method

.method private continueDrag(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1169
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1170
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1172
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(Z)V

    .line 1174
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1175
    .local v2, "minY":I
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1178
    .local v1, "maxY":I
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->getScrollDir()I

    move-result v0

    .line 1180
    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1184
    if-eq v0, v6, :cond_0

    .line 1186
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    .line 1190
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->startScrolling(I)V

    .line 1166
    :cond_1
    :goto_0
    return-void

    .line 1191
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1195
    if-eq v0, v6, :cond_3

    .line 1197
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    .line 1201
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v7}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1203
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    .line 1204
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->isScrolling()Z

    move-result v3

    .line 1203
    if-eqz v3, :cond_1

    .line 1208
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1809
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1810
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 1814
    :cond_0
    iput-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    .line 1815
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->invalidate()V

    .line 1808
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1091
    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    .line 1092
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    .line 1093
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1094
    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    .line 1096
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    .line 1097
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    .line 1098
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->clear()V

    .line 1090
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 7
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 1696
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    .line 1698
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->updateFloatView()V

    .line 1700
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 1701
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .line 1703
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->updatePositions()Z

    move-result v3

    .line 1705
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 1706
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustAllItems()V

    .line 1707
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 1710
    .local v2, "scroll":I
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, p1, v5}, Lcom/letv/leui/widget/LeListView;->setSelectionFromTop(II)V

    .line 1711
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->layoutChildren()V

    .line 1714
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 1715
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->invalidate()V

    .line 1718
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    .line 1695
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 1685
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1686
    .local v1, "movePos":I
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1688
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1689
    return-void

    .line 1692
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(ILandroid/view/View;Z)V

    .line 1684
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 11
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 445
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 446
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v3

    .line 449
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 450
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 451
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 452
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v5

    .line 453
    .local v5, "l":I
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 457
    .local v6, "r":I
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 459
    .local v1, "childHeight":I
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 460
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 461
    .local v7, "t":I
    add-int v0, v7, v3

    .line 469
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 470
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 471
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 443
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 463
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 464
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1021
    const/4 v1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    .line 1023
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v0

    .line 1025
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/DragSortHelper$DropListener;->drop(II)V

    .line 1028
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->destroyFloatView()V

    .line 1030
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustOnReorder()V

    .line 1031
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->clearPositions()V

    .line 1032
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustAllItems()V

    .line 1035
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1036
    const/4 v1, 0x3

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    .line 1018
    :goto_0
    return-void

    .line 1038
    :cond_1
    iput v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    .line 2207
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2208
    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .line 2209
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2211
    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_3

    .line 2212
    :cond_1
    const/4 v2, -0x1

    return v2

    .line 2210
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2213
    :cond_3
    return v0
.end method

.method private getChildHeight(I)I
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1294
    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v5, :cond_0

    .line 1295
    return v8

    .line 1298
    :cond_0
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1300
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1303
    invoke-direct {p0, p1, v4, v8}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(ILandroid/view/View;Z)I

    move-result v5

    return v5

    .line 1307
    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    invoke-virtual {v5, p1}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->get(I)I

    move-result v1

    .line 1308
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1310
    return v1

    .line 1313
    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1314
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1317
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1318
    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1319
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    .line 1322
    :cond_3
    if-ltz v2, :cond_5

    .line 1323
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1324
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-interface {v0, p1, v7, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1325
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1335
    :goto_0
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1338
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->add(II)V

    .line 1340
    return v1

    .line 1327
    :cond_4
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-interface {v0, p1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 1331
    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-interface {v0, p1, v7, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1345
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v3, :cond_0

    .line 1346
    return v5

    .line 1350
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_2

    .line 1351
    :cond_1
    move-object v0, p2

    .line 1356
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1358
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 1359
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_3

    .line 1360
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v3

    .line 1353
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_0

    .line 1364
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1366
    .local v1, "childHeight":I
    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    .line 1367
    :cond_4
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->measureItem(Landroid/view/View;)V

    .line 1368
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1371
    :cond_5
    return v1
.end method

.method private getItemHeight(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 523
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 525
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1

    .line 531
    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(II)I

    move-result v1

    return v1
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 604
    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v7

    .line 605
    .local v7, "numHeaders":I
    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v6

    .line 611
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    .line 612
    :cond_0
    return p2

    .line 615
    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v2

    .line 619
    .local v2, "divHeight":I
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 620
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v1

    .line 621
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getItemHeight(I)I

    move-result v4

    .line 625
    .local v4, "itemHeight":I
    move v8, p2

    .line 626
    .local v8, "otop":I
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 629
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 630
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 631
    add-int v9, p2, v4

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 652
    :cond_2
    :goto_0
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 653
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 658
    .local v3, "edge":I
    :goto_1
    return v3

    .line 633
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 634
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    goto :goto_0

    .line 636
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 637
    sub-int v8, p2, v5

    goto :goto_0

    .line 643
    :cond_5
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 644
    add-int v8, p2, v5

    .line 643
    goto :goto_0

    .line 645
    :cond_6
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 646
    sub-int v0, v4, v1

    .line 647
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_0

    .line 655
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_1
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "leListView"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    .line 379
    const/4 v6, 0x1

    .line 380
    .local v6, "sortEnabled":Z
    const/4 v3, 0x0

    .line 381
    .local v3, "dragInitMode":I
    const/4 v2, 0x0

    .line 382
    .local v2, "dragHandleId":I
    const/high16 v0, -0x1000000

    .line 384
    .local v0, "bgColor":I
    if-eqz p2, :cond_0

    .line 385
    iget-boolean v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    const/16 v9, 0x16

    invoke-virtual {p2, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    .line 387
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    const/16 v9, 0x13

    invoke-virtual {p2, v9, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    .line 388
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    iput v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    .line 389
    const/16 v8, 0x14

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    .line 390
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    .line 391
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    const/16 v9, 0x10

    invoke-virtual {p2, v9, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 392
    .local v4, "frac":F
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/DragSortHelper;->setDragScrollStart(F)V

    .line 393
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    const/16 v9, 0x11

    invoke-virtual {p2, v9, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    .line 394
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    const/16 v9, 0x15

    invoke-virtual {p2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    .line 396
    const/16 v8, 0x1a

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 397
    .local v7, "useDefaultController":Z
    if-eqz v7, :cond_0

    .line 398
    const/16 v8, 0x17

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 399
    .local v6, "sortEnabled":Z
    const/16 v8, 0x18

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 400
    const/16 v8, 0x19

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 401
    const/16 v8, 0x12

    const/high16 v9, -0x1000000

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 405
    .end local v4    # "frac":F
    .end local v6    # "sortEnabled":Z
    .end local v7    # "useDefaultController":Z
    :cond_0
    iput-object p3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    .line 407
    new-instance v1, Lcom/letv/leui/widget/DragSortController;

    invoke-direct {v1, p3, v2, v3}, Lcom/letv/leui/widget/DragSortController;-><init>(Lcom/letv/leui/widget/LeListView;II)V

    .line 408
    .local v1, "controller":Lcom/letv/leui/widget/DragSortController;
    invoke-virtual {v1, v6}, Lcom/letv/leui/widget/DragSortController;->setSortEnabled(Z)V

    .line 409
    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/DragSortController;->setBackgroundColor(I)V

    .line 410
    iput-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    .line 411
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8, v1}, Lcom/letv/leui/widget/LeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    new-instance v8, Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-direct {v8, p0}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;-><init>(Lcom/letv/leui/widget/DragSortHelper;)V

    iput-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    .line 414
    const/high16 v5, 0x3f000000    # 0.5f

    .line 415
    .local v5, "smoothness":F
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    if-lez v8, :cond_1

    .line 416
    new-instance v8, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    invoke-direct {v8, p0, v5, v9}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;-><init>(Lcom/letv/leui/widget/DragSortHelper;FI)V

    iput-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    .line 378
    :cond_1
    return-void

    .line 390
    .end local v1    # "controller":Lcom/letv/leui/widget/DragSortController;
    .end local v5    # "smoothness":F
    .local v6, "sortEnabled":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    .line 2217
    const/4 v1, 0x0

    .line 2218
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2219
    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    .line 2220
    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .line 2221
    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 2222
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 2224
    :cond_0
    move v0, v2

    goto :goto_0

    .line 2226
    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private isLimited()Z
    .locals 3

    .prologue
    .line 1821
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    if-eqz v2, :cond_0

    .line 1822
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v2}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->topLimitedPosition()I

    move-result v1

    .line 1823
    .local v1, "topLimit":I
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v2}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->bottomLimitedPosition()I

    move-result v0

    .line 1825
    .local v0, "bottomLimit":I
    add-int/lit8 v2, v1, 0x2

    if-le v0, v2, :cond_0

    .line 1826
    const/4 v2, 0x1

    return v2

    .line 1829
    .end local v0    # "bottomLimit":I
    .end local v1    # "topLimit":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->measureItem(Landroid/view/View;)V

    .line 1480
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    .line 1481
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    .line 1477
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1461
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1462
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1463
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1464
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1466
    :cond_0
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mWidthMeasureSpec:I

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getListPaddingLeft()I

    move-result v4

    .line 1467
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getListPaddingRight()I

    move-result v5

    .line 1466
    add-int/2addr v4, v5

    .line 1467
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1466
    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1469
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 1470
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1474
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1460
    return-void

    .line 1472
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    .line 2195
    sub-int v0, p3, p2

    .line 2197
    .local v0, "windowSize":I
    add-int/2addr p0, p1

    .line 2198
    if-ge p0, p2, :cond_1

    .line 2199
    add-int/2addr p0, v0

    .line 2203
    :cond_0
    :goto_0
    return p0

    .line 2200
    :cond_1
    if-lt p0, p3, :cond_0

    .line 2201
    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1103
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1104
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastX:I

    .line 1105
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    .line 1107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    .line 1108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    .line 1109
    if-nez v0, :cond_1

    .line 1110
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastX:I

    .line 1111
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    .line 1113
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mOffsetX:I

    .line 1114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mOffsetY:I

    .line 1101
    return-void
.end method

.method private updateFloatView()V
    .locals 18

    .prologue
    .line 1727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    if-eqz v14, :cond_0

    .line 1728
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mTouchLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Point;->set(II)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mTouchLoc:Landroid/graphics/Point;

    move-object/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1732
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v4, v14, Landroid/graphics/Point;->x:I

    .line 1733
    .local v4, "floatX":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v5, v14, Landroid/graphics/Point;->y:I

    .line 1736
    .local v5, "floatY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v10

    .line 1737
    .local v10, "padLeft":I
    if-le v4, v10, :cond_9

    .line 1738
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iput v10, v14, Landroid/graphics/Point;->x:I

    .line 1744
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v9

    .line 1745
    .local v9, "numHeaders":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v8

    .line 1746
    .local v8, "numFooters":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1747
    .local v3, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v7

    .line 1750
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v11

    .line 1751
    .local v11, "topLimit":I
    if-ge v3, v9, :cond_2

    .line 1752
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    sub-int v15, v9, v3

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 1756
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/DragSortHelper;->isLimited()Z

    move-result v6

    .line 1757
    .local v6, "isLimited":Z
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v14}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->topLimitedPosition()I

    move-result v12

    .line 1758
    .local v12, "topLimitedPosition":I
    :goto_1
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le v14, v12, :cond_3

    .line 1759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    sub-int v15, v12, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1760
    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_3

    .line 1761
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 1766
    .end local v13    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_4

    .line 1767
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt v3, v14, :cond_4

    .line 1768
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1773
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v15}, Lcom/letv/leui/widget/LeListView;->getPaddingBottom()I

    move-result v15

    sub-int v1, v14, v15

    .line 1774
    .local v1, "bottomLimit":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v14

    sub-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    if-lt v7, v14, :cond_5

    .line 1775
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v15}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v15

    sub-int/2addr v15, v8

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1779
    :cond_5
    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v14}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->bottomLimitedPosition()I

    move-result v2

    .line 1780
    .local v2, "bottomLimitedPosition":I
    :goto_2
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt v14, v2, :cond_6

    .line 1781
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    add-int/lit8 v15, v2, -0x1

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1782
    .restart local v13    # "view":Landroid/view/View;
    if-eqz v13, :cond_6

    .line 1783
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1788
    .end local v13    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    and-int/lit8 v14, v14, 0x4

    if-nez v14, :cond_7

    .line 1789
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-lt v7, v14, :cond_7

    .line 1790
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1798
    :cond_7
    if-ge v5, v11, :cond_c

    .line 1799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iput v11, v14, Landroid/graphics/Point;->y:I

    .line 1805
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    .line 1725
    return-void

    .line 1739
    .end local v1    # "bottomLimit":I
    .end local v2    # "bottomLimitedPosition":I
    .end local v3    # "firstPos":I
    .end local v6    # "isLimited":Z
    .end local v7    # "lastPos":I
    .end local v8    # "numFooters":I
    .end local v9    # "numHeaders":I
    .end local v11    # "topLimit":I
    .end local v12    # "topLimitedPosition":I
    :cond_9
    if-ge v4, v10, :cond_1

    .line 1740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iput v10, v14, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 1757
    .restart local v3    # "firstPos":I
    .restart local v6    # "isLimited":Z
    .restart local v7    # "lastPos":I
    .restart local v8    # "numFooters":I
    .restart local v9    # "numHeaders":I
    .restart local v11    # "topLimit":I
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "topLimitedPosition":I
    goto/16 :goto_1

    .line 1779
    .restart local v1    # "bottomLimit":I
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "bottomLimitedPosition":I
    goto :goto_2

    .line 1800
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    add-int/2addr v14, v5

    if-le v14, v1, :cond_8

    .line 1801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int v15, v1, v15

    iput v15, v14, Landroid/graphics/Point;->y:I

    goto :goto_3
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v9

    .line 664
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v23, v0

    .line 665
    .local v23, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v9

    invoke-virtual/range {v27 .. v28}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 667
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v9

    invoke-virtual/range {v27 .. v28}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 671
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 673
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 675
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/DragSortHelper;->getShuffleEdge(II)I

    move-result v5

    .line 676
    .local v5, "edge":I
    move v13, v5

    .line 678
    .local v13, "lastEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v4

    .line 682
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 683
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 684
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 687
    :goto_0
    if-ltz v11, :cond_1

    .line 688
    add-int/lit8 v11, v11, -0x1

    .line 689
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/letv/leui/widget/DragSortHelper;->getItemHeight(I)I

    move-result v10

    .line 691
    if-nez v11, :cond_7

    .line 692
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 731
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v15

    .line 732
    .local v15, "numHeaders":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v14

    .line 734
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 736
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v16, v0

    .line 737
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v17, v0

    .line 738
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    move/from16 v18, v0

    .line 740
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 741
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 744
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 745
    move v6, v5

    .line 746
    .local v6, "edgeBottom":I
    move v8, v13

    .line 753
    .local v8, "edgeTop":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 754
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 755
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 756
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 759
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 760
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 761
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    sub-int v27, v20, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    .line 781
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 782
    move v11, v15

    .line 783
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 784
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .line 791
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 793
    :cond_3
    :goto_5
    const/16 v26, 0x1

    .line 796
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/letv/leui/widget/DragSortHelper$DragListener;->drag(II)V

    .line 801
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    .line 802
    const/16 v26, 0x1

    .line 805
    :cond_6
    return v26

    .line 696
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 697
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/letv/leui/widget/DragSortHelper;->getShuffleEdge(II)I

    move-result v5

    .line 700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 704
    move v13, v5

    goto/16 :goto_0

    .line 709
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v3

    .line 710
    .local v3, "count":I
    :goto_6
    if-ge v11, v3, :cond_1

    .line 711
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 712
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 713
    goto/16 :goto_1

    .line 716
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 717
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->getItemHeight(I)I

    move-result v10

    .line 718
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/letv/leui/widget/DragSortHelper;->getShuffleEdge(II)I

    move-result v5

    .line 722
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 726
    move v13, v5

    .line 727
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 748
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 749
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 764
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 765
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 766
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    goto/16 :goto_3

    .line 768
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 769
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .line 770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    sub-int v27, v6, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v27, v27, v22

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    goto/16 :goto_3

    .line 776
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 777
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    goto/16 :goto_3

    .line 785
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 787
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 788
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    goto/16 :goto_4

    .line 792
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    goto/16 :goto_5
.end method


# virtual methods
.method adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1257
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1259
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    .line 1260
    const/4 v1, -0x2

    .line 1265
    .local v1, "height":I
    :goto_0
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_0

    .line 1266
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1267
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1271
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1272
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    .line 1273
    check-cast v4, Lcom/letv/leui/widget/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/DragSortItemView;->setGravity(I)V

    .line 1281
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 1282
    .local v3, "oldAlpha":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1284
    .local v0, "alpha":F
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1285
    const/4 v0, 0x0

    .line 1288
    :cond_3
    cmpl-float v4, v0, v3

    if-eqz v4, :cond_4

    .line 1289
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1254
    :cond_4
    return-void

    .line 1262
    .end local v0    # "alpha":F
    .end local v1    # "height":I
    .end local v3    # "oldAlpha":F
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 1274
    :cond_6
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1275
    check-cast v4, Lcom/letv/leui/widget/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method public cancelDrag()V
    .locals 2

    .prologue
    .line 997
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    .line 999
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->destroyFloatView()V

    .line 1000
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->clearPositions()V

    .line 1001
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustAllItems()V

    .line 1003
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1004
    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    goto :goto_0
.end method

.method dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 479
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-eqz v0, :cond_1

    .line 481
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 482
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 484
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 485
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 492
    .local v9, "w":I
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 494
    .local v8, "h":I
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 496
    .local v11, "x":I
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->getWidth()I

    move-result v10

    .line 497
    .local v10, "width":I
    if-gez v11, :cond_2

    .line 498
    neg-int v11, v11

    .line 500
    :cond_2
    if-ge v11, v10, :cond_4

    .line 501
    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .line 502
    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    .line 507
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .line 509
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 511
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 512
    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 515
    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 516
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .line 504
    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    return v0
.end method

.method public isBlockLayoutRequests()Z
    .locals 1

    .prologue
    .line 1681
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    return v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    return v0
.end method

.method isDragSortEnabled()Z
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->getLeListViewMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListViewIntercepted()Z
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    return v0
.end method

.method layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1497
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1498
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    if-eqz v0, :cond_2

    .line 1504
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1505
    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    .line 1496
    :cond_1
    return-void

    .line 1502
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->measureFloatView()V

    goto :goto_0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2337
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2338
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .line 2339
    .local v3, "rangeStart":I
    move v2, p2

    .line 2340
    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    .line 2341
    move v3, p2

    .line 2342
    move v2, p1

    .line 2344
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2346
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2347
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2348
    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/letv/leui/widget/DragSortHelper;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2349
    .local v4, "runCount":I
    if-ne v4, v10, :cond_1

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_1

    .line 2352
    return-void

    .line 2355
    :cond_1
    if-ge p1, p2, :cond_2

    .line 2356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_3

    .line 2357
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v6, v1

    invoke-static {v8, v11, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    .line 2358
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v5, v1

    invoke-static {v8, v11, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    .line 2356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2362
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_3

    .line 2363
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v6, v1

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    .line 2364
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v5, v1

    invoke-virtual {v7, v8, v10}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    .line 2362
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2310
    :cond_3
    return-void
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 984
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    if-eqz v1, :cond_0

    .line 985
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 986
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    .line 987
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/letv/leui/widget/DragSortHelper$DropListener;->drop(II)V

    .line 983
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 1511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1513
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1532
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1515
    :pswitch_0
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-ne v1, v2, :cond_0

    .line 1516
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper;->cancelDrag()V

    .line 1518
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    .line 1522
    :pswitch_1
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-ne v1, v2, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper;->stopDrag()Z

    .line 1525
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    .line 1528
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/DragSortHelper;->continueDrag(II)V

    goto :goto_0

    .line 1513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2372
    .local v0, "action":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 2373
    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    .line 2375
    if-nez v0, :cond_1

    .line 2376
    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-eqz v2, :cond_0

    .line 2378
    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    .line 2379
    return v3

    .line 2381
    :cond_0
    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    .line 2384
    :cond_1
    const/4 v1, 0x0

    .line 2387
    .local v1, "intercept":Z
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 2389
    const/4 v1, 0x1

    .line 2410
    :goto_0
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 2411
    :cond_2
    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    .line 2413
    :cond_3
    return v1

    .line 2391
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/LeListView;->onInterceptTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2392
    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    .line 2393
    const/4 v1, 0x1

    .line 2396
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 2402
    :pswitch_0
    if-eqz v1, :cond_6

    .line 2403
    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    goto :goto_0

    .line 2399
    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    .line 2405
    :cond_6
    const/4 v2, 0x2

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    goto :goto_0

    .line 2396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->measureFloatView()V

    .line 1491
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    .line 1493
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mWidthMeasureSpec:I

    .line 1485
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 2417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2419
    .local v0, "action":I
    iget-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    if-eqz v3, :cond_0

    .line 2420
    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    .line 2421
    return v4

    .line 2424
    :cond_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 2425
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 2428
    :cond_1
    const/4 v2, 0x0

    .line 2429
    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    .line 2430
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    .line 2432
    if-nez v1, :cond_2

    .line 2433
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 2451
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 2452
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2453
    const/4 v2, 0x1

    .line 2477
    :cond_3
    :goto_0
    return v2

    .line 2459
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-nez v3, :cond_5

    .line 2460
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2461
    const/4 v2, 0x1

    .line 2465
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 2471
    :pswitch_0
    if-eqz v2, :cond_3

    .line 2472
    const/4 v3, 0x1

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    goto :goto_0

    .line 2468
    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    .line 2465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 2264
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 2266
    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 2267
    return-void

    .line 2268
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .line 2269
    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .line 2270
    .local v5, "runEnd":[I
    move v3, p1

    .line 2271
    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 2272
    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/letv/leui/widget/DragSortHelper;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .line 2273
    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_3

    .line 2274
    aget v7, v6, v1

    if-eq v7, p1, :cond_2

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_1

    aget v7, v5, v1

    if-gt v7, p1, :cond_2

    .line 2278
    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v6, v1

    invoke-static {v8, v10, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    .line 2280
    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v5, v1

    invoke-static {v8, v10, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    invoke-virtual {v7, v8, v11}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    .line 2273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2263
    :cond_3
    return-void
.end method

.method setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1899
    new-instance v0, Lcom/letv/leui/widget/DragSortHelper$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortHelper$2;-><init>(Lcom/letv/leui/widget/DragSortHelper;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1917
    instance-of v0, p1, Lcom/letv/leui/widget/DragSortHelper$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1918
    check-cast v0, Lcom/letv/leui/widget/DragSortHelper$DropListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V

    .line 1920
    :cond_0
    instance-of v0, p1, Lcom/letv/leui/widget/DragSortHelper$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 1921
    check-cast v0, Lcom/letv/leui/widget/DragSortHelper$DragListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V

    .line 1924
    :cond_1
    instance-of v0, p1, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    if-eqz v0, :cond_2

    .line 1925
    check-cast p1, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setLimitedListener(Lcom/letv/leui/widget/DragSortHelper$LimitedListener;)V

    .line 1898
    :cond_2
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1552
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    .line 1551
    return-void
.end method

.method setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DragListener;

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

    .line 1890
    return-void
.end method

.method public setDragScrollProfile(Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    .prologue
    .line 1992
    if-eqz p1, :cond_0

    .line 1993
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    .line 1991
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1132
    invoke-virtual {p0, p1, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragScrollStarts(FF)V

    .line 1131
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1146
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1147
    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    .line 1152
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1153
    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    .line 1158
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper;->updateScrollStarts()V

    .line 1145
    :cond_0
    return-void

    .line 1149
    :cond_1
    iput p2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1155
    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/letv/leui/widget/DragSortHelper$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DragSortListener;

    .prologue
    .line 1965
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V

    .line 1966
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V

    .line 1964
    return-void
.end method

.method setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DropListener;

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    .line 1942
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 426
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    .line 425
    return-void
.end method

.method setFloatViewManager(Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    .line 1886
    return-void
.end method

.method public setLimitedListener(Lcom/letv/leui/widget/DragSortHelper$LimitedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    .line 1979
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    .line 440
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    .line 439
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v1, 0x0

    .line 1583
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    if-nez v0, :cond_1

    .line 1584
    :cond_0
    return v1

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 1589
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_2

    .line 1590
    return v1

    :cond_2
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1592
    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortHelper;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    return v0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 18
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    .line 1620
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1621
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1620
    :cond_1
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    if-eqz v2, :cond_0

    .line 1624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1628
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v2

    add-int v16, p1, v2

    .line 1629
    .local v16, "pos":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .line 1630
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .line 1631
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    .line 1632
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    .line 1635
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    .line 1636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    .line 1637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    or-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    .line 1639
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    .line 1640
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/DragSortHelper;->measureFloatView()V

    .line 1642
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaX:I

    .line 1643
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    .line 1644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragStartY:I

    .line 1647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1653
    .local v17, "srcItem":Landroid/view/View;
    if-eqz v17, :cond_3

    .line 1654
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1662
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    packed-switch v2, :pswitch_data_0

    .line 1675
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->requestLayout()V

    .line 1677
    const/4 v2, 0x1

    return v2

    .line 1664
    :pswitch_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1669
    :pswitch_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->onInterceptTouchEventSuper(Landroid/view/MotionEvent;)Z

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1662
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1070
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    .line 1073
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->start()V

    .line 1083
    :goto_0
    return v1

    .line 1076
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->dropFloatView()V

    goto :goto_0

    .line 1086
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateScrollStarts()V
    .locals 6

    .prologue
    .line 1213
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v2

    .line 1214
    .local v2, "padTop":I
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1215
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1217
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    .line 1218
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    .line 1220
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartY:I

    .line 1221
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartY:I

    .line 1223
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollHeight:F

    .line 1224
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollHeight:F

    .line 1212
    return-void
.end method
