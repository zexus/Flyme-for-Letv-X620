.class Lcom/letv/leui/widget/DragSortHelper$DragScroller;
.super Ljava/lang/Object;
.source "DragSortHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2015
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2028
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2025
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2021
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 2056
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    .line 2057
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2058
    return-void

    .line 2063
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v3

    .line 2064
    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v4

    .line 2065
    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v2

    .line 2066
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v10

    .line 2067
    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .line 2069
    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get16(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->-get9(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->-get8(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2070
    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get16(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->-get9(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->-get8(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2072
    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    .line 2073
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2075
    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    .line 2076
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2077
    return-void

    .line 2079
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    .line 2080
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2081
    return-void

    .line 2084
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get13(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->-get15(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    .line 2085
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->-get4(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v15

    .line 2084
    div-float/2addr v14, v15

    .line 2085
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2084
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrollSpeed:F

    .line 2101
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mCurrTime:J

    .line 2102
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dt:F

    .line 2108
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    .line 2111
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    if-ltz v13, :cond_7

    .line 2112
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    .line 2113
    move v9, v3

    .line 2119
    .local v9, "movePos":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2120
    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    add-int v11, v13, v14

    .line 2122
    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    .line 2123
    move v11, v10

    .line 2127
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/letv/leui/widget/DragSortHelper;->-set0(Lcom/letv/leui/widget/DragSortHelper;Z)Z

    .line 2129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/letv/leui/widget/LeListView;->setSelectionFromTop(II)V

    .line 2130
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->layoutChildren()V

    .line 2131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->invalidate()V

    .line 2133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/letv/leui/widget/DragSortHelper;->-set0(Lcom/letv/leui/widget/DragSortHelper;Z)Z

    .line 2136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v14, 0x0

    invoke-static {v13, v9, v8, v14}, Lcom/letv/leui/widget/DragSortHelper;->-wrap1(Lcom/letv/leui/widget/DragSortHelper;ILandroid/view/View;Z)V

    .line 2138
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    .line 2141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/letv/leui/widget/LeListView;->post(Ljava/lang/Runnable;)Z

    .line 2055
    return-void

    .line 2087
    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 2088
    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    .line 2089
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2090
    return-void

    .line 2092
    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    .line 2093
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2094
    return-void

    .line 2097
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->-get13(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->-get0(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v15

    sub-float/2addr v14, v15

    .line 2098
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->-get2(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v15

    .line 2097
    div-float/2addr v14, v15

    .line 2098
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    .line 2097
    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrollSpeed:F

    goto/16 :goto_0

    .line 2115
    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    .line 2116
    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_1
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2032
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mAbort:Z

    .line 2035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2036
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->tStart:J

    .line 2037
    iget-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    .line 2038
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->scrollDir:I

    .line 2039
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListView;->post(Ljava/lang/Runnable;)Z

    .line 2031
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2044
    if-eqz p1, :cond_0

    .line 2045
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2046
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    .line 2043
    :goto_0
    return-void

    .line 2048
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mAbort:Z

    goto :goto_0
.end method
