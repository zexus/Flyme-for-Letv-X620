.class Landroid/widget/Editor$LeTextActionModelImpl$3;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$LeTextActionModelImpl;->setFloatingToolbar(Lcom/letv/leui/text/LeFloatingToolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$LeTextActionModelImpl;


# direct methods
.method constructor <init>(Landroid/widget/Editor$LeTextActionModelImpl;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$LeTextActionModelImpl;

    .prologue
    .line 6460
    iput-object p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$3;->this$1:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 6463
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$3;->this$1:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-static {v0}, Landroid/widget/Editor$LeTextActionModelImpl;->-get0(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/view/ActionMode$Callback2;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl$3;->this$1:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-virtual {v0, v1, p1}, Landroid/view/ActionMode$Callback2;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
