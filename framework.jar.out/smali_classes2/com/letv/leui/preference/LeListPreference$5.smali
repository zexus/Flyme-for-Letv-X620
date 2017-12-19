.class Lcom/letv/leui/preference/LeListPreference$5;
.super Landroid/widget/ArrayAdapter;
.source "LeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference;->showDropdownPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreference;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # [Ljava/lang/CharSequence;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 695
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 698
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 699
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get5(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get5(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 700
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get5(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 702
    :cond_0
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 704
    .local v1, "title":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 706
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get4(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 707
    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "title":Landroid/view/View;
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get3(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 710
    :cond_1
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 712
    .local v0, "checkbox":Landroid/view/View;
    instance-of v3, v0, Lcom/letv/leui/widget/LeCheckBox;

    if-eqz v3, :cond_2

    .line 713
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$5;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 714
    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-virtual {v0, v6, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    .line 720
    :cond_2
    :goto_0
    return-object v2

    .line 716
    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_3
    check-cast v0, Lcom/letv/leui/widget/LeCheckBox;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
