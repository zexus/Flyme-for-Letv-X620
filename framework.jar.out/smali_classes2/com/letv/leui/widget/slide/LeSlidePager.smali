.class public Lcom/letv/leui/widget/slide/LeSlidePager;
.super Landroid/view/ViewGroup;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;,
        Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;,
        Lcom/letv/leui/widget/slide/LeSlidePager$SimpleOnPageChangeListener;,
        Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;,
        Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;,
        Lcom/letv/leui/widget/slide/LeSlidePager$Decor;,
        Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;,
        Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;,
        Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;,
        Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;,
        Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;,
        Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;,
        Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;,
        Lcom/letv/leui/widget/slide/LeSlidePager$1;,
        Lcom/letv/leui/widget/slide/LeSlidePager$2;,
        Lcom/letv/leui/widget/slide/LeSlidePager$3;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LeSlidePager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

.field private mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDisableStateSaving:Z

.field private mDistanceThreshold:F

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeSize:I

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mFragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingInnerAdapter:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxSettleDuration:I

.field private mMaximumVelocity:I

.field private mMgr:Landroid/app/FragmentManager;

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mShadowsHeight:F

.field private mSpecRect:Landroid/graphics/Rect;

.field private mSpecTab:I

.field private final mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mTouchSlopAdjust:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/slide/LeSlidePager;)Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/slide/LeSlidePager;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/slide/LeSlidePager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/slide/LeSlidePager;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mShadowsHeight:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/slide/LeSlidePager;I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 64
    const v1, 0x10100b3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 63
    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->LAYOUT_ATTRS:[I

    .line 81
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->COMPARATOR:Ljava/util/Comparator;

    .line 88
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$2;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$2;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->sPositionComparator:Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 322
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 103
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 104
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 116
    const v0, -0x800001

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 117
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 126
    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 166
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDistanceThreshold:F

    .line 171
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    .line 185
    iput-boolean v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 186
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mNeedCalculatePageOffsets:Z

    .line 219
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$3;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 226
    iput v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    .line 2888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    .line 2889
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    .line 2891
    const/16 v0, 0x258

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    .line 2967
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    .line 323
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->initViewPager()V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 327
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 103
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 104
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 116
    const v0, -0x800001

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 117
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 126
    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 166
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDistanceThreshold:F

    .line 171
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    .line 185
    iput-boolean v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 186
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mNeedCalculatePageOffsets:Z

    .line 219
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$3;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 226
    iput v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    .line 2888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    .line 2889
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    .line 2891
    const/16 v0, 0x258

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    .line 2967
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    .line 328
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->initViewPager()V

    .line 326
    return-void
.end method

.method private calculatePageOffsets(Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;ILcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .prologue
    .line 1110
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v1

    .line 1111
    .local v1, "N":I
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v11

    .line 1112
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1114
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1115
    move-object/from16 v0, p3

    iget v8, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 1117
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1118
    const/4 v5, 0x0

    .line 1119
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1120
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1121
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1122
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1123
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1124
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1125
    add-int/lit8 v5, v5, 0x1

    .line 1126
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_2

    .line 1112
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "marginOffset":F
    goto :goto_0

    .line 1128
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1131
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1132
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1134
    :cond_2
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1135
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1122
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1137
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1138
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1139
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1140
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1141
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1142
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1143
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1144
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1145
    add-int/lit8 v5, v5, -0x1

    .line 1146
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_5

    .line 1148
    :cond_4
    :goto_6
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1151
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1152
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1154
    :cond_5
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1155
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1142
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1161
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1162
    .local v4, "itemCount":I
    iget v7, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1163
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1164
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 1165
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    .line 1166
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v13, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    .line 1165
    :goto_8
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 1168
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1169
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1170
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1171
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1164
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1166
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1173
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1174
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1175
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 1168
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1177
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v13, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1178
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1180
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1181
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1182
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1183
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1185
    :cond_c
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1186
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 1188
    :cond_d
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1189
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1180
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1192
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mNeedCalculatePageOffsets:Z

    .line 1109
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1723
    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v2, 0x1

    .line 1724
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1726
    invoke-direct {p0, v9}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 1727
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1728
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v3

    .line 1729
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v4

    .line 1730
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1731
    .local v5, "x":I
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1732
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1733
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1736
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 1737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 1738
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1739
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-boolean v7, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_2

    .line 1740
    const/4 v2, 0x1

    .line 1741
    iput-boolean v9, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    .line 1737
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1723
    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "needPopulate":Z
    goto :goto_0

    .line 1744
    .restart local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 1745
    if-eqz p1, :cond_6

    .line 1746
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1722
    :cond_5
    :goto_2
    return-void

    .line 1748
    :cond_6
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 7
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 2152
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2153
    if-lez p3, :cond_1

    move v2, p1

    .line 2159
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2160
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2161
    .local v0, "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2164
    .local v1, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v4, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v5, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2167
    .end local v0    # "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v1    # "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    return v2

    .line 2153
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2155
    .end local v2    # "targetPage":I
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDistanceThreshold:F

    .line 2156
    .local v3, "truncator":F
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v0

    .line 1759
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1760
    if-eqz p1, :cond_0

    .line 1761
    const/4 v2, 0x2

    .line 1762
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1759
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "layerType":I
    goto :goto_1

    .line 1757
    .end local v2    # "layerType":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2361
    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 2362
    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 2364
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2365
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2366
    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2360
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2538
    if-nez p1, :cond_0

    .line 2539
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2541
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_1

    .line 2542
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2543
    return-object p1

    .line 2545
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2546
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2547
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2548
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2550
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2551
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    if-eq v1, p0, :cond_2

    move-object v0, v1

    .line 2552
    check-cast v0, Landroid/view/ViewGroup;

    .line 2553
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2554
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2555
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2556
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2558
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 2560
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 15

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v12

    .line 2110
    .local v12, "width":I
    if-lez v12, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2111
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_4

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2112
    .local v8, "marginOffset":F
    :goto_1
    const/4 v5, -0x1

    .line 2113
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2114
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2115
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2117
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2118
    .local v3, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v1, 0x0

    .end local v3    # "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .local v1, "i":I
    :goto_2
    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_7

    .line 2119
    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2121
    .local v2, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-nez v0, :cond_0

    iget v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_0

    .line 2123
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2124
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 2125
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2126
    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v14, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 2127
    add-int/lit8 v1, v1, -0x1

    .line 2129
    :cond_0
    iget v9, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 2131
    .local v9, "offset":F
    move v7, v9

    .line 2132
    .local v7, "leftBound":F
    iget v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2133
    .local v10, "rightBound":F
    if-nez v0, :cond_1

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_5

    .line 2134
    :cond_1
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_2

    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    .line 2135
    :cond_2
    return-object v2

    .line 2110
    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v7    # "leftBound":F
    .end local v8    # "marginOffset":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    .end local v11    # "scrollOffset":F
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "scrollOffset":F
    goto :goto_0

    .line 2111
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "marginOffset":F
    goto :goto_1

    .line 2138
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    :cond_5
    return-object v3

    .line 2140
    :cond_6
    const/4 v0, 0x0

    .line 2141
    iget v5, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2142
    move v4, v9

    .line 2143
    iget v6, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 2144
    move-object v3, v2

    .line 2118
    .local v3, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2147
    .end local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v3    # "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_7
    return-object v3
.end method

.method private isGutterDrag(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1754
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mGutterSize:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mGutterSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    cmpg-float v2, p2, v4

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2347
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2348
    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2351
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2352
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2353
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 2354
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2355
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2345
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2351
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v9, 0x0

    .line 1619
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1620
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    .line 1621
    const/4 v7, 0x0

    invoke-virtual {p0, v9, v7, v9}, Lcom/letv/leui/widget/slide/LeSlidePager;->onPageScrolled(IFI)V

    .line 1622
    iget-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    if-nez v7, :cond_0

    .line 1623
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1624
    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    .line 1623
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1626
    :cond_0
    return v9

    .line 1628
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v1

    .line 1629
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v5

    .line 1630
    .local v5, "width":I
    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    add-int v6, v5, v7

    .line 1631
    .local v6, "widthWithMargin":I
    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v2, v7, v8

    .line 1632
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 1633
    .local v0, "currentPage":I
    int-to-float v7, p1

    int-to-float v8, v5

    div-float/2addr v7, v8

    iget v8, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    .line 1634
    iget v8, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    .line 1633
    div-float v4, v7, v8

    .line 1635
    .local v4, "pageOffset":F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v3, v7

    .line 1636
    .local v3, "offsetPixels":I
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    .line 1637
    invoke-virtual {p0, v0, v4, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->onPageScrolled(IFI)V

    .line 1638
    iget-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    if-nez v7, :cond_2

    .line 1639
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 1640
    const-string/jumbo v8, "onPageScrolled did not call superclass implementation"

    .line 1639
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1642
    :cond_2
    const/4 v7, 0x1

    return v7
.end method

.method private performDrag(F)Z
    .locals 14
    .param p1, "x"    # F

    .prologue
    .line 2060
    const/4 v5, 0x0

    .line 2062
    .local v5, "needsInvalidate":Z
    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    sub-float v0, v12, p1

    .line 2063
    .local v0, "deltaX":F
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2065
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v12

    int-to-float v6, v12

    .line 2066
    .local v6, "oldScrollX":F
    add-float v10, v6, v0

    .line 2067
    .local v10, "scrollX":F
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v11

    .line 2069
    .local v11, "width":I
    int-to-float v12, v11

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    mul-float v4, v12, v13

    .line 2070
    .local v4, "leftBound":F
    int-to-float v12, v11

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    mul-float v9, v12, v13

    .line 2071
    .local v9, "rightBound":F
    const/4 v3, 0x1

    .line 2072
    .local v3, "leftAbsolute":Z
    const/4 v8, 0x1

    .line 2074
    .local v8, "rightAbsolute":Z
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2075
    .local v1, "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2076
    .local v2, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v12, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-eqz v12, :cond_0

    .line 2077
    const/4 v3, 0x0

    .line 2078
    iget v12, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    int-to-float v13, v11

    mul-float v4, v12, v13

    .line 2080
    :cond_0
    iget v12, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v13}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v12, v13, :cond_1

    .line 2081
    const/4 v8, 0x0

    .line 2082
    iget v12, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    int-to-float v13, v11

    mul-float v9, v12, v13

    .line 2085
    :cond_1
    cmpg-float v12, v10, v4

    if-gez v12, :cond_4

    .line 2086
    if-eqz v3, :cond_2

    .line 2087
    sub-float v7, v4, v10

    .line 2089
    :cond_2
    move v10, v4

    .line 2097
    :cond_3
    :goto_0
    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    float-to-int v13, v10

    int-to-float v13, v13

    sub-float v13, v10, v13

    add-float/2addr v12, v13

    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2098
    float-to-int v12, v10

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 2099
    float-to-int v12, v10

    invoke-direct {p0, v12}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    .line 2101
    return v5

    .line 2090
    :cond_4
    cmpl-float v12, v10, v9

    if-lez v12, :cond_3

    .line 2091
    if-eqz v8, :cond_5

    .line 2092
    sub-float v7, v10, v9

    .line 2094
    :cond_5
    move v10, v9

    goto :goto_0
.end method

.method private pointInRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 2876
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 2877
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 2878
    .local v1, "y":F
    const-string/jumbo v3, "LeSlidePager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pointInRect x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    if-eqz p2, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecTab:I

    if-ne v3, v4, :cond_1

    .line 2880
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 2882
    :cond_1
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1456
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v6

    .line 1474
    .local v6, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v6, :cond_3

    iget v0, v6, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1476
    .local v9, "scrollOffset":F
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 1475
    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1477
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_1

    .line 1478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 1479
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1455
    .end local v6    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_1
    :goto_1
    return-void

    .line 1457
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1458
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1460
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v13

    .line 1461
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1462
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1464
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1465
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1467
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1468
    .local v5, "newDuration":I
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v11

    .line 1469
    .local v11, "targetInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    .line 1470
    iget v2, v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v3, v2

    .line 1469
    const/4 v2, 0x0

    .line 1470
    const/4 v4, 0x0

    .line 1469
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 1474
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    .restart local v6    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "scrollOffset":F
    goto :goto_0
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 435
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 436
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 438
    .local v2, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v3, v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 439
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeViewAt(I)V

    .line 440
    add-int/lit8 v1, v1, -0x1

    .line 435
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2054
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2055
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2052
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 538
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v0

    .line 539
    .local v0, "curInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v1, 0x0

    .line 540
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v2

    .line 542
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 543
    iget v5, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 542
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 545
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_3

    .line 546
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 549
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 550
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 553
    :cond_2
    invoke-virtual {p0, v1, v7, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->smoothScrollTo(III)V

    .line 537
    :goto_0
    return-void

    .line 556
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 557
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 559
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 560
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 562
    :cond_5
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 563
    invoke-virtual {p0, v1, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 564
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 369
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    if-ne v1, p1, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    .line 374
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    if-eqz v1, :cond_2

    .line 376
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->enableLayers(Z)V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 368
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2371
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2372
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollingCacheEnabled:Z

    .line 2370
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1094
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1095
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1096
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1100
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    .line 1101
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1102
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1103
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1098
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1105
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/letv/leui/widget/slide/LeSlidePager;->sPositionComparator:Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1093
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2584
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2586
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDescendantFocusability()I

    move-result v1

    .line 2588
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2589
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2590
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2591
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2592
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v4

    .line 2593
    .local v4, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2594
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2589
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2605
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    .line 2607
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 2610
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2611
    return-void

    .line 2613
    :cond_3
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 2614
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->isInTouchMode()Z

    move-result v5

    .line 2613
    if-eqz v5, :cond_4

    .line 2614
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2617
    :cond_4
    if-eqz p1, :cond_5

    .line 2618
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    :cond_5
    return-void

    .line 2615
    :cond_6
    return-void
.end method

.method addNewItem(II)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 817
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;-><init>()V

    .line 818
    .local v0, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iput p1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 819
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    .line 820
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 821
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :goto_0
    return-object v0

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2631
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2632
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2633
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2634
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v2

    .line 2635
    .local v2, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2636
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2631
    .end local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2627
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1280
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1281
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1283
    check-cast v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1284
    .local v0, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/letv/leui/widget/slide/LeSlidePager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    .line 1285
    iget-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1286
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1287
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->needsMeasure:Z

    .line 1290
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1279
    :goto_0
    return-void

    .line 1292
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2472
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2473
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2474
    const/4 v1, 0x0

    .line 2498
    .end local v1    # "currentFocused":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2500
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2502
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2503
    if-ne p1, v11, :cond_8

    .line 2506
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2507
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2508
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2509
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageLeft()Z

    move-result v2

    .line 2531
    .end local v0    # "currLeft":I
    .end local v2    # "handled":Z
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2532
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->playSoundEffect(I)V

    .line 2534
    :cond_2
    return v2

    .line 2475
    .end local v4    # "nextFocused":Landroid/view/View;
    .restart local v1    # "currentFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2476
    const/4 v3, 0x0

    .line 2477
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2479
    if-ne v6, p0, :cond_5

    .line 2480
    const/4 v3, 0x1

    .line 2484
    :cond_4
    if-nez v3, :cond_0

    .line 2486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2487
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2490
    const-string/jumbo v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2478
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2492
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v8, "LeSlidePager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2493
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2492
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    const/4 v1, 0x0

    .local v1, "currentFocused":Landroid/view/View;
    goto/16 :goto_0

    .line 2511
    .end local v1    # "currentFocused":Landroid/view/View;
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 2513
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2516
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2517
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2518
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2519
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageRight()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2521
    .local v2, "handled":Z
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2524
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    .local v2, "handled":Z
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2526
    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageLeft()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 2527
    .local v2, "handled":Z
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2529
    :cond_d
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageRight()Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2236
    iget-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2237
    return v4

    .line 2239
    :cond_0
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    .line 2240
    invoke-direct {p0, v9}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 2241
    iput v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    iput v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    .line 2242
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2243
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2247
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2248
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2249
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2250
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2251
    iput-wide v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragBeginTime:J

    .line 2252
    return v9

    .line 2245
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2413
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2414
    check-cast v7, Landroid/view/ViewGroup;

    .line 2415
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2416
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2417
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2419
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2422
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2423
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2424
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2425
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    .line 2426
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v5, v0, v2

    .line 2425
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 2423
    if-eqz v0, :cond_0

    .line 2427
    const/4 v0, 0x1

    return v0

    .line 2419
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2432
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2386
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-nez v4, :cond_0

    .line 2387
    return v3

    .line 2390
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v1

    .line 2391
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v0

    .line 2392
    .local v0, "scrollX":I
    if-gez p1, :cond_2

    .line 2393
    int-to-float v4, v1

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 2394
    :cond_2
    if-lez p1, :cond_4

    .line 2395
    int-to-float v4, v1

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 2397
    :cond_4
    return v3
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2710
    instance-of v0, p1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1595
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1596
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v0

    .line 1597
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v1

    .line 1598
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1599
    .local v2, "x":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1601
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1602
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1603
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1604
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1605
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1610
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    .line 1611
    return-void

    .line 1615
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 1594
    return-void
.end method

.method dataSetChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 832
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v10}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v0

    .line 833
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    .line 834
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    if-ge v10, v11, :cond_2

    .line 835
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v10, v0, :cond_1

    const/4 v7, 0x1

    .line 836
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 838
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 839
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 840
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 841
    .local v4, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v11, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 843
    .local v9, "newPos":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 839
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 835
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "needPopulate":Z
    goto :goto_0

    .line 834
    .end local v7    # "needPopulate":Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "needPopulate":Z
    goto :goto_0

    .line 847
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_3
    const/4 v10, -0x2

    if-ne v9, v10, :cond_5

    .line 848
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 849
    add-int/lit8 v3, v3, -0x1

    .line 851
    if-nez v5, :cond_4

    .line 852
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v10, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 853
    const/4 v5, 0x1

    .line 856
    :cond_4
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v11, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget-object v12, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v11, v12}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 857
    const/4 v7, 0x1

    .line 859
    iget v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iget v11, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ne v10, v11, :cond_0

    .line 861
    iget v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 862
    const/4 v7, 0x1

    goto :goto_2

    .line 867
    :cond_5
    iget v10, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-eq v10, v9, :cond_0

    .line 868
    iget v10, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v10, v11, :cond_6

    .line 870
    move v8, v9

    .line 873
    :cond_6
    iput v9, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 874
    const/4 v7, 0x1

    goto :goto_2

    .line 878
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_7
    if-eqz v5, :cond_8

    .line 879
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v10, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 882
    :cond_8
    iget-object v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    sget-object v11, Lcom/letv/leui/widget/slide/LeSlidePager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 884
    if-eqz v7, :cond_b

    .line 886
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v2

    .line 887
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_a

    .line 888
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 889
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 890
    .local v6, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v10, v6, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    .line 891
    const/4 v10, 0x0

    iput v10, v6, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    .line 887
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 895
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_a
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v13, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 896
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    .line 829
    .end local v2    # "childCount":I
    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2438
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x0

    .line 2678
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2679
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    return v4

    .line 2683
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    .line 2684
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2685
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2686
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2687
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v3

    .line 2688
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 2689
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2688
    if-eqz v4, :cond_1

    .line 2690
    const/4 v4, 0x1

    return v4

    .line 2684
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2695
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v6
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 752
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 753
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 754
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 740
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 741
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 742
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 739
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2262
    iget-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2263
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2266
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2267
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaximumVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v7, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2268
    iget v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2269
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 2270
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v8

    .line 2271
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v5

    .line 2272
    .local v5, "scrollX":I
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v1

    .line 2273
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2274
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2275
    .local v4, "pageOffset":F
    iget v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    iget v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2276
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->determineTargetPage(IFII)I

    move-result v3

    .line 2278
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZI)V

    .line 2279
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->endDrag()V

    .line 2281
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    .line 2261
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2450
    const/4 v0, 0x0

    .line 2451
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2452
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2468
    .end local v0    # "handled":Z
    :cond_0
    :goto_0
    return v0

    .line 2454
    .restart local v0    # "handled":Z
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2457
    .local v0, "handled":Z
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2460
    .local v0, "handled":Z
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2461
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2462
    .local v0, "handled":Z
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2463
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    .local v0, "handled":Z
    goto :goto_0

    .line 2452
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2292
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2293
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2296
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2298
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2299
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2300
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v17

    .line 2302
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2303
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2305
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2306
    .local v11, "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2307
    .local v12, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v2, v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2308
    iget v2, v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2310
    :cond_1
    iget v2, v12, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2311
    iget v2, v12, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2314
    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    .line 2315
    move/from16 v16, v13

    .line 2320
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2321
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 2322
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    .line 2325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2326
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragBeginTime:J

    .line 2327
    move-object/from16 v0, p0

    iget v7, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    const/4 v8, 0x0

    .line 2326
    const/4 v6, 0x2

    .line 2327
    const/4 v9, 0x0

    .line 2326
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2328
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2329
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 2291
    return-void

    .line 2316
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    .line 2317
    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2700
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2715
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2705
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 628
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 629
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    iget v1, v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->childIndex:I

    .line 630
    .local v1, "result":I
    return v1

    .line 628
    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2912
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0

    .line 2914
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1325
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 1326
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 1329
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1327
    :cond_0
    return-object v2

    .line 1331
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1315
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1316
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v3, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1317
    return-object v1

    .line 1314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1320
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1337
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v2, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1338
    return-object v1

    .line 1335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1341
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method initViewPager()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v5, 0x0

    .line 332
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->setWillNotDraw(Z)V

    .line 333
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setDescendantFocusability(I)V

    .line 334
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->setFocusable(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 336
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/letv/leui/widget/slide/LeSlidePager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    .line 337
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 338
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 340
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    .line 341
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMinimumVelocity:I

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaximumVelocity:I

    .line 344
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFlingDistance:I

    .line 345
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCloseEnough:I

    .line 346
    mul-float v3, v6, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDefaultGutterSize:I

    .line 347
    mul-float v3, v6, v2

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mShadowsHeight:F

    .line 349
    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEdgeSize:I

    .line 351
    new-instance v3, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 353
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->setImportantForAccessibility(I)V

    .line 359
    :cond_0
    new-instance v3, Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    invoke-virtual {p0, v5, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setPageTransformer(ZLcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;)V

    .line 331
    return-void
.end method

.method public isDisableStateSaving()Z
    .locals 1

    .prologue
    .line 2898
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    return v0
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2342
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1346
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 1345
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 363
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2176
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2179
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v13, :cond_2

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v10

    .line 2181
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v11

    .line 2183
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2184
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2185
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2186
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v8, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 2187
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2188
    .local v4, "itemCount":I
    iget v2, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2189
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    iget v6, v13, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2190
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2191
    :goto_1
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_1

    .line 2196
    :cond_0
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2197
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v14, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2198
    .local v1, "drawAt":F
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v14, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2205
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTopPageBounds:I

    .line 2207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mBottomPageBounds:I

    move/from16 v17, v0

    .line 2206
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2211
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2175
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2200
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v13, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2201
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2202
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2190
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1775
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1776
    const/4 v0, 0x0

    return v0

    .line 1780
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1783
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 1786
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 1788
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1789
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1790
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1793
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 1798
    :cond_3
    if-eqz v6, :cond_5

    .line 1799
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 1801
    const/4 v0, 0x1

    return v0

    .line 1803
    :cond_4
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_5

    .line 1805
    const/4 v0, 0x0

    return v0

    .line 1809
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 1914
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1915
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1917
    :cond_7
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1923
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    return v0

    .line 1820
    :sswitch_0
    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1821
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 1826
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1828
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_8

    .line 1829
    const-string/jumbo v0, "LeSlidePager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1830
    const-string/jumbo v2, " in onInterceptTouchEvent ACTION_MOVE"

    .line 1829
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1833
    :cond_8
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1834
    .local v10, "x":F
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1835
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1836
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1837
    .local v12, "y":F
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1841
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->isGutterDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1842
    :cond_9
    :goto_1
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEdgeSize:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    .line 1844
    :cond_a
    iput v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1845
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 1847
    const/4 v0, 0x0

    return v0

    .line 1842
    :cond_b
    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 1841
    if-nez v0, :cond_a

    goto :goto_1

    .line 1853
    :cond_c
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    int-to-float v0, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_d

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    int-to-float v0, v0

    cmpg-float v0, v13, v0

    if-gez v0, :cond_d

    .line 1854
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pointInRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v0

    .line 1853
    if-eqz v0, :cond_d

    .line 1857
    const/4 v0, 0x0

    return v0

    .line 1858
    :cond_d
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_e

    .line 1860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1861
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1862
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 1863
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_f

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1865
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1866
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 1869
    :cond_e
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1871
    invoke-direct {p0, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1872
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1864
    :cond_f
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1883
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionY:F

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1885
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 1888
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1889
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 1890
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCloseEnough:I

    if-le v0, v1, :cond_10

    .line 1892
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 1894
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 1895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1897
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    goto/16 :goto_0

    .line 1899
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 1900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 1910
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1809
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v9

    .line 1487
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1488
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1489
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v19

    .line 1490
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingTop()I

    move-result v21

    .line 1491
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v20

    .line 1492
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingBottom()I

    move-result v18

    .line 1493
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v22

    .line 1495
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1499
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1500
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1501
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1502
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1503
    .local v17, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    const/4 v6, 0x0

    .line 1504
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1505
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1506
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1507
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1508
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1510
    :pswitch_0
    move/from16 v6, v19

    .line 1525
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1527
    move/from16 v7, v21

    .line 1542
    :goto_2
    add-int v6, v6, v22

    .line 1544
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1545
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1543
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1546
    add-int/lit8 v10, v10, 0x1

    .line 1499
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1513
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1514
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1515
    goto :goto_1

    .line 1517
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    .line 1521
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1522
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    .line 1523
    goto :goto_1

    .line 1530
    :sswitch_0
    move/from16 v7, v21

    .line 1531
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1532
    goto :goto_2

    .line 1534
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2

    .line 1538
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1539
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    .line 1540
    goto :goto_2

    .line 1551
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1553
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1554
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1555
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1556
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1558
    .restart local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1559
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1560
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1561
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1562
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1565
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->needsMeasure:Z

    .line 1567
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1568
    const/high16 v27, 0x40000000    # 2.0f

    .line 1566
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1570
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    .line 1571
    const/high16 v27, 0x40000000    # 2.0f

    .line 1569
    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1572
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1578
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    .line 1579
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    .line 1577
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1553
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1583
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mTopPageBounds:I

    .line 1584
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mBottomPageBounds:I

    .line 1585
    move-object/from16 v0, p0

    iput v10, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDecorChildCount:I

    .line 1587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollToItem(IZIZ)V

    .line 1590
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 1485
    return-void

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1525
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1357
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDefaultSize(II)I

    move-result v21

    .line 1358
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDefaultSize(II)I

    move-result v22

    .line 1357
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setMeasuredDimension(II)V

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getMeasuredWidth()I

    move-result v15

    .line 1361
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1362
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mGutterSize:I

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1366
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1373
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v16

    .line 1374
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1375
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1376
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1377
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1378
    .local v13, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1379
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1380
    .local v11, "hgrav":I
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1381
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1382
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1383
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1384
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1386
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1387
    const/high16 v18, 0x40000000    # 2.0f

    .line 1392
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1393
    .local v19, "widthSize":I
    move v9, v4

    .line 1394
    .local v9, "heightSize":I
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1395
    const/high16 v18, 0x40000000    # 2.0f

    .line 1396
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1397
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1400
    :cond_3
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1401
    const/high16 v8, 0x40000000    # 2.0f

    .line 1402
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1403
    iget v9, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->height:I

    .line 1406
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1407
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1408
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1410
    if-eqz v7, :cond_9

    .line 1411
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1374
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1383
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "consumeVertical":Z
    goto :goto_1

    .line 1384
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "consumeHorizontal":Z
    goto :goto_2

    .line 1388
    :cond_8
    if-eqz v6, :cond_2

    .line 1389
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1412
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1413
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1419
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mChildWidthMeasureSpec:I

    .line 1420
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mChildHeightMeasureSpec:I

    .line 1423
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 1425
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v16

    .line 1429
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1430
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1431
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 1435
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1436
    .restart local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    if-eqz v13, :cond_c

    iget-boolean v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1429
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_b
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1438
    .restart local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_c
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    .line 1437
    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1439
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_6

    .line 1351
    .end local v3    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1659
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v12

    .line 1661
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v10

    .line 1662
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v11

    .line 1663
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v14

    .line 1664
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v4

    .line 1665
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1666
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1667
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1668
    .local v9, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v15, v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1665
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1670
    :cond_1
    iget v15, v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1671
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1672
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1674
    :pswitch_0
    move v5, v10

    .line 1689
    :goto_2
    add-int/2addr v5, v12

    .line 1691
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1692
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1693
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1677
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1678
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1679
    goto :goto_2

    .line 1681
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    .line 1685
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1686
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    .line 1687
    goto :goto_2

    .line 1698
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1701
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1702
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1705
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v12

    .line 1707
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v4

    .line 1708
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1709
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1710
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1712
    .restart local v9    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v15, v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1708
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1714
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1715
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1719
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    .line 1657
    return-void

    .line 1672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 2651
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    .line 2652
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2653
    const/4 v6, 0x0

    .line 2654
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2655
    .local v5, "increment":I
    move v2, v1

    .line 2661
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2662
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2663
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2664
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v4

    .line 2665
    .local v4, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2666
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2667
    const/4 v7, 0x1

    return v7

    .line 2657
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2658
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2659
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2661
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2672
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return v9
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1260
    instance-of v1, p1, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;

    if-nez v1, :cond_0

    .line 1261
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1262
    return-void

    :cond_0
    move-object v0, p1

    .line 1265
    check-cast v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;

    .line 1266
    .local v0, "ss":Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1268
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v1, :cond_1

    .line 1269
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1270
    iget v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 1259
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 1273
    iget-object v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1274
    iget-object v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1249
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1250
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1251
    .local v0, "ss":Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iput v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    .line 1252
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v2, :cond_0

    .line 1253
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v2}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1255
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1447
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1450
    if-eq p1, p3, :cond_0

    .line 1451
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->recomputeScrollPosition(IIII)V

    .line 1446
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1928
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1932
    const/16 v24, 0x1

    return v24

    .line 1935
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1938
    const/16 v24, 0x0

    return v24

    .line 1941
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 1943
    :cond_2
    const/16 v24, 0x0

    return v24

    .line 1946
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1947
    const/16 v24, 0x1

    return v24

    .line 1949
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 1950
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1952
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1954
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1955
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1957
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2046
    .end local v11    # "needsInvalidate":Z
    :cond_6
    :goto_0
    :pswitch_0
    if-eqz v11, :cond_7

    .line 2047
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    .line 2049
    :cond_7
    const/16 v24, 0x1

    return v24

    .line 1959
    .restart local v11    # "needsInvalidate":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1960
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 1961
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 1964
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1966
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    goto :goto_0

    .line 1970
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 1971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 1972
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 1973
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1974
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 1975
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1978
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_8

    .line 1980
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1981
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1984
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1985
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 1986
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1990
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_8

    .line 1991
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1997
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 1999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2000
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2001
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->performDrag(F)Z

    move-result v11

    .local v11, "needsInvalidate":Z
    goto/16 :goto_0

    .line 1983
    .end local v6    # "activePointerIndex":I
    .local v11, "needsInvalidate":Z
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_1

    .line 2005
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2007
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2009
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 2010
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v19

    .line 2011
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v16

    .line 2012
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v8

    .line 2013
    .local v8, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v7, v8, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2014
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2016
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2017
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2018
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2019
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->determineTargetPage(IFII)I

    move-result v12

    .line 2021
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZI)V

    .line 2023
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 2024
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->endDrag()V

    goto/16 :goto_0

    .line 2028
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollToItem(IZIZ)V

    .line 2030
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 2031
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->endDrag()V

    goto/16 :goto_0

    .line 2035
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2036
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2037
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2038
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    goto/16 :goto_0

    .line 2042
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    goto/16 :goto_0

    .line 1957
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

    .line 2564
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-lez v0, :cond_0

    .line 2565
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2566
    return v2

    .line 2568
    :cond_0
    return v1
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2572
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2573
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2574
    return v2

    .line 2576
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pop()Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 2951
    const/4 v0, 0x0

    .line 2952
    .local v0, "f":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2953
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Landroid/app/Fragment;
    check-cast v0, Landroid/app/Fragment;

    .line 2955
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(I)V

    .line 2956
    return-object v0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate(I)V

    .line 900
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 905
    const/16 v21, 0x0

    .line 906
    .local v21, "oldCurInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v15, 0x2

    .line 907
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    const/16 v15, 0x42

    .line 909
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v21

    .line 910
    .local v21, "oldCurInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 913
    .end local v21    # "oldCurInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->sortChildDrawingOrder()V

    .line 915
    return-void

    .line 908
    .local v21, "oldCurInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    const/16 v15, 0x11

    goto :goto_0

    .line 922
    .end local v21    # "oldCurInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->sortChildDrawingOrder()V

    .line 925
    return-void

    .line 931
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-nez v27, :cond_4

    .line 932
    return-void

    .line 935
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 938
    .local v22, "pageLimit":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    sub-int v27, v27, v22

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 939
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v4

    .line 943
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 946
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 949
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 953
    .local v24, "resName":Ljava/lang/String;
    :goto_1
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "The application\'s LePagerAdapter changed the adapter\'s contents without calling LePagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 955
    const-string/jumbo v29, ", found: "

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 956
    const-string/jumbo v29, " Pager id: "

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 957
    const-string/jumbo v29, " Pager class: "

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 958
    const-string/jumbo v29, " Problematic adapter: "

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getClass()Ljava/lang/Class;

    move-result-object v29

    .line 953
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 950
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 951
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_1

    .line 962
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 963
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 964
    .local v9, "curItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 966
    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    .line 967
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 972
    .end local v9    # "curItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 973
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->addNewItem(II)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v9

    .line 979
    :cond_7
    if-eqz v9, :cond_a

    .line 980
    const/4 v13, 0x0

    .line 981
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 982
    .local v18, "itemIndex":I
    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 983
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v7

    .line 984
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    const/16 v19, 0x0

    .line 986
    .local v19, "leftWidthNeeded":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_5
    if-ltz v23, :cond_8

    .line 987
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_13

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    .line 988
    if-nez v17, :cond_f

    .line 1015
    :cond_8
    iget v14, v9, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 1016
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1017
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1019
    :goto_6
    if-gtz v7, :cond_18

    const/16 v25, 0x0

    .line 1021
    .local v25, "rightWidthNeeded":F
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_8
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 1022
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1a

    move/from16 v0, v23

    if-le v0, v12, :cond_1a

    .line 1023
    if-nez v17, :cond_19

    .line 1044
    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->calculatePageOffsets(Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;ILcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;)V

    .line 1054
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_1e

    iget-object v0, v9, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_9
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v6

    .line 1061
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_a
    move/from16 v0, v16

    if-ge v0, v6, :cond_1f

    .line 1062
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1063
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1064
    .local v20, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->childIndex:I

    .line 1065
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    .line 1067
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1068
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v17, :cond_b

    .line 1069
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    .line 1070
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->position:I

    .line 1061
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 964
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .restart local v9    # "curItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 982
    .end local v9    # "curItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_d
    const/16 v17, 0x0

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto/16 :goto_3

    .line 985
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v7    # "clientWidth":I
    :cond_e
    iget v0, v9, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    sub-float v27, v28, v27

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    .restart local v19    # "leftWidthNeeded":F
    goto/16 :goto_4

    .line 991
    .restart local v23    # "pos":I
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 986
    :cond_10
    :goto_b
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_5

    .line 992
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 998
    add-int/lit8 v18, v18, -0x1

    .line 999
    add-int/lit8 v8, v8, -0x1

    .line 1000
    if-ltz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_b

    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_12
    const/16 v17, 0x0

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_b

    .line 1002
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_13
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1003
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1004
    add-int/lit8 v18, v18, -0x1

    .line 1005
    if-ltz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_b

    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_14
    const/16 v17, 0x0

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_b

    .line 1007
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_15
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->addNewItem(II)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1008
    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1009
    add-int/lit8 v8, v8, 0x1

    .line 1010
    if-ltz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto/16 :goto_b

    :cond_16
    const/16 v17, 0x0

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto/16 :goto_b

    .line 1018
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto/16 :goto_6

    .line 1020
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v25, v27, v28

    .restart local v25    # "rightWidthNeeded":F
    goto/16 :goto_7

    .line 1026
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 1021
    :cond_1a
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_8

    .line 1027
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUsingInnerAdapter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->notifyDataSetChanged()V

    .line 1037
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_c

    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1d
    const/16 v17, 0x0

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_c

    .line 1054
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_9

    .line 1074
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->sortChildDrawingOrder()V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_21

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1078
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForAnyChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1079
    :goto_d
    if-eqz v17, :cond_20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_21

    .line 1080
    :cond_20
    const/16 v16, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_21

    .line 1081
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1082
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1083
    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v17, :cond_23

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_23

    .line 1084
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-eqz v27, :cond_23

    .line 904
    .end local v5    # "child":Landroid/view/View;
    .end local v10    # "currentFocused":Landroid/view/View;
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_21
    return-void

    .line 1078
    .restart local v10    # "currentFocused":Landroid/view/View;
    :cond_22
    const/16 v17, 0x0

    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_d

    .line 1080
    .restart local v5    # "child":Landroid/view/View;
    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_23
    add-int/lit8 v16, v16, 0x1

    goto :goto_e
.end method

.method public push(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2923
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->push(Landroid/app/Fragment;Z)V

    .line 2922
    return-void

    .line 2923
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public push(Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2936
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->notifyDataSetChanged()V

    .line 2937
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2938
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2934
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeViewInLayout(Landroid/view/View;)V

    .line 1305
    :goto_0
    return-void

    .line 1309
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2964
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->notifyDataSetChanged()V

    .line 2962
    return-void
.end method

.method public setAdapter(Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 389
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v4, :cond_1

    .line 390
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 391
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v4, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 394
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v5, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v4, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 397
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 398
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeNonDecorViews()V

    .line 399
    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 400
    invoke-virtual {p0, v7, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 403
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    .line 404
    .local v2, "oldAdapter":Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    .line 405
    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    .line 407
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v4, :cond_3

    .line 408
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    if-nez v4, :cond_2

    .line 409
    new-instance v4, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;)V

    iput-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    .line 411
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 412
    iput-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 413
    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 414
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 415
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    .line 416
    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 417
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 418
    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 419
    const/4 v4, -0x1

    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 420
    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 421
    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 429
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 430
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;->onAdapterChanged(Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;)V

    .line 388
    :cond_4
    return-void

    .line 422
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 423
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    goto :goto_1

    .line 425
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 621
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setChildrenDrawingOrderEnabled(Z)V

    .line 605
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 471
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 469
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 482
    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 480
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZI)V

    .line 489
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v4, 0x0

    .line 494
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 495
    :cond_0
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 496
    return-void

    .line 498
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 500
    return-void

    .line 503
    :cond_2
    if-gez p1, :cond_5

    .line 504
    const/4 p1, 0x0

    .line 508
    :cond_3
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 509
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ge p1, v3, :cond_6

    .line 513
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 514
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 506
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_0

    .line 517
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-eq v3, p1, :cond_9

    const/4 v0, 0x1

    .line 519
    .local v0, "dispatchSelected":Z
    :goto_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 522
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 523
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 524
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 526
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 527
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 529
    :cond_8
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    .line 493
    :goto_3
    return-void

    .line 517
    .end local v0    # "dispatchSelected":Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "dispatchSelected":Z
    goto :goto_2

    .line 531
    :cond_a
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate(I)V

    .line 532
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollToItem(IZIZ)V

    goto :goto_3
.end method

.method public setDisableStateSaving(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 2894
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    .line 2893
    return-void
.end method

.method public setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 2974
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUsingInnerAdapter:Z

    .line 2975
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    .line 2976
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;Landroid/app/FragmentManager;)V

    .line 2977
    .local v0, "mPagerAdapter":Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setAdapter(Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;)V

    .line 2973
    return-void
.end method

.method setInternalPageChangeListener(Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;)Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .line 641
    .local v0, "oldListener":Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .line 642
    return-object v0
.end method

.method public setMaxSettleDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 2902
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    .line 2901
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 674
    if-ge p1, v3, :cond_0

    .line 675
    const-string/jumbo v0, "LeSlidePager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 p1, 0x1

    .line 679
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 680
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 681
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 673
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    .line 454
    return-void
.end method

.method public setOnPageChangeListener(Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .line 574
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 694
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    .line 695
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    .line 697
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v1

    .line 698
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->recomputeScrollPosition(IIII)V

    .line 700
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    .line 693
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 729
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 719
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->refreshDrawableState()V

    .line 720
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setWillNotDraw(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->invalidate()V

    .line 717
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 591
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_1

    .line 592
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 593
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    if-eqz v3, :cond_3

    move v3, v2

    :goto_1
    if-eq v0, v3, :cond_4

    const/4 v1, 0x1

    .line 594
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    .line 595
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 596
    if-eqz v0, :cond_5

    .line 597
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    .line 601
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 590
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    .line 592
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasTransformer":Z
    goto :goto_0

    :cond_3
    move v3, v4

    .line 593
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "needsPopulate":Z
    goto :goto_2

    .line 599
    :cond_5
    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    goto :goto_3
.end method

.method public setRectSlopScaleInTab(IIIIFI)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "coef"    # F
    .param p6, "specTab"    # I

    .prologue
    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    .line 2865
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2866
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 2867
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 2868
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2869
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    .line 2870
    iput p6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecTab:I

    .line 2871
    const-string/jumbo v0, "LeSlidePager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRectSlopScaleInTab mSpecRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2872
    const-string/jumbo v2, ", coef = "

    .line 2871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2872
    const-string/jumbo v2, ", specTab = "

    .line 2871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2872
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecTab:I

    .line 2871
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->smoothScrollTo(III)V

    .line 763
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 777
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 778
    return-void

    .line 780
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v2

    .line 781
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v3

    .line 782
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 783
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 784
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 785
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 786
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 787
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 788
    return-void

    .line 791
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 792
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 794
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v12

    .line 795
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 796
    .local v9, "halfWidth":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v1, v13

    int-to-float v13, v12

    div-float/2addr v1, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 797
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    .line 798
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    .line 797
    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 800
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 801
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 802
    if-lez p3, :cond_2

    .line 803
    move/from16 v0, p3

    int-to-float v1, v0

    div-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 809
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 811
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 812
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    .line 774
    return-void

    .line 805
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v14, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 806
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 807
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 735
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
