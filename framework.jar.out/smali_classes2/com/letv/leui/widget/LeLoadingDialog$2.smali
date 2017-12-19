.class Lcom/letv/leui/widget/LeLoadingDialog$2;
.super Ljava/lang/Object;
.source "LeLoadingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingDialog;->initDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLoadingDialog;

.field final synthetic val$dismissCallBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingDialog;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLoadingDialog;
    .param p2, "val$dismissCallBack"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingDialog$2;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    iput-object p2, p0, Lcom/letv/leui/widget/LeLoadingDialog$2;->val$dismissCallBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$2;->val$dismissCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$2;->val$dismissCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 76
    :cond_0
    return-void
.end method
