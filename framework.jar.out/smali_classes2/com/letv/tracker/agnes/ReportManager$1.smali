.class Lcom/letv/tracker/agnes/ReportManager$1;
.super Ljava/lang/Object;
.source "ReportManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 62
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    invoke-static {p2}, Lcom/letv/agnes/service/beans/IReportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/agnes/service/beans/IReportService;

    move-result-object v1

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;
    invoke-static {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->access$002(Lcom/letv/tracker/agnes/ReportManager;Lcom/letv/agnes/service/beans/IReportService;)Lcom/letv/agnes/service/beans/IReportService;

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Connected with agnes service!"

    .line 67
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$1$1;

    invoke-direct {v1, p0}, Lcom/letv/tracker/agnes/ReportManager$1$1;-><init>(Lcom/letv/tracker/agnes/ReportManager$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # getter for: Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;
    invoke-static {v0}, Lcom/letv/tracker/agnes/ReportManager;->access$000(Lcom/letv/tracker/agnes/ReportManager;)Lcom/letv/agnes/service/beans/IReportService;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # getter for: Lcom/letv/tracker/agnes/ReportManager;->listener:Lcom/letv/agnes/service/beans/ISEMSListener$Stub;
    invoke-static {v1}, Lcom/letv/tracker/agnes/ReportManager;->access$100(Lcom/letv/tracker/agnes/ReportManager;)Lcom/letv/agnes/service/beans/ISEMSListener$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/letv/agnes/service/beans/IReportService;->addListener(Lcom/letv/agnes/service/beans/ISEMSListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "Failed to add listener!"

    .line 79
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->isBind:Z
    invoke-static {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->access$202(Lcom/letv/tracker/agnes/ReportManager;Z)Z

    .line 86
    sput-boolean v1, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 87
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;
    invoke-static {v0, v2}, Lcom/letv/tracker/agnes/ReportManager;->access$302(Lcom/letv/tracker/agnes/ReportManager;Landroid/content/Intent;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    # setter for: Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;
    invoke-static {v0, v2}, Lcom/letv/tracker/agnes/ReportManager;->access$002(Lcom/letv/tracker/agnes/ReportManager;Lcom/letv/agnes/service/beans/IReportService;)Lcom/letv/agnes/service/beans/IReportService;

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Disconnected with agnes service!"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
