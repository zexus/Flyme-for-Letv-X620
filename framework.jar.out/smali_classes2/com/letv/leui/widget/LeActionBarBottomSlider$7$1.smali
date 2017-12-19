.class Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get1(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get1(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get1(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-set1(Lcom/letv/leui/widget/LeActionBarBottomSlider;Z)Z

    .line 239
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get2(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setIntercept(Z)V

    .line 235
    :cond_0
    return-void
.end method
