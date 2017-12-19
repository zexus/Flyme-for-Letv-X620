.class public Lcom/letv/leui/widget/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;,
        Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;,
        Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;,
        Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;,
        Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;,
        Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;,
        Lcom/letv/leui/widget/StaggeredGridView$ColMap;,
        Lcom/letv/leui/widget/StaggeredGridView$SavedState;,
        Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;,
        Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;,
        Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;,
        Lcom/letv/leui/widget/StaggeredGridView$PerformClick;,
        Lcom/letv/leui/widget/StaggeredGridView$DragItemFilter;,
        Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;,
        Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;,
        Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field private static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final DEBUG:Z = false

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field static final TOUCH_MODE_OVERSCROLL:I = 0x7

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBeginClick:Z

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

.field private final mChildRectsForAnimation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;",
            ">;"
        }
    .end annotation
.end field

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mColCount:I

.field private mColCountSetting:I

.field private mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDataChanged:Z

.field private mDeleteItemId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawSelectorOnTop:Z

.field private mEnableAnimation:Z

.field private mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOuting:Z

.field private mFastChildLayout:Z

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsChildViewEnabled:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastOverScrollX:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLayoutAnim:Z

.field private final mLayoutRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxOverScrollDistance:I

.field private mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mMoveBy:I

.field mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

.field private mNumCols:I

.field private final mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

.field private mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field private final mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field private final mScroller:Landroid/widget/OverScroller;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSpecificTop:I

.field private mSync:Z

.field private mSyncPosition:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private mTouchSlop:I

