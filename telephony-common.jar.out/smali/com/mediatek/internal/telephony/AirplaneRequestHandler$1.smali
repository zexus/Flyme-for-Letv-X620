.class Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 50
    .local v1, "wmState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWorldModeReceiver: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->-wrap1(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v2, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string/jumbo v2, "worldModeState"

    .line 53
    const/4 v3, -0x1

    .line 52
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWorldModeReceiver: wmState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->-wrap1(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->-get0(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->-wrap2(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)V

    .line 58
    invoke-static {}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->-get1()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->-wrap0(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)V

    .line 47
    :cond_0
    return-void
.end method
