.class Lcom/android/server/activation/util/DomainEngine$1;
.super Ljava/lang/Object;
.source "DomainEngine.java"

# interfaces
.implements Lcom/letv/domain/DomainHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/activation/util/DomainEngine;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/util/DomainEngine;


# direct methods
.method constructor <init>(Lcom/android/server/activation/util/DomainEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/util/DomainEngine;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(ILjava/lang/String;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[DomainEngine] onErrorResponse, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, ", errorMsg: "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/activation/util/DomainEngine;->-set0(Lcom/android/server/activation/util/DomainEngine;Z)Z

    .line 102
    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v0}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v1

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v0}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 97
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onResponse(ILorg/json/JSONObject;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/activation/util/DomainEngine;->-set0(Lcom/android/server/activation/util/DomainEngine;Z)Z

    .line 71
    if-nez p1, :cond_0

    .line 73
    :try_start_0
    sget-object v2, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    invoke-virtual {v2}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "domain":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DomainEngine] onResponse, domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2, v0}, Lcom/android/server/activation/util/DomainEngine;->-wrap0(Lcom/android/server/activation/util/DomainEngine;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "domain":Ljava/lang/String;
    :goto_0
    monitor-exit v3

    .line 69
    return-void

    .line 81
    .restart local v0    # "domain":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 76
    .end local v0    # "domain":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DomainEngine] onResponse, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 81
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    .line 82
    :try_start_3
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 81
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 79
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_2
    move-exception v2

    .line 81
    iget-object v3, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v3}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    .line 82
    :try_start_4
    iget-object v4, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v4}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v3

    .line 79
    throw v2

    .line 81
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 86
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DomainEngine] onResponse, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    .line 89
    :try_start_5
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->-get0(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_0

    .line 88
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2
.end method
