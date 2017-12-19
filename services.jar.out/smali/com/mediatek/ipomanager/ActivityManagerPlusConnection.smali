.class public Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
.super Ljava/lang/Object;
.source "ActivityManagerPlusConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$1;,
        Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;,
        Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManagerPlusConnection"

.field private static sBooting:Z

.field private static sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;


# instance fields
.field private final BUFFER_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mProcessing:Z

.field private mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 25
    iput v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->BUFFER_SIZE:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z

    .line 36
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$1;)V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    .line 38
    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z

    return p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .prologue
    .line 23
    sput-boolean p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
    .locals 2

    .prologue
    const-class v1, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    sget-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {v0, p0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sInstance:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static inBooting()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z

    return v0
.end method


# virtual methods
.method public startSocketServer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v0, "ActivityManagerPlusConnection"

    const-string/jumbo v1, "startSocketServer"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    invoke-virtual {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z

    if-nez v0, :cond_0

    .line 64
    iput-boolean v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ActivityManagerPlusConnection"

    const-string/jumbo v1, "SocketServer is not running, start it!"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z

    .line 62
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    invoke-virtual {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->start()V

    goto :goto_0
.end method

.method public stopSocketServer()V
    .locals 2

    .prologue
    const-string/jumbo v0, "ActivityManagerPlusConnection"

    const-string/jumbo v1, "stopSocketServer"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mServerSocketThread:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    # invokes: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->stopRun()V
    invoke-static {v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->access$100(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;)V

    goto :goto_0
.end method
