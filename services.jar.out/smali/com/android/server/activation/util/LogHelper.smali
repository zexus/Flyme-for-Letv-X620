.class public Lcom/android/server/activation/util/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_FORMAT:Ljava/lang/String; = "%1$s\n%2$s"

.field public static final TAG:Ljava/lang/String; = "Activation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 28
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 44
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 48
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 32
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "priority"    # I
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {}, Lcom/android/server/activation/util/LogHelper;->isLogEnable()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 54
    :cond_0
    array-length v3, p3

    if-lez v3, :cond_1

    .line 55
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 57
    :cond_1
    if-nez p1, :cond_3

    .line 58
    move-object v0, p2

    .line 64
    .local v0, "log":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/server/activation/util/LogHelper;->isLogEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    const-string/jumbo v3, "Activation"

    invoke-static {p0, v3, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    return-void

    .line 60
    .end local v0    # "log":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "logMessage":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "logBody":Ljava/lang/String;
    const-string/jumbo v3, "%1$s\n%2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "log":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "logBody":Ljava/lang/String;
    .end local v2    # "logMessage":Ljava/lang/String;
    :cond_4
    move-object v2, p2

    .restart local v2    # "logMessage":Ljava/lang/String;
    goto :goto_1
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 24
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 36
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/activation/util/LogHelper;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method
