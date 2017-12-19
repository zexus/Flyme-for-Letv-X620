.class Lcom/letv/leui/widget/LePopupWindowController$2;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LePopupWindowController;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LePopupWindowController;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$2;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$2;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->-get9(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$2;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->-get9(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 425
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$2;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->-get9(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
