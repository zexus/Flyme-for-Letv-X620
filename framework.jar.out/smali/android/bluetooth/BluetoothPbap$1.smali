.class Landroid/bluetooth/BluetoothPbap$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPbap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbap;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbap;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPbap;

    .prologue
    .line 118
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4
    .param p1, "up"    # Z

    .prologue
    .line 120
    const-string/jumbo v1, "BluetoothPbap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBluetoothStateChange: up="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez p1, :cond_1

    .line 122
    const-string/jumbo v1, "BluetoothPbap"

    const-string/jumbo v2, "Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->-get0(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothPbap;->-set0(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    .line 126
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->-get1(Landroid/bluetooth/BluetoothPbap;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v3}, Landroid/bluetooth/BluetoothPbap;->-get0(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 119
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "re":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "BluetoothPbap"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 132
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->-get0(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbap;->-get2(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 135
    const-string/jumbo v1, "BluetoothPbap"

    const-string/jumbo v3, "Binding service..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap$1;->this$0:Landroid/bluetooth/BluetoothPbap;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->doBind()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .restart local v0    # "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "BluetoothPbap"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 132
    .end local v0    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method
