.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$LayoutParams;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static FLAG_AUTO_REFRESH_AT_ONCE:B = 0x0t

.field private static FLAG_AUTO_REFRESH_BUT_LATER:B = 0x0t

.field private static FLAG_ENABLE_NEXT_PTR_AT_ONCE:B = 0x0t

.field private static FLAG_PIN_CONTENT:B = 0x0t

.field private static ID:I = 0x0

.field private static MASK_AUTO_REFRESH:B = 0x0t

.field public static final PTR_STATUS_COMPLETE:B = 0x4t

.field public static final PTR_STATUS_INIT:B = 0x1t

.field public static final PTR_STATUS_LOADING:B = 0x3t

.field public static final PTR_STATUS_PREPARE:B = 0x2t


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mContainerId:I

.field protected mContent:Landroid/view/View;

.field private mDisableWhenHorizontalMove:Z

.field private mDurationToClose:I

.field private mDurationToCloseHeader:I

.field private mFlag:I

.field private mHasSendCancelEvent:Z

.field private mHeaderHeight:I

.field private mHeaderId:I

.field private mHeaderView:Landroid/view/View;

.field private mKeepHeaderWhenRefresh:Z

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private mLoadingMinTime:I

.field private mLoadingStartTime:J

.field private mPagingTouchSlop:I

.field private mPreventForHorizontal:Z

.field private mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

.field private mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

.field private mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

.field private mPullToRefresh:Z

.field private mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

.field private mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

