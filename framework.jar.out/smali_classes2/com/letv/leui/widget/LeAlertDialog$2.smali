.class Lcom/letv/leui/widget/LeAlertDialog$2;
.super Ljava/lang/Object;
.source "LeAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeAlertDialog;->preShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeAlertDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeAlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeAlertDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog$2;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog$2;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertDialog;->-get1(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog$2;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertDialog;->-get1(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog$2;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 72
    :cond_0
    return-void
.end method
