.class Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;
.super Ljava/lang/Object;
.source "PersonalSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/personal/PersonalSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CalendarUtil"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseTimeByCurrentDay(J)J
    .locals 8
    .param p0, "time"    # J

    .prologue
    const/4 v6, 0x0

    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 139
    .local v2, "oldCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 140
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 141
    .local v4, "start":J
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 143
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 144
    .local v0, "end":J
    sub-long v6, v4, v0

    return-wide v6
.end method

.method public static getCurrentTime()J
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
