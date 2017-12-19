.class public Lcom/letv/storage/OtgGuideDialog;
.super Ljava/lang/Object;
.source "OtgGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;,
        Lcom/letv/storage/OtgGuideDialog$mountStorageListener;,
        Lcom/letv/storage/OtgGuideDialog$cancelListener;,
        Lcom/letv/storage/OtgGuideDialog$1;
    }
.end annotation


# static fields
.field private static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field private static final DISMISS_TIMEOUT:J = 0x1b58L

.field private static final INSERT_OTG:Ljava/lang/String; = "insert_otg"

.field private static final INSERT_STORAGE_ACTION:I = 0x2

.field private static final REMOVE_STORAGE_ACTION:I = 0x4

.field private static final SD_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field private static final START_FILEMANAGER:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StorageDefaultPathDialog"


# instance fields
.field OtgStorage:Z

.field private PATH:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardStateFilter:Landroid/content/IntentFilter;

.field private final mSDStateReceiver:Landroid/content/BroadcastReceiver;

.field private mWorkLooper:Landroid/os/Looper;

.field private otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method static synthetic -get0(Lcom/letv/storage/OtgGuideDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/storage/OtgGuideDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/storage/OtgGuideDialog;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1

    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/storage/OtgGuideDialog;Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 0

    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/storage/OtgGuideDialog;->appear()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/storage/OtgGuideDialog;->disappear()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOtgStorage"    # Z
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 55
    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/storage/OtgGuideDialog;->OtgStorage:Z

    .line 62
    new-instance v1, Lcom/letv/storage/OtgGuideDialog$1;

    invoke-direct {v1, p0}, Lcom/letv/storage/OtgGuideDialog$1;-><init>(Lcom/letv/storage/OtgGuideDialog;)V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    const-string/jumbo v1, "StorageDefaultPathDialog"

    const-string/jumbo v2, "OtgGuideDialog start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog;->mContext:Landroid/content/Context;

    .line 75
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    .line 76
    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDCardStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mSDStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "OtgGuide"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    .line 83
    new-instance v1, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    iget-object v2, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;-><init>(Lcom/letv/storage/OtgGuideDialog;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    .line 86
    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendEmptyMessage(I)Z

    .line 87
    iput-object p3, p0, Lcom/letv/storage/OtgGuideDialog;->PATH:Ljava/lang/String;

    .line 88
    iput-boolean p2, p0, Lcom/letv/storage/OtgGuideDialog;->OtgStorage:Z

    .line 72
    return-void
.end method

.method private appear()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 167
    :cond_0
    return-void
.end method

.method private disappear()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->otgBottomSheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/letv/storage/OtgGuideDialog;->mWorkLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 181
    const-string/jumbo v0, "StorageDefaultPathDialog"

    const-string/jumbo v1, "OtgGuideDialog disappear() --mWorkLooper.quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    return-void
.end method
