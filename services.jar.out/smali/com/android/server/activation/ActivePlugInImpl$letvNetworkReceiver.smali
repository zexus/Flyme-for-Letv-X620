.class final Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivePlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/activation/ActivePlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "letvNetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/ActivePlugInImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 817
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap0(Lcom/android/server/activation/ActivePlugInImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap10(Lcom/android/server/activation/ActivePlugInImpl;)V

    .line 820
    return-void

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->-get2(Lcom/android/server/activation/ActivePlugInImpl;)Z

    move-result v1

    .line 825
    .local v1, "oldConnected":Z
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap1(Lcom/android/server/activation/ActivePlugInImpl;)Z

    move-result v0

    .line 826
    .local v0, "isNewConnected":Z
    if-ne v1, v0, :cond_1

    .line 828
    return-void

    .line 830
    :cond_1
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v3}, Lcom/android/server/activation/ActivePlugInImpl;->-get1(Lcom/android/server/activation/ActivePlugInImpl;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/activation/ActivePlugInImpl;->-set1(Lcom/android/server/activation/ActivePlugInImpl;I)I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap6(Lcom/android/server/activation/ActivePlugInImpl;IZ)V

    .line 816
    return-void
.end method
