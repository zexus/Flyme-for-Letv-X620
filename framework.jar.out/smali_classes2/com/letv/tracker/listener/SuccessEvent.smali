.class public Lcom/letv/tracker/listener/SuccessEvent;
.super Ljava/lang/Object;
.source "SuccessEvent.java"


# instance fields
.field private errorId:Lcom/letv/tracker/msg/bean/ID;

.field private eventType:Ljava/lang/String;

.field private fileSize:I

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/letv/tracker/msg/bean/ID;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/letv/tracker/listener/SuccessEvent;->errorId:Lcom/letv/tracker/msg/bean/ID;

    .line 42
    iput p2, p0, Lcom/letv/tracker/listener/SuccessEvent;->offset:I

    .line 43
    iput p3, p0, Lcom/letv/tracker/listener/SuccessEvent;->fileSize:I

    .line 44
    iput-object p4, p0, Lcom/letv/tracker/listener/SuccessEvent;->eventType:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final getErrorId()Lcom/letv/tracker/msg/bean/ID;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/letv/tracker/listener/SuccessEvent;->errorId:Lcom/letv/tracker/msg/bean/ID;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/tracker/listener/SuccessEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/letv/tracker/listener/SuccessEvent;->fileSize:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/letv/tracker/listener/SuccessEvent;->offset:I

    return v0
.end method
