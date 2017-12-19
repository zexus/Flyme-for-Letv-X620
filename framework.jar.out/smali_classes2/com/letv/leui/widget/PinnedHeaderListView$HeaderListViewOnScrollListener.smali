.class Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;
.super Ljava/lang/Object;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/PinnedHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderListViewOnScrollListener"
.end annotation


# instance fields
.field private actualSection:I

.field private direction:I

.field private doneMeasuring:Z

.field private fadeOut:Landroid/view/animation/AlphaAnimation;

.field private lastResetSection:I

.field private next:Landroid/view/View;

.field private nextH:I

.field private noHeaderUpToHeader:Z

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private prevH:I

.field private previous:Landroid/view/View;

.field private previousFirstVisibleItem:I

.field private scrollingStart:Z

.field final synthetic this$0:Lcom/letv/leui/widget/PinnedHeaderListView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/PinnedHeaderListView;)V
    .locals 4
    .param p1, "this$0"    # Lcom/letv/leui/widget/PinnedHeaderListView;

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 80
    iput-object p1, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previousFirstVisibleItem:I

    .line 67
    iput v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    .line 68
    iput v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    .line 69
    iput-boolean v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->scrollingStart:Z

    .line 70
    iput-boolean v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    .line 71
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    .line 76
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->fadeOut:Landroid/view/animation/AlphaAnimation;

    .line 77
    iput-boolean v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->noHeaderUpToHeader:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/PinnedHeaderListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 4
    .param p1, "this$0"    # Lcom/letv/leui/widget/PinnedHeaderListView;
    .param p2, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 83
    iput-object p1, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previousFirstVisibleItem:I

    .line 67
    iput v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    .line 68
    iput v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    .line 69
    iput-boolean v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->scrollingStart:Z

    .line 70
    iput-boolean v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    .line 71
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    .line 76
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->fadeOut:Landroid/view/animation/AlphaAnimation;

    .line 77
    iput-boolean v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->noHeaderUpToHeader:Z

    .line 84
    iput-object p2, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 83
    return-void
.end method

.method private addSectionHeader(I)V
    .locals 11
    .param p1, "actualSection"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 223
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 224
    .local v5, "previousHeader":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 225
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 228
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 230
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v8

    invoke-virtual {v8, p1, v9, v9}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->-set0(Lcom/letv/leui/widget/PinnedHeaderListView;Landroid/view/View;)Landroid/view/View;

    .line 231
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 232
    .local v4, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v7, v4, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 233
    .local v0, "heightMode":I
    iget v7, v4, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 234
    .local v1, "heightSize":I
    if-nez v0, :cond_1

    .line 235
    const/high16 v0, 0x40000000    # 2.0f

    .line 236
    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->getListPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->getListPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 237
    .local v3, "maxHeight":I
    if-le v1, v3, :cond_2

    .line 238
    move v1, v3

    .line 240
    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->getListPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->getListPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 241
    .local v6, "ws":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 243
    .local v2, "hs":I
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Landroid/view/View;->measure(II)V

    .line 244
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v9}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 245
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v9}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 247
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Landroid/view/View;->scrollTo(II)V

    .line 248
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 249
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v8}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 254
    .end local v0    # "heightMode":I
    .end local v1    # "heightSize":I
    .end local v2    # "hs":I
    .end local v3    # "maxHeight":I
    .end local v4    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "ws":I
    :goto_0
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get2(Lcom/letv/leui/widget/PinnedHeaderListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 255
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    :cond_3
    return-void

    .line 251
    :cond_4
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 252
    iget-object v7, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v7}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method private getRealFirstVisibleItem(II)I
    .locals 5
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    const/4 v4, 0x0

    .line 261
    if-nez p2, :cond_0

    .line 262
    const/4 v3, -0x1

    return v3

    .line 264
    :cond_0
    const/4 v1, 0x0

    .local v1, "relativeIndex":I
    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 265
    .local v2, "totalHeight":I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v3}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-virtual {v3, v1}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    add-int v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    .local v0, "realFVI":I
    return v0
.end method

