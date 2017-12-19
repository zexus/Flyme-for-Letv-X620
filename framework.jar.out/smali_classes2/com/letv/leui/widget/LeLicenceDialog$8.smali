.class Lcom/letv/leui/widget/LeLicenceDialog$8;
.super Ljava/lang/Object;
.source "LeLicenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLicenceDialog;->setLeLicenceDialogClickListener(Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLicenceDialog;

.field final synthetic val$listener:Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLicenceDialog;
    .param p2, "val$listener"    # Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog$8;->this$0:Lcom/letv/leui/widget/LeLicenceDialog;

    iput-object p2, p0, Lcom/letv/leui/widget/LeLicenceDialog$8;->val$listener:Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$8;->val$listener:Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;

    sget-object v1, Lcom/letv/leui/widget/LeLicenceDialog$KEY;->OUTSIDE:Lcom/letv/leui/widget/LeLicenceDialog$KEY;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;->onClickListener(Lcom/letv/leui/widget/LeLicenceDialog$KEY;)V

    .line 258
    return-void
.end method
