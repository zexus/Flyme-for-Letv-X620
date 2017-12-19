.class Lcom/letv/leui/preference/LeListPreference$3;
.super Landroid/os/Handler;
.source "LeListPreference.java"


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
    .line 854
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

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

    .line 856
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_1

    .line 858
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 859
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/letv/leui/preference/LeListPreference;->changeWindowAlpha(F)V

    .line 860
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 861
    .local v0, "msg2":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 862
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 863
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 855
    .end local v0    # "msg2":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v4, v1, :cond_0

    .line 870
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 872
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->-get18(Lcom/letv/leui/preference/LeListPreference;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreference;->-get18(Lcom/letv/leui/preference/LeListPreference;)F

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 874
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/letv/leui/preference/LeListPreference;->changeWindowAlpha(F)V

    .line 875
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v2}, Lcom/letv/leui/preference/LeListPreference;->-get18(Lcom/letv/leui/preference/LeListPreference;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 876
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 877
    .restart local v0    # "msg2":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 878
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 879
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreference$3;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v1, v1, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 872
    .end local v0    # "msg2":Landroid/os/Message;
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1
.end method
