.class public Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
.super Ljava/lang/Object;
.source "LoadingLayoutProxy.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;


# instance fields
.field private final mLoadingLayouts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    .line 14
    return-void
.end method


# virtual methods
.method public addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 36
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 34
    .end local v0    # "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 43
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 41
    .end local v0    # "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 57
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    .end local v0    # "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 50
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    .end local v0    # "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 64
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    .end local v0    # "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->mLoadingLayouts:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "layout$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 70
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setTextTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 68
    .end local v0    # "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    :cond_0
    return-void
.end method
