.class public Lcom/android/server/pm/AdbCmdDialog;
.super Ljava/lang/Object;
.source "AdbCmdDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AdbCmdDialog$DialogHandler;,
        Lcom/android/server/pm/AdbCmdDialog$Refuse;,
        Lcom/android/server/pm/AdbCmdDialog$Allow;,
        Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;
    }
.end annotation


# static fields
.field static final ACTION_ALAWAY_ASK:I = 0x16

.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED_TIMEOUT:I = 0x32

.field static final ACTION_MAKE_ADBDIALOG:I = 0x8

.field static final ACTION_REFUSE:I = 0x4

.field static final AlwayAskValue:Ljava/lang/String; = "leui_install_dialog_always_ask"

.field static final DISMISS_TIMEOUT:J = 0x1b58L

.field static final isAllowValue:Ljava/lang/String; = "leui_allow_adb_install"


# instance fields
.field private acr:Lcom/android/server/pm/AdbCmdResult;

.field private installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

.field private mChoice:Lcom/letv/leui/widget/LeCheckBox;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

.field private result:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->acr:Lcom/android/server/pm/AdbCmdResult;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdDialog$DialogHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/AdbCmdDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/AdbCmdDialog;Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/AdbCmdDialog;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/pm/AdbCmdDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    .line 51
    new-instance v3, Lcom/android/server/pm/AdbCmdResult;

    invoke-direct {v3}, Lcom/android/server/pm/AdbCmdResult;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->acr:Lcom/android/server/pm/AdbCmdResult;

    .line 53
    new-instance v3, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;-><init>(Lcom/android/server/pm/AdbCmdDialog;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    .line 55
    iget-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "leui_install_dialog_always_ask"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, "alwayAsk":Z
    :goto_0
    if-nez v0, :cond_2

    .line 58
    iget-object v3, p0, Lcom/android/server/pm/AdbCmdDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "leui_allow_adb_install"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    .line 59
    iget-object v1, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendEmptyMessage(I)Z

    .line 48
    :goto_2
    return-void

    .line 55
    .end local v0    # "alwayAsk":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "alwayAsk":Z
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1

    .line 61
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/pm/AdbCmdDialog;->result:Z

    .line 62
    iget-object v1, p0, Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 181
    :cond_0
    return-void
.end method

.method public getAdbCmdResult()Lcom/android/server/pm/AdbCmdResult;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->acr:Lcom/android/server/pm/AdbCmdResult;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog;->installByAdb:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 175
    :cond_0
    return-void
.end method
