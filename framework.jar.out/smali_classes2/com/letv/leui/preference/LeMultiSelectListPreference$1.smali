.class Lcom/letv/leui/preference/LeMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "LeMultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeMultiSelectListPreference;->onPrepareDialogBuilder(Lcom/letv/leui/widget/LePopupWindow$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeMultiSelectListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeMultiSelectListPreference;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 181
    if-eqz p3, :cond_0

    .line 182
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-get2(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Z

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-static {v2}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-get1(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-get0(Lcom/letv/leui/preference/LeMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-set0(Lcom/letv/leui/preference/LeMultiSelectListPreference;Z)Z

    .line 180
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-get2(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Z

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-static {v2}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-get1(Lcom/letv/leui/preference/LeMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$1;->this$0:Lcom/letv/leui/preference/LeMultiSelectListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-get0(Lcom/letv/leui/preference/LeMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeMultiSelectListPreference;->-set0(Lcom/letv/leui/preference/LeMultiSelectListPreference;Z)Z

    goto :goto_0
.end method
