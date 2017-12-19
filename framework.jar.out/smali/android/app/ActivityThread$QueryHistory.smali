.class final Landroid/app/ActivityThread$QueryHistory;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHistory"
.end annotation


# instance fields
.field private mCursorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ActivityThread$QueryHistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLeakDetect:Z

.field private mUriMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUriPfdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 5880
    iput-object p1, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5882
    const-string/jumbo v0, "ProviderLeakDetecter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 5881
    iput-boolean v0, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    .line 5886
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5885
    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    .line 5887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    .line 5891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5890
    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    .line 5892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    .line 5880
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$QueryHistory;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$QueryHistory;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private checkAeeWarningList()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5901
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 5902
    .local v6, "uid":I
    const/4 v2, 0x0

    .line 5905
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/data/system/resmon-uid.txt"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5907
    .end local v2    # "inStream":Ljava/io/InputStream;
    .local v3, "inStream":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 5908
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 5909
    .local v4, "inputReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5911
    .local v0, "buffReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 5912
    .local v5, "line":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_2

    .line 5913
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-ne v6, v7, :cond_1

    .line 5914
    const/4 v7, 0x1

    .line 5923
    if-eqz v3, :cond_0

    .line 5925
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5914
    :cond_0
    :goto_1
    return v7

    .line 5926
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 5916
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_0

    .line 5923
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v4    # "inputReader":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 5925
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5919
    :cond_3
    :goto_2
    return v8

    .line 5926
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 5920
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 5923
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_4

    .line 5925
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 5921
    :cond_4
    :goto_4
    return v8

    .line 5926
    :catch_3
    move-exception v1

    goto :goto_4

    .line 5922
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 5923
    .end local v2    # "inStream":Ljava/io/InputStream;
    :goto_5
    if-eqz v2, :cond_5

    .line 5925
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 5922
    :cond_5
    :goto_6
    throw v7

    .line 5926
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 5922
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .local v2, "inStream":Ljava/io/InputStream;
    goto :goto_5

    .line 5920
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :catch_5
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "inStream":Ljava/io/InputStream;
    .restart local v2    # "inStream":Ljava/io/InputStream;
    goto :goto_3
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "cursorHashCode"    # I

    .prologue
    const/4 v9, 0x1

    .line 5941
    const/4 v4, 0x0

    .line 5943
    .local v4, "reportException":Z
    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    monitor-enter v6

    .line 5944
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 5945
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5950
    :goto_0
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_0

    .line 5951
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 5952
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PossibleCursorLeak:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",QueryCounter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5951
    invoke-static {v5, v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5956
    :cond_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 5957
    new-instance v3, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v3, v5, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5958
    .local v3, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5961
    .end local v3    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_2

    .line 5962
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 5963
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cursor Open:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5964
    const-string/jumbo v8, " Total Opened Cursor Count:"

    .line 5963
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5964
    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    .line 5963
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5964
    const-string/jumbo v8, "."

    .line 5963
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5962
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5968
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0x46

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0x50

    if-ne v5, v7, :cond_4

    .line 5969
    :cond_3
    const-string/jumbo v5, "ProviderLeakDetecter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Total Opened Cursor Count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5970
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5971
    const/4 v4, 0x1

    :cond_4
    monitor-exit v6

    .line 5976
    if-eqz v4, :cond_6

    .line 5978
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5979
    const/4 v1, 0x0

    .line 5981
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_1
    const-string/jumbo v5, "ro.have_aee_feature"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5982
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .local v2, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 5984
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_5
    if-eqz v1, :cond_6

    .line 5987
    const-string/jumbo v5, "CursorLeakDetecter"

    .line 5988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Total Opened Cursor Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5989
    const-string/jumbo v7, "/data/cursorleak/traces.txt"

    .line 5986
    const/4 v8, 0x0

    .line 5985
    invoke-virtual {v1, v8, v5, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5998
    :cond_6
    :goto_1
    return v9

    .line 5947
    :cond_7
    :try_start_2
    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 5943
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 5992
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public addPfd(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "stackTrace"    # Ljava/lang/Throwable;
    .param p3, "hashCode"    # I

    .prologue
    const/4 v9, 0x1

    .line 6037
    const/4 v4, 0x0

    .line 6039
    .local v4, "reportException":Z
    iget-object v6, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    monitor-enter v6

    .line 6040
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    .line 6041
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6046
    :goto_0
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_0

    .line 6047
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 6048
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Possible PFD Leak:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",QueryCounter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6047
    invoke-static {v5, v7, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6052
    :cond_0
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 6053
    new-instance v3, Landroid/app/ActivityThread$QueryHistoryRecord;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->this$0:Landroid/app/ActivityThread;

    invoke-direct {v3, v5, p1, p2}, Landroid/app/ActivityThread$QueryHistoryRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6054
    .local v3, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6057
    .end local v3    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    iget-boolean v5, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v5, :cond_2

    .line 6058
    const-string/jumbo v5, "ProviderLeakDetecter"

    .line 6059
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PFD Open:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6060
    const-string/jumbo v8, " Total Opened PFD Count:"

    .line 6059
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6060
    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    .line 6059
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6060
    const-string/jumbo v8, "."

    .line 6059
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6058
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    :cond_2
    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_3

    .line 6065
    const-string/jumbo v5, "ProviderLeakDetecter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Total Opened PFD Count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    invoke-virtual {p0}, Landroid/app/ActivityThread$QueryHistory;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6067
    const/4 v4, 0x1

    :cond_3
    monitor-exit v6

    .line 6072
    if-eqz v4, :cond_5

    .line 6074
    invoke-direct {p0}, Landroid/app/ActivityThread$QueryHistory;->checkAeeWarningList()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6075
    const/4 v1, 0x0

    .line 6077
    .local v1, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_1
    const-string/jumbo v5, "ro.have_aee_feature"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6078
    new-instance v2, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v2}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .local v2, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v1, v2

    .line 6080
    .end local v1    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_4
    if-eqz v1, :cond_5

    .line 6083
    const-string/jumbo v5, "PFDLeakDetecter"

    .line 6084
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Total Opened PFD Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6085
    const-string/jumbo v7, "/data/cursorleak/traces.txt"

    .line 6082
    const/4 v8, 0x0

    .line 6081
    invoke-virtual {v1, v8, v5, v6, v7}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6093
    :cond_5
    :goto_1
    return v9

    .line 6043
    :cond_6
    :try_start_2
    iget-object v7, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 6039
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 6087
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 6129
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total Opened Cursor Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6130
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6131
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6133
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6134
    .local v2, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6138
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_0
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total Opened PFD Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6139
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6140
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6142
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6143
    .restart local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    const-string/jumbo v3, "ProviderLeakDetecter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PFDQueryHistory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6127
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 6
    .param p1, "cursorHashCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 6007
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    monitor-enter v2

    .line 6008
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6009
    .local v0, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6010
    :cond_0
    const-string/jumbo v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad request for cursor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 6011
    return-void

    .line 6012
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 6013
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6014
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6020
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v1, :cond_3

    .line 6021
    const-string/jumbo v1, "ProviderLeakDetecter"

    .line 6022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cursor Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6023
    const-string/jumbo v4, " Total Opened Cursor Count:"

    .line 6022
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6023
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 6022
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6023
    const-string/jumbo v4, "."

    .line 6022
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6021
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 6006
    return-void

    .line 6015
    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 6016
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6017
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6007
    .end local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removePfd(I)V
    .locals 6
    .param p1, "hashCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 6102
    iget-object v2, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    monitor-enter v2

    .line 6103
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$QueryHistoryRecord;

    .line 6104
    .local v0, "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6105
    :cond_0
    const-string/jumbo v1, "ProviderLeakDetecter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad request for pfd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 6106
    return-void

    .line 6107
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 6108
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6109
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6115
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/app/ActivityThread$QueryHistory;->mProviderLeakDetect:Z

    if-eqz v1, :cond_3

    .line 6116
    const-string/jumbo v1, "ProviderLeakDetecter"

    .line 6117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PFD Close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6118
    const-string/jumbo v4, " Total Opened PFD Count:"

    .line 6117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6118
    iget-object v4, p0, Landroid/app/ActivityThread$QueryHistory;->mCursorMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 6117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6118
    const-string/jumbo v4, "."

    .line 6117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6116
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    .line 6101
    return-void

    .line 6110
    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v3, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 6111
    iget-object v3, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v4, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mUriPfdMap:Ljava/util/Map;

    iget-object v5, v0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6112
    iget-object v1, p0, Landroid/app/ActivityThread$QueryHistory;->mPfdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6102
    .end local v0    # "qhr":Landroid/app/ActivityThread$QueryHistoryRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
