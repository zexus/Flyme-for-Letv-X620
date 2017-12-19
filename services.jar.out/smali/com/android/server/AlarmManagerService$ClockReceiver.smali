.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field mLastTimeTickTime:J

.field mTimeTickCount:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    const-wide/16 v2, 0x0

    .line 3109
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3106
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mTimeTickCount:J

    .line 3107
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mLastTimeTickTime:J

    .line 3110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3112
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3113
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3109
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3119
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_0

    .line 3120
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "Received TIME_TICK alarm; rescheduling"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    :cond_0
    const-string/jumbo v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSupportAlarmGrouping = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/AlarmManagerService;->-get6()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3123
    const-string/jumbo v4, "  mAmPlus = "

    .line 3122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3123
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->-get0(Lcom/android/server/AlarmManagerService;)Lcom/mediatek/amplus/AlarmManagerPlus;

    move-result-object v4

    .line 3122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 3117
    :cond_1
    :goto_0
    return-void

    .line 3125
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3130
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 3131
    .local v1, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 3132
    .local v0, "gmtOffset":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v3, 0xea60

    div-int v3, v0, v3

    neg-int v3, v3

    invoke-static {v2, v4, v5, v3}, Lcom/android/server/AlarmManagerService;->-wrap4(Lcom/android/server/AlarmManagerService;JI)I

    .line 3133
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 3182
    .local v13, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3183
    const/16 v0, 0xa

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3184
    const/16 v0, 0xc

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3185
    const/16 v0, 0xd

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3186
    const/16 v0, 0xe

    invoke-virtual {v13, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 3187
    const/4 v0, 0x5

    invoke-virtual {v13, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3189
    const/4 v10, 0x0

    .line 3190
    .local v10, "workSource":Landroid/os/WorkSource;
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v6, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 3191
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    const/4 v11, 0x0

    move-wide v6, v4

    move v9, v1

    .line 3190
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 3180
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 22

    .prologue
    .line 3138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3139
    .local v16, "currentTime":J
    const-wide/32 v2, 0xea60

    div-long v2, v16, v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    mul-long v18, v4, v2

    .line 3143
    .local v18, "nextTime":J
    sub-long v20, v18, v16

    .line 3164
    .local v20, "tickEventDelay":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mTimeTickCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->mTimeTickCount:J

    .line 3167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-wrap0(Lcom/android/server/AlarmManagerService;J)Z

    move-result v15

    .line 3168
    .local v15, "nowIsLight":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-get3(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eq v15, v2, :cond_0

    .line 3169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2, v15}, Lcom/android/server/AlarmManagerService;->-set2(Lcom/android/server/AlarmManagerService;Z)Z

    .line 3170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap12(Lcom/android/server/AlarmManagerService;)V

    .line 3174
    :cond_0
    const/4 v12, 0x0

    .line 3175
    .local v12, "workSource":Landroid/os/WorkSource;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v4, v4, v20

    const-wide/16 v6, 0x0

    .line 3176
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v3, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 3177
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    .line 3175
    const/4 v3, 0x3

    .line 3176
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 3175
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 3137
    return-void
.end method
