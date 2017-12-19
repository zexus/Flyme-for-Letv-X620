.class Lcom/letv/leui/widget/LeLoadingDialog$1$1;
.super Ljava/lang/Object;
.source "LeLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingDialog$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

.field final synthetic val$dismissCallBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingDialog$1;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeLoadingDialog$1;
    .param p2, "val$dismissCallBack"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

    iput-object p2, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->val$dismissCallBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeLoadingDialog$1;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingDialog;->-wrap0(Lcom/letv/leui/widget/LeLoadingDialog;)V

    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->val$dismissCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->val$dismissCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_0
    return-void
.end method
