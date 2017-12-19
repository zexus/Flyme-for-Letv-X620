.class Lcom/letv/leui/widget/LeLicenceDialog$2;
.super Ljava/lang/Object;
.source "LeLicenceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLicenceDialog;->initDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLicenceDialog;

.field final synthetic val$cbPrompt:Lcom/letv/leui/widget/LeCheckBox;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeLicenceDialog;
    .param p2, "val$cbPrompt"    # Lcom/letv/leui/widget/LeCheckBox;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog$2;->this$0:Lcom/letv/leui/widget/LeLicenceDialog;

    iput-object p2, p0, Lcom/letv/leui/widget/LeLicenceDialog$2;->val$cbPrompt:Lcom/letv/leui/widget/LeCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 150
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$2;->val$cbPrompt:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$2;->val$cbPrompt:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    .line 149
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog$2;->val$cbPrompt:Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0, v2, v2}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    goto :goto_0
.end method
