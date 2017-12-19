.class Landroid/widget/Editor$LeTextActionModelImpl$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$LeTextActionModelImpl;
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
    .line 6427
    iput-object p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$2;->this$1:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6429
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$2;->this$1:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-static {v0}, Landroid/widget/Editor$LeTextActionModelImpl;->-get1(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    .line 6430
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$2;->this$1:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-static {v0}, Landroid/widget/Editor$LeTextActionModelImpl;->-get1(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 6428
    return-void
.end method
