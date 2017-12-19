.class public Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;
.super Landroid/widget/ListView;
.source "LePopupWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->mRecycleOnMeasure:Z

    .line 663
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->mRecycleOnMeasure:Z

    .line 667
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 672
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->mRecycleOnMeasure:Z

    .line 671
    return-void
.end method


# virtual methods
.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
