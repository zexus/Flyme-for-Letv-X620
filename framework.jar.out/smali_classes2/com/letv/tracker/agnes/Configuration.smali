.class public final Lcom/letv/tracker/agnes/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgnesClient_Configuration"


# instance fields
.field private agnesVersion:Ljava/lang/String;

.field private ext:I

.field private sEMSListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/tracker/listener/TrackerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Configuration;->sEMSListeners:Ljava/util/List;

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/letv/tracker/agnes/Configuration;->ext:I

    .line 23
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Configuration;->init()V

    .line 24
    return-void
.end method

.method private needLog(Z)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p1}, Lcom/letv/tracker/util/TrackerLog;->setNeedLog(Z)V

    .line 50
    return-void
.end method

.method private readProps()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "agnes.properties"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v0, "ext"

    .line 79
    invoke-virtual {v2, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    if-nez v0, :cond_3

    :cond_0
    :goto_0
    const-string/jumbo v0, "agnes_version"

    .line 84
    invoke-virtual {v2, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    if-nez v0, :cond_4

    .line 92
    :cond_1
    :goto_1
    if-nez v1, :cond_5

    .line 99
    :cond_2
    :goto_2
    return-void

    .line 80
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->setExt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "AgnesClient_Configuration"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Faild to read property file!"

    .line 89
    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-eqz v1, :cond_2

    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 97
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_Configuration"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Faild to close property file!"

    .line 96
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 85
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->setAgnesVersion(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    .line 92
    if-nez v1, :cond_6

    .line 97
    :goto_3
    throw v0

    .line 93
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 97
    :catch_2
    move-exception v0

    const-string/jumbo v1, "AgnesClient_Configuration"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Faild to close property file!"

    .line 96
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 93
    :cond_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 97
    :catch_3
    move-exception v1

    const-string/jumbo v2, "AgnesClient_Configuration"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Faild to close property file!"

    .line 96
    invoke-static {v2, v3, v4, v1}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public addSEMSListener(Lcom/letv/tracker/listener/TrackerListener;)V
    .locals 1

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Configuration;->sEMSListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public disableLog()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->needLog(Z)V

    .line 58
    return-void
.end method

.method public enableLog()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/tracker/agnes/Configuration;->needLog(Z)V

    .line 54
    return-void
.end method

.method public getAgnesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/tracker/agnes/Configuration;->agnesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/letv/tracker/agnes/Configuration;->ext:I

    return v0
.end method

.method public getSEMSListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/letv/tracker/listener/TrackerListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/letv/tracker/agnes/Configuration;->sEMSListeners:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/letv/tracker/agnes/Configuration;->readProps()V

    .line 37
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Configuration;->getAgnesVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/tracker/util/TrackerLog;->setAgnesVersion(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setAgnesVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/letv/tracker/agnes/Configuration;->agnesVersion:Ljava/lang/String;

    return-void
.end method

.method public setExt(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/letv/tracker/agnes/Configuration;->ext:I

    return-void
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p1}, Lcom/letv/tracker/util/TrackerLog;->setLogPath(Ljava/lang/String;)V

    .line 46
    return-void
.end method
