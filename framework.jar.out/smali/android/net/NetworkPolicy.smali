.class public Landroid/net/NetworkPolicy;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkPolicy$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final CYCLE_NONE:I = -0x1

.field private static final DEFAULT_MTU:J = 0x5dcL

.field public static final IDLE_TIME_FLOW_INTERVAL:Ljava/lang/String; = "idle_time_flow_interval"

.field public static final IDLE_TIME_FLOW_LIMIT_BYTES:Ljava/lang/String; = "idle_time_flow_limit_bytes"

.field public static final IDLE_TIME_FLOW_NONE:I = -0x1

.field public static final IDLE_TIME_FLOW_REMAINING_BYTES:Ljava/lang/String; = "idle_time_flow_remaining_bytes"

.field public static final LAST_CORRECTED_ALL_BYTES:Ljava/lang/String; = "last_corrected_all_bytes"

.field public static final LAST_CORRECTED_REMAINING_BYTES:Ljava/lang/String; = "last_corrected_remaining_bytes"

.field public static final LAST_CORRECTED_REMAINING_TIME:Ljava/lang/String; = "last_corrected_remaining_time"

.field public static final LAST_CORRECTED_TOTAL_BYTES:Ljava/lang/String; = "last_corrected_total_bytes"

.field public static final LE_DAILY_WARNING_BYTES:Ljava/lang/String; = "le_daily_warning_bytes"

.field public static final LE_DAILY_WARNING_DEFAULT_BYTES:J = 0x1e00000L

.field public static final LE_DAILY_WARNING_DISABLED:J = -0x1L

.field public static final LE_DAILY_WARNING_SNOOZE:Ljava/lang/String; = "le_daily_warning_snooze"

.field public static final LIMIT_DISABLED:J = -0x1L

.field public static final SNOOZE_NEVER:J = -0x1L

.field public static final WARNING_DISABLED:J = -0x1L


# instance fields
.field public cycleDay:I

.field public cycleTimezone:Ljava/lang/String;

.field public inferred:Z

.field public lastLimitSnooze:J

.field public lastWarningSnooze:J

.field public limitBytes:J

.field public metered:Z

.field public template:Landroid/net/NetworkTemplate;

.field public warningBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Landroid/net/NetworkPolicy$1;

    invoke-direct {v0}, Landroid/net/NetworkPolicy$1;-><init>()V

    sput-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "lastWarningSnooze"    # J
    .param p10, "lastLimitSnooze"    # J
    .param p12, "metered"    # Z
    .param p13, "inferred"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string/jumbo v0, "missing NetworkTemplate"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 83
    iput p2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 84
    const-string/jumbo v0, "missing cycleTimezone"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 85
    iput-wide p4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 86
    iput-wide p6, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 87
    iput-wide p8, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 88
    iput-wide p10, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 89
    iput-boolean p12, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 90
    iput-boolean p13, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJZ)V
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "cycleDay"    # I
    .param p3, "cycleTimezone"    # Ljava/lang/String;
    .param p4, "warningBytes"    # J
    .param p6, "limitBytes"    # J
    .param p8, "metered"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const-wide/16 v8, -0x1

    .line 76
    const-wide/16 v10, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v12, p8

    .line 75
    invoke-direct/range {v0 .. v13}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iput-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    .line 93
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v1, v2

    .line 102
    goto :goto_1
.end method


# virtual methods
.method public clearSnooze()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 220
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 221
    iput-wide v0, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 219
    return-void
.end method

.method public compareTo(Landroid/net/NetworkPolicy;)I
    .locals 4
    .param p1, "another"    # Landroid/net/NetworkPolicy;

    .prologue
    const-wide/16 v2, -0x1

    .line 233
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 237
    :cond_1
    iget-wide v0, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 239
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 232
    check-cast p1, Landroid/net/NetworkPolicy;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 252
    instance-of v2, p1, Landroid/net/NetworkPolicy;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 253
    check-cast v0, Landroid/net/NetworkPolicy;

    .line 254
    .local v0, "other":Landroid/net/NetworkPolicy;
    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    iget v3, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 255
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 256
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 257
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->metered:Z

    if-ne v2, v3, :cond_0

    .line 258
    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    iget-boolean v3, v0, Landroid/net/NetworkPolicy;->inferred:Z

    if-ne v2, v3, :cond_0

    .line 259
    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 254
    if-eqz v2, :cond_0

    .line 260
    iget-object v1, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v2, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 254
    :cond_0
    return v1

    .line 262
    .end local v0    # "other":Landroid/net/NetworkPolicy;
    :cond_1
    return v1
.end method

.method public hasCycle()Z
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 246
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 247
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 246
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDuringIdleTime(Ljava/lang/String;J)Z
    .locals 12
    .param p1, "interval"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v9, 0x0

    return v9

    .line 180
    :cond_0
    const-string/jumbo v9, "_"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "times":[Ljava/lang/String;
    if-eqz v8, :cond_1

    array-length v9, v8

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    .line 182
    :cond_1
    const/4 v9, 0x0

    return v9

    .line 186
    :cond_2
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 187
    .local v6, "startHour":I
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 188
    .local v7, "startMinute":I
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    .local v2, "endHour":I
    const/4 v9, 0x3

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 191
    .local v3, "endMinute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 193
    .local v5, "idleStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 195
    .local v4, "idleEnd":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    invoke-virtual {v5, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    const/16 v9, 0xb

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 200
    const/16 v9, 0xc

    invoke-virtual {v5, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 201
    const/16 v9, 0xb

    invoke-virtual {v4, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v9, 0xc

    invoke-virtual {v4, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 204
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 205
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 208
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_0
    return v9

    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "endHour":I
    .end local v3    # "endMinute":I
    .end local v4    # "idleEnd":Ljava/util/Calendar;
    .end local v5    # "idleStart":Ljava/util/Calendar;
    .end local v6    # "startHour":I
    .end local v7    # "startMinute":I
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const/4 v9, 0x0

    return v9
.end method

.method public isOverLimit(J)Z
    .locals 7
    .param p1, "totalBytes"    # J

    .prologue
    const/4 v0, 0x0

    .line 137
    const-wide/16 v2, 0xbb8

    add-long/2addr p1, v2

    .line 138
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOverLimit(JJZ)Z
    .locals 7
    .param p1, "totalBytes"    # J
    .param p3, "remainingBytes"    # J
    .param p5, "limitEnabled"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    const-wide/16 v2, 0xbb8

    add-long/2addr p1, v2

    .line 165
    if-eqz p5, :cond_3

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    cmp-long v2, p1, p3

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public isOverWarning(J)Z
    .locals 7
    .param p1, "totalBytes"    # J

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOverWarning(JJZ)Z
    .locals 9
    .param p1, "totalBytes"    # J
    .param p3, "remainingBytes"    # J
    .param p5, "warningEnable"    # Z

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    if-eqz p5, :cond_3

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    sub-long/2addr v2, v4

    cmp-long v2, p3, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    const-wide/32 v2, 0xa00000

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string/jumbo v1, " cycleDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, ", cycleTimezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string/jumbo v1, ", warningBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    const-string/jumbo v1, ", limitBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    const-string/jumbo v1, ", lastWarningSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v1, ", lastLimitSnooze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v1, ", metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v1, ", inferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget v0, p0, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-wide v4, p0, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-boolean v0, p0, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method
