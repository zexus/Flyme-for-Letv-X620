.class Lcom/android/internal/telephony/cat/CatService$4;
.super Landroid/content/BroadcastReceiver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2297
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CatServiceReceiver action: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2299
    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2300
    const-string/jumbo v3, "remove event list because of ipo shutdown"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2301
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->-set4(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 2302
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2326
    :cond_0
    :goto_0
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2327
    const-string/jumbo v3, "slot"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2328
    .local v1, "id":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM state change, id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", simId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2329
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v3

    if-ne v1, v3, :cond_9

    .line 2330
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->-set8(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;

    .line 2331
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/cat/CatService;->-set7(Lcom/android/internal/telephony/cat/CatService;I)I

    .line 2332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simIdfromIntent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get7(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "],simState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get8(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2333
    const-string/jumbo v3, "ABSENT"

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get8(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2334
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2335
    const-string/jumbo v3, "Igonre absent sim state"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2336
    return-void

    .line 2303
    .end local v1    # "id":I
    :cond_1
    const-string/jumbo v3, "mediatek.intent.action.IVSR_NOTIFY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2304
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v3

    const-string/jumbo v6, "slot"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v3, v6, :cond_2

    .line 2305
    return-void

    .line 2308
    :cond_2
    const-string/jumbo v3, "action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2309
    .local v2, "ivsrAction":Ljava/lang/String;
    const-string/jumbo v3, "start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2310
    const-string/jumbo v3, "[IVSR set IVSR flag"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2311
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->-set1(Lcom/android/internal/telephony/cat/CatService;Z)Z

    .line 2312
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const-wide/32 v6, 0xea60

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/cat/CatService;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2314
    .end local v2    # "ivsrAction":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2316
    :cond_4
    const-string/jumbo v3, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Set SIM Recovery flag, sim: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v6}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", isDisplayTextDisabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->-get0(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2321
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const-wide/16 v6, 0x7530

    const/16 v8, 0xf

    invoke-virtual {v3, v8, v6, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(IJ)V

    .line 2322
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->-set0(Lcom/android/internal/telephony/cat/CatService;Z)Z

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 2317
    goto :goto_1

    .line 2319
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[World phone flag: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v6}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ", isDisplayTextDisabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->-get0(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    .line 2338
    .restart local v1    # "id":I
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/cat/CatService;->-wrap3(Lcom/android/internal/telephony/cat/CatService;I)V

    .line 2339
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cat/CatService;->mSaveNewSetUpMenu:Z

    .line 2341
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get6(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->-wrap4(Lcom/android/internal/telephony/cat/CatService;I)V

    .line 2295
    .end local v1    # "id":I
    :cond_9
    :goto_4
    return-void

    .line 2347
    .restart local v1    # "id":I
    :cond_a
    const-string/jumbo v3, "NOT_READY"

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->-get8(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2348
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService$4;->this$0:Lcom/android/internal/telephony/cat/CatService;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->-set3(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    goto :goto_4
.end method