.field private mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpdateing:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/StaggeredGridView;)[I
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method static synthetic -get13(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get14(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    return v0
.end method

.method static synthetic -get15(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get16(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method static synthetic -get17(Lcom/letv/leui/widget/StaggeredGridView;)[I
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object v0
.end method

.method static synthetic -get18(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic -get19(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic -get20(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get21(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/StaggeredGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/StaggeredGridView;)J
    .locals 2

    iget-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/StaggeredGridView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/StaggeredGridView;)[I
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    return p1
.end method

.method static synthetic -set10(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic -set11(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic -set3(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic -set4(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    return p1
.end method

.method static synthetic -set5(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set6(Lcom/letv/leui/widget/StaggeredGridView;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object p1
.end method

.method static synthetic -set7(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSpecificTop:I

    return p1
.end method

.method static synthetic -set8(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    return p1
.end method

.method static synthetic -set9(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->clearChoices()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/StaggeredGridView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 420
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setVerticalScrollBarEnabled(Z)V

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 427
    const v0, 0x10304c3

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 426
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 431
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    iput-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 167
    iput-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    .line 172
    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    .line 175
    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    .line 177
    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    .line 179
    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    .line 181
    iput v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCountSetting:I

    .line 182
    iput v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 186
    const/16 v4, 0x8

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    .line 188
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    .line 199
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionLeftPadding:I

    .line 204
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionTopPadding:I

    .line 209
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 214
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionBottomPadding:I

    .line 218
    iput v9, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    .line 219
    iput v9, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    .line 232
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    .line 243
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 257
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 259
    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;)V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    .line 261
    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;)V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    .line 275
    iput-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 285
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 311
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    .line 337
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    .line 338
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    .line 341
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 432
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 434
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 435
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 436
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    .line 438
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 439
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 443
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    .line 446
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 447
    .local v3, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchSlop:I

    .line 448
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMaximumVelocity:I

    .line 449
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFlingVelocity:I

    .line 450
    new-instance v4, Landroid/widget/OverScroller;

    invoke-direct {v4, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    .line 451
    const/16 v4, 0x7f

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    .line 456
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->setWillNotDraw(Z)V

    .line 457
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->setClipToPadding(Z)V

    .line 458
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->setFocusableInTouchMode(Z)V

    .line 460
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->useDefaultSelector()V

    .line 465
    :cond_1
    const v4, 0x10a004f

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 466
    .local v1, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 467
    iput-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    .line 468
    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/StaggeredGridView$1;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/StaggeredGridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 430
    return-void
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2289
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViews()V

    .line 2292
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->resetStateForGridTop()V

    .line 2295
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->clear()V

    .line 2297
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2298
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    .line 2286
    return-void
.end method

.method private clearChoices()V
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2439
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2442
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2435
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1161
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1162
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1158
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getFadeOutAnimationsForStaleViews()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1475
    .local v5, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v3, "locaList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 1478
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1479
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1481
    .local v4, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    iget-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v7, :cond_0

    .line 1482
    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7, v4}, Lcom/letv/leui/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1487
    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    const v8, 0x10a004d

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 1488
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f8ccccd    # 1.1f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1489
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1490
    new-instance v7, Lcom/letv/leui/widget/StaggeredGridView$5;

    invoke-direct {v7, p0, v6}, Lcom/letv/leui/widget/StaggeredGridView$5;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1507
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1509
    .local v0, "alphAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1510
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1511
    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1512
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1484
    .end local v0    # "alphAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1515
    .end local v4    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    return-object v3

    .line 1508
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 3363
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private getUpdateDataAnimation()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v10

    .line 1419
    .local v10, "size":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    .local v6, "locaList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-lez v10, :cond_2

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v2

    .line 1423
    .local v2, "childCount":I
    if-lez v2, :cond_2

    .line 1424
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1425
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1426
    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v16, v0

    add-int v9, v16, v3

    .line 1427
    .local v9, "position":I
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1428
    .local v8, "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    iget-wide v4, v8, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1429
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;

    .line 1431
    .local v15, "viewRectPair":Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;
    iget-object v7, v15, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .line 1433
    .local v7, "localRect":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1434
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1436
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 1437
    .local v12, "translationXHolder":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 1438
    .local v13, "translationYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1439
    .local v11, "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1440
    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1442
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    .end local v7    # "localRect":Landroid/graphics/Rect;
    .end local v15    # "viewRectPair":Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    div-int/lit8 v16, v2, 0x2

    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    .line 1447
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1448
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1454
    :goto_2
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 1455
    .restart local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 1456
    .restart local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1457
    .restart local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1458
    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1460
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1450
    .end local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v16

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    .line 1465
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v8    # "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v9    # "position":I
    .end local v14    # "view":Landroid/view/View;
    :cond_2
    return-object v6
.end method

.method private populate(Z)V
    .locals 7
    .param p1, "clearData"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1258
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1259
    :cond_0
    return-void

    .line 1258
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-eqz v2, :cond_0

    .line 1262
    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    if-eqz v2, :cond_2

    .line 1264
    return-void

    .line 1267
    :cond_2
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-ne v2, v6, :cond_3

    .line 1268
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v2, v3

    .line 1269
    .local v0, "colCount":I
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v2, :cond_3

    .line 1270
    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 1274
    .end local v0    # "colCount":I
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 1277
    .restart local v0    # "colCount":I
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq v2, v3, :cond_4

    .line 1278
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-ge v1, v2, :cond_4

    .line 1280
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1284
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_6

    .line 1285
    :cond_5
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    .line 1286
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    .line 1288
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1289
    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v2, :cond_b

    .line 1290
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViewsInLayout()V

    .line 1296
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    array-length v2, v2

    if-ne v2, v0, :cond_7

    .line 1297
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    .line 1300
    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    .line 1302
    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 1303
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/letv/leui/widget/StaggeredGridView;->fillDown(II)I

    .line 1304
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/letv/leui/widget/StaggeredGridView;->fillUp(II)I

    .line 1306
    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    .line 1307
    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    .line 1311
    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    if-eqz v2, :cond_9

    .line 1312
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSpecificTop:I

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/StaggeredGridView;->setPositionAndTop(II)V

    .line 1314
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v2, :cond_8

    .line 1315
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1316
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getUpdateDataAnimation()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1318
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/letv/leui/widget/StaggeredGridView$3;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/StaggeredGridView$3;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1331
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1332
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getFadeOutAnimationsForStaleViews()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1333
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/letv/leui/widget/StaggeredGridView$4;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/StaggeredGridView$4;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1347
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1348
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1352
    :cond_8
    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    .line 1353
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    .line 1356
    :cond_9
    if-eqz p1, :cond_a

    .line 1357
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_a

    .line 1359
    iput-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 1256
    :cond_a
    return-void

    .line 1292
    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViews()V

    goto/16 :goto_1
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    .line 3403
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 3402
    add-int/2addr v3, p3

    .line 3403
    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    .line 3402
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3401
    return-void
.end method

.method private recycleAllViews()V
    .locals 4

    .prologue
    .line 996
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 998
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 999
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1000
    .local v2, "view":Landroid/view/View;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1001
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 998
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    goto :goto_1

    .line 1008
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v3, :cond_2

    .line 1009
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViewsInLayout()V

    .line 995
    :goto_2
    return-void

    .line 1011
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViews()V

    goto :goto_2
.end method

.method private recycleOffscreenViews()V
    .locals 21

    .prologue
    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v13

    .line 1022
    .local v13, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v7, v0

    .line 1023
    .local v7, "clearAbove":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    add-int v8, v13, v18

    .line 1024
    .local v8, "clearBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_0

    .line 1025
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1026
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    if-gt v0, v8, :cond_5

    .line 1041
    .end local v5    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_1

    .line 1042
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1043
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    if-lt v0, v7, :cond_7

    .line 1059
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .line 1060
    .local v6, "childCount":I
    if-lez v6, :cond_c

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    .line 1065
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_a

    .line 1066
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1067
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1068
    .local v15, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 1069
    .local v17, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1070
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .line 1072
    .local v16, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v16, :cond_2

    .line 1073
    new-instance v16, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V

    .line 1074
    .restart local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1076
    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1077
    iget-wide v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1078
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1081
    :cond_2
    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v19, v0

    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int v11, v18, v19

    .line 1082
    .local v11, "colEnd":I
    iget v9, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .local v9, "col":I
    :goto_3
    if-ge v9, v11, :cond_9

    .line 1083
    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v18

    sub-int v12, v17, v18

    .line 1084
    .local v12, "colTop":I
    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v18

    add-int v10, v4, v18

    .line 1085
    .local v10, "colBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aput v12, v18, v9

    .line 1088
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    if-le v10, v0, :cond_4

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aput v10, v18, v9

    .line 1082
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1032
    .end local v4    # "bottom":I
    .end local v6    # "childCount":I
    .end local v9    # "col":I
    .end local v10    # "colBottom":I
    .end local v11    # "colEnd":I
    .end local v12    # "colTop":I
    .end local v15    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v17    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1033
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewsInLayout(II)V

    .line 1038
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1024
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 1035
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    goto :goto_4

    .line 1049
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1050
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewsInLayout(II)V

    .line 1055
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_1

    .line 1052
    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    goto :goto_5

    .line 1065
    .restart local v4    # "bottom":I
    .restart local v6    # "childCount":I
    .restart local v9    # "col":I
    .restart local v11    # "colEnd":I
    .restart local v15    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .restart local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .restart local v17    # "top":I
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1094
    .end local v4    # "bottom":I
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "col":I
    .end local v11    # "colEnd":I
    .end local v15    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v17    # "top":I
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "col":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_d

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v9

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v9

    .line 1094
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1102
    .end local v9    # "col":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v17

    .line 1103
    .restart local v17    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1108
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 1020
    .end local v17    # "top":I
    :cond_d
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 834
    :cond_0
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2306
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 2307
    .local v0, "colCount":I
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 2308
    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    .line 2309
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    .line 2311
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v1

    .line 2312
    .local v1, "top":I
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2313
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2316
    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .line 2317
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_2

    .line 2319
    iput-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 2320
    :cond_2
    iput-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2321
    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 2304
    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 22
    .param p1, "deltaY"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .line 853
    .local v6, "childCount":I
    if-nez v6, :cond_0

    .line 854
    const/16 v20, 0x1

    return v20

    .line 857
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v21

    sub-int v10, v20, v21

    .line 858
    .local v10, "height":I
    if-gez p1, :cond_3

    .line 859
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 863
    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 864
    .local v3, "allowOverhang":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .line 866
    .local v9, "firstPosition":I
    const v14, 0x7fffffff

    .line 867
    .local v14, "mostTop":I
    const/high16 v13, -0x80000000

    .line 868
    .local v13, "mostBottom":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-ge v0, v14, :cond_1

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v14, v20, v11

    .line 872
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-le v0, v13, :cond_2

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v13, v20, v11

    .line 868
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 861
    .end local v3    # "allowOverhang":I
    .end local v9    # "firstPosition":I
    .end local v11    # "i":I
    .end local v13    # "mostBottom":I
    .end local v14    # "mostTop":I
    :cond_3
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 877
    .restart local v3    # "allowOverhang":I
    .restart local v9    # "firstPosition":I
    .restart local v11    # "i":I
    .restart local v13    # "mostBottom":I
    .restart local v14    # "mostTop":I
    :cond_4
    const/4 v12, 0x0

    .line 878
    .local v12, "isAtEdge":Z
    const/4 v8, 0x0

    .line 879
    .local v8, "dontRecycle":Z
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v18

    .line 880
    .local v18, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v17

    .line 881
    .local v17, "paddingBottom":I
    if-nez v9, :cond_a

    move/from16 v0, v18

    if-lt v14, v0, :cond_a

    if-ltz p1, :cond_a

    const/4 v4, 0x1

    .line 882
    .local v4, "cannotScrollDown":Z
    :goto_2
    add-int v20, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    if-gt v13, v0, :cond_b

    if-gtz p1, :cond_b

    const/4 v5, 0x1

    .line 883
    .local v5, "cannotScrollUp":Z
    :goto_3
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 884
    :cond_5
    const/4 v8, 0x1

    .line 889
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    .line 891
    if-lez p1, :cond_c

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/letv/leui/widget/StaggeredGridView;->fillUp(II)I

    move-result v16

    .line 893
    .local v16, "overhang":I
    const/16 v19, 0x1

    .line 898
    .local v19, "up":Z
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/letv/leui/widget/StaggeredGridView;->offsetChildren(I)V

    .line 910
    if-nez v8, :cond_7

    .line 911
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleOffscreenViews()V

    .line 913
    :cond_7
    move/from16 v15, p1

    .line 915
    .local v15, "movedBy":I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .line 917
    const v14, 0x7fffffff

    .line 918
    const/high16 v13, -0x80000000

    .line 919
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_d

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-ge v0, v14, :cond_8

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v14, v20, v11

    .line 923
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-le v0, v13, :cond_9

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v13, v20, v11

    .line 919
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 881
    .end local v4    # "cannotScrollDown":Z
    .end local v5    # "cannotScrollUp":Z
    .end local v15    # "movedBy":I
    .end local v16    # "overhang":I
    .end local v19    # "up":Z
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "cannotScrollDown":Z
    goto/16 :goto_2

    .line 882
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollUp":Z
    goto :goto_3

    .line 895
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/letv/leui/widget/StaggeredGridView;->fillDown(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 896
    .restart local v16    # "overhang":I
    const/16 v19, 0x0

    .restart local v19    # "up":Z
    goto :goto_4

    .line 928
    .restart local v15    # "movedBy":I
    :cond_d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_10

    move/from16 v0, v18

    if-le v14, v0, :cond_10

    .line 930
    sub-int v20, v18, v14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 931
    const/4 v12, 0x1

    .line 946
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 961
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->awakenScrollBars(IZ)Z

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    .line 963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 964
    .local v7, "childIndex":I
    if-ltz v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_f

    .line 965
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 971
    .end local v7    # "childIndex":I
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMoveBy:I

    .line 973
    return v12

    .line 932
    :cond_10
    add-int v20, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    if-ge v13, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v6, :cond_11

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v20, v20, v13

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 935
    const/4 v12, 0x1

    .line 932
    goto/16 :goto_6

    .line 936
    :cond_11
    add-int v20, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    if-ge v13, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v6, :cond_e

    .line 938
    sub-int v20, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v21

    sub-int v21, v21, v17

    sub-int v21, v21, v18

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 939
    sub-int v20, v18, v14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 940
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 942
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v20, v20, v13

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    .line 943
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 968
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_7
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 2379
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .line 2380
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 2381
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2382
    const/16 v7, 0xb

    .line 2381
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 2383
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2384
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2385
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 2387
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2388
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2383
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2381
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 2389
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 2390
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 2378
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 3309
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3308
    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFastChildLayout:Z

    .line 1194
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2707
    instance-of v0, p1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 1114
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1115
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 1117
    .local v2, "y":I
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    if-ne v3, v7, :cond_2

    .line 1118
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    sub-int v0, v2, v3

    .line 1119
    .local v0, "dy":I
    iput v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 1120
    invoke-direct {p0, v0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1135
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1136
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->postInvalidate()V

    .line 1113
    .end local v0    # "dy":I
    .end local v2    # "y":I
    :cond_1
    :goto_0
    return-void

    .line 1122
    .restart local v2    # "y":I
    :cond_2
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 1123
    .restart local v0    # "dy":I
    int-to-float v3, v2

    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    .line 1124
    invoke-direct {p0, v0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v1

    .line 1125
    .local v1, "isAtEdge":Z
    if-eqz v1, :cond_0

    .line 1126
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v6, v6, v6}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 1127
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 1128
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 1129
    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 1130
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->postInvalidate()V

    .line 1131
    return-void

    .line 1138
    .end local v1    # "isAtEdge":Z
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1139
    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 3112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3114
    const/4 v2, 0x0

    .line 3116
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_6

    .line 3117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 3118
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3119
    .local v5, "lastPos":I
    const-wide/16 v12, -0x1

    .line 3120
    .local v12, "lastPosId":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-ge v5, v3, :cond_0

    .line 3121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 3123
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-ge v5, v3, :cond_1

    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    .line 3125
    :cond_1
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 3126
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 3127
    .local v10, "end":I
    const/4 v11, 0x0

    .line 3128
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_2

    .line 3129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 3130
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_4

    .line 3131
    const/4 v11, 0x1

    .line 3132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 3138
    .end local v14    # "searchId":J
    :cond_2
    if-nez v11, :cond_3

    .line 3139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 3140
    add-int/lit8 v9, v9, -0x1

    .line 3141
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3142
    const/4 v2, 0x1

    .line 3143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_3

    .line 3144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 3145
    const/4 v8, 0x0

    .line 3144
    invoke-virtual/range {v3 .. v8}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 3116
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 3128
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3149
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 3153
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_7

    .line 3154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 3111
    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3632
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deleteItemId(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3015
    .local p1, "id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3016
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    .line 3014
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 1147
    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    .line 1148
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1151
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1153
    if-eqz v0, :cond_1

    .line 1154
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 1145
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3732
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 3733
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    .line 3731
    return-void
.end method

.method public enableAnimation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    .line 1239
    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1199
    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFastChildLayout:Z

    .line 1200
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    .line 1198
    return-void
.end method

.method final fillDown(II)I
    .locals 36
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1911
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v26

    .line 1912
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v27

    .line 1913
    .local v27, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    .line 1914
    .local v19, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v34

    sub-int v34, v34, v26

    sub-int v34, v34, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    mul-int v35, v35, v19

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    div-int v11, v34, v35

    .line 1915
    .local v11, "colWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v35

    sub-int v13, v34, v35

    .line 1916
    .local v13, "gridBottom":I
    add-int v12, v13, p2

    .line 1917
    .local v12, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v25

    .line 1918
    .local v25, "nextCol":I
    move/from16 v28, p1

    .line 1920
    .local v28, "position":I
    :cond_0
    :goto_0
    if-ltz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v25

    move/from16 v0, v34

    if-ge v0, v12, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v28

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    .line 1922
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 1924
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1926
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1927
    .local v24, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    if-nez v24, :cond_1

    .line 1928
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v24

    .line 1929
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1931
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 1932
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1933
    const/16 v34, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1939
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1940
    .local v30, "span":I
    mul-int v34, v11, v30

    add-int/lit8 v35, v30, -0x1

    mul-int v35, v35, v19

    add-int v32, v34, v35

    .line 1941
    .local v32, "widthSize":I
    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1944
    .local v33, "widthSpec":I
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_9

    .line 1945
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getNextRecordDown(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    move-result-object v29

    .line 1951
    .local v29, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    :goto_2
    const/16 v18, 0x0

    .line 1952
    .local v18, "invalidateAfter":Z
    if-nez v29, :cond_a

    .line 1953
    new-instance v29, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V

    .line 1954
    .restart local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1955
    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1956
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1965
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    .line 1967
    .local v16, "id":J
    move-wide/from16 v0, v16

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1968
    move-wide/from16 v0, v16

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1971
    .end local v16    # "id":J
    :cond_4
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1974
    move-object/from16 v0, v24

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 1975
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1979
    .local v14, "heightSpec":I
    :goto_4
    move/from16 v0, v33

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    .line 1981
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1982
    .local v7, "childHeight":I
    if-nez v18, :cond_5

    move-object/from16 v0, v29

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v7, v0, :cond_6

    move-object/from16 v0, v29

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    if-lez v34, :cond_6

    .line 1983
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1985
    :cond_6
    move-object/from16 v0, v29

    iput v7, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1988
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_e

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v22, v34, v25

    .line 1990
    .local v22, "lowest":I
    add-int/lit8 v15, v25, 0x1

    .local v15, "i":I
    :goto_5
    add-int v34, v25, v30

    move/from16 v0, v34

    if-ge v15, v0, :cond_c

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v4, v34, v15

    .line 1992
    .local v4, "bottom":I
    move/from16 v0, v22

    if-le v4, v0, :cond_7

    .line 1993
    move/from16 v22, v4

    .line 1990
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1935
    .end local v4    # "bottom":I
    .end local v7    # "childHeight":I
    .end local v14    # "heightSpec":I
    .end local v15    # "i":I
    .end local v18    # "invalidateAfter":Z
    .end local v22    # "lowest":I
    .end local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v30    # "span":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1948
    .restart local v30    # "span":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .restart local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_2

    .line 1957
    .restart local v18    # "invalidateAfter":Z
    :cond_a
    move-object/from16 v0, v29

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    .line 1958
    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1959
    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1960
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 1977
    :cond_b
    move-object/from16 v0, v24

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightSpec":I
    goto/16 :goto_4

    .line 1996
    .restart local v7    # "childHeight":I
    .restart local v15    # "i":I
    .restart local v22    # "lowest":I
    :cond_c
    move/from16 v31, v22

    .line 2001
    .end local v15    # "i":I
    .end local v22    # "lowest":I
    .local v31, "startFrom":I
    :goto_6
    add-int v10, v31, v19

    .line 2002
    .local v10, "childTop":I
    add-int v6, v10, v7

    .line 2003
    .local v6, "childBottom":I
    add-int v34, v11, v19

    mul-int v34, v34, v25

    add-int v8, v26, v34

    .line 2004
    .local v8, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v9, v8, v34

    .line 2005
    .local v9, "childRight":I
    invoke-virtual {v5, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "list$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 2015
    .local v20, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 2016
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1998
    .end local v6    # "childBottom":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v20    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "list$iterator":Ljava/util/Iterator;
    .end local v31    # "startFrom":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v31, v34, v25

    .restart local v31    # "startFrom":I
    goto :goto_6

    .line 2020
    .restart local v6    # "childBottom":I
    .restart local v8    # "childLeft":I
    .restart local v9    # "childRight":I
    .restart local v10    # "childTop":I
    .restart local v21    # "list$iterator":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    .end local v21    # "list$iterator":Ljava/util/Iterator;
    :cond_10
    move/from16 v15, v25

    .restart local v15    # "i":I
    :goto_8
    add-int v34, v25, v30

    move/from16 v0, v34

    if-ge v15, v0, :cond_11

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    sub-int v35, v15, v25

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v35

    add-int v35, v35, v6

    aput v35, v34, v15

    .line 2023
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 2027
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v25

    .line 2028
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 2031
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v14    # "heightSpec":I
    .end local v15    # "i":I
    .end local v18    # "invalidateAfter":Z
    .end local v24    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v30    # "span":I
    .end local v31    # "startFrom":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_12
    const/16 v23, 0x0

    .line 2032
    .local v23, "lowestView":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_14

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v15

    move/from16 v0, v34

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v23, v34, v15

    .line 2032
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 2037
    :cond_14
    sub-int v34, v23, v13

    return v34
.end method

.method final fillUp(II)I
    .locals 36
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v24

    .line 1726
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v25

    .line 1727
    .local v25, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v20, v0

    .line 1729
    .local v20, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v34

    sub-int v34, v34, v24

    sub-int v34, v34, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    mul-int v35, v35, v20

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    div-int v10, v34, v35

    .line 1730
    .local v10, "colWidth":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColWidth:I

    .line 1731
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v12

    .line 1732
    .local v12, "gridTop":I
    sub-int v11, v12, p2

    .line 1733
    .local v11, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v23

    .line 1734
    .local v23, "nextCol":I
    move/from16 v26, p1

    .local v26, "position":I
    move/from16 v27, v26

    .line 1736
    .end local v26    # "position":I
    .local v27, "position":I
    :cond_0
    :goto_0
    if-ltz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v34, v34, v23

    move/from16 v0, v34

    if-le v0, v11, :cond_11

    if-ltz v27, :cond_11

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    .line 1740
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 1742
    move/from16 v23, v16

    .line 1748
    .end local v16    # "i":I
    :cond_1
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 1749
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1752
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1754
    .local v22, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    if-nez v22, :cond_2

    .line 1755
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v22

    .line 1756
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1759
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    .line 1760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    .line 1761
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1767
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1768
    .local v29, "span":I
    mul-int v34, v10, v29

    add-int/lit8 v35, v29, -0x1

    mul-int v35, v35, v20

    add-int v32, v34, v35

    .line 1769
    .local v32, "widthSize":I
    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .line 1772
    .local v33, "widthSpec":I
    const/16 v34, 0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-le v0, v1, :cond_b

    .line 1773
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getNextRecordUp(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    move-result-object v28

    .line 1779
    .local v28, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    :goto_3
    const/16 v17, 0x0

    .line 1780
    .local v17, "invalidateBefore":Z
    if-nez v28, :cond_c

    .line 1781
    new-instance v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V

    .line 1782
    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1783
    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1784
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1793
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v34, v0

    if-eqz v34, :cond_5

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .line 1795
    .local v18, "id":J
    move-wide/from16 v0, v18

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1796
    move-wide/from16 v0, v18

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 1799
    .end local v18    # "id":J
    :cond_5
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1802
    move-object/from16 v0, v22

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    .line 1803
    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1807
    .local v13, "heightSpec":I
    :goto_5
    move/from16 v0, v33

    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    .line 1809
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1810
    .local v6, "childHeight":I
    if-nez v17, :cond_6

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v6, v0, :cond_7

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    if-lez v34, :cond_7

    .line 1811
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1813
    :cond_7
    move-object/from16 v0, v28

    iput v6, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v21, v34, v23

    .line 1818
    .local v21, "itemTop":I
    const/16 v34, 0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-le v0, v1, :cond_f

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v14, v34, v23

    .line 1820
    .local v14, "highest":I
    add-int/lit8 v16, v23, 0x1

    .restart local v16    # "i":I
    :goto_6
    add-int v34, v23, v29

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v31, v34, v16

    .line 1822
    .local v31, "top":I
    move/from16 v0, v31

    if-ge v0, v14, :cond_8

    .line 1823
    move/from16 v14, v31

    .line 1820
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1740
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childHeight":I
    .end local v13    # "heightSpec":I
    .end local v14    # "highest":I
    .end local v17    # "invalidateBefore":Z
    .end local v21    # "itemTop":I
    .end local v22    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v31    # "top":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1763
    .end local v16    # "i":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v22    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :cond_a
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1776
    .restart local v29    # "span":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_3

    .line 1785
    .restart local v17    # "invalidateBefore":Z
    :cond_c
    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    .line 1786
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1787
    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1788
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 1805
    :cond_d
    move-object/from16 v0, v22

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "heightSpec":I
    goto/16 :goto_5

    .line 1826
    .restart local v6    # "childHeight":I
    .restart local v14    # "highest":I
    .restart local v16    # "i":I
    .restart local v21    # "itemTop":I
    :cond_e
    move/from16 v30, v14

    .line 1832
    .end local v14    # "highest":I
    .end local v16    # "i":I
    .local v30, "startFrom":I
    :goto_7
    move/from16 v5, v30

    .line 1833
    .local v5, "childBottom":I
    sub-int v9, v5, v6

    .line 1834
    .local v9, "childTop":I
    add-int v34, v10, v20

    mul-int v34, v34, v23

    add-int v7, v24, v34

    .line 1835
    .local v7, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v8, v7, v34

    .line 1844
    .local v8, "childRight":I
    invoke-virtual {v4, v7, v9, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 1849
    move/from16 v16, v23

    .restart local v16    # "i":I
    :goto_8
    add-int v34, v23, v29

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    sub-int v35, v16, v23

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v35

    sub-int v35, v9, v35

    sub-int v35, v35, v20

    aput v35, v34, v16

    .line 1849
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 1828
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v16    # "i":I
    .end local v30    # "startFrom":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v30, v34, v23

    .restart local v30    # "startFrom":I
    goto :goto_7

    .line 1853
    .restart local v5    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    .restart local v16    # "i":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v23

    .line 1854
    add-int/lit8 v26, v27, -0x1

    .end local v27    # "position":I
    .restart local v26    # "position":I
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v27, v26

    .end local v26    # "position":I
    .restart local v27    # "position":I
    goto/16 :goto_0

    .line 1857
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childBottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v13    # "heightSpec":I
    .end local v16    # "i":I
    .end local v17    # "invalidateBefore":Z
    .end local v21    # "itemTop":I
    .end local v22    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v30    # "startFrom":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v15

    .line 1859
    .local v15, "highestView":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v34, v34, v16

    move/from16 v0, v34

    if-ge v0, v15, :cond_12

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v15, v34, v16

    .line 1859
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 1877
    :cond_13
    sub-int v34, v12, v15

    return v34
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    .line 2697
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2712
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2701
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2702
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2634
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2680
    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 2681
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 2680
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 2684
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2685
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2686
    .local v0, "count":I
    new-array v3, v0, [J

    .line 2688
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2689
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2688
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2691
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2647
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2648
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 2650
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 2400
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 3879
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 3889
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3900
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3901
    return v1

    .line 3903
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method final getNextColumnDown()I
    .locals 6

    .prologue
    .line 2131
    const/4 v3, -0x1

    .line 2132
    .local v3, "result":I
    const v4, 0x7fffffff

    .line 2134
    .local v4, "topMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 2136
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2137
    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    aget v0, v5, v2

    .line 2138
    .local v0, "bottom":I
    if-ge v0, v4, :cond_0

    .line 2139
    move v4, v0

    .line 2140
    move v3, v2

    .line 2136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2144
    .end local v0    # "bottom":I
    :cond_1
    return v3
.end method

.method final getNextColumnUp()I
    .locals 6

    .prologue
    .line 2067
    const/4 v3, -0x1

    .line 2068
    .local v3, "result":I
    const/high16 v0, -0x80000000

    .line 2070
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 2071
    .local v1, "colCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2072
    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    aget v4, v5, v2

    .line 2073
    .local v4, "top":I
    if-le v4, v0, :cond_0

    .line 2074
    move v0, v4

    .line 2075
    move v3, v2

    .line 2071
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2078
    .end local v4    # "top":I
    :cond_1
    return v3
.end method

.method final getNextRecordDown(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    const/4 v9, 0x0

    .line 2151
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .line 2152
    .local v4, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 2153
    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    invoke-direct {v4, v9}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V

    .line 2154
    .restart local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2155
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2160
    :cond_0
    const/4 v6, -0x1

    .line 2161
    .local v6, "targetCol":I
    const v7, 0x7fffffff

    .line 2163
    .local v7, "topMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 2164
    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_5

    .line 2165
    const/high16 v0, -0x80000000

    .line 2166
    .local v0, "bottom":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2167
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v8, v3

    .line 2168
    .local v5, "singleBottom":I
    if-le v5, v0, :cond_1

    .line 2169
    move v0, v5

    .line 2166
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2156
    .end local v0    # "bottom":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleBottom":I
    .end local v6    # "targetCol":I
    .end local v7    # "topMost":I
    :cond_2
    iget v8, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 2157
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2158
    const-string/jumbo v10, " but caller requested span="

    .line 2157
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2158
    const-string/jumbo v10, " for position="

    .line 2157
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2172
    .restart local v0    # "bottom":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "topMost":I
    :cond_3
    if-ge v0, v7, :cond_4

    .line 2173
    move v7, v0

    .line 2174
    move v6, v2

    .line 2164
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2178
    .end local v0    # "bottom":I
    .end local v3    # "j":I
    :cond_5
    iput v6, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2180
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2181
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    .line 2180
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2184
    :cond_6
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    const/4 v9, 0x0

    .line 2090
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .line 2091
    .local v4, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    .line 2092
    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    invoke-direct {v4, v9}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V

    .line 2093
    .restart local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 2094
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2099
    :cond_0
    const/4 v6, -0x1

    .line 2100
    .local v6, "targetCol":I
    const/high16 v0, -0x80000000

    .line 2102
    .local v0, "bottomMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 2103
    .local v1, "colCount":I
    sub-int v2, v1, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 2104
    const v7, 0x7fffffff

    .line 2105
    .local v7, "top":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    .line 2106
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v8, v3

    .line 2107
    .local v5, "singleTop":I
    if-ge v5, v7, :cond_1

    .line 2108
    move v7, v5

    .line 2105
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2095
    .end local v0    # "bottomMost":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleTop":I
    .end local v6    # "targetCol":I
    .end local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    .line 2096
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2097
    const-string/jumbo v10, " but caller requested span="

    .line 2096
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2097
    const-string/jumbo v10, " for position="

    .line 2096
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2111
    .restart local v0    # "bottomMost":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "top":I
    :cond_3
    if-le v7, v0, :cond_4

    .line 2112
    move v0, v7

    .line 2113
    move v6, v2

    .line 2103
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2117
    .end local v3    # "j":I
    .end local v7    # "top":I
    :cond_5
    iput v6, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 2119
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    .line 2120
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    .line 2119
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2123
    :cond_6
    return-object v4
.end method

.method public final getOnItemClickListener()Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;
    .locals 1

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 3816
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    .line 592
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 591
    :cond_0
    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1702
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 1703
    .local v0, "beginAt":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1704
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1706
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1708
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1709
    .local v1, "end":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1710
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1709
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1701
    :cond_1
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1689
    const/4 v1, 0x0

    .line 1690
    .local v1, "endAt":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 1691
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1694
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1695
    .local v0, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1696
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1695
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1688
    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 3340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    .line 3341
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    .line 3342
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    .line 3343
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    .line 3339
    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .prologue
    .line 3866
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 2664
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 2668
    :cond_0
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 3694
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 3695
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3693
    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 38
    .param p1, "queryAdapter"    # Z

    .prologue
    .line 1540
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v23

    .line 1541
    .local v23, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v24

    .line 1542
    .local v24, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    .line 1543
    .local v17, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v35

    sub-int v35, v35, v23

    sub-int v35, v35, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    mul-int v36, v36, v17

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    div-int v14, v35, v36

    .line 1544
    .local v14, "colWidth":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColWidth:I

    .line 1545
    const/16 v27, -0x1

    .line 1546
    .local v27, "rebuildLayoutRecordsBefore":I
    const/16 v26, -0x1

    .line 1547
    .local v26, "rebuildLayoutRecordsAfter":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 1549
    .local v31, "tops":[I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v8

    .line 1550
    .local v8, "childCount":I
    if-eqz v8, :cond_0

    .line 1553
    const/16 v16, 0x0

    .local v16, "i":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v8, :cond_0

    .line 1554
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 1555
    .local v32, "view":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1556
    .local v30, "tempLp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v35, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v36

    aput v36, v31, v35

    .line 1557
    move-object/from16 v0, v30

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    add-int v18, v18, v35

    .line 1553
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1561
    .end local v16    # "i":I
    .end local v18    # "j":I
    .end local v30    # "tempLp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v32    # "view":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    const/high16 v36, -0x80000000

    invoke-static/range {v35 .. v36}, Ljava/util/Arrays;->fill([II)V

    .line 1563
    const/4 v4, 0x0

    .line 1565
    .local v4, "amountRemoved":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v8, :cond_10

    .line 1566
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1567
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1568
    .local v20, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v20

    iget v13, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1569
    .local v13, "col":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v25, v35, v16

    .line 1570
    .local v25, "position":I
    if-nez p1, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v21

    .line 1572
    :goto_2
    if-eqz p1, :cond_6

    .line 1573
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/letv/leui/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v22

    .line 1574
    .local v22, "newView":Landroid/view/View;
    if-nez v22, :cond_4

    .line 1576
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    .line 1577
    add-int/lit8 v35, v16, -0x1

    if-ltz v35, :cond_1

    .line 1578
    add-int/lit8 v35, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1579
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 1565
    .end local v22    # "newView":Landroid/view/View;
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1570
    :cond_3
    const/16 v21, 0x1

    .local v21, "needsLayout":Z
    goto :goto_2

    .line 1581
    .end local v21    # "needsLayout":Z
    .restart local v22    # "newView":Landroid/view/View;
    :cond_4
    move-object/from16 v0, v22

    if-eq v0, v6, :cond_5

    .line 1582
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    .line 1583
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;I)V

    .line 1584
    move-object/from16 v6, v22

    .line 1586
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    check-cast v20, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1587
    .restart local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v20

    iput v13, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .line 1588
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    .end local v22    # "newView":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1592
    .local v29, "span":I
    mul-int v35, v14, v29

    add-int/lit8 v36, v29, -0x1

    mul-int v36, v36, v17

    add-int v33, v35, v36

    .line 1594
    .local v33, "widthSize":I
    if-eqz v21, :cond_7

    .line 1595
    const/high16 v35, 0x40000000    # 2.0f

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    .line 1598
    .local v34, "widthSpec":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v35, v0

    const/16 v36, -0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 1599
    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1604
    .local v15, "heightSpec":I
    :goto_4
    move/from16 v0, v34

    invoke-virtual {v6, v0, v15}, Landroid/view/View;->measure(II)V

    .line 1607
    .end local v15    # "heightSpec":I
    .end local v34    # "widthSpec":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    const/high16 v36, -0x80000000

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v36, v0

    add-int v12, v35, v36

    .line 1609
    .local v12, "childTop":I
    :goto_5
    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-le v0, v1, :cond_c

    .line 1610
    move/from16 v19, v12

    .line 1611
    .local v19, "lowest":I
    add-int/lit8 v18, v13, 0x1

    .restart local v18    # "j":I
    :goto_6
    add-int v35, v13, v29

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_b

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v36, v0

    add-int v5, v35, v36

    .line 1613
    .local v5, "bottom":I
    move/from16 v0, v19

    if-le v5, v0, :cond_8

    .line 1614
    move/from16 v19, v5

    .line 1611
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1601
    .end local v5    # "bottom":I
    .end local v12    # "childTop":I
    .end local v18    # "j":I
    .end local v19    # "lowest":I
    .restart local v34    # "widthSpec":I
    :cond_9
    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    invoke-static/range {v35 .. v36}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15    # "heightSpec":I
    goto :goto_4

    .line 1607
    .end local v15    # "heightSpec":I
    .end local v34    # "widthSpec":I
    :cond_a
    aget v12, v31, v13

    .restart local v12    # "childTop":I
    goto :goto_5

    .line 1617
    .restart local v18    # "j":I
    .restart local v19    # "lowest":I
    :cond_b
    move/from16 v12, v19

    .line 1619
    .end local v18    # "j":I
    .end local v19    # "lowest":I
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1620
    .local v9, "childHeight":I
    add-int v7, v12, v9

    .line 1621
    .local v7, "childBottom":I
    add-int v35, v14, v17

    mul-int v35, v35, v13

    add-int v10, v23, v35

    .line 1622
    .local v10, "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v35

    add-int v11, v10, v35

    .line 1623
    .local v11, "childRight":I
    invoke-virtual {v6, v10, v12, v11, v7}, Landroid/view/View;->layout(IIII)V

    .line 1625
    move/from16 v18, v13

    .restart local v18    # "j":I
    :goto_7
    add-int v35, v13, v29

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_d

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aput v7, v35, v18

    .line 1625
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1629
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .line 1630
    .local v28, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-eqz v28, :cond_e

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-eq v0, v9, :cond_e

    .line 1632
    move-object/from16 v0, v28

    iput v9, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1633
    move/from16 v27, v25

    .line 1636
    :cond_e
    if-eqz v28, :cond_f

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    .line 1638
    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1639
    move/from16 v26, v25

    .line 1642
    :cond_f
    if-eqz v28, :cond_2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-eq v0, v13, :cond_2

    .line 1643
    move-object/from16 v0, v28

    iput v13, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    goto/16 :goto_3

    .line 1648
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childBottom":I
    .end local v9    # "childHeight":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    .end local v13    # "col":I
    .end local v18    # "j":I
    .end local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v25    # "position":I
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v33    # "widthSize":I
    :cond_10
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v16

    const/high16 v36, -0x80000000

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v36, v36, v16

    aput v36, v35, v16

    .line 1648
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 1654
    :cond_12
    if-gez v27, :cond_13

    if-ltz v26, :cond_17

    .line 1655
    :cond_13
    if-ltz v27, :cond_14

    .line 1656
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    .line 1658
    :cond_14
    if-ltz v26, :cond_15

    .line 1659
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    .line 1661
    :cond_15
    const/16 v16, 0x0

    :goto_9
    sub-int v35, v8, v4

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_17

    .line 1662
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v25, v35, v16

    .line 1663
    .restart local v25    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1664
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 1665
    .restart local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .line 1666
    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v28, :cond_16

    .line 1667
    new-instance v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v35, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;)V

    .line 1668
    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1670
    :cond_16
    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    .line 1671
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    .line 1672
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    .line 1673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    .line 1661
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 1677
    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v25    # "position":I
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_19

    .line 1678
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1679
    .restart local v6    # "child":Landroid/view/View;
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 1539
    .end local v6    # "child":Landroid/view/View;
    :cond_18
    :goto_a
    return-void

    .line 1680
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1a

    .line 1681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1682
    .restart local v6    # "child":Landroid/view/View;
    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_a

    .line 1684
    .end local v6    # "child":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_a
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 2196
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v5

    .line 2197
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 2198
    return-object v5

    .line 2201
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 2202
    const/4 v5, 0x0

    .line 2203
    .local v5, "view":Landroid/view/View;
    return-object v8

    .line 2207
    .local v5, "view":Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_4

    .line 2208
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    iget v1, v7, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    .line 2209
    .local v1, "optType":I
    :goto_0
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 2210
    .local v2, "positionViewType":I
    if-ne v1, v2, :cond_5

    .line 2211
    move-object v3, p2

    .line 2214
    .local v3, "scrap":Landroid/view/View;
    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2216
    if-eq v5, v3, :cond_2

    if-eqz v3, :cond_2

    .line 2218
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v7, v3}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    .line 2221
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2222
    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 2223
    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_3

    .line 2224
    if-nez v6, :cond_6

    .line 2225
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    .line 2231
    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :goto_2
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2232
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2236
    .end local v0    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :cond_3
    if-eqz v6, :cond_8

    move-object v4, v6

    .line 2237
    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 2241
    .local v4, "sglp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :goto_3
    iput p1, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->position:I

    .line 2242
    iput v2, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    .line 2244
    return-object v5

    .line 2208
    .end local v1    # "optType":I
    .end local v2    # "positionViewType":I
    .end local v3    # "scrap":Landroid/view/View;
    .end local v4    # "sglp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "optType":I
    goto :goto_0

    .line 2211
    .restart local v2    # "positionViewType":I
    :cond_5
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->getScrapView(IJ)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "scrap":Landroid/view/View;
    goto :goto_1

    .line 2226
    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2227
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    goto :goto_2

    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :cond_7
    move-object v0, v6

    .line 2229
    check-cast v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    goto :goto_2

    .line 2239
    .end local v0    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :cond_8
    move-object v4, v0

    .restart local v4    # "sglp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    goto :goto_3
.end method

.method final offsetChildren(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 1521
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1522
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1523
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p1

    .line 1524
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, p1

    .line 1523
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1527
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 1528
    .local v2, "colCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1529
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1530
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    .line 1528
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1519
    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v5, 0x0

    .line 3369
    iget-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 3371
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v4

    return-object v4

    .line 3377
    :cond_0
    sget-object v4, Lcom/letv/leui/widget/StaggeredGridView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 3382
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3383
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3384
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3385
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3386
    move v0, v2

    .line 3392
    :cond_1
    if-ltz v0, :cond_2

    .line 3393
    add-int/lit8 v4, v0, 0x1

    .line 3394
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 3393
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3397
    :cond_2
    return-object v3

    .line 3384
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 552
    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 554
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 588
    :cond_0
    :pswitch_0
    return v8

    .line 556
    :pswitch_1
    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 557
    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    .line 559
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    .line 560
    const/4 v5, 0x0

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 561
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 563
    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 564
    return v7

    .line 569
    :pswitch_2
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 570
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 571
    const-string/jumbo v5, "StaggeredGridView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 572
    iget v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    .line 571
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 572
    const-string/jumbo v7, " - did StaggeredGridView receive an inconsistent "

    .line 571
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 573
    const-string/jumbo v7, "event stream?"

    .line 571
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v8

    .line 576
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 577
    .local v4, "y":F
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v5, v4, v5

    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v5, v6

    .line 578
    .local v2, "dy":F
    float-to-int v1, v2

    .line 579
    .local v1, "deltaY":I
    int-to-float v5, v1

    sub-float v5, v2, v5

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 581
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 582
    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 583
    return v7

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    .line 1246
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    .line 1247
    iput-boolean v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    .line 1244
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1214
    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1215
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1216
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1218
    .local v2, "heightSize":I
    if-eq v3, v5, :cond_0

    .line 1219
    const/high16 v3, 0x40000000    # 2.0f

    .line 1221
    :cond_0
    if-eq v1, v5, :cond_1

    .line 1222
    const/high16 v1, 0x40000000    # 2.0f

    .line 1225
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setMeasuredDimension(II)V

    .line 1227
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCountSetting:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1228
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v5

    .line 1229
    .local v0, "colCount":I
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v5, :cond_2

    .line 1230
    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 1211
    .end local v0    # "colCount":I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v3, p1

    .line 2763
    check-cast v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;

    .line 2764
    .local v3, "ss":Lcom/letv/leui/widget/StaggeredGridView$SavedState;
    invoke-virtual {v3}, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2765
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    .line 2766
    iget v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .line 2767
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    .line 2769
    iget-boolean v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->inActionMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_0

    .line 2770
    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 2771
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2774
    :cond_0
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    .line 2775
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2778
    :cond_1
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_2

    .line 2779
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2782
    :cond_2
    iget v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2783
    iget-object v2, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 2785
    .local v2, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/StaggeredGridView$ColMap;>;"
    if-eqz v2, :cond_3

    .line 2786
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2787
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "colMap$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    .line 2788
    .local v0, "colMap":Lcom/letv/leui/widget/StaggeredGridView$ColMap;
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView$ColMap;->-get0(Lcom/letv/leui/widget/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2792
    .end local v0    # "colMap":Lcom/letv/leui/widget/StaggeredGridView$ColMap;
    .end local v1    # "colMap$iterator":Ljava/util/Iterator;
    :cond_3
    iget-wide v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 2793
    iget-wide v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    iput-wide v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstAdapterId:J

    .line 2794
    const/4 v4, -0x1

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    .line 2798
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateViews()V

    .line 2762
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 2717
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .line 2718
    .local v8, "superState":Landroid/os/Parcelable;
    new-instance v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;

    invoke-direct {v7, v8}, Lcom/letv/leui/widget/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2719
    .local v7, "ss":Lcom/letv/leui/widget/StaggeredGridView$SavedState;
    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .line 2720
    .local v6, "position":I
    iput v6, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    .line 2721
    if-ltz v6, :cond_0

    iget-object v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 2722
    iget-object v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    .line 2725
    :cond_0
    iget v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    new-array v9, v11, [I

    .line 2726
    .local v9, "topOffsets":[I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_5

    .line 2727
    iget v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColWidth:I

    if-lez v11, :cond_1

    .line 2728
    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    .line 2730
    :cond_1
    iput-object v9, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 2733
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2734
    .local v2, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/StaggeredGridView$ColMap;>;"
    iget-object v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cols$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2735
    .local v0, "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    invoke-direct {v11, v0}, Lcom/letv/leui/widget/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2738
    .end local v0    # "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iput-object v2, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 2744
    .end local v1    # "cols$iterator":Ljava/util/Iterator;
    .end local v2    # "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/StaggeredGridView$ColMap;>;"
    :goto_1
    iget v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    :cond_3
    iput-boolean v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->inActionMode:Z

    .line 2746
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v10, :cond_4

    .line 2747
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v10

    iput-object v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2749
    :cond_4
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_7

    .line 2750
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2751
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 2752
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 2753
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v5, v12, v13, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2752
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2740
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_5
    iput-object v9, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 2741
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    goto :goto_1

    .line 2755
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_6
    iput-object v5, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2757
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iget v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    iput v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    .line 2758
    return-object v7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v11, v2, 0xff

    .line 602
    .local v11, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/letv/leui/widget/StaggeredGridView;->pointToPosition(II)I

    move-result v21

    .line 604
    .local v21, "motionPosition":I
    packed-switch v11, :pswitch_data_0

    .line 831
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 607
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchX:F

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 613
    .local v28, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    .line 616
    .local v30, "y":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    .line 617
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 631
    :cond_0
    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    .line 632
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mMotionX:I

    .line 633
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mMotionY:I

    goto :goto_0

    .line 619
    :cond_1
    if-ltz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v2, :cond_2

    .line 625
    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 628
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 638
    .end local v28    # "x":I
    .end local v30    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    .line 639
    .local v20, "index":I
    if-gez v20, :cond_3

    .line 640
    const-string/jumbo v2, "StaggeredGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 641
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 641
    const-string/jumbo v4, " - did StaggeredGridView receive an inconsistent "

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 642
    const-string/jumbo v4, "event stream?"

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v2, 0x0

    return v2

    .line 645
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v29

    .line 646
    .local v29, "y":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v2, v29, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v16, v2, v3

    .line 647
    .local v16, "dy":F
    move/from16 v0, v16

    float-to-int v15, v0

    .line 648
    .local v15, "deltaY":I
    int-to-float v2, v15

    sub-float v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 650
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 651
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 657
    .local v17, "handler":Landroid/os/Handler;
    if-eqz v17, :cond_4

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    .line 661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 662
    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_5

    .line 663
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 668
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .line 669
    .local v23, "parent":Landroid/view/ViewParent;
    if-eqz v23, :cond_6

    .line 670
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 674
    .end local v17    # "handler":Landroid/os/Handler;
    .end local v22    # "motionView":Landroid/view/View;
    .end local v23    # "parent":Landroid/view/ViewParent;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 675
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    .line 677
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    if-eqz v2, :cond_7

    .line 678
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 679
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    if-lt v2, v3, :cond_9

    .line 680
    const/16 v16, 0x0

    .line 685
    :goto_2
    move/from16 v0, v16

    float-to-int v15, v0

    .line 686
    int-to-float v2, v15

    sub-float v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    .line 689
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    if-eqz v2, :cond_a

    .line 695
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    .line 682
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v13, v3, v2

    .line 683
    .local v13, "coeff":F
    mul-float v16, v16, v13

    goto :goto_2

    .line 689
    .end local v13    # "coeff":F
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3

    .line 701
    .end local v15    # "deltaY":I
    .end local v16    # "dy":F
    .end local v20    # "index":I
    .end local v29    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 702
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 703
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    goto/16 :goto_0

    .line 706
    :cond_b
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    .line 708
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    .line 709
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 710
    .restart local v22    # "motionView":Landroid/view/View;
    if-eqz v22, :cond_c

    .line 711
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 713
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .line 714
    .restart local v17    # "handler":Landroid/os/Handler;
    if-eqz v17, :cond_d

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleVelocityTracker()V

    .line 724
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    goto/16 :goto_0

    .line 729
    .end local v17    # "handler":Landroid/os/Handler;
    .end local v22    # "motionView":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    .line 731
    .local v26, "velocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v25, v0

    .line 733
    .local v25, "prevTouchMode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-eqz v2, :cond_10

    .line 738
    :cond_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-eqz v2, :cond_11

    .line 744
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 746
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 751
    :goto_4
    packed-switch v25, :pswitch_data_1

    .line 827
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    .line 733
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 734
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    goto/16 :goto_0

    .line 739
    :cond_11
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v26

    float-to-int v6, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 741
    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    .line 740
    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 742
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    goto :goto_4

    .line 748
    :cond_12
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_4

    .line 755
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v21, v0

    .line 756
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 757
    .local v12, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    .line 758
    .local v27, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v27, v2

    if-lez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v27, v2

    if-gez v2, :cond_15

    const/16 v19, 0x1

    .line 759
    .local v19, "inList":Z
    :goto_6
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 819
    :cond_13
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 824
    :cond_14
    :goto_7
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_5

    .line 758
    .end local v19    # "inList":Z
    :cond_15
    const/16 v19, 0x0

    .restart local v19    # "inList":Z
    goto :goto_6

    .line 759
    :cond_16
    if-eqz v19, :cond_13

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    .line 761
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    .line 764
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    if-nez v2, :cond_18

    .line 765
    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    .line 768
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    move-object/from16 v24, v0

    .line 769
    .local v24, "performClick":Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 770
    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    .line 773
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    .line 774
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v18

    .line 775
    .local v18, "handlerTouch":Landroid/os/Handler;
    if-eqz v18, :cond_1a

    .line 776
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 776
    :goto_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 780
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 781
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 783
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 784
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    .line 785
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 786
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1b

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 791
    .local v14, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_1b

    instance-of v2, v14, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_1b

    .line 792
    check-cast v14, Landroid/graphics/drawable/TransitionDrawable;

    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 795
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_1c

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 798
    :cond_1c
    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v2, v0, v12, v1}, Lcom/letv/leui/widget/StaggeredGridView$2;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;Lcom/letv/leui/widget/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 815
    :goto_9
    const/4 v2, 0x1

    return v2

    .line 777
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    goto/16 :goto_8

    .line 812
    :cond_1e
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_9

    .line 816
    .end local v18    # "handlerTouch":Landroid/os/Handler;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 817
    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->run()V

    goto/16 :goto_7

    .line 820
    .end local v24    # "performClick":Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    .line 821
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_7

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 751
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3498
    const/4 v8, 0x1

    .line 3500
    .local v8, "dispatchItemClick":Z
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 3501
    const/4 v7, 0x0

    .line 3503
    .local v7, "checkedStateChanged":Z
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 3504
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v6, 0x0

    .line 3505
    .local v6, "checked":Z
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3506
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3507
    if-eqz v6, :cond_7

    .line 3508
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3513
    :cond_0
    :goto_1
    if-eqz v6, :cond_8

    .line 3514
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 3518
    :goto_2
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3519
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 3521
    const/4 v8, 0x0

    .line 3523
    :cond_1
    const/4 v7, 0x1

    .line 3526
    .end local v6    # "checked":Z
    :cond_2
    if-eqz v7, :cond_3

    .line 3527
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateOnScreenCheckedViews()V

    .line 3531
    .end local v7    # "checkedStateChanged":Z
    :cond_3
    if-eqz v8, :cond_9

    .line 3532
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    if-eqz v0, :cond_9

    .line 3533
    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/StaggeredGridView;->playSoundEffect(I)V

    .line 3534
    if-eqz p1, :cond_4

    .line 3535
    invoke-virtual {p1, v10}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3537
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;IJ)V

    .line 3540
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_5

    .line 3541
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3543
    :cond_5
    return v10

    .line 3504
    .restart local v7    # "checkedStateChanged":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_0

    .line 3510
    :cond_7
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 3516
    :cond_8
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .line 3547
    .end local v6    # "checked":Z
    .end local v7    # "checkedStateChanged":Z
    :cond_9
    return v9
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 3555
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 3556
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 3557
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 3558
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3559
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3560
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3569
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3570
    .local v6, "frame":Landroid/graphics/Rect;
    if-nez v6, :cond_2

    .line 3571
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3572
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3574
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3576
    invoke-virtual {p1, v8}, Landroid/view/View;->setActivated(Z)V

    .line 3577
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 3579
    invoke-virtual {p0, p2, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setItemChecked(IZ)V

    .line 3588
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/StaggeredGridView;->performHapticFeedback(I)Z

    .line 3591
    .end local v6    # "frame":Landroid/graphics/Rect;
    :cond_3
    return v2

    .line 3594
    :cond_4
    const/4 v7, 0x0

    .line 3595
    .local v7, "handled":Z
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    if-eqz v0, :cond_5

    .line 3596
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v7

    .line 3600
    .end local v7    # "handled":Z
    :cond_5
    if-nez v7, :cond_6

    .line 3601
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3602
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v7

    .line 3604
    :cond_6
    if-eqz v7, :cond_7

    .line 3605
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/StaggeredGridView;->performHapticFeedback(I)Z

    .line 3609
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_8

    .line 3610
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 3612
    :cond_8
    return v7
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3846
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3847
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3848
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3849
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3852
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .line 3853
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3854
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3855
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3856
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3857
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3858
    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    .line 3853
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3862
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 3314
    if-eq p1, v6, :cond_0

    .line 3315
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    .line 3318
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3319
    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3320
    instance-of v2, p2, Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 3321
    check-cast v2, Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3324
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 3325
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 3324
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(IIII)V

    .line 3327
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 3328
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    .line 3329
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .line 3330
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 3331
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->refreshDrawableState()V

    .line 3313
    :cond_2
    return-void

    .line 3329
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFastChildLayout:Z

    if-eqz v0, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2252
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    .line 2253
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2257
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->clearAllState()V

    .line 2258
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2259
    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    .line 2261
    if-eqz p1, :cond_4

    .line 2262
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    .line 2263
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2264
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    .line 2265
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    .line 2266
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    if-eqz v2, :cond_1

    .line 2267
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v2, :cond_1

    .line 2268
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2273
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_2

    .line 2274
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2277
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    .line 2278
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2280
    :cond_3
    if-eqz p1, :cond_5

    :goto_1
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    .line 2251
    return-void

    .line 2271
    :cond_4
    iput-boolean v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2280
    goto :goto_1
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 2412
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    .line 2413
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2414
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2415
    iput-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2417
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2418
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2419
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2421
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2422
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2425
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2426
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->clearChoices()V

    .line 2427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    .line 2411
    :cond_3
    return-void
.end method

.method public setColumnCount(I)V
    .locals 4
    .param p1, "colCount"    # I

    .prologue
    .line 495
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 500
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .line 501
    if-eqz v0, :cond_1

    .line 502
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    .line 494
    :cond_1
    return-void

    .line 499
    .end local v0    # "needsPopulate":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "needsPopulate":Z
    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "drawSelectorOnTop"    # Z

    .prologue
    .line 3870
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .line 3869
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2454
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-nez v1, :cond_0

    .line 2455
    return-void

    .line 2459
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 2460
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v1, v3, :cond_1

    .line 2461
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_6

    .line 2462
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2467
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2470
    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v1, v3, :cond_9

    .line 2471
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2472
    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2473
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2474
    if-eqz p2, :cond_7

    .line 2475
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2480
    :cond_2
    :goto_0
    if-eq v0, p2, :cond_3

    .line 2481
    if-eqz p2, :cond_8

    .line 2482
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    .line 2487
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    .line 2488
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2489
    .local v4, "id":J
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2516
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-nez v1, :cond_5

    .line 2519
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateViews()V

    .line 2453
    :cond_5
    return-void

    .line 2463
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2477
    .restart local v0    # "oldValue":Z
    :cond_7
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 2484
    :cond_8
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_1

    .line 2493
    .end local v0    # "oldValue":Z
    :cond_9
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    .line 2496
    :goto_3
    if-nez p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2497
    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2498
    if-eqz v7, :cond_b

    .line 2499
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 2504
    :cond_b
    if-eqz p2, :cond_e

    .line 2505
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2506
    if-eqz v7, :cond_c

    .line 2507
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2509
    :cond_c
    iput v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .line 2493
    :cond_d
    const/4 v7, 0x0

    .local v7, "updateIds":Z
    goto :goto_3

    .line 2510
    .end local v7    # "updateIds":Z
    :cond_e
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2511
    :cond_f
    iput v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2
.end method

.method public setItemMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 526
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 527
    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    .line 528
    if-eqz v0, :cond_0

    .line 529
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    .line 525
    :cond_0
    return-void

    .line 526
    .end local v0    # "needsPopulate":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "needsPopulate":Z
    goto :goto_0
.end method

.method public setMinColumnWidth(I)V
    .locals 1
    .param p1, "minColWidth"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    .line 516
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setColumnCount(I)V

    .line 514
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2535
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    .line 2537
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->setWrapped(Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;)V

    .line 2533
    return-void
.end method

.method public setOnItemClickListener(Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    .prologue
    .line 3769
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    .line 3768
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    .prologue
    .line 3805
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3806
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    .line 3808
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    .line 3804
    return-void
.end method

.method public setPositionAndTop(II)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v7, 0x0

    .line 1369
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .line 1370
    .local v1, "firstPosition":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1371
    .local v2, "lastVisiblePosition":I
    move v4, p1

    .line 1372
    .local v4, "syncPosition":I
    move v3, p2

    .line 1379
    .local v3, "sncTop":I
    if-ltz v4, :cond_0

    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-lt v4, v6, :cond_2

    .line 1380
    :cond_0
    return-void

    .line 1391
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .line 1392
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .line 1382
    :cond_2
    if-lt v4, v1, :cond_3

    if-le v4, v2, :cond_5

    .line 1383
    :cond_3
    if-le v4, v2, :cond_8

    .line 1384
    const/16 v6, -0x12c

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1388
    :cond_4
    :goto_0
    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMoveBy:I

    if-nez v6, :cond_1

    .line 1394
    :cond_5
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1395
    .local v5, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 1396
    .local v0, "delta":I
    if-eqz v5, :cond_6

    .line 1397
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    .line 1400
    :cond_6
    if-eqz v0, :cond_7

    .line 1401
    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1403
    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1404
    if-eqz v5, :cond_7

    .line 1405
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    .line 1406
    if-eqz v0, :cond_7

    .line 1407
    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    .line 1368
    :cond_7
    return-void

    .line 1385
    .end local v0    # "delta":I
    .end local v5    # "view":Landroid/view/View;
    :cond_8
    if-ge v4, v1, :cond_4

    .line 1386
    const/16 v6, 0x12c

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_0
.end method

.method public setSelectionToTop()V
    .locals 6

    .prologue
    .line 2330
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    if-eqz v3, :cond_0

    .line 2331
    return-void

    .line 2334
    :cond_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_1

    .line 2335
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2338
    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_2

    .line 2339
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 2342
    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    if-eqz v3, :cond_5

    .line 2344
    :cond_3
    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$6;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/StaggeredGridView$6;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    .line 2350
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2351
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_4

    .line 2352
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2354
    :cond_4
    return-void

    .line 2356
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .line 2358
    .local v0, "firstPosition":I
    if-nez v0, :cond_6

    .line 2359
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    .line 2327
    :goto_0
    return-void

    .line 2361
    :cond_6
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleAllViews()V

    .line 2363
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->resetStateForGridTop()V

    .line 2364
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v3, :cond_7

    .line 2365
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->startLayoutAnimation()V

    goto :goto_0

    .line 2367
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3683
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3682
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 3699
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3700
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3701
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3704
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3706
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 3707
    return-void

    .line 3710
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3711
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3712
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionLeftPadding:I

    .line 3713
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionTopPadding:I

    .line 3714
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionRightPadding:I

    .line 3715
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionBottomPadding:I

    .line 3716
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3717
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    .line 3698
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 3744
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3753
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3758
    const/4 v0, 0x0

    return v0

    .line 3756
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3753
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3722
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3723
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3720
    :cond_0
    :goto_0
    return-void

    .line 3725
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
