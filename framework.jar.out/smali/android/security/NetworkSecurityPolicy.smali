.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;

.field private static mPerfHandle:I

.field private static mPerfService:Ljava/lang/Object;

.field private static sCache:Landroid/net/http/HttpResponseCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    .line 172
    const/4 v0, -0x1

    sput v0, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUrl(Ljava/net/URL;)V
    .locals 2
    .param p0, "httpUrl"    # Ljava/net/URL;

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/NetworkSecurityPolicy;->isSecurityUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    invoke-static {p0}, Landroid/security/NetworkSecurityPolicy;->tracejungo_begin(Ljava/net/URL;)V

    .line 143
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;->doAction()V

    .line 145
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    invoke-static {p0}, Landroid/security/NetworkSecurityPolicy;->tracejungo_end(Ljava/net/URL;)V

    .line 135
    :cond_1
    return-void
.end method

.method private doAction()V
    .locals 6

    .prologue
    .line 159
    :try_start_0
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->speedDownload()V

    .line 161
    sget-object v3, Landroid/security/NetworkSecurityPolicy;->sCache:Landroid/net/http/HttpResponseCache;

    if-nez v3, :cond_0

    .line 162
    const-string/jumbo v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "tmp":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "HttpCache"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "cacheDir":Ljava/io/File;
    const-wide/32 v4, 0x7fffffff

    invoke-static {v0, v4, v5}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v3

    sput-object v3, Landroid/security/NetworkSecurityPolicy;->sCache:Landroid/net/http/HttpResponseCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "do1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method

.method private isSecurityUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "httpUrl"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string/jumbo v0, "http://wx.gtimg.com/hongbao/img/hb.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const-string/jumbo v0, "http://wx.gtimg.com/hongbao/img/hongbao.png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 150
    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static speedDownload()V
    .locals 11

    .prologue
    .line 176
    :try_start_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "speedDownload start"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const-class v7, Landroid/security/NetworkSecurityPolicy;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :try_start_1
    const-string/jumbo v6, "com.mediatek.perfservice.PerfServiceWrapper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    .line 181
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    if-eqz v6, :cond_0

    sget v6, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    .line 182
    const-string/jumbo v6, "userRegScn"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 183
    .local v2, "method1":Ljava/lang/reflect/Method;
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 184
    .local v5, "output":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    .line 185
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "speedDownload init: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    .end local v2    # "method1":Ljava/lang/reflect/Method;
    .end local v5    # "output":Ljava/lang/Integer;
    :cond_0
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    if-eqz v6, :cond_1

    sget v6, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 188
    const-string/jumbo v6, "userRegScnConfig"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 189
    .local v3, "method2":Ljava/lang/reflect/Method;
    const-string/jumbo v6, "userEnableTimeoutMs"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 192
    .local v4, "method3":Ljava/lang/reflect/Method;
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0xaa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0xf

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0xf

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const v9, 0x2dc6c0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0x11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const v9, 0x2dc6c0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v6, Landroid/security/NetworkSecurityPolicy;->mPerfService:Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    sget v10, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/16 v9, 0xbb8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "speedDownload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/security/NetworkSecurityPolicy;->mPerfHandle:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " perfenable done"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "method2":Ljava/lang/reflect/Method;
    .end local v4    # "method3":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_2
    monitor-exit v7

    .line 174
    :goto_0
    return-void

    .line 177
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "err:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static tracejungo_begin(Ljava/net/URL;)V
    .locals 12
    .param p0, "httpUrl"    # Ljava/net/URL;

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "traceBegin":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 226
    .local v7, "traceEnd":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 228
    .local v2, "isTagEnabled":Ljava/lang/reflect/Method;
    const-wide/16 v4, 0x2

    .line 230
    .local v4, "tag":J
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tracejungo_begin url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :try_start_0
    const-string/jumbo v8, "android.os.Trace"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 234
    .local v6, "traceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "traceBegin"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 236
    .local v3, "traceBegin":Ljava/lang/reflect/Method;
    const-string/jumbo v8, "isTagEnabled"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 237
    .local v2, "isTagEnabled":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 238
    .local v1, "ena":Z
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "enabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "ena":Z
    .end local v2    # "isTagEnabled":Ljava/lang/reflect/Method;
    .end local v3    # "traceBegin":Ljava/lang/reflect/Method;
    .end local v6    # "traceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v8, 0x2

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, "jungo cache"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_1
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 246
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static tracejungo_end(Ljava/net/URL;)V
    .locals 11
    .param p0, "httpUrl"    # Ljava/net/URL;

    .prologue
    .line 252
    const/4 v6, 0x0

    .line 253
    .local v6, "traceEnd":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 255
    .local v2, "isTagEnabled":Ljava/lang/reflect/Method;
    const-wide/16 v4, 0x2

    .line 257
    .local v4, "tag":J
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tracejungo_end url:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    :try_start_0
    const-string/jumbo v7, "android.os.Trace"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 262
    .local v3, "traceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "traceEnd"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 263
    .local v6, "traceEnd":Ljava/lang/reflect/Method;
    const-string/jumbo v7, "isTagEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 264
    .local v2, "isTagEnabled":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 265
    .local v1, "ena":Z
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "ena":Z
    .end local v2    # "isTagEnabled":Ljava/lang/reflect/Method;
    .end local v3    # "traceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "traceEnd":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_1
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 273
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isSendingTrafficPermittedByMom(I)Z
    .locals 9
    .param p1, "opType"    # I

    .prologue
    const/4 v5, 0x0

    .line 111
    if-nez p1, :cond_1

    .line 112
    const-string/jumbo v6, "appops"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 113
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v4

    .line 114
    .local v4, "service":Lcom/android/internal/app/IAppOpsService;
    const/4 v2, 0x1

    .line 116
    .local v2, "mode":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const/16 v8, 0x43

    invoke-interface {v4, v8, v6, v7}, Lcom/android/internal/app/IAppOpsService;->noteOperationEx(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 120
    :goto_0
    if-nez v2, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "mode":I
    .end local v4    # "service":Lcom/android/internal/app/IAppOpsService;
    :cond_1
    const-string/jumbo v3, "sub-permission.SEND_EMAIL"

    .line 124
    .local v3, "permissionName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 123
    invoke-static {v3, v5}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v5

    return v5
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 0
    .param p1, "permitted"    # Z

    .prologue
    .line 96
    invoke-static {p1}, Llibcore/net/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 95
    return-void
.end method
