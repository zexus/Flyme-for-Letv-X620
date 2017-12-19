.class Lcom/letv/leui/widget/LeLicenceDialog$5;
.super Ljava/lang/Object;
.source "LeLicenceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLicenceDialog;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLicenceDialog;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLicenceDialog;
    .param p2, "val$onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog$5;->this$0:Lcom/letv/leui/widget/LeLicenceDialog;

    iput-object p2, p0, Lcom/letv/leui/widget/LeLicenceDialog$5;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$5;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$5;->this$0:Lcom/letv/leui/widget/LeLicenceDialog;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeLicenceDialog;->dismiss()Lcom/letv/leui/widget/LeLicenceDialog;

    .line 216
    return-void
.end method