.field private mStatus:B


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;F)V
    .locals 0
    .param p1, "deltaY"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->movePos(F)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Z)V
    .locals 0
    .param p1, "ignoreHook"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefreshComplete()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    .line 31
    sput v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->ID:I

    .line 34
    sput-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_AT_ONCE:B

    .line 35
    const/4 v0, 0x2

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    .line 36
    const/4 v0, 0x4

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    .line 37
    const/16 v0, 0x8

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    .line 39
    const/4 v0, 0x3

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ptr-frame-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->ID:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    .line 44
    iput v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    .line 45
    iput v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    .line 47
    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    .line 48
    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 49
    iput-boolean v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    .line 50
    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    .line 52
    invoke-static {}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->create()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 61
    iput-byte v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 62
    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    .line 63
    iput v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    .line 66
    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    .line 72
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingMinTime:I

    .line 73
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingStartTime:J

    .line 75
    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    .line 88
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-direct {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .line 90
    sget-object v3, Lcom/android/internal/R$styleable;->LePtrFrameLayout:[I

    invoke-virtual {p1, p2, v3, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "arr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 93
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    .line 94
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    .line 96
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .line 97
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getResistance()F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setResistance(F)V

    .line 99
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    .line 100
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 102
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getRatioOfHeaderToHeightRefresh()F

    move-result v2

    .line 103
    .local v2, "ratio":F
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 104
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setRatioOfHeaderHeightToRefresh(F)V

    .line 106
    iget-boolean v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    .line 108
    iget-boolean v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    .line 109
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    .end local v2    # "ratio":F
    :cond_0
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    .line 114
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 115
    .local v1, "conf":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPagingTouchSlop:I

    .line 85
    return-void
.end method

.method private clearFlag()V
    .locals 2

    .prologue
    .line 699
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    .line 697
    return-void
.end method

.method private layoutChildren()V
    .locals 11

    .prologue
    .line 227
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v3

    .line 228
    .local v3, "offsetX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v4

    .line 229
    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v5

    .line 231
    .local v5, "paddingTop":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 232
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 233
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v4, v8

    .line 235
    .local v1, "left":I
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v5

    add-int v7, v8, v3

    .line 236
    .local v7, "top":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v1, v8

    .line 237
    .local v6, "right":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 238
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v6, v9}, Landroid/view/View;->layout(IIII)V

    .line 239
    sget-boolean v8, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 243
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    const/4 v3, 0x0

    .line 247
    :cond_1
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    .restart local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v4, v8

    .line 249
    .restart local v1    # "left":I
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v5

    add-int v7, v8, v3

    .line 250
    .restart local v7    # "top":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v1, v8

    .line 251
    .restart local v6    # "right":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 252
    .restart local v0    # "bottom":I
    sget-boolean v8, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 255
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8, v1, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 226
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_3
    return-void
.end method

.method private measureContentView(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 213
    invoke-static {p2, v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 216
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 215
    invoke-static {p3, v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 218
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 210
    return-void
.end method

.method private movePos(F)V
    .locals 5
    .param p1, "deltaY"    # F

    .prologue
    const/4 v4, 0x0

    .line 360
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    sget-boolean v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "has reached the top"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    return-void

    .line 367
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v2

    float-to-int v3, p1

    add-int v1, v2, v3

    .line 370
    .local v1, "to":I
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->willOverTop(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    sget-boolean v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "over top"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_2
    const/4 v1, 0x0

    .line 377
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setCurrentPos(I)V

    .line 378
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v2

    sub-int v0, v1, v2

    .line 379
    .local v0, "change":I
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->updatePos(I)V

    .line 358
    return-void
.end method

.method private notifyUIRefreshComplete(Z)V
    .locals 2
    .param p1, "ignoreHook"    # Z

    .prologue
    .line 669
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "PtrUIHandler: onUIRefreshComplete"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToScrollTo notifyUIRefreshComplete"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onUIRefreshComplete()V

    .line 685
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTopAfterComplete()V

    .line 686
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToNotifyReset()Z

    .line 665
    return-void

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    if-eqz v0, :cond_0

    .line 670
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyUIRefreshComplete mRefreshCompleteHook run."

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->takeOver()V

    .line 675
    return-void
.end method

.method private onRelease(Z)V
    .locals 3
    .param p1, "stayForLoading"    # Z

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    .line 458
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 460
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    goto :goto_0

    .line 468
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTopWhileLoading()V

    goto :goto_0

    .line 471
    :cond_3
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    goto :goto_0

    .line 474
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTopAbortRefresh()V

    goto :goto_0
.end method

.method private performAutoRefreshButLater()Z
    .locals 2

    .prologue
    .line 729
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    and-int/2addr v0, v1

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performRefresh()V
    .locals 3

    .prologue
    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingStartTime:J

    .line 548
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 550
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "PtrUIHandler: onUIRefreshBegin"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;->onRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performRefresh status ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private performRefreshComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 645
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 648
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 652
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-static {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 651
    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    :cond_0
    return-void

    .line 657
    :cond_1
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    .line 644
    return-void
.end method

.method private sendCancelEvent()V
    .locals 10

    .prologue
    .line 943
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "send cancel event"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 949
    return-void

    .line 951
    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 952
    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    const/4 v4, 0x3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 953
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    .line 942
    return-void
.end method

.method private sendDownEvent()V
    .locals 10

    .prologue
    .line 957
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "send down event"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_0
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 961
    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 962
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    .line 956
    return-void
.end method

.method private tryScrollBackToTop()V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToScrollTo  tryScrollBackToTop1"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isUnderTouch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToScrollTo  tryScrollBackToTop2"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    .line 501
    :cond_0
    return-void
.end method

.method private tryScrollBackToTopAbortRefresh()V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    .line 526
    return-void
.end method

.method private tryScrollBackToTopAfterComplete()V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    .line 519
    return-void
.end method

.method private tryScrollBackToTopWhileLoading()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    .line 512
    return-void
.end method

.method private tryToNotifyReset()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 565
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToNotifyReset1"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToNotifyReset2"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToNotifyReset3"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 571
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "PtrUIHandler: onUIReset"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    iput-byte v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 576
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->clearFlag()V

    .line 577
    return v2

    .line 579
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private tryToPerformRefresh()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 532
    return v3

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPtrIndicator.isOverOffsetToKeepHeaderWhileLoading() --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAutoRefresh() ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPtrIndicator.isOverOffsetToRefresh() ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToRefresh()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToRefresh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    :cond_2
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 541
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefresh()V

    .line 543
    :cond_3
    return v3
.end method

.method private updatePos(I)V
    .locals 9
    .param p1, "change"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 383
    if-nez p1, :cond_0

    .line 384
    return-void

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isUnderTouch()Z

    move-result v0

    .line 390
    .local v0, "isUnderTouch":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    if-eqz v1, :cond_9

    .line 396
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasJustLeftStartPosition()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-ne v1, v5, :cond_a

    .line 399
    :goto_1
    iput-byte v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 400
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 401
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasJustBackToStartPosition()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 408
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToNotifyReset()Z

    .line 411
    if-eqz v0, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->sendDownEvent()V

    .line 417
    :cond_3
    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-ne v1, v7, :cond_5

    .line 419
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 424
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performAutoRefreshButLater()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasJustReachedHeaderHeightFromTopToBottom()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    .line 429
    :cond_5
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 430
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 430
    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v1

    if-nez v1, :cond_7

    .line 436
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 438
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->invalidate()V

    .line 440
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 441
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iget-byte v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    .line 443
    :cond_8
    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onPositionChange(ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    .line 382
    return-void

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasMovedAfterPressedDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    iput-boolean v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    .line 392
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->sendCancelEvent()V

    goto/16 :goto_0

    .line 397
    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->goDownCrossFinishPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-ne v1, v8, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isEnabledNextPtrAtOnce()Z

    move-result v1

    .line 396
    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 419
    :cond_b
    iget-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    if-eqz v1, :cond_4

    .line 420
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->crossRefreshLineFromTopToBottom()Z

    move-result v1

    .line 419
    if-eqz v1, :cond_4

    .line 421
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    goto/16 :goto_2
.end method


# virtual methods
.method public addPtrUIHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V
    .locals 1
    .param p1, "ptrUIHandler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->addHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V

    .line 806
    return-void
.end method

.method public autoRefresh()V
    .locals 2

    .prologue
    .line 690
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->autoRefresh(ZI)V

    .line 689
    return-void
.end method

.method public autoRefresh(Z)V
    .locals 1
    .param p1, "atOnce"    # Z

    .prologue
    .line 694
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->autoRefresh(ZI)V

    .line 693
    return-void
.end method

.method public autoRefresh(ZI)V
    .locals 5
    .param p1, "atOnce"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x1

    .line 704
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-eq v0, v2, :cond_0

    .line 705
    return-void

    .line 708
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    if-eqz p1, :cond_3

    sget-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_AT_ONCE:B

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    .line 710
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 711
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 713
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    .line 718
    if-eqz p1, :cond_2

    .line 719
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    .line 720
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefresh()V

    .line 702
    :cond_2
    return-void

    .line 708
    :cond_3
    sget-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 924
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public disableWhenHorizontalMove(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    .line 775
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dispatchTouchEvent [MotionEvent] status --"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v9, :cond_1

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 267
    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 271
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 350
    :cond_2
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 274
    :pswitch_0
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onRelease()V

    .line 275
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 276
    sget-boolean v9, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 277
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "call onRelease when user release"

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onRelease(Z)V

    .line 280
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasMovedAfterPressedDown()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 281
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->sendCancelEvent()V

    .line 282
    const/4 v9, 0x1

    return v9

    .line 284
    :cond_4
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 286
    :cond_5
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 290
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    .line 291
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onPressDown(FF)V

    .line 293
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->abortIfWorking()V

    .line 295
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    .line 305
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    .line 306
    const/4 v9, 0x1

    return v9

    .line 309
    :pswitch_2
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 310
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onMove(FF)V

    .line 311
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetX()F

    move-result v7

    .line 312
    .local v7, "offsetX":F
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetY()F

    move-result v8

    .line 314
    .local v8, "offsetY":F
    iget-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    if-eqz v9, :cond_7

    .line 319
    :cond_6
    :goto_0
    iget-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    if-eqz v9, :cond_8

    .line 320
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 314
    :cond_7
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPagingTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 315
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 316
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    goto :goto_0

    .line 323
    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_b

    const/4 v5, 0x1

    .line 324
    .local v5, "moveDown":Z
    :goto_1
    if-eqz v5, :cond_c

    const/4 v6, 0x0

    .line 325
    .local v6, "moveUp":Z
    :goto_2
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v2

    .line 327
    .local v2, "canMoveUp":Z
    sget-boolean v9, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 328
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    iget-object v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {v9, p0, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;->checkCanDoRefresh(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    .line 329
    :goto_3
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "ACTION_MOVE: offsetY:%s, mCurrentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    iget-object v12, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v12}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v11, v13

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_9
    if-eqz v5, :cond_a

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    iget-object v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {v9, p0, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;->checkCanDoRefresh(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 337
    :cond_a
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v3

    .line 338
    .local v3, "currentPosY":I
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v4

    .line 339
    .local v4, "lastPosY":I
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ACTION_MOVE ---- currentPosY ----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ---- lastPosY ----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-byte v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f

    if-eqz v5, :cond_f

    iget v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    if-lt v4, v9, :cond_f

    .line 341
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 323
    .end local v2    # "canMoveUp":Z
    .end local v3    # "currentPosY":I
    .end local v4    # "lastPosY":I
    .end local v5    # "moveDown":Z
    .end local v6    # "moveUp":Z
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "moveDown":Z
    goto/16 :goto_1

    .line 324
    :cond_c
    const/4 v6, 0x1

    .restart local v6    # "moveUp":Z
    goto/16 :goto_2

    .line 328
    .restart local v2    # "canMoveUp":Z
    :cond_d
    const/4 v1, 0x0

    .local v1, "canMoveDown":Z
    goto/16 :goto_3

    .line 334
    .end local v1    # "canMoveDown":Z
    :cond_e
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 344
    .restart local v3    # "currentPosY":I
    .restart local v4    # "lastPosY":I
    :cond_f
    if-eqz v6, :cond_10

    if-nez v2, :cond_11

    :cond_10
    if-eqz v5, :cond_2

    .line 345
    :cond_11
    const-string/jumbo v9, "offsetY"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "offsetY----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->movePos(F)V

    .line 347
    const/4 v9, 0x1

    return v9

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 929
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 933
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 939
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 934
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultHeader()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    instance-of v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    return-object v0

    .line 969
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDurationToClose()F
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .prologue
    .line 847
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getRatioOfHeaderToHeightRefresh()F

    move-result v0

    return v0
.end method

.method public getResistance()F
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getResistance()F

    move-result v0

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    .line 973
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    return v0
.end method

.method public isAutoRefresh()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 725
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabledNextPtrAtOnce()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 748
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isKeepHeaderWhenRefresh()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    return v0
.end method

.method public isPinContent()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 767
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPullToRefresh()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 606
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildCount()I

    move-result v2

    .line 121
    .local v2, "childCount":I
    if-le v2, v4, :cond_0

    .line 122
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "PtrFrameLayout only can host 2 elements"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    if-ne v2, v4, :cond_b

    .line 124
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 125
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 127
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v4, :cond_2

    .line 128
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_4

    .line 134
    :cond_3
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "child1":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "child2":Landroid/view/View;
    instance-of v4, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v4, :cond_5

    .line 137
    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 138
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 174
    .end local v0    # "child1":Landroid/view/View;
    .end local v1    # "child2":Landroid/view/View;
    :cond_4
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 119
    return-void

    .line 139
    .restart local v0    # "child1":Landroid/view/View;
    .restart local v1    # "child2":Landroid/view/View;
    :cond_5
    instance-of v4, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v4, :cond_6

    .line 140
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 141
    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    .line 144
    :cond_6
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_7

    .line 145
    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 146
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    .line 150
    :cond_7
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_9

    .line 151
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-ne v4, v0, :cond_8

    .end local v1    # "child2":Landroid/view/View;
    :goto_1
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .restart local v1    # "child2":Landroid/view/View;
    :cond_8
    move-object v1, v0

    goto :goto_1

    .line 153
    :cond_9
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-ne v4, v0, :cond_a

    .end local v1    # "child2":Landroid/view/View;
    :goto_2
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    .restart local v1    # "child2":Landroid/view/View;
    :cond_a
    move-object v1, v0

    goto :goto_2

    .line 158
    .end local v0    # "child1":Landroid/view/View;
    .end local v1    # "child2":Landroid/view/View;
    :cond_b
    if-ne v2, v6, :cond_c

    .line 159
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    .line 161
    :cond_c
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v3, "errorView":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 163
    const v4, -0x9a00

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 165
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 166
    const-string/jumbo v4, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .line 168
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "flag"    # Z
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->layoutChildren()V

    .line 222
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 181
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 190
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    .line 192
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setHeaderHeight(I)V

    .line 195
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->measureContentView(Landroid/view/View;II)V

    .line 197
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 178
    :cond_2
    return-void
.end method

.method protected onPositionChange(ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 0
    .param p1, "isInTouching"    # Z
    .param p2, "status"    # B
    .param p3, "mPtrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    .line 446
    return-void
.end method

.method protected onPtrScrollAbort()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "call onRelease after scroll abort"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onRelease(Z)V

    .line 582
    :cond_1
    return-void
.end method

.method protected onPtrScrollFinish()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "call onRelease after scroll finish"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onRelease(Z)V

    .line 591
    :cond_1
    return-void
.end method

.method public final refreshComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 614
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshComplete"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->reset()V

    .line 622
    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingMinTime:I

    int-to-long v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 623
    .local v0, "delay":I
    if-gtz v0, :cond_4

    .line 624
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "performRefreshComplete at once"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefreshComplete()V

    .line 613
    :cond_3
    :goto_0
    return-void

    .line 629
    :cond_4
    new-instance v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 634
    int-to-long v2, v0

    .line 629
    invoke-virtual {p0, v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "performRefreshComplete after delay: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removePtrUIHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V
    .locals 1
    .param p1, "ptrUIHandler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->removeHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 811
    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 842
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    .line 841
    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 856
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    .line 855
    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    if-eqz p1, :cond_0

    .line 740
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    .line 738
    :goto_0
    return-void

    .line 742
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    goto :goto_0
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 910
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    .line 913
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 914
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 915
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .line 916
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    .line 919
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->addView(Landroid/view/View;I)V

    .line 909
    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .param p1, "yes"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 794
    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0
    .param p1, "keepOrNot"    # Z

    .prologue
    .line 893
    iput-boolean p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    .line 892
    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 785
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingMinTime:I

    .line 784
    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setOffsetToKeepHeaderWhileLoading(I)V

    .line 878
    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 869
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setOffsetToRefresh(I)V

    .line 868
    return-void
.end method

.method public setPinContent(Z)V
    .locals 2
    .param p1, "pinContent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 758
    if-eqz p1, :cond_0

    .line 759
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    .line 757
    :goto_0
    return-void

    .line 761
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    goto :goto_0
.end method

.method public setPtrHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;)V
    .locals 0
    .param p1, "ptrHandler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    .line 802
    return-void
.end method

.method public setPtrIndicator(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 1
    .param p1, "slider"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    if-eq v0, p1, :cond_0

    .line 817
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->convertFrom(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    .line 819
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .line 815
    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0
    .param p1, "pullToRefresh"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    .line 900
    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 860
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setRatioOfHeaderHeightToRefresh(F)V

    .line 859
    return-void
.end method

.method public setRefreshCompleteHook(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;)V
    .locals 1
    .param p1, "hook"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    .line 487
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->setResumeAction(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method public setResistance(F)V
    .locals 1
    .param p1, "resistance"    # F

    .prologue
    .line 828
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setResistance(F)V

    .line 827
    return-void
.end method
