.class public final Lcom/letv/tracker/agnes/Agnes;
.super Ljava/lang/Object;
.source "Agnes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/tracker/agnes/Agnes$1;,
        Lcom/letv/tracker/agnes/Agnes$SingletonHolder;
    }
.end annotation


# instance fields
.field private appList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/letv/tracker/agnes/App;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/letv/tracker/agnes/Configuration;

.field private playSDK:Lcom/letv/tracker/agnes/PlaySDK;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/letv/tracker/agnes/Configuration;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/Configuration;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/tracker/agnes/Agnes$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/letv/tracker/agnes/Agnes;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/letv/tracker/agnes/Agnes;
    .locals 1

    .prologue
    .line 50
    # getter for: Lcom/letv/tracker/agnes/Agnes$SingletonHolder;->INSTANCE:Lcom/letv/tracker/agnes/Agnes;
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes$SingletonHolder;->access$100()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fireFailed(Lcom/letv/tracker/listener/FailedEvent;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getSEMSListeners()Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    return-void

    .line 278
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/listener/TrackerListener;

    .line 279
    invoke-interface {v0, p1}, Lcom/letv/tracker/listener/TrackerListener;->onFailed(Lcom/letv/tracker/listener/FailedEvent;)V

    goto :goto_0
.end method

.method public fireSucceed(Lcom/letv/tracker/listener/SuccessEvent;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getSEMSListeners()Ljava/util/List;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/listener/TrackerListener;

    .line 286
    invoke-interface {v0, p1}, Lcom/letv/tracker/listener/TrackerListener;->onSucceed(Lcom/letv/tracker/listener/SuccessEvent;)V

    goto :goto_0
.end method

.method public declared-synchronized getApp(Lcom/letv/tracker/enums/AppType;)Lcom/letv/tracker/agnes/App;
    .locals 3

    .prologue
    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/letv/tracker/agnes/App;

    invoke-direct {v1, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/AppType;)V

    .line 104
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 105
    return-object v1

    .line 101
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApp(Lcom/letv/tracker/enums/LeUIApp;)Lcom/letv/tracker/agnes/App;
    .locals 3

    .prologue
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/letv/tracker/agnes/App;

    invoke-direct {v1, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/LeUIApp;)V

    .line 115
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 116
    return-object v1

    .line 112
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;
    .locals 2

    .prologue
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 86
    return-object v0

    .line 82
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfig()Lcom/letv/tracker/agnes/Configuration;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    return-object v0
.end method

.method public declared-synchronized getPlaySDK()Lcom/letv/tracker/agnes/PlaySDK;
    .locals 4

    .prologue
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;

    .line 125
    new-instance v1, Lcom/letv/tracker/agnes/PlaySDK;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/App;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/App;->getRunId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/App;->getVersion()Lcom/letv/tracker/msg/bean/Version;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/letv/tracker/agnes/PlaySDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    iput-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getAgnesVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeErrorLog(Lcom/letv/tracker/msg/bean/ID;)V
    .locals 2

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/letv/tracker/msg/bean/ID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->onRemoveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeErrorLog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/tracker/agnes/ReportManager;->onRemoveLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/App;)V
    .locals 2

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/App;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Bluetooth;)V
    .locals 2

    .prologue
    .line 152
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Bluetooth;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Event;)V
    .locals 2

    .prologue
    .line 197
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Event;->buildMessage()Lcom/letv/agnes/service/beans/IEvent;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IEvent;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/GPS;)V
    .locals 2

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/GPS;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 2

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->buildMessage()Lcom/letv/agnes/service/beans/IMusicPlay;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IMusicPlay;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/NFC;)V
    .locals 2

    .prologue
    .line 170
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/NFC;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Network;)V
    .locals 2

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Network;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/VPN;)V
    .locals 2

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VPN;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/VideoPlay;)V
    .locals 2

    .prologue
    .line 215
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VideoPlay;->buildMessage()Lcom/letv/agnes/service/beans/IVideoPlay;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IVideoPlay;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Widget;)V
    .locals 2

    .prologue
    .line 206
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Widget;->buildMessage()Lcom/letv/agnes/service/beans/IWidget;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IWidget;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Wifi;)V
    .locals 2

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Wifi;->buildMessage()Lcom/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/msg/bean/LogFile;)V
    .locals 2

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/msg/bean/LogFile;->buildMessage()Lcom/letv/agnes/service/beans/ILogFile;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/ILogFile;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/msg/bean/SEMSError;)V
    .locals 2

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/msg/bean/SEMSError;->buildMessage()Lcom/letv/agnes/service/beans/ISEMSError;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/ISEMSError;)V

    goto :goto_0
.end method

.method public resendErrorLog(Lcom/letv/tracker/msg/bean/ID;)V
    .locals 3

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/letv/agnes/service/beans/IResend;

    invoke-virtual {p1}, Lcom/letv/tracker/msg/bean/ID;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/letv/agnes/service/beans/IResend;-><init>(Ljava/lang/String;I)V

    .line 253
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IResend;)V

    goto :goto_0
.end method

.method public resendErrorLog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    if-nez p1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    new-instance v0, Lcom/letv/agnes/service/beans/IResend;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/letv/agnes/service/beans/IResend;-><init>(Ljava/lang/String;I)V

    .line 260
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IResend;)V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    .line 66
    return-void
.end method
