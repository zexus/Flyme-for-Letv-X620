.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$WindowRunnnable;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$PositionScroller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DBG_DATACHANGE_FLAG:I = 0x2

.field private static final DBG_DRAW_FLAG:I = 0x10

.field private static final DBG_FLAG:I = 0x20

.field private static final DBG_LAYOUT_FLAG:I = 0x4

.field private static final DBG_MOTION_FLAG:I = 0x1

.field private static final DBG_OOM_VALUE:I = 0x32

.field private static final DBG_RECYCLE_FLAG:I = 0x8

.field private static final DBG_SELECTOR_FLAG:I = 0x40

.field private static final DBG_TIMEOUT_VALUE:I = 0xc8

.field private static final INVALID_POINTER:I = -0x1

.field private static final IS_ENG_BUILD:Z

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final LOG_PROPERTY_NAME:Ljava/lang/String; = "debug.listview.dumpinfo"

.field private static final OVERFLING_VELOCITY_MAGN:I = 0x50

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static sDbg:Z

.field private static sDbgDataChange:Z

.field private static sDbgDraw:Z

.field private static sDbgLayout:Z

.field private static sDbgMotion:Z

.field private static sDbgRecycle:Z

.field private static sDbgSelector:Z

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mCurrentOverScrollDistance:I

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mFlingToScrollPosition:I

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field private mIsFlingToScroll:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastOverFlingY:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field protected mLeOverScrollEnable:Z

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field protected mNeedRestoreOverScroll:Z

.field private mNestedYOffset:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    return v0
.end method

