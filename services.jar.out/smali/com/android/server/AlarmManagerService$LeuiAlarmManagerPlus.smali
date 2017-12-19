.class Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeuiAlarmManagerPlus"
.end annotation


# static fields
.field private static final DEFAULT_WHITE_LIST_INNER:[Ljava/lang/String;


# instance fields
.field private alarmS:Lcom/android/server/AlarmManagerService;

.field private whitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isCtsApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4233
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 4234
    const-string/jumbo v1, "com.zdworks.android.zdclock"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4235
    const-string/jumbo v1, "com.dianxinos.clock"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4236
    const-string/jumbo v1, "com.nextdev.alarm"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4237
    const-string/jumbo v1, "com.smartisan.clock"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4238
    const-string/jumbo v1, "com.xone.xoneclock"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 4239
    const-string/jumbo v1, "com.tencent.qqcalendar"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4240
    const-string/jumbo v1, "droom.sleepIfUCan"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 4241
    const-string/jumbo v1, "com.when.coco"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 4242
    const-string/jumbo v1, "cn.etouch.ecalendar"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 4243
    const-string/jumbo v1, "com.youloft.calendar"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 4244
    const-string/jumbo v1, "com.zdworks.android.zdcalendar"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 4245
    const-string/jumbo v1, "me.iweek.rili"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 4246
    const-string/jumbo v1, "com.microsoft.office.outlook"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 4247
    const-string/jumbo v1, "com.tencent.androidqqmail"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 4248
    const-string/jumbo v1, "com.anydo"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 4249
    const-string/jumbo v1, "com.woniu.groups"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 4250
    const-string/jumbo v1, "com.anydo.cal"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 4251
    const-string/jumbo v1, "net.icycloud.fdtodolist"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 4233
    sput-object v0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->DEFAULT_WHITE_LIST_INNER:[Ljava/lang/String;

    .line 4227
    return-void
.end method

.method public constructor <init>(JLcom/android/server/AlarmManagerService;)V
    .locals 5
    .param p1, "nativeData"    # J
    .param p3, "alarmS_"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 4264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4260
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    .line 4265
    iput-object p3, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    .line 4266
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 4267
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "TimeAlignPolicy nativeData == 0!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    return-void

    .line 4270
    :cond_0
    sget-object v1, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->DEFAULT_WHITE_LIST_INNER:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4271
    sget-object v2, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->DEFAULT_WHITE_LIST_INNER:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 4272
    .local v0, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4276
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "init leuiAlarmManagerPlug..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    return-void
.end method

.method private static final isCtsApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4289
    return v1

    .line 4292
    :cond_0
    const-string/jumbo v0, "com.android.cts."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4293
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this is cts app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    const/4 v0, 0x1

    return v0

    .line 4296
    :cond_1
    return v1
.end method

.method private final isWhitelistApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "creatorPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4361
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4362
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attemptCoalesceLocked(Ljava/util/ArrayList;IJJZ)I
    .locals 5
    .param p2, "flags"    # I
    .param p3, "whenElapsed"    # J
    .param p5, "maxWhen"    # J
    .param p7, "timeAlignAlarm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;IJJZ)I"
        }
    .end annotation

    .prologue
    .local p1, "alarmBatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v4, -0x1

    .line 4432
    if-eqz p2, :cond_0

    return v4

    .line 4433
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4434
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 4435
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 4436
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    if-eqz v3, :cond_2

    .line 4434
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4442
    :cond_2
    if-eqz p7, :cond_3

    .line 4443
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Batch;->-wrap0(Lcom/android/server/AlarmManagerService$Batch;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4445
    return v2

    .line 4450
    :cond_3
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Batch;->-wrap0(Lcom/android/server/AlarmManagerService$Batch;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4452
    return v2

    .line 4457
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_4
    return v4
.end method

.method public getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J
    .locals 13
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "flags"    # I
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "type"    # I

    .prologue
    .line 4476
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    iget-boolean v2, v2, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-get4(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide v8, p1

    .line 4478
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->-wrap6(JJJJ)J

    move-result-wide v2

    return-wide v2

    .line 4482
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_2

    .line 4484
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v10, p3, v2

    .line 4490
    .local v10, "maxElapsed":J
    return-wide v10

    .line 4494
    .end local v10    # "maxElapsed":J
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_3

    .line 4496
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    sub-long v4, p3, p1

    long-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-long v10, p3, v2

    .line 4497
    .restart local v10    # "maxElapsed":J
    const-string/jumbo v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMaxTriggerTime,  windowLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", triggerElapsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", maxElapsed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", nowElapsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    return-wide v10

    .line 4501
    .end local v10    # "maxElapsed":J
    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap7(Lcom/android/server/AlarmManagerService;)J

    move-result-wide v2

    add-long v10, p3, v2

    .line 4507
    .restart local v10    # "maxElapsed":J
    return-wide v10
.end method

.method public final isSystemService(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4308
    const/16 v5, 0x2710

    if-ge p2, v5, :cond_0

    .line 4309
    return v9

    .line 4312
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4314
    .local v6, "start":J
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->alarmS:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 4316
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 4320
    return v8

    .line 4323
    :cond_1
    const/4 v1, 0x0

    .line 4324
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4327
    .local v2, "ident":J
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4331
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4334
    if-nez v1, :cond_2

    .line 4338
    return v8

    .line 4328
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 4330
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    .line 4331
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4330
    throw v5

    .line 4341
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    .line 4345
    return v8

    .line 4351
    :cond_3
    return v9
.end method

.method public final mustTriggerExact(ILjava/lang/String;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "creatorPackage"    # Ljava/lang/String;

    .prologue
    .line 4374
    invoke-virtual {p0, p2, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isSystemService(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4375
    invoke-direct {p0, p2}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isWhitelistApp(Ljava/lang/String;)Z

    move-result v0

    .line 4374
    if-nez v0, :cond_0

    .line 4376
    invoke-static {p2}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isCtsApp(Ljava/lang/String;)Z

    move-result v0

    .line 4374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final removeWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4385
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 4386
    :cond_0
    return v1

    .line 4385
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4387
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->whitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useTimeAlign(JJJIILandroid/app/PendingIntent;Landroid/app/AlarmManager$AlarmClockInfo;)Z
    .locals 5
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J
    .param p5, "windowLength"    # J
    .param p7, "flags"    # I
    .param p8, "type"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v4, 0x0

    .line 4402
    if-eqz p10, :cond_0

    return v4

    .line 4404
    :cond_0
    sub-long v0, p3, p1

    const-wide/32 v2, 0x5265c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 4406
    return v4

    .line 4409
    :cond_1
    const-wide/32 v0, 0x493e0

    cmp-long v0, p5, v0

    if-lez v0, :cond_2

    .line 4411
    return v4

    .line 4413
    :cond_2
    if-nez p7, :cond_3

    .line 4414
    invoke-virtual {p9}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-virtual {p9}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->mustTriggerExact(ILjava/lang/String;)Z

    move-result v0

    .line 4413
    if-nez v0, :cond_3

    .line 4415
    invoke-static {p8}, Lcom/android/server/AlarmManagerService;->-wrap1(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4418
    const/4 v0, 0x1

    return v0

    .line 4416
    :cond_3
    return v4
.end method
