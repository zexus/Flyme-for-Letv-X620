.class final Lcom/android/server/am/LetvAppErrorDialog;
.super Lcom/letv/leui/widget/LeBottomSheet;
.source "LetvAppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LetvAppErrorDialog$1;,
        Lcom/android/server/am/LetvAppErrorDialog$2;
    }
.end annotation


# static fields
.field static final CANCEL:I = 0xb

.field private static final CRASH_NAME_HANDLE:Ljava/lang/String; = "name"

.field private static final CRASH_TYPE:Ljava/lang/String; = "0"

.field private static final CRASH_TYPE_HANDLE:Ljava/lang/String; = "type"

.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field private static final FREE_SPACE:I = 0xa

.field private static final OPEN_BUGREPORTER_ACTION:Ljava/lang/String; = "com.letv.bug.reporter"

.field private static final TAG:Ljava/lang/String; = "LetvAppErrorDialog"


# instance fields
.field private isSystemApp:Z

.field private mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private mResultType:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTargetProcess:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/am/LetvAppErrorDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/LetvAppErrorDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/am/LetvAppErrorDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mResultType:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/LetvAppErrorDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/LetvAppErrorDialog;->mResultType:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 81
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mResultType:I

    .line 55
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mTargetProcess:Z

    .line 63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;

    .line 64
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    .line 305
    new-instance v2, Lcom/android/server/am/LetvAppErrorDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/am/LetvAppErrorDialog$1;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 352
    new-instance v2, Lcom/android/server/am/LetvAppErrorDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/am/LetvAppErrorDialog$2;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 83
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/LetvAppErrorDialog;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 86
    .local v3, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/LetvAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 87
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 88
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/LetvAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, "message":Ljava/lang/String;
    const/4 v4, -0x1

    .line 94
    .local v4, "id":I
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .line 97
    .local v5, "btnStrName":[Ljava/lang/String;
    const-class v2, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 96
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 98
    .local v11, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v11}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryCriticalLow()Z

    move-result v10

    .line 100
    .local v10, "criticalLow":Z
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 102
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 101
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .local v12, "name":Ljava/lang/CharSequence;
    if-eqz v12, :cond_5

    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mTargetProcess:Z

    .line 104
    if-eqz v10, :cond_3

    .line 105
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v2, v13

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v7, v2, v13

    .line 107
    const v7, 0x8050039

    .line 105
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "message":Ljava/lang/String;
    :goto_0
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_a

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    .line 163
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/LetvAppErrorDialog;->setCancelable(Z)V

    .line 165
    const v2, 0x1040363

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v5, v7

    .line 167
    const/4 v4, 0x0

    .line 169
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 170
    const v2, 0x1040364

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 172
    const/4 v4, 0x1

    .line 176
    :cond_0
    if-eqz v10, :cond_1

    .line 177
    const v2, 0x8050047

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    .line 179
    const/16 v4, 0xa

    .line 184
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v7, 0x7d3

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v7, 0x20000

    .line 186
    const/high16 v13, 0x20000

    .line 185
    invoke-virtual {v2, v7, v13}, Landroid/view/Window;->setFlags(II)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 188
    .local v9, "attrsFather":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v2, "Error Dialog"

    invoke-virtual {v9, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 192
    const v2, 0x104035b

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/LetvAppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 194
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Application Error: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 198
    move-object/from16 v0, p4

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v2, :cond_2

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/LetvAppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v7, 0x7da

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 202
    :cond_2
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mTargetProcess:Z

    if-eqz v2, :cond_b

    .line 203
    const-string/jumbo v2, "LetvAppErrorDialog"

    const-string/jumbo v7, "do not show the error dialog!"

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v7, p4

    .line 211
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/LetvAppErrorDialog;->buildErrorSheet(Landroid/content/res/Resources;I[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/LetvAppErrorDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    return-void

    .line 112
    .end local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "attrsFather":Landroid/view/WindowManager$LayoutParams;
    .local v6, "message":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_4

    .line 113
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 115
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v2, v13

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v7, v2, v13

    .line 114
    const v7, 0x10406e2

    .line 113
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 117
    .local v6, "message":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 119
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v2, v13

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v7, v2, v13

    .line 118
    const v7, 0x104035c

    .line 117
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 124
    .end local v12    # "name":Ljava/lang/CharSequence;
    .local v6, "message":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 126
    .restart local v12    # "name":Ljava/lang/CharSequence;
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "com.mediatek.bluetooth"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_6

    .line 127
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "android.process.acore"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_7

    .line 128
    :cond_6
    const-string/jumbo v2, "LetvAppErrorDialog"

    const-string/jumbo v7, "got target error process"

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mTargetProcess:Z

    .line 134
    :goto_3
    if-eqz v10, :cond_8

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 137
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v2, v13

    .line 136
    const v7, 0x805003a

    .line 135
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 131
    .local v6, "message":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mTargetProcess:Z

    goto :goto_3

    .line 140
    :cond_8
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_9

    .line 141
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v2, v13

    .line 142
    const v7, 0x10406e3

    .line 141
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 145
    .local v6, "message":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 147
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v2, v13

    .line 146
    const v7, 0x104035d

    .line 145
    invoke-virtual {v3, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z

    goto/16 :goto_1

    .line 207
    .restart local v8    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "attrsFather":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/LetvAppErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 208
    const-wide/32 v14, 0x493e0

    .line 207
    invoke-virtual {v2, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method private buildErrorSheet(Landroid/content/res/Resources;I[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 17
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "btnStrName"    # [Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "ok":Landroid/view/View$OnClickListener;
    const/4 v4, 0x0

    .line 221
    .local v4, "cancel":Landroid/view/View$OnClickListener;
    const/16 v16, 0x0

    .line 223
    .local v16, "other":Landroid/view/View$OnClickListener;
    sparse-switch p2, :sswitch_data_0

    .line 300
    const-string/jumbo v1, "LetvAppErrorDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, v16

    .line 218
    .end local v3    # "ok":Landroid/view/View$OnClickListener;
    .end local v4    # "cancel":Landroid/view/View$OnClickListener;
    .end local v16    # "other":Landroid/view/View$OnClickListener;
    .local v8, "other":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 225
    .end local v8    # "other":Landroid/view/View$OnClickListener;
    .restart local v3    # "ok":Landroid/view/View$OnClickListener;
    .restart local v4    # "cancel":Landroid/view/View$OnClickListener;
    .restart local v16    # "other":Landroid/view/View$OnClickListener;
    :sswitch_0
    const v1, 0x10406e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p3, v2

    .line 226
    new-instance v3, Lcom/android/server/am/LetvAppErrorDialog$3;

    .end local v3    # "ok":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/LetvAppErrorDialog$3;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .line 233
    .local v3, "ok":Landroid/view/View$OnClickListener;
    new-instance v4, Lcom/android/server/am/LetvAppErrorDialog$4;

    .end local v4    # "cancel":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/LetvAppErrorDialog$4;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .line 241
    .local v4, "cancel":Landroid/view/View$OnClickListener;
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 242
    const/4 v7, 0x0

    .line 244
    const/4 v9, 0x0

    .line 245
    const v10, -0xdc6a12

    .line 246
    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    .line 240
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/LetvAppErrorDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    move-object/from16 v8, v16

    .line 247
    .restart local v8    # "other":Landroid/view/View$OnClickListener;
    goto :goto_0

    .line 249
    .end local v8    # "other":Landroid/view/View$OnClickListener;
    .local v3, "ok":Landroid/view/View$OnClickListener;
    .local v4, "cancel":Landroid/view/View$OnClickListener;
    :sswitch_1
    new-instance v3, Lcom/android/server/am/LetvAppErrorDialog$5;

    .end local v3    # "ok":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/LetvAppErrorDialog$5;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .line 257
    .local v3, "ok":Landroid/view/View$OnClickListener;
    new-instance v8, Lcom/android/server/am/LetvAppErrorDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/am/LetvAppErrorDialog$6;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .line 267
    .restart local v8    # "other":Landroid/view/View$OnClickListener;
    const/4 v6, 0x5

    const/4 v9, 0x0

    .line 268
    const/4 v11, 0x0

    .line 270
    const/4 v13, 0x0

    .line 271
    const v14, -0xdc6a12

    .line 272
    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v7, v3

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    .line 266
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/LetvAppErrorDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 275
    .end local v8    # "other":Landroid/view/View$OnClickListener;
    .local v3, "ok":Landroid/view/View$OnClickListener;
    :sswitch_2
    new-instance v3, Lcom/android/server/am/LetvAppErrorDialog$7;

    .end local v3    # "ok":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/LetvAppErrorDialog$7;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .line 283
    .local v3, "ok":Landroid/view/View$OnClickListener;
    new-instance v8, Lcom/android/server/am/LetvAppErrorDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/am/LetvAppErrorDialog$8;-><init>(Lcom/android/server/am/LetvAppErrorDialog;)V

    .line 292
    .restart local v8    # "other":Landroid/view/View$OnClickListener;
    const/4 v6, 0x5

    const/4 v9, 0x0

    .line 293
    const/4 v11, 0x0

    .line 295
    const/4 v13, 0x0

    .line 296
    const v14, -0xdc6a12

    .line 297
    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object v7, v3

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    .line 291
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/LetvAppErrorDialog;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
