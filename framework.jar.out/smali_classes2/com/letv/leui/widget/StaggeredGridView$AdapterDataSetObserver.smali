.class Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    .line 3020
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 3023
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8, v14}, Lcom/letv/leui/widget/StaggeredGridView;->-set0(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 3025
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get18(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/OverScroller;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3026
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get21(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    .line 3027
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get18(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/OverScroller;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3030
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get5(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3031
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get5(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 3034
    :cond_1
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get20(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3035
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get20(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    .line 3038
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->-get0(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->-set3(Lcom/letv/leui/widget/StaggeredGridView;I)I

    .line 3039
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get1(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 3040
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v8, v8, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3041
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget v8, v8, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get0(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get0(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3043
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->confirmCheckedPositionsById()V

    .line 3045
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    .line 3047
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 3048
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3049
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v3, v8

    .line 3050
    .local v3, "left":I
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 3051
    .local v6, "top":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v4, v3, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3052
    .local v4, "localRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .line 3053
    .local v5, "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get1(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/Map;

    move-result-object v8

    iget-wide v10, v5, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;

    invoke-direct {v10, v7, v4}, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get4(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get4(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/ArrayList;

    move-result-object v8

    iget-wide v10, v5, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3057
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v8, v8, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3047
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3065
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    .end local v4    # "localRect":Landroid/graphics/Rect;
    .end local v5    # "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8, v14}, Lcom/letv/leui/widget/StaggeredGridView;->-set8(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    .line 3066
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->-get7(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->-set9(Lcom/letv/leui/widget/StaggeredGridView;I)I

    .line 3067
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8, v13}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3068
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 3069
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->-set7(Lcom/letv/leui/widget/StaggeredGridView;I)I

    .line 3075
    :goto_1
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get16(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->clearTransientViews()V

    .line 3079
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get13(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 3080
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-wrap2(Lcom/letv/leui/widget/StaggeredGridView;)V

    .line 3083
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get2(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v1

    .line 3084
    .local v1, "colCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 3085
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get9(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->-get12(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v9

    aget v9, v9, v2

    aput v9, v8, v2

    .line 3084
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3071
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v10}, Lcom/letv/leui/widget/StaggeredGridView;->-get11(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->-set7(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto :goto_1

    .line 3089
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get7(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->-get10(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gt v8, v9, :cond_7

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get0(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->-get7(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v10}, Lcom/letv/leui/widget/StaggeredGridView;->-get6(Lcom/letv/leui/widget/StaggeredGridView;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 3090
    :cond_7
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8, v13}, Lcom/letv/leui/widget/StaggeredGridView;->-set2(Lcom/letv/leui/widget/StaggeredGridView;I)I

    .line 3091
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v6

    .line 3092
    .restart local v6    # "top":I
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get12(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->fill([II)V

    .line 3093
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get9(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->fill([II)V

    .line 3095
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->-get17(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    if-eqz v8, :cond_8

    .line 3097
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v8, v12}, Lcom/letv/leui/widget/StaggeredGridView;->-set6(Lcom/letv/leui/widget/StaggeredGridView;[I)[I

    .line 3103
    .end local v6    # "top":I
    :cond_8
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    .line 3022
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 3107
    return-void
.end method
