.class Lcom/letv/tracker/agnes/ReportManager$2;
.super Lcom/letv/agnes/service/beans/ISEMSListener$Stub;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/agnes/ReportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/tracker/agnes/ReportManager;


# direct methods
.method constructor <init>(Lcom/letv/tracker/agnes/ReportManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager$2;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    invoke-direct {p0}, Lcom/letv/agnes/service/beans/ISEMSListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFail(Lcom/letv/agnes/service/beans/IFailedEvent;)V
    .locals 5

    .prologue
    .line 102
    new-instance v0, Lcom/letv/tracker/listener/FailedEvent;

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IFailedEvent;->getId()Lcom/letv/agnes/service/beans/InnerID;

    move-result-object v1

    invoke-static {v1}, Lcom/letv/tracker/service/Converter;->convertInnerID(Lcom/letv/agnes/service/beans/InnerID;)Lcom/letv/tracker/msg/bean/ID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IFailedEvent;->getMess()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IFailedEvent;->getFailedType()I

    move-result v3

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IFailedEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/listener/FailedEvent;-><init>(Lcom/letv/tracker/msg/bean/ID;Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/Agnes;->fireFailed(Lcom/letv/tracker/listener/FailedEvent;)V

    .line 104
    return-void
.end method

.method public handleSuccess(Lcom/letv/agnes/service/beans/ISuccessEvent;)V
    .locals 5

    .prologue
    .line 96
    new-instance v0, Lcom/letv/tracker/listener/SuccessEvent;

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/ISuccessEvent;->getId()Lcom/letv/agnes/service/beans/InnerID;

    move-result-object v1

    invoke-static {v1}, Lcom/letv/tracker/service/Converter;->convertInnerID(Lcom/letv/agnes/service/beans/InnerID;)Lcom/letv/tracker/msg/bean/ID;

    move-result-object v1

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/ISuccessEvent;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/ISuccessEvent;->getFileSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/ISuccessEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/listener/SuccessEvent;-><init>(Lcom/letv/tracker/msg/bean/ID;IILjava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/Agnes;->fireSucceed(Lcom/letv/tracker/listener/SuccessEvent;)V

    .line 98
    return-void
.end method
