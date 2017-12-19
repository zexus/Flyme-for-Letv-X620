.class Lcom/letv/tracker/agnes/ReportManager$1$1;
.super Ljava/lang/Object;
.source "ReportManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/tracker/agnes/ReportManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/tracker/agnes/ReportManager$1;


# direct methods
.method constructor <init>(Lcom/letv/tracker/agnes/ReportManager$1;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager$1$1;->this$1:Lcom/letv/tracker/agnes/ReportManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager$1$1;->this$1:Lcom/letv/tracker/agnes/ReportManager$1;

    iget-object v0, v0, Lcom/letv/tracker/agnes/ReportManager$1;->this$0:Lcom/letv/tracker/agnes/ReportManager;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager;->proccessMsgInQueue()V

    .line 73
    return-void
.end method
