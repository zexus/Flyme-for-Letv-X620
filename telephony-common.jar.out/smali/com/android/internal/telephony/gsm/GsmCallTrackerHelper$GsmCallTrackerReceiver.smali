.class Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GsmCallTrackerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-wrap0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_0

    .line 344
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    if-eqz v5, :cond_1

    .line 345
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v5

    .line 348
    .local v2, "count":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The count of connections is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 349
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 350
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v1, v5, v4

    .line 351
    .local v1, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    if-nez v5, :cond_3

    .line 352
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 351
    if-eqz v5, :cond_4

    .line 354
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 355
    :catch_0
    move-exception v3

    .line 356
    .local v3, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    const-string/jumbo v6, "unexpected error on hangup"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 361
    .end local v1    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2    # "count":I
    .end local v3    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v4    # "i":I
    :cond_5
    const-string/jumbo v5, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Receives "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 364
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_0

    .line 365
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->-get0(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    goto/16 :goto_0
.end method
