.class Lcom/android/server/policy/global/GlobalActionViewMediator$2;
.super Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseSystemDialog()V
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "onCloseSystemDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get2(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$2;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap2(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    .line 194
    :cond_0
    return-void
.end method
