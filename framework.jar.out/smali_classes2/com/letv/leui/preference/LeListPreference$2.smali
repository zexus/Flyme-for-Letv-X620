.class Lcom/letv/leui/preference/LeListPreference$2;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 644
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get1(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 645
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get7(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 646
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0, p3}, Lcom/letv/leui/preference/LeListPreference;->-set0(Lcom/letv/leui/preference/LeListPreference;I)I

    .line 647
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreference;->onDialogClosed(Z)V

    .line 648
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-wrap1(Lcom/letv/leui/preference/LeListPreference;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get12(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get11(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get11(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeListPreference;->-wrap0(Lcom/letv/leui/preference/LeListPreference;Ljava/lang/Object;)Z

    .line 643
    :cond_1
    return-void

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get17(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get10(Lcom/letv/leui/preference/LeListPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$2;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get16(Lcom/letv/leui/preference/LeListPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/preference/LeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
