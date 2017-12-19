.class public Lcom/letv/tracker/listener/FailedEvent;
.super Ljava/lang/Object;
.source "FailedEvent.java"


# instance fields
.field private errorId:Lcom/letv/tracker/msg/bean/ID;

.field private eventType:Ljava/lang/String;

.field private failedMessage:Ljava/lang/String;

.field private failedType:I


# direct methods
.method public constructor <init>(Lcom/letv/tracker/msg/bean/ID;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/letv/tracker/listener/FailedEvent;->errorId:Lcom/letv/tracker/msg/bean/ID;

    .line 38
    iput-object p2, p0, Lcom/letv/tracker/listener/FailedEvent;->failedMessage:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/letv/tracker/listener/FailedEvent;->eventType:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/letv/tracker/listener/FailedEvent;->failedType:I

    .line 41
    return-void
.end method


# virtual methods
.method public getErrorId()Lcom/letv/tracker/msg/bean/ID;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/tracker/listener/FailedEvent;->errorId:Lcom/letv/tracker/msg/bean/ID;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/letv/tracker/listener/FailedEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/letv/tracker/listener/FailedEvent;->failedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/letv/tracker/listener/FailedEvent;->failedType:I

    return v0
.end method
