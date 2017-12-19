.class Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "LeSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeSpinner$DropdownPopup;
    .param p2, "val$layoutListener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1222
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1220
    :cond_0
    return-void
.end method
