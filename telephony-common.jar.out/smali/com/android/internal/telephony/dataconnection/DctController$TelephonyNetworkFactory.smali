.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyNetworkFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LINES_PER_REQUEST:I = 0x32

.field private static final MAX_REQUESTS_LOGGED:I = 0x14


# instance fields
.field private mGroupId:I

.field private final mPendingReq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRequestLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 1185
    invoke-direct {p0, p2, p3, p4, p6}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 1164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    .line 1181
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    .line 1186
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1187
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 1188
    .local v0, "phoneId":I
    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap2(Lcom/android/internal/telephony/dataconnection/DctController;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mGroupId:I

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mGroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1184
    return-void
.end method

.method private addLogger(Landroid/net/NetworkRequest;)Landroid/util/LocalLog;
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1205
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 1206
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    .line 1207
    .local v2, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    iget v6, p1, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v6, :cond_0

    .line 1208
    iget-object v4, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 1211
    .end local v2    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/LocalLog;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Landroid/util/LocalLog;-><init>(I)V

    .line 1212
    .local v0, "l":Landroid/util/LocalLog;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;-><init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    .line 1213
    .local v1, "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    const/16 v6, 0x14

    if-lt v4, v6, :cond_2

    .line 1214
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1205
    .end local v0    # "l":Landroid/util/LocalLog;
    .end local v1    # "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1216
    .restart local v0    # "l":Landroid/util/LocalLog;
    .restart local v1    # "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 1217
    return-object v0
.end method


# virtual methods
.method public addPendingRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addPendingRequest, request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1280
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1323
    invoke-super {p0, p1, p2, p3}, Landroid/net/NetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1324
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "  "

    invoke-direct {v1, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1325
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1326
    const-string/jumbo v5, "Pending Requests:"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1329
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    .line 1330
    .local v4, "request":Landroid/net/NetworkRequest;
    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1334
    const-string/jumbo v5, "Request History:"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1336
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    monitor-enter v6

    .line 1337
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    .line 1338
    .local v2, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1339
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1340
    iget-object v5, v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    invoke-virtual {v5, p1, v1, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1336
    .end local v2    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    .line 1344
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1345
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1322
    return-void
.end method

.method public evalPendingRequest()V
    .locals 8

    .prologue
    .line 1286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "evalPendingRequest, pending request size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1287
    const/4 v1, 0x0

    .line 1288
    .local v1, "key":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1290
    .local v2, "pendingReqSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v3, "processList":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1295
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "evalPendingRequest:mPendingReq= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1297
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    .line 1298
    .local v4, "request":Landroid/net/NetworkRequest;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 1303
    const-string/jumbo v6, "evalPendingRequest:mPendingReq clear"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1306
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    .line 1307
    .restart local v4    # "request":Landroid/net/NetworkRequest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "evalPendingRequest:ready to do needNetworkFor and request = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1308
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    goto :goto_1

    .line 1285
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1277
    const-string/jumbo v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TNF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 10
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cellular needs Network for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->addLogger(Landroid/net/NetworkRequest;)Landroid/util/LocalLog;

    move-result-object v3

    .line 1231
    .local v3, "l":Landroid/util/LocalLog;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap0(Lcom/android/internal/telephony/dataconnection/DctController;I)Z

    move-result v8

    .line 1232
    .local v8, "simInserted":Z
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap3(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap1(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1235
    const-string/jumbo v0, "Sub Info not ready but EIMS request, not put into pending request!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1247
    .local v7, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap6(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v6

    .line 1248
    .local v6, "apn":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1249
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getApnPriority(Ljava/lang/String;)I

    move-result v2

    .line 1250
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mGroupId:I

    move-object v1, p1

    .line 1249
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap5(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;ILandroid/util/LocalLog;II)I

    .line 1222
    :goto_0
    return-void

    .line 1237
    .end local v6    # "apn":Ljava/lang/String;
    .end local v7    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request not useable, pending request, simInserted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1239
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v3, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1242
    return-void

    .line 1252
    .end local v9    # "str":Ljava/lang/String;
    .restart local v6    # "apn":Ljava/lang/String;
    .restart local v7    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_3
    const-string/jumbo v9, "Unsupported APN"

    .line 1253
    .restart local v9    # "str":Ljava/lang/String;
    const-string/jumbo v0, "Unsupported APN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1254
    const-string/jumbo v0, "Unsupported APN"

    invoke-virtual {v3, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1260
    const-string/jumbo v1, "Cellular releasing Network for "

    .line 1261
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1262
    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->requestLog(ILjava/lang/String;)Landroid/util/LocalLog;

    move-result-object v0

    .line 1264
    .local v0, "l":Landroid/util/LocalLog;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1265
    const-string/jumbo v1, "Sub Info has not been ready, remove request."

    .line 1266
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1267
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1268
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v3, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1269
    return-void

    .line 1272
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap4(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    .line 1259
    return-void
.end method

.method public requestLog(ILjava/lang/String;)Landroid/util/LocalLog;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "l"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 1194
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    .line 1195
    .local v0, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    if-ne v2, p1, :cond_0

    .line 1196
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    invoke-virtual {v2, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1197
    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .end local v0    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :cond_1
    monitor-exit v3

    .line 1201
    const/4 v2, 0x0

    return-object v2

    .line 1193
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateGroupId()V
    .locals 3

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 1317
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap2(Lcom/android/internal/telephony/dataconnection/DctController;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mGroupId:I

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGroupId: mGroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1315
    return-void
.end method
