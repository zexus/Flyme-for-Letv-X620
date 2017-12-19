.class public Lcom/android/server/power/ui/ShutdownViewManager;
.super Ljava/lang/Object;
.source "ShutdownViewManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsShow:Z

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "ShutdownThread"

    sput-object v0, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    .line 32
    iput-object p1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 31
    return-void
.end method

.method private fetchShutdownTipResId([I)I
    .locals 7
    .param p1, "text"    # [I

    .prologue
    .line 127
    const-string/jumbo v0, "persist.sys.shutdown.s_index"

    .line 128
    .local v0, "STORE_KEY":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 129
    .local v3, "power":Landroid/os/PowerManager;
    const/4 v2, 0x0

    .line 130
    .local v2, "index":I
    if-nez v3, :cond_0

    .line 131
    aget v4, p1, v2

    return v4

    .line 134
    :cond_0
    :try_start_0
    const-string/jumbo v4, "persist.sys.shutdown.s_index"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 139
    :goto_0
    const-string/jumbo v4, "persist.sys.shutdown.s_index"

    add-int/lit8 v5, v2, 0x1

    array-length v6, p1

    rem-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    sget-object v4, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fetchShutdownTipResId(), index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    array-length v4, p1

    rem-int v4, v2, v4

    aget v4, p1, v4

    return v4

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    .line 97
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    return v0
.end method

.method public onReboot()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v1, 0x104060c

    invoke-virtual {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    .line 109
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->show()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    .line 105
    return-void
.end method

.method public onShutDown()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v1, 0x1040609

    invoke-virtual {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    .line 117
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->show()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    .line 113
    return-void
.end method

.method public show(Z)V
    .locals 8
    .param p1, "reboot"    # Z

    .prologue
    const/4 v1, -0x1

    .line 40
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/power/ui/ShutdownWelcomeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_2

    .line 46
    const v4, 0xc00008a

    .line 52
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 54
    .local v6, "stretch":I
    const/16 v7, 0x7da

    .line 56
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 57
    const/16 v3, 0x7da

    const/4 v5, -0x3

    move v2, v1

    .line 56
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 58
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "Byebye"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 61
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 63
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 65
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 71
    :cond_1
    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 74
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    .line 77
    const v2, 0x3600002

    .line 76
    invoke-virtual {v1, v2}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setSystemUiVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->onReboot()V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->requestFocus()Z

    .line 39
    return-void

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->onShutDown()V

    goto :goto_0
.end method
