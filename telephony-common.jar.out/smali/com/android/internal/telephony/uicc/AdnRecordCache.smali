.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field private static ADN_FILE_SIZE:I = 0x0

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "AdnRecordCache"

.field public static MAX_PHB_NAME_LENGTH:I

.field public static MAX_PHB_NUMBER_ANR_COUNT:I

.field public static MAX_PHB_NUMBER_ANR_LENGTH:I

.field public static MAX_PHB_NUMBER_LENGTH:I


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private final mLock:Ljava/lang/Object;

.field private mLocked:Z

.field mSuccess:Z

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x3c

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    .line 80
    const/16 v0, 0x28

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    .line 81
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    .line 82
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    .line 88
    const/16 v0, 0xfa

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->ADN_FILE_SIZE:I

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 90
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 100
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 97
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clearUserWriters,mLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 134
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    if-eqz v2, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 138
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 141
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string/jumbo v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 144
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 132
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 124
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 126
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 122
    return-void
.end method

.method private dumpAdnLikeFile()V
    .locals 8

    .prologue
    .line 800
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 801
    .local v5, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpAdnLikeFile size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 804
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 806
    .local v2, "key":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 807
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpAdnLikeFile index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "records size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 808
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 809
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 810
    .local v3, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAdnLikeFiles["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 808
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 803
    .end local v3    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    .end local v1    # "j":I
    .end local v2    # "key":I
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_0

    .line 638
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 642
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 644
    .local v2, "waiter":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 645
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 646
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 641
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v2    # "waiter":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x2

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 173
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;
    .param p3, "ril_errno"    # I

    .prologue
    .line 183
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 185
    .local v0, "e":Lcom/android/internal/telephony/CommandException;
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 188
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public addContactToGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->addContactToGroup(II)Z

    move-result v0

    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const/16 v0, 0x6f4a

    .line 162
    sparse-switch p1, :sswitch_data_0

    .line 169
    const/4 v0, -0x1

    return v0

    .line 163
    :sswitch_0
    const/16 v0, 0x6fc8

    return v0

    .line 164
    :sswitch_1
    return v0

    .line 165
    :sswitch_2
    const/16 v0, 0x6f4c

    return v0

    .line 166
    :sswitch_3
    const/16 v0, 0x6f4b

    return v0

    .line 167
    :sswitch_4
    return v0

    .line 168
    :sswitch_5
    const/4 v0, 0x0

    return v0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_4
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    return v0
.end method

.method public getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookMemStorageExt()[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSneRecordLen()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSneRecordLen()I

    move-result v0

    return v0
.end method

.method public getUsimAasById(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasById(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/AlphaTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimAasMaxCount()I
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimAasMaxNameLen()I
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAasMaxNameLen()I

    move-result v0

    return v0
.end method

.method public getUsimGroupById(I)Ljava/lang/String;
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/uicc/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGroups()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGrpMaxCount()I
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxCount()I

    move-result v0

    return v0
.end method

.method public getUsimGrpMaxNameLen()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimGrpMaxNameLen()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x4f3b

    const/4 v8, 0x0

    .line 658
    const/4 v3, 0x0

    .line 660
    .local v3, "flag":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 663
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 664
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 667
    .local v2, "efid":I
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 668
    .local v6, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 670
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_1

    .line 671
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    :goto_1
    invoke-direct {p0, v6, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 678
    const-string/jumbo v7, "AdnRecordCache"

    const-string/jumbo v8, "load all adns and set flag into ture"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v3, 0x1

    .line 680
    goto :goto_0

    .line 673
    :cond_1
    const-string/jumbo v7, "AdnRecordCache"

    const-string/jumbo v8, "EVENT_LOAD_ALL_ADN_LIKE_DONE exception"

    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 682
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v6    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    const-string/jumbo v7, "EVENT_UPDATE_ADN_DONE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 683
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    if-eqz v7, :cond_0

    .line 684
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 685
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 686
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 687
    .restart local v2    # "efid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 688
    .local v4, "index":I
    iget-object v0, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 690
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_6

    .line 691
    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordIndex(I)V

    .line 693
    iget v7, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    if-gtz v7, :cond_2

    .line 694
    iput v2, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 698
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAdnLikeFiles changed index:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ",adn:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "  efid:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 701
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 702
    if-ne v2, v11, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v7, v7, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v7, :cond_3

    .line 703
    add-int/lit16 v4, v4, -0xfa

    .line 705
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v7, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " index:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "   efid:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 709
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-eqz v7, :cond_6

    const/16 v7, 0x6f3b

    if-eq v2, v7, :cond_6

    .line 710
    if-ne v2, v11, :cond_5

    .line 714
    add-int/lit16 v4, v4, 0xfa

    .line 715
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " index2:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 718
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 719
    add-int/lit8 v10, v4, -0x1

    .line 718
    invoke-virtual {v7, v10, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimPhonebookRecordsList(ILcom/android/internal/telephony/uicc/AdnRecord;)V

    .line 723
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 724
    .local v5, "response":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AdnRecordCacheEx: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 728
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    .line 729
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v10, 0x0

    invoke-static {v5, v10, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 730
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 732
    :cond_7
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 733
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 734
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 736
    const-string/jumbo v7, "AdnRecordCache"

    const-string/jumbo v8, "update  adn and set flag into ture"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    const/4 v3, 0x1

    monitor-exit v9

    goto/16 :goto_0

    :cond_8
    move v7, v8

    .line 732
    goto :goto_2

    .line 684
    .end local v0    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v4    # "index":I
    .end local v5    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v7

    monitor-exit v9

    throw v7

    .line 660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasExistGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasExistGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSne()Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasSne()Z

    move-result v0

    return v0
.end method

.method public insertUsimAas(Ljava/lang/String;)I
    .locals 1
    .param p1, "aasName"    # Ljava/lang/String;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimAas(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .locals 1
    .param p1, "grpName"    # Ljava/lang/String;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->insertUsimGroup(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isAdnAccessible()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAdnAccessible()Z

    move-result v0

    return v0
.end method

.method public isUsimPhbEfAndNeedReset(I)Z
    .locals 1
    .param p1, "fileId"    # I

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isUsimPhbEfAndNeedReset(I)Z

    move-result v0

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 748
    const-string/jumbo v0, "AdnRecordCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AdnRecordCache] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void
.end method

.method public moveContactFromGroupsToGroups(I[I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "fromGrpIdList"    # [I
    .param p3, "toGrpIdList"    # [I

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v0

    return v0
.end method

.method public removeContactFromGroup(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIndex"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactFromGroup(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimAasById(II)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimAasById(II)Z

    move-result v0

    return v0
.end method

.method public removeUsimGroupById(I)Z
    .locals 1
    .param p1, "nGasId"    # I

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeUsimGroupById(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike efid = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike extensionEf = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 580
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 585
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLoadAllAdnLike result = null ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 588
    if-eqz v0, :cond_3

    .line 589
    if-eqz p3, :cond_0

    .line 590
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 591
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 594
    :cond_0
    return-void

    .line 583
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    :cond_2
    move v2, v4

    .line 585
    goto :goto_1

    .line 599
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 601
    .local v1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_4

    .line 605
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    return-void

    .line 611
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .restart local v1    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 616
    if-gez p2, :cond_6

    .line 619
    if-eqz p3, :cond_5

    .line 620
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 621
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 620
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 622
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 625
    :cond_5
    return-void

    .line 628
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 629
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 628
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 575
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "reset"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 114
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->clearAdnRecordSize()V

    .line 109
    :cond_0
    return-void
.end method

.method public updateAdnAas(II)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "aasIndex"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnAas(II)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 21
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 205
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 206
    .local v7, "extensionEF":I
    const/4 v15, 0x0

    .line 207
    .local v15, "i":I
    const/4 v11, 0x0

    .line 209
    .local v11, "anr":Ljava/lang/String;
    if-gez v7, :cond_0

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 211
    return-void

    .line 214
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v4, v5, :cond_1

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the input length of mAlphaTag is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    const/16 v5, 0x3ea

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    .line 220
    return-void

    .line 223
    :cond_1
    const/4 v15, 0x0

    .end local v11    # "anr":Ljava/lang/String;
    :goto_0
    :try_start_2
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    if-ge v15, v4, :cond_3

    .line 224
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, "anr":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    if-le v4, v5, :cond_2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the input length of additional number is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    const/16 v5, 0x3f2

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 231
    return-void

    .line 223
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 235
    .end local v11    # "anr":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    .line 236
    .local v16, "num_length":I
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 237
    add-int/lit8 v16, v16, -0x1

    .line 240
    :cond_4
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v16

    if-le v0, v4, :cond_5

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the input length of phoneNumber is too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    const/16 v5, 0x3e9

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 247
    return-void

    .line 254
    :cond_5
    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    .line 255
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v17

    .line 257
    .local v17, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v17, :cond_6

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adn list not exist for EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    const/16 v5, 0x3f3

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 262
    return-void

    .line 265
    :cond_6
    add-int/lit8 v4, p3, -0x1

    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 266
    .local v14, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move/from16 p1, v0

    .line 267
    iget v7, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 269
    move/from16 v0, p1

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 273
    .end local v14    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v17    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_7
    const/4 v15, 0x0

    :goto_1
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    if-ge v15, v4, :cond_9

    .line 274
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v11

    .line 275
    .restart local v11    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v4, v11, v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "drop the additional number for the update fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    const/16 v5, 0x3f4

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    .line 280
    return-void

    .line 273
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 285
    .end local v11    # "anr":Ljava/lang/String;
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Message;

    .line 286
    .local v18, "pendingResponse":Landroid/os/Message;
    if-eqz v18, :cond_a

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Have pending update for EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    const/16 v5, 0x3ef

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 289
    return-void

    .line 292
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 294
    :cond_b
    :goto_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeContactGroup(I)Z

    .line 299
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 300
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 301
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 303
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 305
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object/from16 v5, p2

    move/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 303
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 309
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v20

    .line 314
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v4, :cond_e

    monitor-exit p0

    .line 315
    return-void

    .line 293
    :cond_d
    const/16 v4, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v4, :cond_b

    const/16 v4, 0x4f3d

    move/from16 v0, p1

    if-ne v0, v4, :cond_c

    goto :goto_2

    .line 310
    :catch_0
    move-exception v13

    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_b
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    .line 311
    return-void

    .line 299
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    :try_start_c
    monitor-exit v20

    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v7    # "extensionEF":I
    .end local v15    # "i":I
    .end local v16    # "num_length":I
    .end local v18    # "pendingResponse":Landroid/os/Message;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 318
    .restart local v7    # "extensionEF":I
    .restart local v15    # "i":I
    .restart local v16    # "num_length":I
    .restart local v18    # "pendingResponse":Landroid/os/Message;
    :cond_e
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    const/16 v4, 0x4f30

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 320
    :cond_f
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 322
    const/4 v15, 0x0

    :goto_3
    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    if-ge v15, v4, :cond_12

    .line 323
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v11

    .line 324
    .restart local v11    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v4, v11, v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 322
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 318
    .end local v11    # "anr":Ljava/lang/String;
    :cond_10
    const/16 v4, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    const/16 v4, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    const/16 v4, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    const/16 v4, 0x4f3d

    move/from16 v0, p1

    if-eq v0, v4, :cond_f

    .line 348
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_11

    .line 349
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_e
    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 350
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_11
    :goto_4
    monitor-exit p0

    .line 203
    return-void

    .line 326
    :cond_12
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v19

    .line 327
    .local v19, "success":I
    const/4 v4, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_13

    .line 330
    const-string/jumbo v4, "drop the email for the limitation of the SIM card"

    .line 331
    const/16 v5, 0x3ed

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .line 342
    .end local v19    # "success":I
    :catch_1
    move-exception v12

    .line 343
    .local v12, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    monitor-exit p0

    .line 346
    return-void

    .line 332
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v19    # "success":I
    :cond_13
    const/4 v4, -0x2

    move/from16 v0, v19

    if-ne v4, v0, :cond_14

    .line 335
    :try_start_11
    const-string/jumbo v4, "the email string is too long"

    .line 336
    const/16 v5, 0x3ee

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 337
    const-string/jumbo v4, "AdnRecordCache"

    const-string/jumbo v5, "haman, by index email too long"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 339
    :cond_14
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 340
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_4
.end method

.method public declared-synchronized updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 21
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    monitor-enter p0

    .line 371
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pin2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", oldAdn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    const-string/jumbo v4, "], new Adn["

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 372
    const-string/jumbo v4, "]"

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 373
    const/4 v7, -0x1

    .line 375
    .local v7, "index":I
    const/4 v14, 0x0

    .line 376
    .local v14, "i":I
    const/4 v10, 0x0

    .line 377
    .local v10, "anr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 379
    .local v6, "extensionEF":I
    if-gez v6, :cond_0

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/4 v3, -0x1

    monitor-exit p0

    .line 381
    return v3

    .line 384
    :cond_0
    :try_start_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sget v4, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NAME_LENGTH:I

    if-le v3, v4, :cond_1

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of mAlphaTag is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    const/16 v4, 0x3ea

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    const/4 v3, -0x1

    monitor-exit p0

    .line 390
    return v3

    .line 393
    :cond_1
    :try_start_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    .line 394
    .local v16, "num_length":I
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 395
    add-int/lit8 v16, v16, -0x1

    .line 398
    :cond_2
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_LENGTH:I

    move/from16 v0, v16

    if-le v0, v3, :cond_3

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of phoneNumber is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    const/16 v4, 0x3e9

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    const/4 v3, -0x1

    monitor-exit p0

    .line 405
    return v3

    .line 408
    :cond_3
    const/4 v14, 0x0

    .end local v10    # "anr":Ljava/lang/String;
    :goto_0
    :try_start_3
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    if-ge v14, v3, :cond_6

    .line 409
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v10

    .line 410
    .local v10, "anr":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 411
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    .line 412
    const/16 v3, 0x2b

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 413
    add-int/lit8 v16, v16, -0x1

    .line 416
    :cond_4
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_LENGTH:I

    move/from16 v0, v16

    if-le v0, v3, :cond_5

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the input length of additional number is too long: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    const/16 v4, 0x3f2

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    const/4 v3, -0x1

    monitor-exit p0

    .line 422
    return v3

    .line 408
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 428
    .end local v10    # "anr":Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailLength([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 431
    const-string/jumbo v3, "the email string is too long"

    .line 432
    const/16 v4, 0x3ee

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 373
    const/4 v3, -0x1

    monitor-exit p0

    .line 433
    return v3

    .line 438
    :cond_7
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    .line 439
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v17

    .line 444
    .local v17, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    if-nez v17, :cond_9

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    const/16 v4, 0x3f3

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    const/4 v3, -0x1

    monitor-exit p0

    .line 449
    return v3

    .line 441
    .end local v17    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_8
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v17

    .restart local v17    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    .line 455
    :cond_9
    const/4 v11, 0x1

    .line 456
    .local v11, "count":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 457
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 458
    move v7, v11

    .line 463
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 464
    const/4 v3, -0x1

    if-ne v7, v3, :cond_d

    .line 465
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    const/16 v4, 0x3eb

    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    monitor-exit p0

    .line 473
    return v7

    .line 461
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 471
    :cond_c
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .end local v6    # "extensionEF":I
    .end local v7    # "index":I
    .end local v11    # "count":I
    .end local v14    # "i":I
    .end local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v16    # "num_length":I
    .end local v17    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 476
    .restart local v6    # "extensionEF":I
    .restart local v7    # "index":I
    .restart local v11    # "count":I
    .restart local v14    # "i":I
    .restart local v15    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v16    # "num_length":I
    .restart local v17    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_d
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 478
    add-int/lit8 v3, v7, -0x1

    :try_start_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 479
    .local v13, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move/from16 p1, v0

    .line 480
    iget v6, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 481
    iget v7, v13, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 483
    move/from16 v0, p1

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 484
    move-object/from16 v0, p3

    iput v6, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 485
    move-object/from16 v0, p3

    iput v7, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 488
    .end local v13    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Message;

    .line 490
    .local v18, "pendingResponse":Landroid/os/Message;
    if-eqz v18, :cond_f

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    const/16 v4, 0x3ef

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 493
    return v7

    .line 495
    :cond_f
    if-nez p1, :cond_10

    .line 496
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Abnormal efid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    .line 497
    return v7

    .line 499
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v7, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->checkEmailCapacityFree(I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 502
    const-string/jumbo v3, "drop the email for the limitation of the SIM card"

    .line 503
    const/16 v4, 0x3ed

    .line 500
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    .line 504
    return v7

    .line 506
    :cond_11
    const/4 v14, 0x0

    :goto_4
    :try_start_b
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    if-ge v14, v3, :cond_13

    .line 507
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v10

    .line 508
    .restart local v10    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v10, v7, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isAnrCapacityFree(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_12

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "drop the additional number for the write fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 512
    const/16 v4, 0x3f4

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    .line 513
    return v7

    .line 506
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 517
    .end local v10    # "anr":Ljava/lang/String;
    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 520
    const/4 v3, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    .line 521
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocked:Z

    .line 523
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 525
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    .line 523
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 530
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    monitor-exit v20

    .line 535
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    if-nez v3, :cond_14

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch mSuccess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    .line 537
    return v7

    .line 531
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/InterruptedException;
    :try_start_10
    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    .line 532
    return v7

    .line 519
    .end local v12    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    :try_start_11
    monitor-exit v20

    throw v3

    .line 539
    :cond_14
    const/16 v19, 0x0

    .line 540
    .local v19, "success":I
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_15

    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v0, v3, :cond_16

    .line 541
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->sne:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateSneByAdnIndex(Ljava/lang/String;I)V

    .line 543
    const/4 v14, 0x0

    :goto_5
    sget v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->MAX_PHB_NUMBER_ANR_COUNT:I

    if-ge v14, v3, :cond_17

    .line 544
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumber(I)Ljava/lang/String;

    move-result-object v10

    .line 545
    .restart local v10    # "anr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v10, v7, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrByAdnIndex(Ljava/lang/String;II)V

    .line 543
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 540
    .end local v10    # "anr":Ljava/lang/String;
    :cond_16
    const/16 v3, 0x4f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_15

    const/16 v3, 0x4f3b

    move/from16 v0, p1

    if-eq v0, v3, :cond_15

    const/16 v3, 0x4f3c

    move/from16 v0, p1

    if-eq v0, v3, :cond_15

    const/16 v3, 0x4f3d

    move/from16 v0, p1

    if-eq v0, v3, :cond_15

    .line 550
    :goto_6
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_18

    .line 552
    const-string/jumbo v3, "drop the email for the limitation of the SIM card"

    .line 553
    const/16 v4, 0x3ed

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_7
    monitor-exit p0

    .line 565
    return v7

    .line 547
    :cond_17
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailsByAdnIndex([Ljava/lang/String;I)I

    move-result v19

    goto :goto_6

    .line 554
    :cond_18
    const/4 v3, -0x2

    move/from16 v0, v19

    if-ne v3, v0, :cond_19

    .line 557
    const-string/jumbo v3, "the email string is too long"

    .line 558
    const/16 v4, 0x3ee

    .line 555
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;I)V

    .line 559
    const-string/jumbo v3, "AdnRecordCache"

    const-string/jumbo v4, "haman, by search email too long"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 561
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdnBySearch response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->logd(Ljava/lang/String;)V

    .line 562
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 563
    invoke-virtual/range {p5 .. p5}, Landroid/os/Message;->sendToTarget()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7
.end method

.method public updateContactToGroups(I[I)Z
    .locals 1
    .param p1, "adnIndex"    # I
    .param p2, "grpIdList"    # [I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateContactToGroups(I[I)Z

    move-result v0

    return v0
.end method

.method public updateUsimAas(IILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "aasName"    # Ljava/lang/String;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimAas(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .locals 1
    .param p1, "nGasId"    # I
    .param p2, "grpName"    # Ljava/lang/String;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateUsimGroup(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
