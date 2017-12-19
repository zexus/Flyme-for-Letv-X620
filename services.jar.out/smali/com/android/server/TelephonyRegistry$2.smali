.class Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "action":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mBroadcastReceiver: action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 278
    .local v5, "userHandle":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: userHandle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 279
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    .end local v5    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string/jumbo v6, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 281
    new-instance v4, Ljava/lang/Integer;

    .line 282
    const-string/jumbo v6, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    .line 281
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 283
    .local v4, "newDefaultSubIdObj":Ljava/lang/Integer;
    const-string/jumbo v6, "slot"

    .line 284
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 283
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 286
    .local v3, "newDefaultPhoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive:current mDefaultSubId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    const-string/jumbo v7, " current mDefaultPhoneId="

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v7

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 287
    const-string/jumbo v7, " newDefaultSubId= "

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    const-string/jumbo v7, " newDefaultPhoneId="

    .line 286
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 291
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v3}, Lcom/android/server/TelephonyRegistry;->-wrap0(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 293
    :cond_2
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3, v9, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 296
    .end local v3    # "newDefaultPhoneId":I
    .end local v4    # "newDefaultSubIdObj":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 297
    const-string/jumbo v6, "simDetectStatus"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 300
    .local v1, "detectedType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TelephonyRegistryonReceive: ACTION_SUBINFO_RECORD_UPDATED, detectedType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 303
    if-eq v1, v8, :cond_0

    .line 304
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v7}, Lcom/android/server/TelephonyRegistry;->-get4(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 307
    .end local v1    # "detectedType":I
    :cond_4
    const-string/jumbo v6, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    const-string/jumbo v6, "TelephonyRegistryonReceive: ACTION_SHUTDOWN_IPO, clean cfi."

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-wrap3(Ljava/lang/String;)V

    .line 309
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get0(Lcom/android/server/TelephonyRegistry;)[Z

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->-get0(Lcom/android/server/TelephonyRegistry;)[Z

    move-result-object v6

    aput-boolean v9, v6, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
