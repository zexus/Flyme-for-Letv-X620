.class final Lcom/letv/leui/widget/LeBottomWidget$1;
.super Landroid/os/Handler;
.source "LeBottomWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeBottomWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;

    .line 51
    .local v6, "tabInfo":Lcom/letv/leui/widget/LeBottomWidget$TabInfo;
    if-nez v6, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    iget-object v1, v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->bw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeBottomWidget;

    .line 55
    .local v0, "bw":Lcom/letv/leui/widget/LeBottomWidget;
    if-nez v0, :cond_1

    .line 56
    return-void

    .line 58
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeBottomWidget;->setModeAndTabCount(II)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget v1, v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->sequence:I

    iget-object v2, v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->tag:Ljava/lang/String;

    iget v3, v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->enabledIconId:I

    .line 65
    iget v4, v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->disabledIconId:I

    iget-object v5, v6, Lcom/letv/leui/widget/LeBottomWidget$TabInfo;->title:Ljava/lang/String;

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBottomWidget;->addTab(ILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
