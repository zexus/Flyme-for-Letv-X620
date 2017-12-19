.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup;-><init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 900
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->dismiss()V

    .line 901
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get7(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 902
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0, p3}, Lcom/letv/leui/preference/LeListPreference;->-set0(Lcom/letv/leui/preference/LeListPreference;I)I

    .line 903
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreference;->onDialogClosed(Z)V

    .line 904
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1$1;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;)V

    .line 921
    const-wide/16 v2, 0x96

    .line 914
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 899
    :cond_1
    return-void

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$1;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
