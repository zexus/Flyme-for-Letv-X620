.class Lcom/letv/leui/widget/LeListPreferenceView$2;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPreferenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPreferenceView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPreferenceView;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

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
    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get1(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 449
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get13(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get13(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v2}, Lcom/letv/leui/widget/LeListPreferenceView;->-get10(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/widget/LeListPreferenceView$OnItemChangeListener;->onItemChange(Lcom/letv/leui/widget/LeListPreferenceView;Ljava/lang/Object;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get6(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 455
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeListPreferenceView;->-set0(Lcom/letv/leui/widget/LeListPreferenceView;I)I

    .line 457
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get16(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get9(Lcom/letv/leui/widget/LeListPreferenceView;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListPreferenceView;->getValueIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$2;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/widget/LeListPreferenceView$2$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeListPreferenceView$2$1;-><init>(Lcom/letv/leui/widget/LeListPreferenceView$2;)V

    .line 472
    const-wide/16 v2, 0x96

    .line 463
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    :cond_2
    return-void
.end method
