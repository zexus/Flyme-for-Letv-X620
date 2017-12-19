.class Lcom/letv/leui/widget/LeOptimizationDialog$1$1;
.super Ljava/lang/Object;
.source "LeOptimizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeOptimizationDialog$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeOptimizationDialog$1;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeOptimizationDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeOptimizationDialog$1;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/letv/leui/widget/LeOptimizationDialog$1$1;->this$1:Lcom/letv/leui/widget/LeOptimizationDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog$1$1;->this$1:Lcom/letv/leui/widget/LeOptimizationDialog$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeOptimizationDialog$1;->this$0:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-static {v0}, Lcom/letv/leui/widget/LeOptimizationDialog;->-wrap0(Lcom/letv/leui/widget/LeOptimizationDialog;)V

    .line 59
    return-void
.end method
