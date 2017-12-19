.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x102005d

    .line 55
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 58
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    .local v0, "gv":Landroid/widget/GridView;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setId(I)V

    .line 64
    return-object v0

    .line 60
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "gv":Landroid/widget/GridView;
    goto :goto_0

    .line 66
    .end local v0    # "gv":Landroid/widget/GridView;
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 67
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshGridView;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_2

    .line 69
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 70
    check-cast v2, Landroid/widget/GridView;

    .end local v2    # "view":Landroid/view/View;
    return-object v2

    .line 72
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Refreshable View is not a GridView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method
