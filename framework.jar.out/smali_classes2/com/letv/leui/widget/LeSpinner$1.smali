.class Lcom/letv/leui/widget/LeSpinner$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "LeSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeSpinner;

.field final synthetic val$popup:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeSpinner;Landroid/view/View;Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeSpinner;
    .param p2, "$anonymous0"    # Landroid/view/View;
    .param p3, "val$popup"    # Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$1;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iput-object p3, p0, Lcom/letv/leui/widget/LeSpinner$1;->val$popup:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$1;->val$popup:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$1;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-static {v0}, Lcom/letv/leui/widget/LeSpinner;->-get2(Lcom/letv/leui/widget/LeSpinner;)Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$1;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-static {v0}, Lcom/letv/leui/widget/LeSpinner;->-get2(Lcom/letv/leui/widget/LeSpinner;)Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$1;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeSpinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$1;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeSpinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;->show(II)V

    .line 210
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
