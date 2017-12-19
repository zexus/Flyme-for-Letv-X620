.class Lcom/letv/leui/preference/LeEditDialogPreference$1;
.super Ljava/lang/Object;
.source "LeEditDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeEditDialogPreference;->preShowDialog(Lcom/letv/leui/widget/LeAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeEditDialogPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeEditDialogPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeEditDialogPreference;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->-get0(Lcom/letv/leui/preference/LeEditDialogPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->-wrap1(Lcom/letv/leui/preference/LeEditDialogPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->-wrap0(Lcom/letv/leui/preference/LeEditDialogPreference;Ljava/lang/String;)Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->-wrap2(Lcom/letv/leui/preference/LeEditDialogPreference;)V

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 65
    :cond_1
    return-void
.end method
