.class public abstract Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrDefaultHandler;
.super Ljava/lang/Object;
.source "PtrDefaultHandler.java"

# interfaces
.implements Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canChildScrollUp(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_5

    .line 10
    instance-of v3, p0, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    move-object v0, p0

    .line 11
    check-cast v0, Landroid/widget/AbsListView;

    .line 12
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 14
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 13
    if-ge v3, v4, :cond_1

    .line 12
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 13
    goto :goto_0

    :cond_2
    move v1, v2

    .line 12
    goto :goto_0

    .line 16
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_4

    :goto_1
    return v1

    :cond_4
    move v1, v2

    goto :goto_1

    .line 19
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    return v1
.end method

.method public static checkContentCanBePulledDown(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p0, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p1, "content"    # Landroid/view/View;
    .param p2, "header"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrDefaultHandler;->canChildScrollUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkCanDoRefresh(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "header"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-static {p1, p2, p3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrDefaultHandler;->checkContentCanBePulledDown(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
