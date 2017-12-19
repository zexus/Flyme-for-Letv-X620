.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListView"
.end annotation


# instance fields
.field private mAddedLvFooter:Z

.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    .line 302
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    .line 301
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 330
    const/4 v1, 0x0

    return v1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->mAddedLvFooter:Z

    goto :goto_0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 346
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 351
    return-void
.end method
