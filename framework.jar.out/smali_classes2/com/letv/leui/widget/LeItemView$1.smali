.class Lcom/letv/leui/widget/LeItemView$1;
.super Landroid/os/Handler;
.source "LeItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeItemView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeItemView;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x14

    const/16 v4, 0x66

    const/16 v3, 0x65

    const v2, 0x3d4ccccd    # 0.05f

    .line 675
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_1

    .line 677
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 678
    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/LeItemView;->changeWindowAlpha(F)V

    .line 679
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 680
    .local v0, "msg2":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 681
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 682
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 674
    .end local v0    # "msg2":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v4, v1, :cond_0

    .line 687
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView;->-get13(Lcom/letv/leui/widget/LeItemView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeItemView;->-get13(Lcom/letv/leui/widget/LeItemView;)F

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 691
    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/LeItemView;->changeWindowAlpha(F)V

    .line 692
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v2}, Lcom/letv/leui/widget/LeItemView;->-get13(Lcom/letv/leui/widget/LeItemView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 693
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 694
    .restart local v0    # "msg2":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 695
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$1;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 689
    .end local v0    # "msg2":Landroid/os/Message;
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1
.end method
