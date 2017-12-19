.class Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    .line 2560
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2572
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    .line 2581
    :goto_0
    return v3

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    goto :goto_0

    .line 2583
    :cond_1
    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2597
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2600
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView;->-wrap1(Lcom/letv/leui/widget/StaggeredGridView;)V

    .line 2604
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateViews()V

    .line 2606
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    .line 2594
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2614
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2615
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 2610
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    .line 2563
    return-void
.end method
