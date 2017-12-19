.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final DATE_CHANGE_EVENT:I = 0x3

.field public static final MINUTE_CHANGE_EVENT:I = 0x2

.field public static final REBATCH_ALARMS_REQUEST:I = 0x5

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 3070
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3074
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 3075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3076
    .local v1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3077
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3078
    .local v4, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3079
    .local v2, "nowELAPSED":J
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    .line 3080
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-wrap15(Lcom/android/server/AlarmManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 3084
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 3085
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3087
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3084
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3076
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 3088
    .restart local v2    # "nowELAPSED":J
    .restart local v4    # "nowRTC":J
    .restart local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    .line 3089
    .local v7, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v10, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 3096
    .end local v1    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v2    # "nowELAPSED":J
    .end local v4    # "nowRTC":J
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v8    # "i":I
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x4

    if-ne v0, v9, :cond_3

    .line 3097
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->-wrap13(Lcom/android/server/AlarmManagerService;)V

    .line 3073
    :cond_2
    :goto_2
    return-void

    .line 3098
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x5

    if-ne v0, v9, :cond_2

    .line 3099
    const-string/jumbo v0, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage rebatchAllAlarms... , timeAlign: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->-get7(Lcom/android/server/AlarmManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mTwilight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->-get8(Lcom/android/server/AlarmManagerService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    goto :goto_2
.end method
