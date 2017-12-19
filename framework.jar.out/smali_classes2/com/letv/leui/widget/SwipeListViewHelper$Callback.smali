.class public interface abstract Lcom/letv/leui/widget/SwipeListViewHelper$Callback;
.super Ljava/lang/Object;
.source "SwipeListViewHelper.java"

# interfaces
.implements Lcom/letv/leui/widget/BaseSwipeHelper$BaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/SwipeListViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getAdapterSwipe()Landroid/widget/ListAdapter;
.end method

.method public abstract getBackView(I)Landroid/view/View;
.end method

.method public abstract getFirstVisiblePositionSwipe()I
.end method

.method public abstract getFooterViewsCountSwipe()I
.end method

.method public abstract getFrontView(I)Landroid/view/View;
.end method

.method public abstract getHeaderViewsCountSwipe()I
.end method

.method public abstract getLastVisiblePositionSwipe()I
.end method

.method public abstract isDismissAnimating()Z
.end method

.method public abstract onDismissedSwipe(Landroid/view/View;I)V
.end method

.method public abstract pointToPositionSwipe(II)I
.end method
