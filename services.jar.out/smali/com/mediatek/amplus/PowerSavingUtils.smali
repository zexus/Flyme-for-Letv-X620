.class public Lcom/mediatek/amplus/PowerSavingUtils;
.super Ljava/lang/Object;
.source "PowerSavingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;,
        Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;
    }
.end annotation


# static fields
.field private static final FILEPATH:Ljava/lang/String; = "/system/etc/alarmplus.config"

.field private static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEW_POWER_SAVING_MODE:I = 0x2

.field private static final SCREENOFF_TIME_INTERVAL_THRESHOLD:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "AlarmManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mIsUsbConnected:Z

.field private mIsWFDConnected:Z

.field private mPowerSavingEnableObserver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

.field private mPowerSavingReceiver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;

.field private mSavingMode:I

.field private mScreenOff:Z

.field private mScreenOffTime:J

.field final mWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J

    .line 43
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 44
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    .line 45
    iput-boolean v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mPowerSavingEnableObserver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    .line 52
    iput v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    .line 54
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/amplus/PowerSavingUtils;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/amplus/PowerSavingUtils;J)J
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/mediatek/amplus/PowerSavingUtils;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/amplus/PowerSavingUtils;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/amplus/PowerSavingUtils;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->setPowerSavingEnable()V

    return-void
.end method

.method private adjustMaxTriggerTime(JJJLandroid/app/PendingIntent;IZZ)J
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 193
    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    sub-long p5, p3, p1

    :cond_0
    const-wide/16 v4, 0x2710

    .line 196
    cmp-long v4, p5, v4

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    const-wide/16 p5, 0x0

    .line 200
    :cond_1
    move-wide/from16 v0, p5

    long-to-double v4, v0

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long v6, p3, v4

    .line 202
    iget v4, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 216
    move/from16 v0, p8

    move-object/from16 v1, p7

    move/from16 v2, p10

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/amplus/PowerSavingUtils;->isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_2
    const-wide/16 v4, 0x0

    .line 220
    sub-long/2addr v4, v6

    return-wide v4

    .line 196
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 203
    :cond_4
    if-eqz p9, :cond_5

    .line 206
    const/4 v4, 0x1

    move/from16 v0, p8

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1, v4}, Lcom/mediatek/amplus/PowerSavingUtils;->isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z

    move-result v4

    if-nez v4, :cond_6

    const-wide/16 v4, 0x0

    .line 213
    sub-long/2addr v4, v6

    return-wide v4

    .line 204
    :cond_5
    return-wide v6

    .line 207
    :cond_6
    sub-long v4, v6, p3

    const-wide/32 v8, 0x493e0

    cmp-long v4, v4, v8

    if-ltz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_8

    const-wide/32 v4, 0x493e0

    .line 208
    add-long/2addr v4, p3

    return-wide v4

    .line 207
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 210
    :cond_8
    return-wide v6

    .line 216
    :cond_9
    sub-long v4, v6, p3

    const-wide/32 v8, 0x493e0

    cmp-long v4, v4, v8

    if-ltz v4, :cond_a

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_2

    const-wide/32 v4, 0x493e0

    .line 218
    add-long/2addr v4, p3

    return-wide v4

    .line 216
    :cond_a
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getMTKMaxTriggerTime(ILandroid/app/PendingIntent;JZ)J
    .locals 3

    .prologue
    .line 146
    if-eqz p5, :cond_1

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/amplus/PowerSavingUtils;->isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-wide/16 v0, 0x0

    .line 152
    sub-long/2addr v0, p3

    return-wide v0

    .line 147
    :cond_1
    return-wide p3

    .line 149
    :cond_2
    if-eqz p5, :cond_0

    const-wide/32 v0, 0x493e0

    .line 150
    add-long/2addr v0, p3

    return-wide v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    .line 61
    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 63
    invoke-direct {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->readList()V

    .line 64
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;)V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mPowerSavingReceiver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingReceiver;

    .line 65
    new-instance v0, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;-><init>(Lcom/mediatek/amplus/PowerSavingUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mPowerSavingEnableObserver:Lcom/mediatek/amplus/PowerSavingUtils$PowerSavingEnableObserver;

    .line 66
    return-void
.end method

.method private isAlarmNeedAlign(ILandroid/app/PendingIntent;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/amplus/PowerSavingUtils;->isPowerSavingStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    if-ne v0, v1, :cond_3

    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_4

    move v1, v2

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 120
    if-nez p3, :cond_7

    :cond_1
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "isAlarmNeedAlign = true"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x1

    .line 139
    :cond_2
    :goto_2
    return v2

    .line 102
    :cond_3
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "isAlarmNeedAlign : packageName is null"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "AlarmManager"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlarmNeedAlign : packageName = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "is in whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v2

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 125
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AlarmManager"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlarmNeedAlign : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " skip!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    move-exception v0

    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "isAlarmNeedAlign : packageName not fount"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private readList()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/alarmplus.config"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    if-nez v0, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 87
    :goto_1
    return-void

    .line 73
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private setPowerSavingEnable()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 261
    iget-object v2, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "background_power_saving_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 263
    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    .line 264
    return-void

    :cond_0
    move v0, v1

    .line 263
    goto :goto_0
.end method


# virtual methods
.method public getMaxTriggerTime(IJJJLandroid/app/PendingIntent;IZ)J
    .locals 14

    .prologue
    .line 244
    move/from16 v0, p9

    iput v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    .line 249
    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    move-object v3, p0

    move v4, p1

    move-object/from16 v5, p8

    move-wide/from16 v6, p2

    move/from16 v8, p10

    .line 250
    invoke-direct/range {v3 .. v8}, Lcom/mediatek/amplus/PowerSavingUtils;->getMTKMaxTriggerTime(ILandroid/app/PendingIntent;JZ)J

    move-result-wide v2

    .line 256
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    .line 251
    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 252
    const/4 v13, 0x0

    move-object v3, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move v11, p1

    move/from16 v12, p10

    invoke-direct/range {v3 .. v13}, Lcom/mediatek/amplus/PowerSavingUtils;->adjustMaxTriggerTime(JJJLandroid/app/PendingIntent;IZZ)J

    move-result-wide v2

    goto :goto_0

    .line 254
    :cond_1
    add-long v2, p2, p4

    goto :goto_0
.end method

.method public isPowerSavingStart()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 162
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsUsbConnected:Z

    if-nez v0, :cond_1

    .line 166
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mIsWFDConnected:Z

    if-nez v0, :cond_2

    .line 170
    iget-boolean v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOff:Z

    if-nez v0, :cond_3

    .line 183
    return v3

    .line 159
    :cond_0
    return v3

    .line 163
    :cond_1
    return v3

    .line 167
    :cond_2
    return v3

    .line 171
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 173
    iget v0, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mSavingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-wide/32 v0, 0xea60

    .line 178
    :goto_0
    iget-wide v6, p0, Lcom/mediatek/amplus/PowerSavingUtils;->mScreenOffTime:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-ltz v0, :cond_5

    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "mScreenOff time is not enough"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v3

    :cond_4
    const-wide/32 v0, 0x493e0

    .line 174
    goto :goto_0

    :cond_5
    move v0, v3

    .line 178
    goto :goto_1

    :cond_6
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "isPowerSavingStart = true"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v2
.end method