.method private resetHeader(I)V
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->scrollingStart:Z

    .line 197
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->addSectionHeader(I)V

    .line 198
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 199
    iput p1, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    .line 195
    return-void
.end method

.method private setMeasurements(II)V
    .locals 3
    .param p1, "realFirstVisibleItem"    # I
    .param p2, "firstVisibleItem"    # I

    .prologue
    const/4 v1, 0x0

    .line 204
    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    if-lez v0, :cond_0

    .line 205
    if-lt p1, p2, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    sub-int v2, p1, p2

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previous:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previous:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previous:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    .line 211
    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    if-gez v0, :cond_2

    .line 212
    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    iget v2, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 213
    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->addSectionHeader(I)V

    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->next:Landroid/view/View;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    .line 217
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v2, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previous:Landroid/view/View;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    .line 202
    return-void

    :cond_4
    move v0, v1

    .line 205
    goto :goto_0

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    invoke-static {v0}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 216
    goto :goto_2
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->scrollingStart:Z

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    .line 189
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 24
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v19

    sub-int p2, p2, v19

    .line 99
    if-gez p2, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 101
    return-void

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 104
    if-nez p2, :cond_11

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 106
    .local v9, "firstView":Landroid/view/View;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v19

    if-ltz v19, :cond_10

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    .end local v9    # "firstView":Landroid/view/View;
    :cond_2
    :goto_0
    if-lez p4, :cond_3

    if-nez p2, :cond_3

    .line 118
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->addSectionHeader(I)V

    .line 121
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->getRealFirstVisibleItem(II)I

    move-result v16

    .line 122
    .local v16, "realFirstVisibleItem":I
    if-lez p4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previousFirstVisibleItem:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previousFirstVisibleItem:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getSection(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->isSectionHeader(I)Z

    move-result v7

    .line 128
    .local v7, "currIsHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {v19 .. v20}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v15

    .line 129
    .local v15, "prevHasHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v13

    .line 130
    .local v13, "nextHasHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/letv/leui/widget/PinnedSectionAdapter;->hasSectionHeaderView(I)Z

    move-result v5

    .line 131
    .local v5, "currHasHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/letv/leui/widget/PinnedSectionAdapter;->numberOfRows(I)I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    const/4 v8, 0x1

    .line 132
    .local v8, "currIsLast":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get0(Lcom/letv/leui/widget/PinnedHeaderListView;)Lcom/letv/leui/widget/PinnedSectionAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/PinnedSectionAdapter;->getRowInSection(I)I

    move-result v19

    if-nez v19, :cond_13

    const/4 v6, 0x1

    .line 134
    .local v6, "currIsFirst":Z
    :goto_2
    if-eqz v6, :cond_4

    if-eqz v5, :cond_14

    :cond_4
    const/4 v12, 0x0

    .line 135
    .local v12, "needScrolling":Z
    :goto_3
    if-eqz v8, :cond_5

    if-eqz v5, :cond_5

    if-eqz v13, :cond_15

    :cond_5
    const/4 v11, 0x0

    .line 138
    .local v11, "needNoHeaderUpToHeader":Z
    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->noHeaderUpToHeader:Z

    .line 139
    if-eqz v7, :cond_6

    if-eqz v15, :cond_17

    .line 141
    :cond_6
    if-eqz v7, :cond_19

    if-lez p2, :cond_19

    .line 142
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->startScrolling()V

    .line 149
    :cond_8
    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->previousFirstVisibleItem:I

    .line 152
    .end local v5    # "currHasHeader":Z
    .end local v6    # "currIsFirst":Z
    .end local v7    # "currIsHeader":Z
    .end local v8    # "currIsLast":Z
    .end local v11    # "needNoHeaderUpToHeader":Z
    .end local v12    # "needScrolling":Z
    .end local v13    # "nextHasHeader":Z
    .end local v15    # "prevHasHeader":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->scrollingStart:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 153
    move/from16 v0, v16

    move/from16 v1, p2

    if-lt v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    sub-int v20, v16, p2

    invoke-virtual/range {v19 .. v20}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v18

    .line 155
    .local v18, "scrolled":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 156
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->setMeasurements(II)V

    .line 159
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v20

    mul-int v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    move/from16 v19, v0

    if-gez v19, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    move/from16 v19, v0

    :goto_7
    div-int v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    move/from16 v19, v0

    if-lez v19, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    move/from16 v19, v0

    :goto_8
    add-int v10, v20, v19

    .line 160
    .local v10, "headerH":I
    :goto_9
    sub-int v19, v18, v10

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v17, v0

    .line 162
    .local v17, "scrollHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->doneMeasuring:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v10, v0, :cond_b

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    move/from16 v19, v0

    if-lez v19, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    move/from16 v19, v0

    :goto_a
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v14, "p":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    sub-int v19, v10, v19

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    const/16 v20, 0x50

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 170
    .end local v14    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    .restart local v14    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get3(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v19

    sub-int v19, v10, v19

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    iget v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 175
    .end local v10    # "headerH":I
    .end local v14    # "p":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "scrollHeight":I
    .end local v18    # "scrolled":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->noHeaderUpToHeader:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->addSectionHeader(I)V

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    .line 180
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v21, v21, v22

    sub-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 184
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 96
    :cond_f
    return-void

    .line 109
    .end local v16    # "realFirstVisibleItem":I
    .restart local v9    # "firstView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 113
    .end local v9    # "firstView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/PinnedHeaderListView;->-get1(Lcom/letv/leui/widget/PinnedHeaderListView;)Landroid/widget/RelativeLayout;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 131
    .restart local v5    # "currHasHeader":Z
    .restart local v7    # "currIsHeader":Z
    .restart local v13    # "nextHasHeader":Z
    .restart local v15    # "prevHasHeader":Z
    .restart local v16    # "realFirstVisibleItem":I
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "currIsLast":Z
    goto/16 :goto_1

    .line 132
    :cond_13
    const/4 v6, 0x0

    .restart local v6    # "currIsFirst":Z
    goto/16 :goto_2

    .line 134
    :cond_14
    if-eqz v15, :cond_4

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_4

    const/4 v12, 0x1

    .restart local v12    # "needScrolling":Z
    goto/16 :goto_3

    .line 135
    :cond_15
    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->this$0:Lcom/letv/leui/widget/PinnedHeaderListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/letv/leui/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_16

    const/4 v11, 0x1

    .restart local v11    # "needNoHeaderUpToHeader":Z
    goto/16 :goto_4

    .end local v11    # "needNoHeaderUpToHeader":Z
    :cond_16
    const/4 v11, 0x0

    .restart local v11    # "needNoHeaderUpToHeader":Z
    goto/16 :goto_4

    .line 139
    :cond_17
    if-ltz p2, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->direction:I

    move/from16 v19, v0

    if-gez v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->resetHeader(I)V

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v19, v0

    goto :goto_b

    .line 141
    :cond_19
    if-nez v12, :cond_7

    .line 143
    if-eqz v11, :cond_1a

    .line 144
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->noHeaderUpToHeader:Z

    goto/16 :goto_5

    .line 145
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->lastResetSection:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->actualSection:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->resetHeader(I)V

    goto/16 :goto_5

    .line 153
    .end local v5    # "currHasHeader":Z
    .end local v6    # "currIsFirst":Z
    .end local v7    # "currIsHeader":Z
    .end local v8    # "currIsLast":Z
    .end local v11    # "needNoHeaderUpToHeader":Z
    .end local v12    # "needScrolling":Z
    .end local v13    # "nextHasHeader":Z
    .end local v15    # "prevHasHeader":Z
    :cond_1b
    const/16 v18, 0x0

    .restart local v18    # "scrolled":I
    goto/16 :goto_6

    .line 159
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    move/from16 v19, v0

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->prevH:I

    move/from16 v19, v0

    goto/16 :goto_8

    :cond_1e
    const/4 v10, 0x0

    .restart local v10    # "headerH":I
    goto/16 :goto_9

    .line 164
    .restart local v17    # "scrollHeight":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->nextH:I

    move/from16 v19, v0

    goto/16 :goto_a
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/letv/leui/widget/PinnedHeaderListView$HeaderListViewOnScrollListener;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 88
    :cond_0
    return-void
.end method
