.class Lcom/android/server/net/NetworkHttpMonitor$1;
.super Ljava/lang/Object;
.source "NetworkHttpMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->sendKeepAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkHttpMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    const/4 v8, 0x0

    .line 149
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v10}, Lcom/android/server/net/NetworkHttpMonitor;->-get3(Lcom/android/server/net/NetworkHttpMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/generate_204"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "checkUrl":Ljava/lang/String;
    const-string/jumbo v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Checking:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 154
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 155
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 156
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 157
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 159
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 160
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 161
    .local v6, "status":I
    const/16 v9, 0xcc

    if-ne v6, v9, :cond_2

    const/4 v4, 0x1

    .line 162
    .local v4, "isConnected":Z
    :goto_0
    const-string/jumbo v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Checking status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz v4, :cond_3

    .line 164
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkHttpMonitor;->isFirewallEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 165
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->-wrap2(Lcom/android/server/net/NetworkHttpMonitor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 188
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "isConnected":Z
    .end local v6    # "status":I
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    :goto_2
    monitor-exit p0

    .line 146
    return-void

    .line 161
    .restart local v6    # "status":I
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "isConnected":Z
    goto :goto_0

    .line 167
    :cond_3
    const/16 v9, 0x12e

    if-eq v6, v9, :cond_4

    .line 168
    const/16 v9, 0x12d

    if-ne v6, v9, :cond_5

    .line 170
    :cond_4
    :goto_3
    :try_start_3
    const-string/jumbo v9, "Location"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "loc":Ljava/lang/String;
    const-string/jumbo v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "new loc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkHttpMonitor;->getWebLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 173
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkHttpMonitor;->isFirewallEnabled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 174
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->-get1(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 175
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->-set0(Z)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 182
    .end local v4    # "isConnected":Z
    .end local v5    # "loc":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ioe:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->-get1(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v10}, Lcom/android/server/net/NetworkHttpMonitor;->-get1(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v10

    .line 185
    const/4 v11, 0x3

    .line 184
    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 185
    const-wide/32 v12, 0x1d4c0

    .line 184
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    if-eqz v8, :cond_1

    .line 188
    :try_start_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 147
    .end local v2    # "checkUrl":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 169
    .restart local v2    # "checkUrl":Ljava/lang/String;
    .restart local v4    # "isConnected":Z
    .restart local v6    # "status":I
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_5
    const/16 v9, 0x12f

    if-ne v6, v9, :cond_0

    goto/16 :goto_3

    .line 177
    .restart local v5    # "loc":Ljava/lang/String;
    :cond_6
    :try_start_6
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->-get1(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v10}, Lcom/android/server/net/NetworkHttpMonitor;->-get1(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v10

    .line 178
    const/4 v11, 0x3

    .line 177
    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 178
    const-wide/32 v12, 0x1d4c0

    .line 177
    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 186
    .end local v4    # "isConnected":Z
    .end local v5    # "loc":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v9

    .line 187
    if-eqz v8, :cond_7

    .line 188
    :try_start_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 186
    :cond_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
