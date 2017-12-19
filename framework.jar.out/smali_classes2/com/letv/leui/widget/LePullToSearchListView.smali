.class public Lcom/letv/leui/widget/LePullToSearchListView;
.super Lcom/letv/leui/widget/LeListView;
.source "LePullToSearchListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;
    }
.end annotation


# static fields
.field private static final DURATION_DEFALT:I = 0x96


# instance fields
.field private RATIO:I

.field private animator:Landroid/animation/ValueAnimator;

.field private headerContentHeight:I

.field private headerView:Landroid/view/ViewGroup;

.field private isShowHeader:Z

.field private listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

.field private releaseToShow:Z

.field private scrollState:I

.field private showTrigger:F

.field private startY:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LePullToSearchListView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LePullToSearchListView;)Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LePullToSearchListView;I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    .line 26
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    .line 36
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    .line 76
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    .line 26
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    .line 36
    iput-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    .line 81
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private doAnimation(IIZ)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "isShowHeader"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 213
    new-array v0, v1, [I

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LePullToSearchListView$1;

    invoke-direct {v1, p0, p3}, Lcom/letv/leui/widget/LePullToSearchListView$1;-><init>(Lcom/letv/leui/widget/LePullToSearchListView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LePullToSearchListView$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LePullToSearchListView$2;-><init>(Lcom/letv/leui/widget/LePullToSearchListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 209
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [I

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 241
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LePullToSearchListView;->setOverScrollMode(I)V

    .line 86
    invoke-virtual {p0, p0}, Lcom/letv/leui/widget/LePullToSearchListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 249
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 250
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 251
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 252
    const/4 v5, -0x2

    .line 250
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 255
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 254
    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 256
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 258
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 260
    const/high16 v4, 0x40000000    # 2.0f

    .line 259
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 265
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 247
    return-void

    .line 262
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private resetTopPadding(I)V
    .locals 2
    .param p1, "padding"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 104
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePullToSearchListView;->invalidate()V

    .line 102
    return-void
.end method


# virtual methods
.method public getHeaderView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRATIO()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    return v0
.end method

.method public getShowTrigger()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    return v0
.end method

.method public isReleaseToShow()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    return v0
.end method

.method public isShowHeader()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 287
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    if-gtz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 290
    iput-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    .line 291
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    .line 285
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 270
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 271
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    .line 279
    :cond_0
    :goto_0
    iput p2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    .line 269
    :cond_1
    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->showSearchBar()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x96

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 110
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    goto :goto_0

    .line 114
    :pswitch_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    if-nez v1, :cond_4

    .line 115
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    if-nez v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-ne v1, v3, :cond_2

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v2, v2

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    goto :goto_0

    .line 120
    :cond_2
    iput v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    .line 121
    invoke-virtual {p0, v5, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    .line 125
    :cond_3
    iput-boolean v5, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    .line 126
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    goto :goto_0

    .line 130
    :cond_4
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    if-eqz v1, :cond_5

    .line 132
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    .line 133
    iput v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    .line 134
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LePullToSearchListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 137
    :cond_5
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    .line 138
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    if-lez v1, :cond_0

    .line 140
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-ne v1, v3, :cond_7

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v2, v2

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    goto :goto_0

    .line 143
    :cond_7
    iput v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    .line 144
    invoke-virtual {p0, v5, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->smoothScrollToPositionFromTop(III)V

    goto/16 :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 155
    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    if-nez v1, :cond_a

    .line 156
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    if-le v0, v1, :cond_9

    .line 157
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePullToSearchListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    .line 159
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    .line 160
    iput-boolean v5, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    iget-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->ReleaseToShowStateChange(Z)V

    goto/16 :goto_0

    .line 162
    :cond_8
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    goto :goto_1

    .line 170
    :cond_9
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v2, v2

    if-eq v1, v2, :cond_0

    .line 171
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    goto/16 :goto_0

    .line 177
    :cond_a
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    if-le v0, v1, :cond_b

    .line 178
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    div-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    goto/16 :goto_0

    .line 180
    :cond_b
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    div-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    .line 182
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePullToSearchListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_d

    .line 183
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    .line 184
    iput-boolean v5, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    goto/16 :goto_0

    .line 186
    :cond_c
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    goto/16 :goto_0

    .line 190
    :cond_d
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    .line 191
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    .line 192
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->measureView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    .line 95
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 100
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method

.method public setListener(Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    .line 70
    return-void
.end method

.method public setRATIO(I)V
    .locals 0
    .param p1, "RATIO"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    .line 43
    return-void
.end method

.method public setShowTrigger(F)V
    .locals 0
    .param p1, "showTrigger"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    .line 51
    return-void
.end method
