.class Lcom/android/server/AlarmManagerService$DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 3407
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3409
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3410
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3411
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3412
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3407
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3420
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3421
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3417
    :cond_0
    :goto_0
    return-void

    .line 3422
    :cond_1
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3423
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->-set0(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3424
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->enableDm()I

    goto :goto_0

    .line 3425
    :cond_2
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3426
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->-set8(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 3427
    :cond_3
    const-string/jumbo v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3428
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService;->-set8(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3429
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DMReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->enableDm()I

    goto :goto_0
.end method
