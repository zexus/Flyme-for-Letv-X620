.class public Lcom/letv/leui/personal/PersonalSettingsManager;
.super Ljava/lang/Object;
.source "PersonalSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;
    }
.end annotation


# static fields
.field public static final LEUI_DISTURBMODE_CONTACTMODE:Ljava/lang/String; = "leui_disturbmode_contactmode"

.field public static final LEUI_DISTURBMODE_ENABLED:Ljava/lang/String; = "leui_disturbmode_enabled"

.field public static final LEUI_DISTURBMODE_ENDTIME:Ljava/lang/String; = "leui_disturbmode_endtime"

.field public static final LEUI_DISTURBMODE_REPEAT_ENABLED:Ljava/lang/String; = "leui_disturbmode_repeat_enabled"

.field public static final LEUI_DISTURBMODE_STARTTIME:Ljava/lang/String; = "leui_disturbmode_starttime"

.field public static final LEUI_DISTURBMODE_TIMESET_ENABLED:Ljava/lang/String; = "leui_disturbmode_timeset_enabled"

.field private static final TAG:Ljava/lang/String; = "PersionalService"

.field public static final sContactTypeDefault:I = 0x0

.field public static final sDisturbModeContactType_EveryOne:I = 0x0

.field public static final sDisturbModeContactType_WhiteList:I = 0x1

.field public static final sDisturbModeDefault:Z

.field public static final sDisturbModeEndTimeDefault:J

.field public static final sDisturbModeStartTimeDefault:J

.field private static final sDisturbModeTimeSetEnabled:Z

.field public static final sDisturbRepeatModeDefault:Z

.field private static final sIllegalStartEndTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 235
    invoke-static {p0, p1}, Lcom/letv/leui/personal/PersonalSettingsManager;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public static getCurrentTime()J
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDisturbContactMode(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 165
    const-string/jumbo v0, "leui_disturbmode_contactmode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/letv/leui/personal/PersonalSettingsManager;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDisturbModeEndTime(Landroid/content/ContentResolver;)J
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 157
    const-string/jumbo v0, "leui_disturbmode_endtime"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/letv/leui/personal/PersonalSettingsManager;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDisturbModeStartTime(Landroid/content/ContentResolver;)J
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 153
    const-string/jumbo v0, "leui_disturbmode_starttime"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/letv/leui/personal/PersonalSettingsManager;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 248
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 240
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCurrentDisturbEnvironment(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/letv/leui/personal/PersonalSettingsManager;->isDisturbModeEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/letv/leui/personal/PersonalSettingsManager;->isDisturbModeTimeSetEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/letv/leui/personal/PersonalSettingsManager;->isCurrentTimeInDisturbMode(Landroid/content/ContentResolver;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentTimeInDisturbMode(Landroid/content/ContentResolver;)Z
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v6, 0x0

    .line 173
    invoke-static {p0}, Lcom/letv/leui/personal/PersonalSettingsManager;->getDisturbModeStartTime(Landroid/content/ContentResolver;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;->getBaseTimeByCurrentDay(J)J

    move-result-wide v4

    .line 174
    .local v4, "startTime":J
    invoke-static {p0}, Lcom/letv/leui/personal/PersonalSettingsManager;->getDisturbModeEndTime(Landroid/content/ContentResolver;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;->getBaseTimeByCurrentDay(J)J

    move-result-wide v2

    .line 175
    .local v2, "endTime":J
    invoke-static {}, Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;->getCurrentTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/letv/leui/personal/PersonalSettingsManager$CalendarUtil;->getBaseTimeByCurrentDay(J)J

    move-result-wide v0

    .line 176
    .local v0, "currentTime":J
    const-string/jumbo v7, "PersionalService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PersonalSettingsManager startTime is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",endTime is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 177
    const-string/jumbo v9, ",currentTime is:"

    .line 176
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    cmp-long v7, v4, v0

    if-gtz v7, :cond_0

    cmp-long v7, v0, v2

    if-gtz v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    return v6
.end method

.method public static isDisturbModeEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 125
    const-string/jumbo v0, "leui_disturbmode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/letv/leui/personal/PersonalSettingsManager;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDisturbModeRepeateEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 161
    const-string/jumbo v0, "leui_disturbmode_repeat_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/letv/leui/personal/PersonalSettingsManager;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDisturbModeTimeSetEnabled(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 129
    const-string/jumbo v0, "leui_disturbmode_timeset_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/letv/leui/personal/PersonalSettingsManager;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDisturbTimeInValid(J)Z
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 218
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDisturbContactMode(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I

    .prologue
    .line 212
    const-string/jumbo v0, "leui_disturbmode_contactmode"

    invoke-static {p0, v0, p1}, Lcom/letv/leui/personal/PersonalSettingsManager;->setInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public static setDisturbModeEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Z

    .prologue
    .line 187
    const-string/jumbo v0, "leui_disturbmode_enabled"

    invoke-static {p0, v0, p1}, Lcom/letv/leui/personal/PersonalSettingsManager;->setBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public static setDisturbModeEndTime(Landroid/content/ContentResolver;J)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "time"    # J

    .prologue
    .line 199
    const-string/jumbo v0, "leui_disturbmode_endtime"

    invoke-static {p0, v0, p1, p2}, Lcom/letv/leui/personal/PersonalSettingsManager;->setLong(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 198
    return-void
.end method

.method public static setDisturbModeRepeateEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "repeat"    # Z

    .prologue
    .line 203
    const-string/jumbo v0, "leui_disturbmode_repeat_enabled"

    invoke-static {p0, v0, p1}, Lcom/letv/leui/personal/PersonalSettingsManager;->setBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method public static setDisturbModeStartTime(Landroid/content/ContentResolver;J)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "time"    # J

    .prologue
    .line 195
    const-string/jumbo v0, "leui_disturbmode_starttime"

    invoke-static {p0, v0, p1, p2}, Lcom/letv/leui/personal/PersonalSettingsManager;->setLong(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 194
    return-void
.end method

.method public static setDisturbModeTimeSetEnabled(Landroid/content/ContentResolver;Z)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "value"    # Z

    .prologue
    .line 191
    const-string/jumbo v0, "leui_disturbmode_timeset_enabled"

    invoke-static {p0, v0, p1}, Lcom/letv/leui/personal/PersonalSettingsManager;->setBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method private static setInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 230
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    return-void
.end method

.method private static setLong(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 0
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 222
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 221
    return-void
.end method

.method private static setString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    return-void
.end method