.method static synthetic -get1(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -get11(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic -get13(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get15(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get16(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic -get17(Landroid/widget/AbsListView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic -get18(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get19()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgDataChange:Z

    return v0
.end method

.method static synthetic -get21()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    return v0
.end method

.method static synthetic -get22()Z
    .locals 1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgRecycle:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get9(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mLastOverFlingY:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mLastOverFlingY:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    .line 121
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgMotion:Z

    .line 122
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgDataChange:Z

    .line 123
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgLayout:Z

    .line 124
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgRecycle:Z

    .line 125
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgDraw:Z

    .line 126
    sput-boolean v2, Landroid/widget/AbsListView;->sDbg:Z

    .line 127
    sput-boolean v2, Landroid/widget/AbsListView;->sDbgSelector:Z

    .line 750
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 831
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 278
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 311
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 336
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 341
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 351
    iput v3, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 356
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 362
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 367
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 372
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 377
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 382
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 387
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 392
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 440
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 471
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 514
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 534
    iput v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 536
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 562
    iput v3, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 565
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 568
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 576
    iput-object v6, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 577
    iput-object v6, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 630
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 655
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 657
    new-array v1, v4, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 659
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 660
    new-array v1, v5, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 662
    new-array v1, v5, [F

    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 668
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 678
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 726
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 8463
    iput v2, p0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 8465
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    .line 8467
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFlingToScroll:Z

    .line 8468
    iput v2, p0, Landroid/widget/AbsListView;->mFlingToScrollPosition:I

    .line 8471
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    .line 8472
    iput v2, p0, Landroid/widget/AbsListView;->mLastOverFlingY:I

    .line 832
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 834
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 836
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 837
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 838
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 839
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 830
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 843
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 842
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 846
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 851
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 278
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 311
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 336
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 341
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 351
    iput v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 356
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 362
    new-instance v2, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v2, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 367
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 372
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 377
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 382
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 387
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 392
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 440
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 471
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 514
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 534
    iput v4, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 536
    iput-object v7, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 562
    iput v4, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 565
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 568
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 576
    iput-object v7, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 577
    iput-object v7, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 630
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 655
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 657
    new-array v2, v5, [Z

    iput-object v2, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 659
    new-array v2, v6, [I

    iput-object v2, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 660
    new-array v2, v6, [I

    iput-object v2, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 662
    new-array v2, v6, [F

    iput-object v2, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 668
    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 678
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 726
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 8463
    iput v3, p0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 8465
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    .line 8467
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsFlingToScroll:Z

    .line 8468
    iput v3, p0, Landroid/widget/AbsListView;->mFlingToScrollPosition:I

    .line 8471
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    .line 8472
    iput v3, p0, Landroid/widget/AbsListView;->mLastOverFlingY:I

    .line 852
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 854
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 857
    sget-object v2, Lcom/android/internal/R$styleable;->AbsListView:[I

    .line 856
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 859
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 860
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 864
    :cond_0
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 866
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 869
    const/4 v2, 0x3

    .line 868
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 871
    const/4 v2, 0x4

    .line 870
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 873
    const/4 v2, 0x5

    .line 872
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 875
    const/4 v2, 0x6

    .line 874
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 877
    const/16 v2, 0x9

    .line 876
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 879
    const/4 v2, 0x7

    .line 878
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 882
    const/16 v2, 0x8

    .line 881
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 884
    const/16 v2, 0xb

    .line 883
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 886
    const/16 v2, 0xa

    .line 885
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 888
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 890
    sget-boolean v2, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_1

    .line 891
    invoke-static {}, Landroid/widget/AbsListView;->checkAbsListViewlLogProperty()V

    .line 850
    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1997
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 1998
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1997
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1998
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1997
    goto :goto_0
.end method

.method private canScrollDown()Z
    .locals 6

    .prologue
    .line 2396
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2399
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v3, v4, :cond_1

    const/4 v0, 0x1

    .line 2402
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 2403
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2404
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    const/4 v0, 0x1

    .line 2407
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .line 2399
    .end local v0    # "canScrollDown":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canScrollDown":Z
    goto :goto_0

    .line 2404
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2381
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 2384
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2385
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2386
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2387
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2391
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .line 2381
    .end local v0    # "canScrollUp":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canScrollUp":Z
    goto :goto_0

    .line 2387
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static checkAbsListViewlLogProperty()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 8557
    const-string/jumbo v3, "debug.listview.dumpinfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8558
    .local v0, "dumpString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 8559
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x7

    if-le v3, v6, :cond_1

    .line 8560
    :cond_0
    const-string/jumbo v3, "AbsListView"

    const-string/jumbo v4, "checkAbsListViewlLogProperty get invalid command"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8561
    return-void

    .line 8563
    :cond_1
    const/4 v2, 0x0

    .line 8565
    .local v2, "logFilter":I
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 8569
    :goto_0
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_1
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    .line 8570
    and-int/lit8 v3, v2, 0x2

    if-ne v3, v8, :cond_4

    move v3, v4

    :goto_2
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgDataChange:Z

    .line 8571
    and-int/lit8 v3, v2, 0x4

    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    move v3, v4

    :goto_3
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgLayout:Z

    .line 8572
    and-int/lit8 v3, v2, 0x8

    const/16 v6, 0x8

    if-ne v3, v6, :cond_6

    move v3, v4

    :goto_4
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgRecycle:Z

    .line 8573
    and-int/lit8 v3, v2, 0x10

    const/16 v6, 0x10

    if-ne v3, v6, :cond_7

    move v3, v4

    :goto_5
    sput-boolean v3, Landroid/widget/AbsListView;->sDbgDraw:Z

    .line 8574
    and-int/lit8 v3, v2, 0x20

    const/16 v6, 0x20

    if-ne v3, v6, :cond_8

    move v3, v4

    :goto_6
    sput-boolean v3, Landroid/widget/AbsListView;->sDbg:Z

    .line 8575
    and-int/lit8 v3, v2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_9

    :goto_7
    sput-boolean v4, Landroid/widget/AbsListView;->sDbgSelector:Z

    .line 8576
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkAbsListViewlLogProperty debug filter: sDbgMotion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8577
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgMotion:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8578
    const-string/jumbo v5, ", sDbgDataChange="

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8578
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDataChange:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8579
    const-string/jumbo v5, ", sDbgLayout="

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8579
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgLayout:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8580
    const-string/jumbo v5, ", sDbgRecycle="

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8580
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgRecycle:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8581
    const-string/jumbo v5, ", sDbgDraw="

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8581
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDraw:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8582
    const-string/jumbo v5, ", sDbg="

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8582
    sget-boolean v5, Landroid/widget/AbsListView;->sDbg:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8583
    const-string/jumbo v5, ", sDbgSelector="

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8583
    sget-boolean v5, Landroid/widget/AbsListView;->sDbgSelector:Z

    .line 8576
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8556
    .end local v2    # "logFilter":I
    :cond_2
    return-void

    .line 8566
    .restart local v2    # "logFilter":I
    :catch_0
    move-exception v1

    .line 8567
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid format of propery string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v3, v5

    .line 8569
    goto/16 :goto_1

    :cond_4
    move v3, v5

    .line 8570
    goto/16 :goto_2

    :cond_5
    move v3, v5

    .line 8571
    goto/16 :goto_3

    :cond_6
    move v3, v5

    .line 8572
    goto/16 :goto_4

    :cond_7
    move v3, v5

    .line 8573
    goto/16 :goto_5

    :cond_8
    move v3, v5

    .line 8574
    goto/16 :goto_6

    :cond_9
    move v4, v5

    .line 8575
    goto/16 :goto_7
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 5659
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5660
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5661
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5677
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5658
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1300
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1301
    .local v0, "childCount":I
    if-nez v0, :cond_0

    return v1

    .line 1302
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_1

    return v2

    .line 1304
    :cond_1
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v3, :cond_2

    .line 1305
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contentFits:childCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",mItemCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1306
    const-string/jumbo v5, ",first child top = "

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1306
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1306
    const-string/jumbo v5, ",last child bottom = "

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1307
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1307
    const-string/jumbo v5, ",getHeight() = "

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1307
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1308
    const-string/jumbo v5, ",mListPadding = "

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1308
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 1305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_4

    .line 1311
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    .line 1310
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 1311
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1310
    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5651
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 5650
    :cond_0
    :goto_0
    return-void

    .line 5651
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5652
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5653
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5654
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 6806
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 6807
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6808
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6809
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6810
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6811
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6812
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6813
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6814
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6815
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6816
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6817
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6819
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 6820
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6805
    :goto_0
    return-void

    .line 6822
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 6463
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 6464
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6462
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2894
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v1, :cond_0

    .line 2895
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawSelector ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2896
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 2895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2896
    const-string/jumbo v3, ", "

    .line 2895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2896
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 2895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2896
    const-string/jumbo v3, "), this = "

    .line 2895
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    sget-boolean v1, Landroid/widget/AbsListView;->sDbgDraw:Z

    if-eqz v1, :cond_0

    .line 2900
    return-void

    .line 2904
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2905
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2906
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2907
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2893
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 7050
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_0

    .line 7052
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 7053
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7054
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 7047
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 6509
    sparse-switch p2, :sswitch_data_0

    .line 6542
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6511
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 6512
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6513
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 6514
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6546
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 6547
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 6548
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 6517
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6518
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 6519
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6520
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 6523
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 6524
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6525
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 6526
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6527
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6529
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6530
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 6531
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6532
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 6536
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 6537
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 6538
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 6539
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 6540
    .restart local v1    # "dY":I
    goto :goto_0

    .line 6509
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3031
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 3033
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v4

    return-object v4

    .line 3039
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 3045
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3047
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3048
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3049
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3050
    move v0, v2

    .line 3056
    :cond_1
    if-ltz v0, :cond_2

    .line 3057
    add-int/lit8 v4, v0, 0x1

    .line 3058
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 3057
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3061
    :cond_2
    return-object v3

    .line 3048
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6827
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 6828
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6830
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090170

    .line 6829
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6834
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6836
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6837
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6839
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 897
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 898
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 899
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 900
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 901
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 903
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 904
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 905
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 906
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 908
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isThemeLeui()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    .line 909
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_1

    .line 910
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 911
    iget v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 918
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 919
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v1, :cond_0

    .line 920
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAbsListView here: this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    return-void

    .line 914
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 915
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4801
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4802
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4800
    :goto_0
    return-void

    .line 4804
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4809
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4810
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4808
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    .prologue
    .line 3930
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 3931
    return-void

    .line 3933
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 3934
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 3935
    .local v0, "bottom":I
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 3936
    .local v2, "left":I
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 3937
    .local v3, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3929
    return-void

    .line 3934
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_0

    .line 3935
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "left":I
    goto :goto_1

    .line 3936
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_2
.end method

.method private invalidateTopGlow()V
    .locals 6

    .prologue
    .line 3919
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 3920
    return-void

    .line 3922
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 3923
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 3924
    .local v3, "top":I
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 3925
    .local v1, "left":I
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 3926
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3918
    return-void

    .line 3923
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "top":I
    goto :goto_0

    .line 3924
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "left":I
    goto :goto_1

    .line 3925
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .restart local v2    # "right":I
    goto :goto_2
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 4960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 4962
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4963
    .local v1, "pointerId":I
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_0

    .line 4964
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSecondaryPointerUp:pointerIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4965
    const-string/jumbo v5, ",mActivePointerId = "

    .line 4964
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4965
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4964
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4965
    const-string/jumbo v5, ",pointerId = "

    .line 4964
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4967
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_1

    .line 4971
    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 4973
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4974
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4975
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4976
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4959
    .end local v0    # "newPointerIndex":I
    :cond_1
    return-void

    .line 4971
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 4564
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v1, :cond_1

    .line 4565
    :cond_0
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Touch cancel: touch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mScrollY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4566
    const-string/jumbo v3, ", mActivePointerId = "

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4566
    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4567
    const-string/jumbo v3, ", mMotionPosition = "

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4567
    iget v3, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4568
    const-string/jumbo v3, ", mFirstPosition = "

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4568
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4568
    const-string/jumbo v3, ", mDataChanged = "

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4568
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4569
    const-string/jumbo v3, ", adatper size = "

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4569
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4569
    const-string/jumbo v3, ", this = "

    .line 4565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    :cond_1
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 4584
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4585
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4586
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4587
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4588
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4590
    :cond_2
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4591
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4592
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4595
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4601
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-nez v1, :cond_3

    .line 4603
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    .line 4604
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4605
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4608
    :cond_3
    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4563
    return-void

    .line 4573
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_4

    .line 4574
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4576
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 4571
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4143
    sget-boolean v4, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v4, :cond_0

    .line 4144
    const-string/jumbo v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Touch down: touch mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mScrollY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4145
    iget v6, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4145
    const-string/jumbo v6, ",y = "

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4145
    const-string/jumbo v6, ",mFirstPosition = "

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4146
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4146
    const-string/jumbo v6, ",mActivePointerId = "

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4146
    iget v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4147
    const-string/jumbo v6, ",mDataChanged = "

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4147
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4147
    const-string/jumbo v6, ",adatper size = "

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4147
    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4148
    const-string/jumbo v6, ",this = "

    .line 4144
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4153
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 4155
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4156
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_1

    .line 4157
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4159
    :cond_1
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4162
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4163
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4164
    iput v7, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 4212
    :cond_2
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 4213
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 4212
    if-eqz v4, :cond_3

    .line 4214
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4142
    :cond_3
    return-void

    .line 4166
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4167
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4168
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4170
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_5

    .line 4171
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 4173
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4174
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4175
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4176
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 4177
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 4195
    :cond_5
    :goto_1
    if-ltz v0, :cond_6

    .line 4197
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4198
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4201
    .end local v1    # "v":Landroid/view/View;
    :cond_6
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4202
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4203
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4204
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4205
    sget-boolean v4, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v4, :cond_2

    .line 4206
    const-string/jumbo v4, "AbsListView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Touch down: touch mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mMotionY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4207
    const-string/jumbo v6, ", mMotionPosition = "

    .line 4206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4207
    iget v6, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4208
    const-string/jumbo v6, ", mFirstPosition = "

    .line 4206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4208
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4206
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4178
    :cond_7
    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4182
    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4185
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_8

    .line 4186
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0, v8}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4189
    :cond_8
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 4190
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 4191
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4219
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4220
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 4221
    const/4 v2, 0x0

    .line 4222
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4225
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 4228
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4231
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 4233
    .local v4, "y":I
    sget-boolean v5, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-nez v5, :cond_2

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v5, :cond_3

    .line 4234
    :cond_2
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Touch move: touch mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4235
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4235
    const-string/jumbo v7, ",mLastY = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4235
    iget v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4235
    const-string/jumbo v7, ",y = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4236
    const-string/jumbo v7, ",mActivePointerId = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4236
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4236
    const-string/jumbo v7, ",pointerIndex = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4237
    const-string/jumbo v7, ",mMotionPosition = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4237
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4238
    const-string/jumbo v7, ",mFirstPosition = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4238
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4238
    const-string/jumbo v7, ",mDataChanged = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4239
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4239
    const-string/jumbo v7, ",adatper size = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4239
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4239
    const-string/jumbo v7, ",this = "

    .line 4234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 4218
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 4248
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4253
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4254
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4255
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4256
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4257
    if-eqz v0, :cond_5

    .line 4258
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4260
    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_6

    .line 4261
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4260
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4262
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4263
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 4261
    :cond_6
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 4264
    :cond_7
    if-eqz v0, :cond_4

    .line 4266
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4267
    .local v1, "point":[F
    aput v3, v1, v8

    .line 4268
    int-to-float v5, v4

    aput v5, v1, v9

    .line 4269
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4270
    aget v5, v1, v8

    aget v6, v1, v9

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 4275
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 4242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4281
    sget-boolean v22, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v22, :cond_0

    .line 4282
    const-string/jumbo v22, "AbsListView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Touch up: touch mode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ",mScrollY = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4283
    const-string/jumbo v24, ",mLastY = "

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v24, v0

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4283
    const-string/jumbo v24, ",mMotionPosition = "

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v24, v0

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4284
    const-string/jumbo v24, ",mFirstPosition = "

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4284
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v24, v0

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4284
    const-string/jumbo v24, ",mDataChanged = "

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4285
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v24, v0

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4285
    const-string/jumbo v24, ",adatper size = "

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v24, v0

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4285
    const-string/jumbo v24, ",this = "

    .line 4282
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 4524
    :cond_1
    :goto_0
    :pswitch_0
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4528
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 4530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 4531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4537
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4539
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4541
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 4546
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFlingToScrollPosition:I

    .line 4547
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsFlingToScroll:Z

    .line 4557
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 4558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/StrictMode$Span;->finish()V

    .line 4559
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4280
    :cond_4
    return-void

    .line 4292
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    .line 4293
    .local v17, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4294
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_8

    .line 4295
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 4296
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4299
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 4300
    .local v20, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v20, v22

    if-gez v22, :cond_9

    const/4 v12, 0x1

    .line 4301
    .local v12, "inList":Z
    :goto_1
    if-eqz v12, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 4355
    :cond_6
    if-nez v12, :cond_8

    .line 4360
    sget-boolean v22, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v22, :cond_7

    sget-boolean v22, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v22, :cond_7

    .line 4361
    const-string/jumbo v22, "AbsListView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Touch up out of list: mTouchMode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4362
    const-string/jumbo v24, ", pressed = "

    .line 4361
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4362
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v24

    .line 4361
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 4366
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4367
    if-eqz v4, :cond_8

    .line 4368
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4374
    .end local v12    # "inList":Z
    .end local v20    # "x":F
    :cond_8
    :goto_2
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 4300
    .restart local v20    # "x":F
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "inList":Z
    goto :goto_1

    .line 4302
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    .line 4303
    new-instance v22, Landroid/widget/AbsListView$PerformClick;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4306
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v18, v0

    .line 4307
    .local v18, "performClick":Landroid/widget/AbsListView$PerformClick;
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4308
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4310
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4312
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 4313
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v22, v0

    if-nez v22, :cond_10

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v22, v0

    .line 4313
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4315
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 4316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 4317
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4318
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4320
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4321
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4322
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 4324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4325
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_d

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 4326
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4328
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4330
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4333
    :cond_f
    new-instance v22, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    .line 4346
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 4345
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4351
    :goto_4
    return-void

    .line 4314
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v22, v0

    goto/16 :goto_3

    .line 4348
    :cond_11
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4349
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_4

    .line 4352
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 4353
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_2

    .line 4378
    .end local v4    # "child":Landroid/view/View;
    .end local v12    # "inList":Z
    .end local v17    # "motionPosition":I
    .end local v18    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v20    # "x":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 4379
    .local v5, "childCount":I
    if-lez v5, :cond_23

    .line 4380
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v10

    .line 4381
    .local v10, "firstChildTop":I
    add-int/lit8 v22, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 4382
    .local v14, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 4383
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v6, v22, v23

    .line 4384
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    if-nez v22, :cond_13

    if-lt v10, v7, :cond_13

    .line 4385
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 4386
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v22

    sub-int v22, v22, v6

    move/from16 v0, v22

    if-gt v14, v0, :cond_13

    .line 4387
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4388
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4390
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 4391
    .local v19, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4394
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    .line 4393
    move/from16 v0, v22

    float-to-int v13, v0

    .line 4395
    .local v13, "initialVelocity":I
    sget-boolean v22, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v22, :cond_14

    sget-boolean v22, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v22, :cond_14

    .line 4396
    const-string/jumbo v22, "AbsListView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Fling from scroll with initialVelocity = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4397
    const-string/jumbo v24, ",mActivePointerId = "

    .line 4396
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4397
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v24, v0

    .line 4396
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4398
    const-string/jumbo v24, ",mFirstPosition = "

    .line 4396
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4398
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v24, v0

    .line 4396
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4399
    const-string/jumbo v24, ",firstChildTop = "

    .line 4396
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4399
    const-string/jumbo v24, ",this = "

    .line 4396
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 4408
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4409
    .local v21, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFlingToScrollPosition:I

    move/from16 v22, v0

    sub-int v22, v21, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 4410
    .local v9, "delta":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsFlingToScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_15

    .line 4411
    const/4 v13, 0x0

    .line 4420
    .end local v9    # "delta":I
    .end local v21    # "y":I
    :cond_15
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_19

    const/4 v11, 0x1

    .line 4421
    .local v11, "flingVelocity":Z
    :goto_5
    if-eqz v11, :cond_1d

    .line 4422
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    if-nez v22, :cond_16

    .line 4423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v22, v0

    sub-int v22, v7, v22

    move/from16 v0, v22

    if-eq v10, v0, :cond_1d

    .line 4424
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 4425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    if-eq v14, v0, :cond_1d

    .line 4426
    :cond_17
    const/16 v22, 0x0

    neg-int v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 4427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_18

    .line 4428
    new-instance v22, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4430
    :cond_18
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 4435
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    if-nez v22, :cond_1a

    .line 4436
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    neg-int v0, v13

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4446
    :goto_6
    const/16 v22, 0x0

    neg-int v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 4420
    .end local v11    # "flingVelocity":Z
    :cond_19
    const/4 v11, 0x0

    .restart local v11    # "flingVelocity":Z
    goto/16 :goto_5

    .line 4439
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_6

    .line 4444
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    neg-int v0, v13

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto :goto_6

    .line 4448
    :cond_1c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4449
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4453
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1e

    .line 4455
    new-instance v22, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4458
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v22, v0

    if-eqz v22, :cond_21

    .line 4459
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4460
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .line 4474
    :cond_1f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v22, v0

    if-eqz v22, :cond_20

    .line 4475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4477
    :cond_20
    if-eqz v11, :cond_1

    const/16 v22, 0x0

    neg-int v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v22

    if-nez v22, :cond_1

    .line 4478
    const/16 v22, 0x0

    neg-int v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 4463
    :cond_21
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4464
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_7

    .line 4468
    :cond_22
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4469
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1f

    .line 4471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_7

    .line 4483
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v10    # "firstChildTop":I
    .end local v11    # "flingVelocity":Z
    .end local v13    # "initialVelocity":I
    .end local v14    # "lastChildBottom":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_23
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4484
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4489
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_24

    .line 4490
    new-instance v22, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4492
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 4493
    .restart local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4494
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 4496
    .restart local v13    # "initialVelocity":I
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4497
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_25

    .line 4498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    neg-int v0, v13

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 4500
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4510
    .end local v13    # "initialVelocity":I
    .end local v19    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v16, v0

    .line 4511
    .local v16, "lostPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 4512
    .local v15, "lostChild":Landroid/view/View;
    sget-boolean v22, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v22, :cond_26

    sget-boolean v22, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v22, :cond_26

    .line 4513
    const-string/jumbo v22, "AbsListView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Touch cancel:mMotionPosition = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4514
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v24, v0

    .line 4513
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4514
    const-string/jumbo v24, ",mFirstPosition = "

    .line 4513
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4515
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v24, v0

    .line 4513
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4515
    const-string/jumbo v24, ",lostChild = "

    .line 4513
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 4515
    const-string/jumbo v24, ",this = "

    .line 4513
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    :cond_26
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual {v15}, Landroid/view/View;->isPressed()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 4518
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_0

    .line 4288
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 3389
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    .line 3390
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3391
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3392
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3393
    .local v1, "longPressPosition":I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3394
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3395
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3396
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3397
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 3398
    const/4 v4, 0x1

    return v4

    .line 3402
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 6482
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6483
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 6484
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 6487
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 6488
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6489
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6490
    aget v4, v2, v7

    .line 6489
    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6481
    :goto_0
    return-void

    .line 6492
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 2732
    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 2733
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 2734
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2737
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2738
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2739
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 2740
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2744
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2745
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2746
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2747
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2750
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 2751
    .local v0, "isChildViewEnabled":Z
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v4, v0, :cond_2

    .line 2752
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 2756
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2757
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    .line 2758
    if-eqz v1, :cond_3

    .line 2761
    invoke-virtual {v2, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2762
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2764
    :cond_3
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2765
    if-eqz v1, :cond_5

    .line 2766
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 2767
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 2769
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2771
    :cond_5
    if-eqz p3, :cond_6

    .line 2772
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 2731
    :cond_6
    return-void

    .line 2732
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "positionChanged":Z
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4815
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4816
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4817
    iput-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4814
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 38
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3671
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v35, p2, v3

    .line 3672
    .local v35, "rawDeltaY":I
    const/16 v37, 0x0

    .line 3673
    .local v37, "scrollOffsetCorrection":I
    const/16 v36, 0x0

    .line 3674
    .local v36, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 3675
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v35, v35, v3

    .line 3677
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    .line 3678
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 3677
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3679
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v35, v35, v3

    .line 3680
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v37, v0

    .line 3681
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v36, v3, v4

    .line 3682
    if-eqz p3, :cond_1

    .line 3683
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3684
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3687
    :cond_1
    move/from16 v22, v35

    .line 3689
    .local v22, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v23, v3, v36

    .line 3690
    .local v23, "incrementalDeltaY":I
    :goto_1
    const/16 v24, 0x0

    .line 3692
    .local v24, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    .line 3700
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 3702
    const-string/jumbo v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3705
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_c

    .line 3709
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 3710
    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 3711
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    .line 3712
    .local v34, "parent":Landroid/view/ViewParent;
    if-eqz v34, :cond_3

    .line 3713
    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3718
    .end local v34    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_f

    .line 3719
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v25, v3, v4

    .line 3726
    .local v25, "motionIndex":I
    :goto_2
    const/16 v28, 0x0

    .line 3727
    .local v28, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 3728
    .local v27, "motionView":Landroid/view/View;
    if-eqz v27, :cond_4

    .line 3729
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v28

    .line 3733
    :cond_4
    const/16 v18, 0x0

    .line 3738
    .local v18, "atEdge":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    if-eqz v3, :cond_7

    .line 3739
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    mul-int v3, v3, v23

    if-gez v3, :cond_11

    .line 3740
    move/from16 v21, v23

    .line 3741
    .local v21, "delta":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v20, v4, v3

    .line 3742
    .local v20, "coeff":F
    const/4 v3, 0x0

    cmpg-float v3, v20, v3

    if-gez v3, :cond_5

    const/16 v20, 0x0

    .line 3743
    :cond_5
    move/from16 v0, v23

    int-to-float v3, v0

    mul-float v3, v3, v20

    float-to-int v0, v3

    move/from16 v23, v0

    .line 3744
    if-lez v21, :cond_10

    .line 3745
    if-nez v23, :cond_6

    const/16 v23, 0x1

    .line 3750
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    if-lt v3, v4, :cond_7

    .line 3751
    const/16 v23, 0x0

    .line 3759
    .end local v20    # "coeff":F
    .end local v21    # "delta":I
    :cond_7
    :goto_4
    if-eqz v23, :cond_8

    .line 3760
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 3764
    .end local v18    # "atEdge":Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 3765
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_9

    .line 3766
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Touch scroll: incrementalDeltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3767
    const-string/jumbo v5, ", mScrollY = "

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3767
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3767
    const-string/jumbo v5, ", atEdge = "

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3768
    const-string/jumbo v5, ", motionIndex = "

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3768
    const-string/jumbo v5, ", motionView = "

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3769
    const-string/jumbo v5, ", overscrollMode = "

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3769
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v5

    .line 3766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    :cond_9
    if-eqz v27, :cond_b

    .line 3774
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v29

    .line 3775
    .local v29, "motionViewRealTop":I
    if-eqz v18, :cond_a

    .line 3778
    move/from16 v0, v23

    neg-int v3, v0

    .line 3779
    sub-int v4, v29, v28

    .line 3778
    sub-int v7, v3, v4

    .line 3780
    .local v7, "overscroll":I
    sub-int v5, v7, v23

    .line 3781
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 3780
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3782
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    rsub-int/lit8 v24, v3, 0x0

    .line 3783
    if-eqz p3, :cond_a

    .line 3784
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3785
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3826
    .end local v7    # "overscroll":I
    :cond_a
    :goto_5
    add-int v3, p2, v24

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3828
    .end local v29    # "motionViewRealTop":I
    :cond_b
    add-int v3, p2, v24

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3670
    .end local v25    # "motionIndex":I
    .end local v27    # "motionView":Landroid/view/View;
    .end local v28    # "motionViewPrevTop":I
    :cond_c
    :goto_6
    return-void

    .line 3677
    .end local v22    # "deltaY":I
    .end local v23    # "incrementalDeltaY":I
    .end local v24    # "lastYCorrection":I
    :cond_d
    move/from16 v0, v35

    neg-int v3, v0

    goto/16 :goto_0

    .line 3689
    .restart local v22    # "deltaY":I
    :cond_e
    move/from16 v23, v22

    .restart local v23    # "incrementalDeltaY":I
    goto/16 :goto_1

    .line 3723
    .restart local v24    # "lastYCorrection":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v25, v3, 0x2

    .restart local v25    # "motionIndex":I
    goto/16 :goto_2

    .line 3747
    .restart local v18    # "atEdge":Z
    .restart local v20    # "coeff":F
    .restart local v21    # "delta":I
    .restart local v27    # "motionView":Landroid/view/View;
    .restart local v28    # "motionViewPrevTop":I
    :cond_10
    if-nez v23, :cond_6

    const/16 v23, -0x1

    goto/16 :goto_3

    .line 3754
    .end local v20    # "coeff":F
    .end local v21    # "delta":I
    :cond_11
    div-int/lit8 v23, v23, 0x2

    goto/16 :goto_4

    .line 3789
    .end local v18    # "atEdge":Z
    .restart local v7    # "overscroll":I
    .restart local v29    # "motionViewRealTop":I
    :cond_12
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 3788
    const/4 v6, 0x0

    .line 3789
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    .line 3788
    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 3791
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_13

    .line 3793
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3797
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-nez v3, :cond_a

    .line 3799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v33

    .line 3800
    .local v33, "overscrollMode":I
    if-eqz v33, :cond_14

    .line 3801
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_a

    .line 3802
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3803
    :cond_14
    if-nez v19, :cond_15

    .line 3804
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3805
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3807
    :cond_15
    if-lez v23, :cond_18

    .line 3808
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3809
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3808
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3810
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_16

    .line 3811
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3813
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 3821
    :cond_17
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_5

    .line 3814
    :cond_18
    if-gez v23, :cond_17

    .line 3815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3816
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 3815
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    .line 3818
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 3830
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v25    # "motionIndex":I
    .end local v27    # "motionView":Landroid/view/View;
    .end local v28    # "motionViewPrevTop":I
    .end local v29    # "motionViewRealTop":I
    .end local v33    # "overscrollMode":I
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_c

    .line 3831
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_c

    .line 3832
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v32, v0

    .line 3833
    .local v32, "oldScroll":I
    sub-int v31, v32, v23

    .line 3834
    .local v31, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_21

    const/16 v30, 0x1

    .line 3836
    .local v30, "newDirection":I
    :goto_8
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_1a

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_1a

    .line 3837
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Touch over scroll: incrementalDeltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3838
    const-string/jumbo v5, ", mScrollY = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3838
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3838
    const-string/jumbo v5, ", newScroll = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3839
    const-string/jumbo v5, ", newDirection = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3839
    const-string/jumbo v5, ", mDirection = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3839
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3840
    const-string/jumbo v5, ", y = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3840
    const-string/jumbo v5, ", mLastY = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3840
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3841
    const-string/jumbo v5, ", mFirstPosition = "

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3841
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3837
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_1b

    .line 3845
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 3848
    :cond_1b
    move/from16 v0, v23

    neg-int v10, v0

    .line 3849
    .local v10, "overScrollDistance":I
    if-gez v31, :cond_22

    if-ltz v32, :cond_22

    .line 3850
    :cond_1c
    move/from16 v0, v32

    neg-int v10, v0

    .line 3851
    add-int v23, v23, v10

    .line 3856
    :goto_9
    if-eqz v10, :cond_1d

    .line 3857
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3858
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    .line 3857
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3858
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    .line 3857
    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3861
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-nez v3, :cond_1d

    .line 3863
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v33

    .line 3864
    .restart local v33    # "overscrollMode":I
    if-eqz v33, :cond_24

    .line 3865
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_1d

    .line 3866
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3886
    .end local v33    # "overscrollMode":I
    :cond_1d
    :goto_a
    if-eqz v23, :cond_20

    .line 3887
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_1e

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_1e

    .line 3888
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Coming back to \'real\' list scrolling: incrementalDeltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3889
    const-string/jumbo v5, ", mScrollY = "

    .line 3888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3889
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3890
    const-string/jumbo v5, ", mFirstPosition = "

    .line 3888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3890
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 3888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_1f

    .line 3894
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3895
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3898
    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3900
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3904
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v26

    .line 3906
    .local v26, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3907
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v26, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 3908
    .restart local v27    # "motionView":Landroid/view/View;
    if-eqz v27, :cond_28

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_b
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3909
    add-int v3, p2, v37

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3910
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3912
    .end local v26    # "motionPosition":I
    .end local v27    # "motionView":Landroid/view/View;
    :cond_20
    add-int/lit8 v3, p2, 0x0

    add-int v3, v3, v37

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3913
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_6

    .line 3834
    .end local v10    # "overScrollDistance":I
    .end local v30    # "newDirection":I
    :cond_21
    const/16 v30, -0x1

    .restart local v30    # "newDirection":I
    goto/16 :goto_8

    .line 3849
    .restart local v10    # "overScrollDistance":I
    :cond_22
    if-lez v31, :cond_23

    if-lez v32, :cond_1c

    .line 3853
    :cond_23
    const/16 v23, 0x0

    goto/16 :goto_9

    .line 3867
    .restart local v33    # "overscrollMode":I
    :cond_24
    if-lez v35, :cond_27

    .line 3868
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3869
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3868
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3870
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_25

    .line 3871
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3873
    :cond_25
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 3881
    :cond_26
    :goto_c
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_a

    .line 3874
    :cond_27
    if-gez v35, :cond_26

    .line 3875
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3876
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 3875
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3877
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_26

    .line 3878
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_c

    .line 3908
    .end local v33    # "overscrollMode":I
    .restart local v26    # "motionPosition":I
    .restart local v27    # "motionView":Landroid/view/View;
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_b
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1410
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1347
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1348
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1354
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1356
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1357
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1346
    :cond_1
    return-void

    .line 1349
    :cond_2
    if-eqz p1, :cond_0

    .line 1350
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1351
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2589
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2591
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 2592
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2599
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2600
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2602
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2603
    if-eq v0, v1, :cond_1

    .line 2604
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2588
    :cond_1
    return-void

    .line 2593
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2594
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    .line 2596
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 6473
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 6474
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6475
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 6477
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 6471
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3624
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v2, p2, v7

    .line 3625
    .local v2, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3626
    .local v3, "distance":I
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 3628
    .local v5, "overscroll":Z
    :goto_0
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_0

    .line 3629
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startScrollIfNeeded:deltaY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mScrollY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3630
    const-string/jumbo v9, ",mTouchSlop = "

    .line 3629
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3630
    iget v9, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 3629
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3630
    const-string/jumbo v9, ",mTouchMode = "

    .line 3629
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3630
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3629
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_0
    if-nez v5, :cond_1

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v7, :cond_8

    .line 3634
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 3635
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3636
    if-eqz v5, :cond_4

    .line 3637
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3638
    iput v10, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3643
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3644
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3648
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3649
    .local v1, "count":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 3650
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3651
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3652
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 3649
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3626
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v5    # "overscroll":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "overscroll":Z
    goto/16 :goto_0

    .line 3640
    :cond_4
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3641
    if-lez v2, :cond_5

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_5
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 3656
    .restart local v1    # "count":I
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3659
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 3660
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_7

    .line 3661
    invoke-interface {v6, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3663
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3664
    return v11

    .line 3667
    .end local v1    # "count":I
    .end local v4    # "i":I
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_8
    return v10
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1225
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1226
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1227
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1228
    const/16 v7, 0xb

    .line 1227
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1229
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1230
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1231
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1233
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1234
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1229
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1227
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 1235
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 1236
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1224
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 1715
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1716
    const v1, 0x1080062

    .line 1715
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1714
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 4985
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4986
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4987
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4989
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 4990
    return-void

    .line 4993
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 4994
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4995
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4996
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4998
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4993
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4984
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 6924
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 6883
    return-void
.end method

.method protected canOverScroll()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8616
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 8617
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1

    .line 8618
    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8621
    :cond_0
    return v2

    .line 8619
    :cond_1
    return v3
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5701
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5702
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 5703
    return v7

    .line 5706
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5707
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5708
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 5709
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 5710
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 5711
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    .line 5713
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5714
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_5

    :cond_4
    :goto_1
    return v6

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6797
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6953
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1072
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1075
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1068
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 6846
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6847
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6848
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6849
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6850
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6845
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2091
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2092
    .local v1, "count":I
    if-lez v1, :cond_5

    .line 2093
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_4

    .line 2094
    mul-int/lit8 v2, v1, 0x64

    .line 2096
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2097
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2098
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2100
    .local v3, "height":I
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v6, :cond_2

    .line 2102
    if-lez v3, :cond_0

    if-gez v4, :cond_0

    .line 2103
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2112
    :cond_0
    :goto_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2113
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2114
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2116
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v6, :cond_3

    .line 2118
    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 2119
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2128
    :cond_1
    :goto_1
    return v2

    .line 2107
    .end local v0    # "bottom":I
    :cond_2
    if-lez v3, :cond_0

    .line 2108
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    goto :goto_0

    .line 2123
    .restart local v0    # "bottom":I
    :cond_3
    if-lez v3, :cond_1

    .line 2124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    goto :goto_1

    .line 2130
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    const/4 v6, 0x1

    return v6

    .line 2133
    :cond_5
    return v7
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2138
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2139
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2140
    .local v0, "childCount":I
    if-ltz v2, :cond_3

    if-lez v0, :cond_3

    .line 2141
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_0

    .line 2142
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2143
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2144
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2145
    .local v3, "height":I
    if-lez v3, :cond_3

    .line 2146
    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    .line 2147
    iget v8, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 2146
    add-int/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7

    .line 2151
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2152
    .local v1, "count":I
    if-nez v2, :cond_1

    .line 2153
    const/4 v4, 0x0

    .line 2159
    .local v4, "index":I
    :goto_0
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    .line 2154
    .end local v4    # "index":I
    :cond_1
    add-int v7, v2, v0

    if-ne v7, v1, :cond_2

    .line 2155
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_0

    .line 2157
    .end local v4    # "index":I
    :cond_2
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_0

    .line 2162
    .end local v1    # "count":I
    .end local v4    # "index":I
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2168
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2169
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2170
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2172
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2177
    :cond_0
    :goto_0
    return v0

    .line 2175
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 6256
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 6258
    const/4 v2, 0x0

    .line 6259
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 6260
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 6261
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 6263
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 6264
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 6266
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 6267
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 6268
    .local v10, "end":I
    const/4 v11, 0x0

    .line 6269
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 6270
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 6271
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 6272
    const/4 v11, 0x1

    .line 6273
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6274
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 6279
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 6280
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 6281
    add-int/lit8 v9, v9, -0x1

    .line 6282
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 6283
    const/4 v2, 0x1

    .line 6284
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 6285
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 6286
    const/4 v8, 0x0

    .line 6285
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 6259
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 6269
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 6290
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 6294
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 6295
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 6254
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3269
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 5486
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 7104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7103
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2779
    const/4 v2, 0x0

    .line 2780
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_5

    const/4 v0, 0x1

    .line 2781
    .local v0, "clipToPadding":Z
    :goto_0
    sget-boolean v5, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgDraw:Z

    if-eqz v5, :cond_0

    .line 2782
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dispatchDraw: mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",clipToPadding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2783
    const-string/jumbo v7, ",this = "

    .line 2782
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_0
    if-eqz v0, :cond_1

    .line 2786
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2787
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2788
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2789
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    .line 2790
    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    .line 2791
    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    .line 2789
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2792
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2795
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2796
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_2

    .line 2797
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2800
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2802
    if-eqz v1, :cond_3

    .line 2803
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2806
    :cond_3
    if-eqz v0, :cond_4

    .line 2807
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2808
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2778
    :cond_4
    return-void

    .line 2780
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "clipToPadding":Z
    goto/16 :goto_0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3509
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3503
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 4743
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 4746
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v10, :cond_0

    .line 4747
    return-void

    .line 4751
    :cond_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_5

    .line 4752
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4753
    .local v5, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 4759
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_6

    .line 4760
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v8, v10, v11

    .line 4761
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 4762
    .local v3, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4763
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 4770
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_2

    .line 4771
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4773
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 4772
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4774
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 4775
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4776
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4777
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4778
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 4780
    :cond_1
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4782
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_5

    .line 4783
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4784
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 4785
    add-int v11, v6, v8

    add-int v12, v7, v3

    .line 4784
    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4786
    neg-int v10, v8

    add-int v1, v10, v6

    .line 4787
    .local v1, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4788
    if-eqz v0, :cond_3

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    .line 4787
    :cond_3
    sub-int v2, v10, v9

    .line 4789
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4790
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4791
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4792
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4793
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 4795
    :cond_4
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4742
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_5
    return-void

    .line 4765
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    .line 4766
    .restart local v8    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 4767
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 4768
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3025
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3026
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3024
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 7986
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7988
    const-string/jumbo v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7989
    const-string/jumbo v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7990
    const-string/jumbo v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7991
    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7992
    const-string/jumbo v1, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7993
    const-string/jumbo v1, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7995
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7996
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7997
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7998
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7985
    :cond_0
    return-void
.end method

.method public exitModeWhenNoneChecked()Z
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x1

    return v0
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 6109
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6110
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 6111
    return v2

    .line 6114
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 6115
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    .end local v1    # "motionRow":I
    :goto_0
    return v1

    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1633
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1634
    return-object p0

    .line 1636
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 4689
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4690
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4692
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4693
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4688
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 6937
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 6938
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 6937
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6947
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6943
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6948
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1567
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2355
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2356
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2357
    check-cast p1, Landroid/view/View;

    .line 2358
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2361
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2362
    const/4 v1, 0x0

    return-object v1

    .line 2365
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2199
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2200
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2201
    .local v2, "fadeEdge":F
    if-nez v1, :cond_0

    .line 2202
    return v2

    .line 2204
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 2205
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 2208
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2209
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2210
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2211
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    .line 2212
    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    .line 2211
    .end local v2    # "fadeEdge":F
    :cond_2
    return v2
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2834
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 7015
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1050
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 1051
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 1050
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 1054
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1055
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1056
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1058
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1059
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1018
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1022
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1035
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1038
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3434
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1702
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1703
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1706
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1707
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1701
    :goto_0
    return-void

    .line 1710
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 6052
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 6042
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 7928
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 7929
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7930
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 7931
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 7933
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7934
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    return v5

    .line 7937
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 7938
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 7939
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 7940
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7941
    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2819
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2453
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2429
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2829
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2413
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2414
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2416
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1589
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1590
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 1599
    return v1

    .line 1592
    :pswitch_0
    return v1

    .line 1594
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1597
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 1590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2958
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6982
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2037
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2040
    :cond_0
    return-object v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2182
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2183
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2184
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2185
    return v1

    .line 2187
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 2188
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 2191
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2192
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2193
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    .end local v1    # "fadeEdge":F
    :cond_2
    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2824
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6977
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1442
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 6301
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 6302
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6303
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 6305
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6306
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 6310
    :cond_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 6312
    if-lez v1, :cond_d

    .line 6317
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_6

    .line 6319
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6320
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6322
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 6323
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6324
    return-void

    .line 6325
    :cond_1
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_5

    .line 6326
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_2

    .line 6327
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 6328
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6329
    return-void

    .line 6331
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6332
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 6333
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6334
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6335
    .local v2, "lastBottom":I
    :goto_0
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_4

    .line 6336
    if-gt v2, v5, :cond_4

    .line 6337
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6338
    return-void

    .line 6334
    .end local v2    # "lastBottom":I
    :cond_3
    move v2, v5

    .restart local v2    # "lastBottom":I
    goto :goto_0

    .line 6342
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 6345
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_5
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 6393
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_c

    .line 6395
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 6398
    .local v6, "newPos":I
    if-lt v6, v1, :cond_7

    .line 6399
    add-int/lit8 v6, v1, -0x1

    .line 6401
    :cond_7
    if-gez v6, :cond_8

    .line 6402
    const/4 v6, 0x0

    .line 6406
    :cond_8
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6408
    .local v7, "selectablePos":I
    if-ltz v7, :cond_b

    .line 6409
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6410
    return-void

    .line 6347
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 6352
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6353
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 6355
    return-void

    .line 6359
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 6360
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_6

    .line 6362
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6363
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_6

    .line 6365
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 6367
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 6370
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6378
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6379
    return-void

    .line 6374
    :cond_a
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    goto :goto_1

    .line 6386
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6387
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 6389
    return-void

    .line 6413
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_b
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 6414
    if-ltz v7, :cond_d

    .line 6415
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6416
    return-void

    .line 6422
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_c
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_d

    .line 6423
    return-void

    .line 6430
    :cond_d
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_e

    :goto_2
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6431
    iput v14, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6432
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 6433
    iput v14, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 6434
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 6435
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 6436
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 6437
    iput v14, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 6438
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 6300
    return-void

    :cond_e
    move v8, v9

    .line 6430
    goto :goto_2

    .line 6345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 6859
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6066
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 6067
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 6068
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6070
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 6071
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6073
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 6074
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 6075
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 6065
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 6122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 6123
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 6124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 6125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6121
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1536
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1539
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1542
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1535
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1430
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v1, :cond_1

    .line 1431
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    .line 1433
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1453
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1454
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1456
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 6553
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1001
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1005
    :cond_0
    return v1
.end method

.method public isLeOverScrollEnable()Z
    .locals 1

    .prologue
    .line 8609
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2814
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1650
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1516
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1727
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1697
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1482
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3071
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3072
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3070
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2966
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2970
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2971
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2972
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2973
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2965
    :cond_1
    :goto_0
    return-void

    .line 2967
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 2975
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2977
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 2978
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    .line 2979
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2981
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2983
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2984
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2985
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    .line 2986
    if-eqz v1, :cond_8

    .line 2987
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 2988
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 2987
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2993
    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 2994
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_7

    .line 2995
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-direct {v5, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2997
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2998
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2990
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2346
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 2481
    const-string/jumbo v9, "obtainView"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2483
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-boolean v9, p2, v10

    .line 2487
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v7

    .line 2488
    .local v7, "transientView":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 2489
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2492
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 2494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2496
    .local v2, "logTime":J
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2499
    .local v8, "updatedView":Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2500
    .local v4, "nowTime":J
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_0

    sub-long v10, v4, v2

    const-wide/16 v12, 0xc8

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 2501
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ANR Warning] getView time too long, adapter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2502
    const-string/jumbo v11, ", position = "

    .line 2501
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2502
    const-string/jumbo v11, ", updatedView = "

    .line 2501
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2503
    const-string/jumbo v11, ", time = "

    .line 2501
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2503
    sub-long v12, v4, v2

    .line 2501
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    :cond_0
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_1

    sget-boolean v9, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v9, :cond_1

    .line 2507
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "obtainView1: position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2508
    const-string/jumbo v11, ", transientView = "

    .line 2507
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2509
    const-string/jumbo v11, ", updatedView = "

    .line 2507
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2509
    const-string/jumbo v11, ", this = "

    .line 2507
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    sget-boolean v9, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v9, :cond_1

    .line 2511
    invoke-virtual {v8}, Landroid/view/View;->debug()V

    .line 2516
    :cond_1
    if-eq v8, v7, :cond_2

    .line 2517
    invoke-direct {p0, v8, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2518
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, v8, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2522
    .end local v2    # "logTime":J
    .end local v4    # "nowTime":J
    .end local v8    # "updatedView":Landroid/view/View;
    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v9, p2, v10

    .line 2525
    invoke-virtual {v7}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2526
    return-object v7

    .line 2529
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v6

    .line 2532
    .local v6, "scrapView":Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2534
    .restart local v2    # "logTime":J
    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2537
    .local v0, "child":Landroid/view/View;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2538
    .restart local v4    # "nowTime":J
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_4

    sub-long v10, v4, v2

    const-wide/16 v12, 0xc8

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 2539
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ANR Warning] getView time too long, adapter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2540
    const-string/jumbo v11, ", position = "

    .line 2539
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2540
    const-string/jumbo v11, ", child = "

    .line 2539
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2541
    const-string/jumbo v11, ", time = "

    .line 2539
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2541
    sub-long v12, v4, v2

    .line 2539
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_4
    sget-boolean v9, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v9, :cond_5

    sget-boolean v9, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v9, :cond_5

    .line 2545
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "obtainView2: position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",scrapView = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2546
    const-string/jumbo v11, ",child = "

    .line 2545
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2546
    const-string/jumbo v11, ",this = "

    .line 2545
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    sget-boolean v9, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v9, :cond_5

    .line 2548
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 2552
    :cond_5
    if-eqz v6, :cond_6

    .line 2553
    if-eq v0, v6, :cond_b

    .line 2555
    iget-object v9, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v9, v6, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2564
    :cond_6
    :goto_0
    iget v9, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v9, :cond_7

    .line 2565
    iget v9, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v9}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2568
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v9

    if-nez v9, :cond_8

    .line 2569
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2572
    :cond_8
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2574
    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2575
    iget-object v9, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v9, :cond_9

    .line 2576
    new-instance v9, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2578
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v9

    if-nez v9, :cond_a

    .line 2579
    iget-object v9, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2583
    :cond_a
    const-wide/16 v10, 0x8

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2585
    return-object v0

    .line 2557
    :cond_b
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v9, p2, v10

    .line 2560
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3077
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3079
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3080
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3081
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_3

    .line 3085
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3086
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3087
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3090
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 3091
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3092
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3094
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3097
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_2

    .line 3098
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    .line 3076
    :cond_2
    return-void

    .line 3082
    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3274
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3275
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3276
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3278
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3279
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3281
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3282
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3284
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3285
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3273
    :cond_3
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 6634
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6635
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 6636
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6637
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 6639
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6640
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6641
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 6643
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3105
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3107
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3110
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3113
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3115
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3116
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3117
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3118
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3119
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3122
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3123
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3124
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3127
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3128
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3129
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3132
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3133
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3134
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3137
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3138
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3141
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3142
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3145
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3146
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3149
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3150
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3153
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3154
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3155
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3158
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3161
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_9

    .line 3162
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    .line 3104
    :cond_9
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 6443
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 6444
    sparse-switch p1, :sswitch_data_0

    .line 6456
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 6442
    return-void

    .line 6446
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6447
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 6451
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6452
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6456
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 6444
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 6929
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6930
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6931
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6928
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2045
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2046
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    :cond_0
    :goto_0
    return-void

    .line 2047
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 2050
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 2051
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2052
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2054
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 4635
    sget-boolean v3, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v3, :cond_0

    .line 4636
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGenericMotionEvent: mScrollY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4637
    const-string/jumbo v5, ",this = "

    .line 4636
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4676
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 4642
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 4643
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 4644
    .local v2, "vscroll":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 4645
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 4646
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4647
    return v6

    .line 4654
    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v3, :cond_1

    .line 4655
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iget v4, p0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    goto :goto_0

    .line 4663
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4664
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    .line 4665
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 4666
    :cond_3
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v6, :cond_1

    .line 4667
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4668
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4669
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4640
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 6864
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6866
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6863
    :cond_0
    :goto_0
    return-void

    .line 6866
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 6867
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6871
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6872
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2677
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2678
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2680
    :cond_0
    return-void

    .line 2678
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 2683
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2688
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2689
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2690
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2695
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2696
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2697
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2700
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2701
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2702
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2676
    :cond_3
    return-void

    .line 2684
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2685
    return-void

    .line 2692
    :cond_5
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 1573
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1574
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1577
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1578
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1580
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1581
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1582
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1583
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1572
    :cond_1
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4831
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 4832
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterceptHoverEvent: mFastScroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4833
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4832
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4833
    const-string/jumbo v2, ", this = "

    .line 4832
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4836
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_1

    .line 4837
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FastScroller interceptHoverEvent: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4838
    const-string/jumbo v2, ", x = "

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4838
    const-string/jumbo v2, ", y = "

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4839
    const-string/jumbo v2, ", mTouchMode = "

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4839
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4839
    const-string/jumbo v2, ", mFastScroll = "

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4839
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4840
    const-string/jumbo v2, ", this = "

    .line 4837
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4842
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4845
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4853
    .local v0, "actionMasked":I
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_0

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_0

    .line 4854
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInterceptTouchEvent: actionMasked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4855
    const-string/jumbo v9, ", x = "

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4855
    const-string/jumbo v9, ", y = "

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4855
    const-string/jumbo v9, ", mTouchMode = "

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4855
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4856
    const-string/jumbo v9, ", mFastScroll = "

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4856
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4856
    const-string/jumbo v9, ", this = "

    .line 4854
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4858
    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v7, :cond_1

    .line 4859
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4862
    :cond_1
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4870
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4871
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_2

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_2

    .line 4872
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "FastScroller interceptTouchEvent: actionMasked = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4873
    const-string/jumbo v9, ", x = "

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4873
    const-string/jumbo v9, ", y = "

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4874
    const-string/jumbo v9, ", mTouchMode = "

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4874
    iget v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4874
    const-string/jumbo v9, ", mFastScroll = "

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4874
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4875
    const-string/jumbo v9, ",this = "

    .line 4872
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    :cond_2
    const/4 v7, 0x1

    return v7

    .line 4867
    :cond_3
    const/4 v7, 0x0

    return v7

    .line 4880
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 4956
    :cond_5
    :goto_0
    :pswitch_0
    const/4 v7, 0x0

    return v7

    .line 4882
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4883
    .local v3, "touchMode":I
    const/4 v7, 0x6

    if-eq v3, v7, :cond_6

    const/4 v7, 0x5

    if-ne v3, v7, :cond_7

    .line 4884
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4885
    const/4 v7, 0x1

    return v7

    .line 4888
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 4889
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4890
    .local v6, "y":I
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4892
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4893
    .local v1, "motionPosition":I
    const/4 v7, 0x4

    if-eq v3, v7, :cond_8

    if-ltz v1, :cond_8

    .line 4896
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4897
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4898
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4899
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4900
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4901
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4902
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4904
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4905
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4906
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4907
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4908
    sget-boolean v7, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_9

    sget-boolean v7, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v7, :cond_9

    .line 4909
    const-string/jumbo v7, "AbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onInterceptTouchEvent touch down: motionPosition = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4910
    const-string/jumbo v9, ",mMotionPosition = "

    .line 4909
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4910
    iget v9, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4909
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4910
    const-string/jumbo v9, ",this = "

    .line 4909
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4913
    :cond_9
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4914
    const/4 v7, 0x4

    if-ne v3, v7, :cond_5

    .line 4915
    const/4 v7, 0x1

    return v7

    .line 4921
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 4923
    :pswitch_3
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4924
    .local v2, "pointerIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_a

    .line 4925
    const/4 v2, 0x0

    .line 4926
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4929
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4930
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4931
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4932
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v6, v8}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4933
    const/4 v7, 0x1

    return v7

    .line 4942
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4943
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4944
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4945
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4946
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 4951
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 4880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4921
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3477
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3482
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3483
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3484
    return v5

    .line 3486
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3487
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 3488
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3490
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3491
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3492
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3493
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3495
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3496
    return v5

    .line 3499
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, -0x1

    .line 2244
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2246
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2248
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2249
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2251
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2253
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 2256
    .end local v1    # "i":I
    :cond_1
    sget-boolean v2, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v2, :cond_2

    .line 2257
    const-string/jumbo v4, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "++onLayout mDataChanged="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2258
    const-string/jumbo v5, ", mOldItemCount="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2258
    iget v5, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2259
    const-string/jumbo v5, ", mItemCount="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2259
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2260
    const-string/jumbo v5, ", countFromAdapter="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2260
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2257
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2261
    const-string/jumbo v5, ", mLayoutMode="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2261
    iget v5, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2262
    const-string/jumbo v5, ", mSpecificTop="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2262
    iget v5, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2263
    const-string/jumbo v5, ", mSyncPosition="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2263
    iget v5, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2264
    const-string/jumbo v5, ", mSyncRowId="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2264
    iget-wide v6, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2257
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2265
    const-string/jumbo v5, ", mSyncHeight="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2265
    iget-wide v6, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2257
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2266
    const-string/jumbo v5, ", mNeedSync="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2266
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2267
    const-string/jumbo v5, ", mSyncMode="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2267
    iget v5, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2268
    const-string/jumbo v5, ", mResurrectToPosition="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2268
    iget v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2269
    const-string/jumbo v5, ", mSelectedTop="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2269
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2270
    const-string/jumbo v5, ", mAdapter="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2270
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2271
    const-string/jumbo v5, ", this="

    .line 2257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 2296
    sget-boolean v2, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v2, :cond_4

    .line 2297
    const-string/jumbo v2, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--onLayout mDataChanged="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2298
    const-string/jumbo v5, ", mOldItemCount="

    .line 2297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2298
    iget v5, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2299
    const-string/jumbo v5, ", mItemCount="

    .line 2297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2299
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2300
    const-string/jumbo v5, ", countFromAdapter="

    .line 2297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2300
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2297
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2301
    const-string/jumbo v4, ", mLayoutMode="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2301
    iget v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2302
    const-string/jumbo v4, ", mSpecificTop="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2302
    iget v4, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2303
    const-string/jumbo v4, ", mSyncPosition="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2303
    iget v4, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2304
    const-string/jumbo v4, ", mSyncRowId="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2304
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2297
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2305
    const-string/jumbo v4, ", mSyncHeight="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2305
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2297
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2306
    const-string/jumbo v4, ", mNeedSync="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2306
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2307
    const-string/jumbo v4, ", mSyncMode="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2307
    iget v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2308
    const-string/jumbo v4, ", mResurrectToPosition="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2308
    iget v4, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2309
    const-string/jumbo v4, ", mSelectedTop="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2309
    iget v4, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2310
    const-string/jumbo v4, ", mAdapter="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2310
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2311
    const-string/jumbo v4, ", this="

    .line 2297
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2315
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 2318
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 2319
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 2243
    :cond_5
    return-void

    :cond_6
    move v2, v3

    .line 2260
    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2218
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2219
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2221
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2222
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 2223
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 2224
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 2225
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 2228
    iget v7, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2229
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2230
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 2231
    .local v3, "listBottom":I
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2232
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2233
    .local v1, "lastBottom":I
    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_4

    .line 2234
    if-gt v1, v3, :cond_3

    .line 2233
    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2217
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .line 2232
    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .restart local v1    # "lastBottom":I
    goto :goto_0

    :cond_3
    move v5, v6

    .line 2234
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2233
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 4726
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4727
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4728
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4729
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4730
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 4731
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4733
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4734
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4736
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4738
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4710
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 4711
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4712
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4713
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4714
    :cond_0
    move v4, p5

    .line 4715
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 4716
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 4717
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 4718
    sub-int/2addr v4, v2

    :cond_1
    move-object v0, p0

    move v3, v1

    .line 4720
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4709
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .line 4712
    .end local v8    # "oldTop":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "oldTop":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 4703
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4704
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4702
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 4613
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 4614
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverScrolled: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",scrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4615
    const-string/jumbo v2, ",clampedY = "

    .line 4614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4615
    const-string/jumbo v2, ",this = "

    .line 4614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_2

    .line 4620
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->onOverScrolled(IIZZ)V

    .line 4612
    :cond_1
    :goto_0
    return-void

    .line 4623
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_1

    .line 4624
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 4625
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4626
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 4628
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7112
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    .line 7113
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7114
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 7115
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 7116
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7118
    :cond_0
    return v2

    .line 7119
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 7120
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 7121
    const/4 v0, 0x1

    return v0

    .line 7123
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 7130
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    move-object v0, p1

    .line 1946
    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1948
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1949
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 1951
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1953
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_5

    .line 1954
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1955
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1956
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1957
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 1958
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1959
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1973
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1975
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1976
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1979
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1980
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1983
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1985
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1986
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1987
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1990
    :cond_3
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v1, :cond_4

    .line 1991
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRestoreInstanceState: ss = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1945
    return-void

    .line 1960
    :cond_5
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 1961
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1963
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1964
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1965
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1966
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1967
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1968
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSyncPosition(I)Z

    .line 1969
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1970
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3251
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3252
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3253
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3250
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 1851
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1853
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 1855
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1857
    .local v10, "ss":Landroid/widget/AbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v14, :cond_0

    .line 1859
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1860
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1861
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1862
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->position:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1863
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->height:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1864
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1865
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v14, v14, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1866
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1867
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1868
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1869
    return-object v10

    .line 1872
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v14, :cond_3

    const/4 v5, 0x1

    .line 1873
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v8

    .line 1874
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1875
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1877
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_4

    .line 1879
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1880
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1881
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1908
    :goto_1
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1909
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v14, :cond_1

    .line 1910
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1911
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 1912
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1913
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 1914
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1919
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1921
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v14, :cond_2

    .line 1922
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1924
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v14, :cond_9

    .line 1925
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1926
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 1927
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 1928
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1927
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1872
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    .line 1883
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v14, :cond_6

    .line 1893
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1894
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1895
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1896
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v14, :cond_5

    .line 1897
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v4, v14, -0x1

    .line 1899
    :cond_5
    iput v4, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1900
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    .line 1902
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1903
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1904
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1919
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1930
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1932
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1934
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v14, :cond_a

    .line 1935
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v14}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 1937
    :cond_a
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_b

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v14, :cond_b

    .line 1938
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onSaveInstanceState: ss = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",this = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_b
    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2839
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v0, :cond_0

    .line 2840
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2841
    const-string/jumbo v2, ", h="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2842
    const-string/jumbo v2, ", oldw="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2843
    const-string/jumbo v2, ", oldh="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2844
    const-string/jumbo v2, ", getChildCount="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2844
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2845
    const-string/jumbo v2, ", mSyncPosition="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2845
    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2846
    const-string/jumbo v2, ", mNeedSync="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2846
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2847
    const-string/jumbo v2, ", mSyncMode="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2847
    iget v2, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2848
    const-string/jumbo v2, ", mAdapter"

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2848
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2849
    const-string/jumbo v2, ", this="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2850
    const-string/jumbo v2, ", callstack="

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2850
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 2840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2854
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 2857
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 2858
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2862
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_3

    .line 2863
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2838
    :cond_3
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 4698
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6893
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6894
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6895
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6896
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6897
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 6899
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6900
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6906
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 6907
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6909
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 6910
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6892
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 6901
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 6903
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6904
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6912
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3976
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3979
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v14

    :goto_0
    return v14

    :cond_0
    const/4 v14, 0x1

    goto :goto_0

    .line 3982
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v14, :cond_2

    .line 3983
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v14}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3986
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 3994
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3996
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3997
    const/4 v14, 0x1

    return v14

    .line 3991
    :cond_3
    const/4 v14, 0x0

    return v14

    .line 4004
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 4005
    .local v2, "action":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-le v14, v15, :cond_b

    .line 4006
    :cond_5
    const/4 v5, -0x1

    .line 4007
    .local v5, "countFromAdapter":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_6

    .line 4008
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 4011
    :cond_6
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_7

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v14, :cond_7

    .line 4012
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Intent to operate on non-exist data, childcount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4013
    const-string/jumbo v16, ", mFirstPosition="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4013
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4013
    const-string/jumbo v16, ", mItemCount="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4013
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4014
    const-string/jumbo v16, ", adapter count="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4014
    const-string/jumbo v16, ", mAdapter="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4015
    const-string/jumbo v16, ", action="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4015
    const-string/jumbo v16, ", mActivePointerId="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4015
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v16, v0

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4016
    const-string/jumbo v16, ", mScrollY="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4016
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v16, v0

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4016
    const-string/jumbo v16, ", this="

    .line 4012
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    :cond_7
    and-int/lit16 v14, v2, 0xff

    const/4 v15, 0x6

    if-ne v14, v15, :cond_8

    .line 4021
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4024
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v14, :cond_9

    .line 4025
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4027
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v14, :cond_a

    .line 4028
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4030
    :cond_a
    const/4 v14, 0x1

    return v14

    .line 4034
    .end local v5    # "countFromAdapter":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4035
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    .line 4037
    .local v11, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 4038
    .local v3, "actionMasked":I
    if-nez v3, :cond_c

    .line 4039
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4041
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v15, v15

    invoke-virtual {v11, v14, v15}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4042
    packed-switch v3, :pswitch_data_0

    .line 4135
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v14, :cond_d

    .line 4136
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14, v11}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4138
    :cond_d
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 4139
    const/4 v14, 0x1

    return v14

    .line 4044
    :pswitch_1
    const-string/jumbo v14, "listDown"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4045
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    .line 4046
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 4051
    :pswitch_2
    const-string/jumbo v14, "listMove"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4052
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 4053
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 4058
    :pswitch_3
    const-string/jumbo v14, "listUp"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4059
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 4060
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 4065
    :pswitch_4
    const-string/jumbo v14, "listCancel"

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4066
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    .line 4067
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1

    .line 4076
    :pswitch_5
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4077
    .local v8, "lostMotionPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v14, v8, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4078
    .local v10, "v":Landroid/view/View;
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/view/View;->hasFocusable()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 4083
    :cond_e
    :goto_2
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_f

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v14, :cond_f

    .line 4084
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Touch second pointer up, touch mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4085
    const-string/jumbo v16, ",mScrollY = "

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v16, v0

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4085
    const-string/jumbo v16, ",mActivePointerId = "

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v16, v0

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4086
    const-string/jumbo v16, ",mFirstPosition = "

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4086
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4086
    const-string/jumbo v16, ",mDataChanged = "

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4087
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4087
    const-string/jumbo v16, ",adatper size = "

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4087
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4087
    const-string/jumbo v16, ",this = "

    .line 4084
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_f
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 4091
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4092
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4093
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 4094
    .local v9, "motionPosition":I
    if-ltz v9, :cond_10

    .line 4096
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v14, v9, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4097
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4098
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4100
    .end local v4    # "child":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 4078
    .end local v9    # "motionPosition":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_11
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 4079
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_2

    .line 4106
    .end local v8    # "lostMotionPosition":I
    .end local v10    # "v":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 4107
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 4109
    .local v6, "id":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 4110
    .restart local v12    # "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 4111
    .restart local v13    # "y":I
    sget-boolean v14, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v14, :cond_13

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-nez v14, :cond_12

    sget-boolean v14, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v14, :cond_13

    .line 4112
    :cond_12
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Touch second pointer down, touch mode = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4113
    const-string/jumbo v16, ", mScrollY = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4113
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v16, v0

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4114
    const-string/jumbo v16, ", mActivePointerId = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4114
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v16, v0

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4114
    const-string/jumbo v16, ", id = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4115
    const-string/jumbo v16, ", index = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4115
    const-string/jumbo v16, ", mFirstPosition = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4115
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4116
    const-string/jumbo v16, ", mDataChanged = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4116
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4116
    const-string/jumbo v16, ", adatper size = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4116
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v16, v0

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4117
    const-string/jumbo v16, ", this = "

    .line 4112
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    :cond_13
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4120
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4121
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4122
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4123
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v9

    .line 4124
    .restart local v9    # "motionPosition":I
    if-ltz v9, :cond_14

    .line 4126
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v14, v9, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4127
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4128
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4130
    .end local v4    # "child":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 4042
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3942
    if-eqz p1, :cond_2

    .line 3944
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3948
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3951
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3953
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3941
    :cond_1
    :goto_0
    return-void

    .line 3955
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3956
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3957
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3958
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3960
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3961
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3964
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3965
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3966
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3967
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3968
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3169
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3170
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v1, :cond_0

    .line 3171
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged: hasWindowFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 3182
    .local v0, "touchMode":I
    :goto_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_1

    .line 3183
    if-eqz p1, :cond_6

    .line 3184
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    .line 3199
    :cond_1
    :goto_1
    if-nez p1, :cond_8

    .line 3200
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3201
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    .line 3202
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3205
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3206
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_2

    .line 3207
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3209
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_3

    .line 3210
    iput v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3211
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3212
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3213
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 3217
    :cond_3
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3219
    if-ne v0, v5, :cond_4

    .line 3221
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 3246
    :cond_4
    :goto_2
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 3168
    return-void

    .line 3174
    .end local v0    # "touchMode":I
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "touchMode":I
    goto :goto_0

    .line 3186
    :cond_6
    iget v1, p0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    if-eqz v1, :cond_7

    .line 3187
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    .line 3188
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3192
    :cond_7
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3193
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_1

    .line 3225
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_a

    .line 3231
    :cond_9
    :goto_3
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v1, v6, :cond_4

    .line 3233
    if-ne v0, v5, :cond_b

    .line 3235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_2

    .line 3227
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_3

    .line 3239
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3240
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 3241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_2
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1606
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1607
    return v4

    .line 1609
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1627
    return v3

    .line 1612
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1613
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 1614
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1615
    return v4

    .line 1617
    .end local v0    # "viewportHeight":I
    :cond_1
    return v3

    .line 1620
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 1621
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 1622
    .restart local v0    # "viewportHeight":I
    neg-int v1, v0

    invoke-virtual {p0, v1, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1623
    return v4

    .line 1625
    .end local v0    # "viewportHeight":I
    :cond_2
    return v3

    .line 1609
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1158
    const/4 v8, 0x0

    .line 1159
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 1161
    .local v7, "dispatchItemClick":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_4

    .line 1162
    const/4 v8, 0x1

    .line 1163
    const/4 v0, 0x0

    .line 1165
    .local v0, "checkedStateChanged":Z
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1166
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_a

    .line 1167
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    .line 1168
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1169
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1170
    if-eqz v6, :cond_8

    .line 1171
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1176
    :cond_1
    :goto_1
    if-eqz v6, :cond_9

    .line 1177
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1181
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1182
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1184
    const/4 v7, 0x0

    .line 1186
    :cond_2
    const/4 v0, 0x1

    .line 1203
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1204
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1208
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v1, :cond_5

    .line 1209
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performItemClick view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1210
    const-string/jumbo v3, ", mChoiceMode="

    .line 1209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1210
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1210
    const-string/jumbo v3, ", dispatchItemClick="

    .line 1209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_5
    if-eqz v7, :cond_6

    .line 1213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1216
    .end local v8    # "handled":Z
    :cond_6
    return v8

    .line 1167
    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto/16 :goto_0

    .line 1173
    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto/16 :goto_1

    .line 1179
    :cond_9
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_2

    .line 1187
    .end local v6    # "checked":Z
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_3

    .line 1188
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v6, 0x0

    .line 1189
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_e

    .line 1190
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1191
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1192
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1193
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1194
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1196
    :cond_b
    iput v5, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1200
    :cond_c
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1188
    .end local v6    # "checked":Z
    :cond_d
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_4

    .line 1197
    :cond_e
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1198
    :cond_f
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 3408
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3409
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 3410
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3411
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3412
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3414
    :cond_0
    return v2

    .line 3417
    :cond_1
    const/4 v6, 0x0

    .line 3418
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3419
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3422
    .end local v6    # "handled":Z
    :cond_2
    if-nez v6, :cond_3

    .line 3423
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3424
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3426
    :cond_3
    if-eqz v6, :cond_4

    .line 3427
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3429
    :cond_4
    return v6
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3523
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3524
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3525
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3526
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3529
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3530
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3531
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3532
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3533
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3534
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3535
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    .line 3530
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3539
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3552
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3553
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3554
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    .line 3556
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2728
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2727
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 2717
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2718
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2719
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 2720
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 2721
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2716
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 2723
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2710
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2709
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 7026
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 7027
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->-get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 7030
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7031
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7032
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 7034
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7035
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7036
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7037
    if-eqz v3, :cond_0

    .line 7039
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7030
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7043
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 7044
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 7025
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6085
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 6086
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 6087
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6089
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6090
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6091
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 5010
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v0, :cond_0

    .line 5011
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportScrollStateChange: newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5012
    const-string/jumbo v2, ", mLastScrollState = "

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5012
    iget v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5013
    const-string/jumbo v2, ", mOnScrollListener = "

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5013
    iget-object v2, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5013
    const-string/jumbo v2, ", mScrollY = "

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5013
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5014
    const-string/jumbo v2, ", mTouchMode = "

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5014
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5014
    const-string/jumbo v2, ", mFirstPosition = "

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5014
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5017
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_1

    .line 5018
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 5019
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 5020
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5009
    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 4823
    if-eqz p1, :cond_0

    .line 4824
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4826
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4822
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2060
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2061
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    goto :goto_0
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1745
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1746
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1747
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1748
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1744
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2069
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2070
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2071
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2072
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2073
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2074
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2075
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2076
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2077
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2078
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2079
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2080
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2081
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2082
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v0, :cond_0

    .line 2083
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectorRect.setEmpty in resetList this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2084
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "resetList"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2083
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2086
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2068
    return-void
.end method

.method protected restoreOverScroll(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 8630
    if-eqz p1, :cond_0

    .line 8631
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8632
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 8633
    invoke-virtual {p0, v1, p1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 8634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 8629
    :cond_0
    :goto_0
    return-void

    .line 8636
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 6153
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 6155
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 6156
    const/16 v17, 0x0

    return v17

    .line 6159
    :cond_0
    const/4 v13, 0x0

    .line 6161
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 6162
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 6163
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 6164
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6165
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 6167
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 6168
    move v12, v14

    .line 6170
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 6171
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 6172
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 6175
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 6176
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 6232
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6237
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6238
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6239
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 6240
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 6241
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 6242
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setListLayoutMode(I)Z

    .line 6243
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6244
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 6245
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6249
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6251
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    :goto_2
    return v17

    .line 6177
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 6178
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    .line 6179
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    .line 6178
    sub-int v13, v17, v18

    goto :goto_0

    .line 6182
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 6184
    move v12, v7

    .line 6185
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 6186
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6187
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6189
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 6191
    move v13, v15

    .line 6193
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 6196
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 6199
    :cond_6
    if-lt v15, v5, :cond_7

    .line 6201
    add-int v12, v7, v8

    .line 6202
    move v13, v15

    .line 6203
    goto/16 :goto_0

    .line 6185
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 6207
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 6208
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 6209
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 6211
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 6212
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 6213
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 6214
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 6216
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 6217
    move v13, v15

    .line 6218
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 6219
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 6223
    :cond_a
    if-gt v2, v4, :cond_b

    .line 6224
    add-int v12, v7, v8

    .line 6225
    move v13, v15

    .line 6226
    goto/16 :goto_0

    .line 6211
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 6247
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_1

    .line 6251
    :cond_d
    const/16 v17, 0x0

    goto :goto_2
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6133
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6134
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6135
    const/4 v0, 0x1

    return v0

    .line 6137
    :cond_0
    return v1
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 5688
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5687
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1551
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1552
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1553
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1554
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    .line 1555
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1556
    return-void

    .line 1558
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1559
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1562
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    .line 1547
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6565
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6566
    return v8

    .line 6569
    :cond_0
    const/4 v2, 0x0

    .line 6570
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 6571
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 6603
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 6604
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6606
    move-object v1, p3

    .line 6607
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 6608
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v8}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6611
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6612
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 6626
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    .line 6578
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    .line 6579
    goto :goto_0

    .line 6581
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6582
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 6583
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 6584
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 6585
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 6586
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 6588
    :cond_3
    const/4 v2, 0x1

    .line 6595
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 6596
    goto :goto_0

    .line 6589
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 6590
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    .line 6589
    if-eqz v5, :cond_4

    .line 6590
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 6591
    const/4 v2, 0x1

    .line 6592
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 6599
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .local v3, "okToSend":Z
    goto :goto_0

    .line 6614
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 6618
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 6622
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 6571
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 6612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 947
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 948
    if-eqz p1, :cond_0

    .line 949
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 950
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 956
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 960
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 961
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 947
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 6996
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6997
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6998
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6999
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7000
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6999
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7002
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6995
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 3
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1260
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1261
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1263
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1265
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1266
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1267
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1269
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1270
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1273
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1274
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1259
    :cond_3
    return-void
.end method

.method setDataChanged(Z)Z
    .locals 3
    .param p1, "changed"    # Z

    .prologue
    .line 8483
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgDataChange:Z

    if-eqz v0, :cond_0

    .line 8484
    const-string/jumbo v1, "AbsListView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataChanged oldDataChanged="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8485
    const-string/jumbo v2, ", mDataChanged="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8486
    const-string/jumbo v2, ", mOldItemCount="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8486
    iget v2, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8487
    const-string/jumbo v2, ", mItemCount="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8487
    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8488
    const-string/jumbo v2, ", countFromAdapter="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8488
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 8484
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8489
    const-string/jumbo v2, ", mAdapter="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8489
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8490
    const-string/jumbo v2, ", this="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8491
    const-string/jumbo v2, ", callstack="

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8491
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 8484
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8493
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setDataChanged(Z)Z

    move-result v0

    return v0

    .line 8488
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2921
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2920
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1390
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1391
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 1395
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1397
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1398
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1389
    :cond_1
    :goto_1
    return-void

    .line 1392
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 1400
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1330
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1331
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1333
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1334
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1368
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1369
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 1367
    :goto_0
    return-void

    .line 1371
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2009
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 2010
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2013
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2018
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 2020
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 2021
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2022
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2026
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2027
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2330
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2335
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2336
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2340
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2334
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 5466
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5467
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5469
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 5465
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1087
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_0

    .line 1088
    return-void

    .line 1093
    :cond_0
    if-nez p2, :cond_8

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_7

    .line 1103
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_c

    .line 1104
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1105
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1106
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1107
    if-eqz p2, :cond_a

    .line 1108
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1113
    :cond_3
    :goto_1
    if-eq v0, p2, :cond_4

    .line 1114
    if-eqz p2, :cond_b

    .line 1115
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1120
    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 1121
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1122
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1149
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_5
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_13

    .line 1086
    :cond_6
    :goto_4
    return-void

    .line 1093
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->exitModeWhenNoneChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 1094
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_9

    .line 1095
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1100
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 1096
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1110
    .restart local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1117
    :cond_b
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1126
    .end local v0    # "oldValue":Z
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    .line 1129
    :goto_5
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1130
    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1131
    if-eqz v7, :cond_e

    .line 1132
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1137
    :cond_e
    if-eqz p2, :cond_11

    .line 1138
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1139
    if-eqz v7, :cond_f

    .line 1140
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1142
    :cond_f
    iput v8, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1126
    :cond_10
    const/4 v7, 0x0

    .local v7, "updateIds":Z
    goto :goto_5

    .line 1143
    .end local v7    # "updateIds":Z
    :cond_11
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1144
    :cond_12
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_3

    .line 1150
    :cond_13
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setDataChanged(Z)Z

    .line 1151
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1152
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_4
.end method

.method public setLeOverScrollEnable(Z)V
    .locals 3
    .param p1, "leOverScrollEnable"    # Z

    .prologue
    .line 8592
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    .line 8594
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_0

    .line 8595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 8596
    iget v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 8591
    :goto_0
    return-void

    .line 8598
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 8599
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 8600
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    goto :goto_0
.end method

.method setListLayoutMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 8506
    sget-boolean v1, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v1, :cond_0

    .line 8507
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setListLayoutMode oldLayoutMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8508
    const-string/jumbo v3, ", mLayoutMode="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8509
    const-string/jumbo v3, ", mSpecificTop="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8509
    iget v3, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8510
    const-string/jumbo v3, ", mSyncPosition="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8510
    iget v3, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8511
    const-string/jumbo v3, ", mSyncRowId="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8511
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8507
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8512
    const-string/jumbo v3, ", mSyncHeight="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8512
    iget-wide v4, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 8507
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8513
    const-string/jumbo v3, ", mNeedSync="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8513
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8514
    const-string/jumbo v3, ", mSyncMode="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8514
    iget v3, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8515
    const-string/jumbo v3, ", mResurrectToPosition="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8515
    iget v3, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8516
    const-string/jumbo v3, ", mSelectedTop="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8516
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8517
    const-string/jumbo v3, ", mAdapter="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8517
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8518
    const-string/jumbo v3, ", this="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8519
    const-string/jumbo v3, ", callstack="

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8519
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 8507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8521
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 8522
    .local v0, "ret":Z
    :goto_0
    iput p1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8523
    return v0

    .line 8521
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1290
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1291
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1293
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1289
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 3
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1525
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbg:Z

    if-eqz v0, :cond_0

    .line 1526
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOnScrollListener: OnScrollListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1529
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1524
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 927
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-nez v1, :cond_0

    .line 929
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 930
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 931
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 932
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 933
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 940
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 925
    return-void

    .line 936
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 937
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 7160
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 7159
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7067
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 7068
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7069
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 7070
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 7069
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 7071
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7072
    return-void

    .line 7075
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 7077
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 7078
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7079
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7064
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 7093
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7094
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 7090
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1470
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1471
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1469
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3004
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3005
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3003
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1667
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1670
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1666
    return-void

    .line 1668
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 7954
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7955
    return-void

    .line 7958
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7959
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7960
    if-ltz p1, :cond_1

    .line 7961
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 7967
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 7968
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7969
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7971
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 7972
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7973
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7976
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 7977
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7979
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7953
    :cond_4
    return-void

    .line 7964
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2932
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2931
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 2936
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2937
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2938
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2940
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2941
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2942
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2943
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 2944
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 2945
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 2946
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 2947
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2948
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2935
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1504
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1503
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1738
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1739
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1740
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1737
    :cond_0
    return-void
.end method

.method setSyncPosition(I)Z
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 8536
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgLayout:Z

    if-eqz v0, :cond_0

    .line 8537
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncPosition oldSyncPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8538
    const-string/jumbo v2, ", mSyncPosition="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8539
    const-string/jumbo v2, ", mSpecificTop="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8539
    iget v2, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8540
    const-string/jumbo v2, ", mSyncRowId="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8540
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 8537
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8541
    const-string/jumbo v2, ", mSyncHeight="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8541
    iget-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 8537
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8542
    const-string/jumbo v2, ", mNeedSync="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8542
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8543
    const-string/jumbo v2, ", mSyncMode="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8543
    iget v2, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8544
    const-string/jumbo v2, ", this="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8545
    const-string/jumbo v2, ", callstack="

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8545
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 8537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8547
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setSyncPosition(I)Z

    move-result v0

    return v0
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1684
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1683
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 8665
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v0, :cond_1

    .line 8666
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8664
    :cond_1
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 6967
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6966
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 5479
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 5478
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1462
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1463
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1461
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 7143
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 7144
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 7142
    :cond_0
    return-void
.end method

.method protected shouldRestoreOverScroll()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8651
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mNeedRestoreOverScroll:Z

    if-eqz v2, :cond_2

    .line 8652
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 8653
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 8651
    :cond_0
    :goto_0
    return v0

    .line 8654
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 8651
    goto :goto_0
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2890
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3440
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 3441
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3442
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3443
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3444
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3445
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3446
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3449
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenu(FFI)Z

    move-result v4

    return v4
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 3454
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3455
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3456
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3457
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3459
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3460
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3463
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 3465
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3464
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3467
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3470
    :cond_1
    return v6

    .line 3472
    .end local v4    # "longPressId":J
    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 5580
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 5579
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 5584
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 5585
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 5589
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5590
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 5591
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 5592
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 5593
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 5595
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v5, :cond_4

    .line 5599
    :cond_1
    sget-boolean v5, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v5, :cond_2

    .line 5600
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smoothScrollBy: mScrollY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5601
    const-string/jumbo v7, ",mItemCount = "

    .line 5600
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5601
    iget v7, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5600
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5601
    const-string/jumbo v7, ",childCount = "

    .line 5600
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5605
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 5606
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5583
    :cond_3
    :goto_0
    return-void

    .line 5595
    :cond_4
    if-eqz v1, :cond_1

    .line 5596
    if-nez v2, :cond_5

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_5

    if-ltz p1, :cond_1

    .line 5597
    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_6

    .line 5598
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_6

    if-gtz p1, :cond_1

    .line 5609
    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5610
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    .line 5618
    const/4 v2, -0x1

    .line 5619
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 5620
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5625
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 5626
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5627
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5628
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5629
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5631
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5632
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5633
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5634
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5635
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    .line 5638
    add-int/lit8 v2, v2, 0x1

    .line 5645
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5617
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 5621
    :cond_3
    if-lez p1, :cond_0

    .line 5622
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 5639
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_1

    .line 5642
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 5495
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5496
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5497
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5497
    const-string/jumbo v2, ",this = "

    .line 5496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5500
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5502
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 5494
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 5563
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5564
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",boundPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5565
    const-string/jumbo v2, ",mPositionScroller = "

    .line 5564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5565
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5565
    const-string/jumbo v2, ",mScrollY = "

    .line 5564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5566
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5566
    const-string/jumbo v2, ",this = "

    .line 5564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5569
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5571
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 5562
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 5541
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5542
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPositionFromTop: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5543
    const-string/jumbo v2, ",mPositionScroller = "

    .line 5542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5543
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5543
    const-string/jumbo v2, ",mScrollY = "

    .line 5542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5544
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5544
    const-string/jumbo v2, ",this = "

    .line 5542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5546
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5547
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5549
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 5540
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 5518
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v0, :cond_0

    .line 5519
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToPositionFromTop: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5520
    const-string/jumbo v2, ", offset = "

    .line 5519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5520
    const-string/jumbo v2, ", duration = "

    .line 5519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5521
    const-string/jumbo v2, ", mScrollY = "

    .line 5519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5521
    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5521
    const-string/jumbo v2, ", this = "

    .line 5519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_1

    .line 5524
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 5526
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 5517
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2873
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2878
    const/4 v0, 0x0

    return v0

    .line 2876
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 39
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 5727
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    .line 5728
    .local v9, "childCount":I
    if-nez v9, :cond_0

    .line 5729
    const/16 v35, 0x1

    return v35

    .line 5733
    :cond_0
    const/16 v25, 0x0

    .line 5734
    .local v25, "isAtEdge":Z
    const/4 v13, 0x0

    .line 5736
    .local v13, "dontRecycle":Z
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v19

    .line 5737
    .local v19, "firstTop":I
    add-int/lit8 v35, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v27

    .line 5740
    .local v27, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    .line 5745
    .local v28, "listPadding":Landroid/graphics/Rect;
    const/16 v16, 0x0

    .line 5746
    .local v16, "effectivePaddingTop":I
    const/4 v15, 0x0

    .line 5747
    .local v15, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v35, v0

    and-int/lit8 v35, v35, 0x22

    const/16 v36, 0x22

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1

    .line 5748
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 5749
    move-object/from16 v0, v28

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 5753
    :cond_1
    sub-int v30, v16, v19

    .line 5754
    .local v30, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    sub-int v17, v35, v15

    .line 5755
    .local v17, "end":I
    sub-int v31, v27, v17

    .line 5757
    .local v31, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v36, v0

    sub-int v22, v35, v36

    .line 5758
    .local v22, "height":I
    sget-boolean v35, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v35, :cond_2

    sget-boolean v35, Landroid/widget/AbsListView;->sDbgMotion:Z

    if-eqz v35, :cond_2

    .line 5759
    const-string/jumbo v35, "AbsListView"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "trackMotionScroll: deltaY = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ",mScrollY = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5760
    const-string/jumbo v37, ",incrementalDeltaY = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5760
    const-string/jumbo v37, ",firstTop = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5761
    const-string/jumbo v37, ",lastBottom = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5761
    const-string/jumbo v37, ",height = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5761
    const-string/jumbo v37, ",childCount = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5762
    const-string/jumbo v37, ",spaceAbove = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 5762
    const-string/jumbo v37, ",this = "

    .line 5759
    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5764
    :cond_2
    if-gez p1, :cond_15

    .line 5765
    add-int/lit8 v35, v22, -0x1

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5770
    :goto_0
    if-gez p2, :cond_16

    .line 5771
    add-int/lit8 v35, v22, -0x1

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5776
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    .line 5779
    .local v18, "firstPosition":I
    if-nez v18, :cond_17

    .line 5780
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5784
    :goto_2
    add-int v35, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_18

    .line 5785
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    add-int v35, v35, v27

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5791
    :goto_3
    if-nez v18, :cond_1a

    .line 5792
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-lt v0, v1, :cond_1a

    if-ltz p2, :cond_19

    const/4 v6, 0x1

    .line 5793
    .local v6, "cannotScrollDown":Z
    :goto_4
    add-int v35, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    .line 5794
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v27

    move/from16 v1, v35

    if-gt v0, v1, :cond_1c

    if-gtz p2, :cond_1b

    const/4 v7, 0x1

    .line 5796
    .local v7, "cannotScrollUp":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->canOverScroll()Z

    move-result v35

    if-eqz v35, :cond_1d

    const/4 v5, 0x0

    .line 5799
    .local v5, "cannotOverScroll":Z
    :goto_6
    if-nez v6, :cond_3

    if-eqz v7, :cond_4

    .line 5801
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1e

    .line 5802
    const/4 v13, 0x1

    .line 5809
    :cond_4
    if-gez p2, :cond_20

    const/4 v14, 0x1

    .line 5811
    .local v14, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v24

    .line 5812
    .local v24, "inTouchMode":Z
    if-eqz v24, :cond_5

    .line 5813
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5816
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v21

    .line 5817
    .local v21, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v35, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v36

    sub-int v20, v35, v36

    .line 5819
    .local v20, "footerViewsStart":I
    const/16 v32, 0x0

    .line 5820
    .local v32, "start":I
    const/4 v11, 0x0

    .line 5823
    .local v11, "count":I
    const/16 v26, 0x0

    .line 5824
    .local v26, "isEnter":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_22

    .line 5825
    if-eqz v13, :cond_21

    const/16 v26, 0x0

    .line 5830
    :goto_8
    if-eqz v26, :cond_7

    .line 5832
    if-eqz v14, :cond_25

    .line 5833
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v33, v0

    .line 5834
    .local v33, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v35, v0

    and-int/lit8 v35, v35, 0x22

    const/16 v36, 0x22

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 5835
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    add-int v33, v33, v35

    .line 5837
    :cond_6
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_9
    move/from16 v0, v23

    if-ge v0, v9, :cond_7

    .line 5838
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5839
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v33

    if-lt v0, v1, :cond_23

    .line 5876
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "i":I
    .end local v33    # "top":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v35, v0

    add-int v35, v35, p1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5878
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5880
    if-lez v11, :cond_8

    .line 5881
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1, v11}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5887
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v35

    if-nez v35, :cond_9

    .line 5888
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5891
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5893
    if-eqz v14, :cond_a

    .line 5894
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v11

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5897
    :cond_a
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5898
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v30

    if-lt v0, v3, :cond_b

    move/from16 v0, v31

    if-ge v0, v3, :cond_c

    .line 5899
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5902
    :cond_c
    if-nez v24, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_28

    .line 5903
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v10, v35, v36

    .line 5904
    .local v10, "childIndex":I
    if-ltz v10, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v35

    move/from16 v0, v35

    if-ge v10, v0, :cond_d

    .line 5905
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5921
    .end local v10    # "childIndex":I
    :cond_d
    :goto_a
    const/4 v12, 0x0

    .line 5923
    .local v12, "dontAwakenScrollBars":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_13

    .line 5924
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    .line 5925
    if-eqz v9, :cond_e

    .line 5926
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    .line 5927
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v19

    .line 5928
    add-int/lit8 v35, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v27

    .line 5929
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v17, v35, v36

    .line 5932
    :cond_e
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5934
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v35, v0

    if-nez v35, :cond_31

    .line 5935
    if-nez v18, :cond_2b

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-le v0, v1, :cond_2b

    .line 5936
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v35, v35, v19

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5937
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-lez v35, :cond_2a

    const/16 v35, 0x0

    :goto_b
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5939
    const/16 v25, 0x1

    .line 5996
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-eqz v35, :cond_10

    if-eqz v5, :cond_10

    .line 5998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5999
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 6000
    const/4 v12, 0x1

    .line 6001
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->jumpDrawablesToCurrentState()V

    .line 6002
    const/16 v25, 0x1

    .line 6005
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_39

    .line 6006
    :cond_11
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-eqz v35, :cond_13

    .line 6007
    const/16 v34, 0x0

    .line 6008
    .local v34, "trackBack":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverflingDistance:I

    move/from16 v36, v0

    sub-int v34, v35, v36

    if-lez v34, :cond_13

    .line 6009
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-lez v35, :cond_12

    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v34, v0

    .line 6011
    :cond_12
    move/from16 v0, v34

    neg-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 6012
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    add-int v35, v35, v34

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 6018
    .end local v34    # "trackBack":I
    :cond_13
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 6021
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_14

    if-eqz v12, :cond_3a

    .line 6026
    :cond_14
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    move/from16 v35, v0

    if-eqz v35, :cond_3b

    .line 6027
    return v25

    .line 5767
    .end local v3    # "absIncrementalDeltaY":I
    .end local v5    # "cannotOverScroll":Z
    .end local v6    # "cannotScrollDown":Z
    .end local v7    # "cannotScrollUp":Z
    .end local v11    # "count":I
    .end local v12    # "dontAwakenScrollBars":Z
    .end local v14    # "down":Z
    .end local v18    # "firstPosition":I
    .end local v20    # "footerViewsStart":I
    .end local v21    # "headerViewsCount":I
    .end local v24    # "inTouchMode":Z
    .end local v26    # "isEnter":Z
    .end local v32    # "start":I
    :cond_15
    add-int/lit8 v35, v22, -0x1

    move/from16 v0, v35

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_0

    .line 5773
    :cond_16
    add-int/lit8 v35, v22, -0x1

    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_1

    .line 5782
    .restart local v18    # "firstPosition":I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v35, v0

    add-int v35, v35, p2

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_2

    .line 5787
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v35, v0

    add-int v35, v35, p2

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_3

    .line 5792
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollDown":Z
    goto/16 :goto_4

    .line 5791
    .end local v6    # "cannotScrollDown":Z
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollDown":Z
    goto/16 :goto_4

    .line 5794
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "cannotScrollUp":Z
    goto/16 :goto_5

    .line 5793
    .end local v7    # "cannotScrollUp":Z
    :cond_1c
    const/4 v7, 0x0

    .restart local v7    # "cannotScrollUp":Z
    goto/16 :goto_5

    .line 5796
    :cond_1d
    const/4 v5, 0x1

    .restart local v5    # "cannotOverScroll":Z
    goto/16 :goto_6

    .line 5805
    :cond_1e
    if-eqz p2, :cond_1f

    const/16 v35, 0x1

    :goto_f
    return v35

    :cond_1f
    const/16 v35, 0x0

    goto :goto_f

    .line 5809
    :cond_20
    const/4 v14, 0x0

    .restart local v14    # "down":Z
    goto/16 :goto_7

    .line 5825
    .restart local v11    # "count":I
    .restart local v20    # "footerViewsStart":I
    .restart local v21    # "headerViewsCount":I
    .restart local v24    # "inTouchMode":Z
    .restart local v26    # "isEnter":Z
    .restart local v32    # "start":I
    :cond_21
    const/16 v26, 0x1

    goto/16 :goto_8

    .line 5827
    :cond_22
    const/16 v26, 0x1

    goto/16 :goto_8

    .line 5842
    .restart local v8    # "child":Landroid/view/View;
    .restart local v23    # "i":I
    .restart local v33    # "top":I
    :cond_23
    add-int/lit8 v11, v11, 0x1

    .line 5843
    add-int v29, v18, v23

    .line 5844
    .local v29, "position":I
    move/from16 v0, v29

    move/from16 v1, v21

    if-lt v0, v1, :cond_24

    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_24

    .line 5847
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5837
    :cond_24
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 5853
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "i":I
    .end local v29    # "position":I
    .end local v33    # "top":I
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v35

    sub-int v4, v35, p2

    .line 5854
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v35, v0

    and-int/lit8 v35, v35, 0x22

    const/16 v36, 0x22

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_26

    .line 5855
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    sub-int v4, v4, v35

    .line 5857
    :cond_26
    add-int/lit8 v23, v9, -0x1

    .restart local v23    # "i":I
    :goto_10
    if-ltz v23, :cond_7

    .line 5858
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 5859
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    if-le v0, v4, :cond_7

    .line 5862
    move/from16 v32, v23

    .line 5863
    add-int/lit8 v11, v11, 0x1

    .line 5864
    add-int v29, v18, v23

    .line 5865
    .restart local v29    # "position":I
    move/from16 v0, v29

    move/from16 v1, v21

    if-lt v0, v1, :cond_27

    move/from16 v0, v29

    move/from16 v1, v20

    if-ge v0, v1, :cond_27

    .line 5868
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v8, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5857
    :cond_27
    add-int/lit8 v23, v23, -0x1

    goto :goto_10

    .line 5907
    .end local v4    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "i":I
    .end local v29    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_29

    .line 5908
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v10, v35, v36

    .line 5909
    .restart local v10    # "childIndex":I
    if-ltz v10, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v35

    move/from16 v0, v35

    if-ge v10, v0, :cond_d

    .line 5910
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    const/16 v36, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_a

    .line 5913
    .end local v10    # "childIndex":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->setEmpty()V

    .line 5914
    sget-boolean v35, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v35, :cond_d

    sget-boolean v35, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v35, :cond_d

    .line 5915
    const-string/jumbo v35, "AbsListView"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "mSelectorRect.setEmpty in trackMotionScroll this = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 5916
    new-instance v37, Ljava/lang/Throwable;

    const-string/jumbo v38, "trackMotionScroll"

    invoke-direct/range {v37 .. v38}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 5915
    invoke-static/range {v35 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 5938
    .restart local v12    # "dontAwakenScrollBars":Z
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto/16 :goto_b

    .line 5940
    :cond_2b
    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v0, v9, :cond_2d

    .line 5941
    add-int v35, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    .line 5943
    sub-int v35, v17, v27

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5944
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-gez v35, :cond_2c

    const/16 v35, 0x0

    :goto_11
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5946
    const/16 v25, 0x1

    .line 5941
    goto/16 :goto_c

    .line 5945
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_11

    .line 5947
    :cond_2d
    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-ne v0, v9, :cond_f

    .line 5948
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_f

    .line 5950
    sub-int v35, v27, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v36

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    .line 5951
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    .line 5950
    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_2f

    .line 5952
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v35, v35, v19

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5953
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-gez v35, :cond_2e

    const/16 v35, 0x0

    :goto_12
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5955
    const/16 v25, 0x1

    goto/16 :goto_c

    .line 5954
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_12

    .line 5957
    :cond_2f
    sub-int v35, v17, v27

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5958
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-gez v35, :cond_30

    const/16 v35, 0x0

    :goto_13
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5960
    const/16 v25, 0x1

    goto/16 :goto_c

    .line 5959
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_13

    .line 5964
    :cond_31
    add-int v35, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_33

    move/from16 v0, v27

    move/from16 v1, v17

    if-gt v0, v1, :cond_33

    .line 5965
    sub-int v35, v17, v27

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5966
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-gez v35, :cond_32

    const/16 v35, 0x0

    :goto_14
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5968
    const/16 v25, 0x1

    .line 5964
    goto/16 :goto_c

    .line 5967
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_14

    .line 5969
    :cond_33
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-lt v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v0, v9, :cond_35

    .line 5970
    if-nez v18, :cond_35

    .line 5972
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v35, v35, v19

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5973
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-lez v35, :cond_34

    const/16 v35, 0x0

    :goto_15
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5975
    const/16 v25, 0x1

    .line 5970
    goto/16 :goto_c

    .line 5974
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_15

    .line 5976
    :cond_35
    move/from16 v0, v27

    move/from16 v1, v17

    if-lt v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-ne v0, v9, :cond_f

    .line 5977
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v19

    move/from16 v1, v35

    if-lt v0, v1, :cond_f

    .line 5979
    sub-int v35, v27, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v36

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    .line 5980
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    .line 5979
    sub-int v36, v36, v37

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_37

    .line 5981
    sub-int v35, v17, v27

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5982
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-lez v35, :cond_36

    const/16 v35, 0x0

    :goto_16
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5984
    const/16 v25, 0x1

    goto/16 :goto_c

    .line 5983
    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_16

    .line 5986
    :cond_37
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v35, v35, v19

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5987
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    if-lez v35, :cond_38

    const/16 v35, 0x0

    :goto_17
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5989
    const/16 v25, 0x1

    goto/16 :goto_c

    .line 5988
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move/from16 v35, v0

    goto :goto_17

    .line 6005
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x5

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    goto/16 :goto_d

    .line 6022
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6023
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    goto/16 :goto_e

    .line 6030
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 6031
    const/16 v35, 0x0

    return v35
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2369
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2370
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2373
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2374
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2368
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2370
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2374
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 3

    .prologue
    .line 3009
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3010
    sget-boolean v0, Landroid/widget/AbsListView;->IS_ENG_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sDbgSelector:Z

    if-eqz v0, :cond_0

    .line 3011
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectorState shouldShowSelector="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3012
    const-string/jumbo v2, ", getDrawableState="

    .line 3011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3012
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getDrawableState()[I

    move-result-object v2

    .line 3011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3013
    const-string/jumbo v2, ", this="

    .line 3011
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3016
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3008
    :cond_1
    :goto_0
    return-void

    .line 3018
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3066
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
