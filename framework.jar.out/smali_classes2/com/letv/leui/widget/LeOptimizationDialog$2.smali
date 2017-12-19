.class Lcom/letv/leui/widget/LeOptimizationDialog$2;
.super Ljava/lang/Object;
.source "LeOptimizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeOptimizationDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeOptimizationDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeOptimizationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeOptimizationDialog;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/letv/leui/widget/LeOptimizationDialog$2;->this$0:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog$2;->this$0:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-static {v0}, Lcom/letv/leui/widget/LeOptimizationDialog;->-get0(Lcom/letv/leui/widget/LeOptimizationDialog;)Lcom/letv/leui/widget/LeLoadingView;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeOptimizationDialog$2$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeOptimizationDialog$2$1;-><init>(Lcom/letv/leui/widget/LeOptimizationDialog$2;)V

    .line 144
    const-wide/16 v2, 0x96

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeLoadingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method
