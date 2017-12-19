.class public Lcom/letv/tracker/msg/bean/LogFile;
.super Ljava/lang/Object;
.source "LogFile.java"


# instance fields
.field private errorId:Ljava/lang/String;

.field private logFilePath:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/letv/tracker/msg/bean/ID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/letv/tracker/msg/bean/LogFile;->offset:I

    .line 35
    invoke-virtual {p1}, Lcom/letv/tracker/msg/bean/ID;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/msg/bean/LogFile;->errorId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/letv/tracker/msg/bean/LogFile;->logFilePath:Ljava/lang/String;

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/letv/tracker/msg/bean/LogFile;->offset:I

    .line 51
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/LogFile;->errorId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/letv/tracker/msg/bean/LogFile;->logFilePath:Ljava/lang/String;

    .line 53
    iput p3, p0, Lcom/letv/tracker/msg/bean/LogFile;->offset:I

    .line 54
    return-void
.end method


# virtual methods
.method public buildMessage()Lcom/letv/agnes/service/beans/ILogFile;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/letv/agnes/service/beans/ILogFile;

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/LogFile;->getErrorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/LogFile;->getOffset()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/LogFile;->getLogFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/agnes/service/beans/ILogFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    return-object v0
.end method

.method public getErrorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/LogFile;->errorId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/LogFile;->logFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/letv/tracker/msg/bean/LogFile;->offset:I

    return v0
.end method
