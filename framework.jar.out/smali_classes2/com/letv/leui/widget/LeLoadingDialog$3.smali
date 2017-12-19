.class Lcom/letv/leui/widget/LeLoadingDialog$3;
.super Ljava/lang/Object;
.source "LeLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLoadingDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLoadingDialog;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingDialog$3;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$3;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingDialog;->-wrap0(Lcom/letv/leui/widget/LeLoadingDialog;)V

    .line 225
    return-void
.end method
