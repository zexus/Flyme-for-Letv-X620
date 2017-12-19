.class public Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.super Ljava/lang/Object;
.source "AntiInadvertentlyHelper.java"

# interfaces
.implements Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;,
        Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;,
        Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;
    }
.end annotation


# static fields
.field private static ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean; = null

.field private static final MSG_SCREEN_TURN_OFF:I = 0x2

.field private static final MSG_SCREEN_TURN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# instance fields
.field private isScreenOn:Z

.field private local:Ljava/util/Locale;

.field private mContext:Landroid/content/Context;

.field private mCoverView:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mLocateChangeRunnable:Ljava/lang/Runnable;

.field private mPM:Landroid/os/PowerManager;

.field mProximitySensorEnabled:Z

.field private mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchAble:Z

.field private mWeatherSettingObserver:Landroid/database/ContentObserver;

.field private mWindowManager:Landroid/view/WindowManager;

.field private resultMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLocateChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    return v0
.end method

.method static synthetic -set0(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    .line 116
    new-instance v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$2;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLocateChangeRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mPM:Landroid/os/PowerManager;

    .line 70
    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->initSettings()V

    .line 71
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    .line 72
    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    .line 73
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->setStateCallback(Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    .line 75
    invoke-direct {p0, p1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->loadViews(Landroid/content/Context;)V

    .line 77
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->onScreenTurnOff()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .line 64
    :cond_0
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mInstance:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    return-object v0
.end method

.method private initSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "leui_anti_inadvertently"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    .line 85
    new-instance v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$4;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWeatherSettingObserver:Landroid/database/ContentObserver;

    .line 92
    const-string/jumbo v1, "leui_anti_inadvertently"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWeatherSettingObserver:Landroid/database/ContentObserver;

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method private loadViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 98
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    const v2, 0x1090078

    invoke-static {p1, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "cover":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;

    invoke-direct {v2, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-void
.end method

.method private resetTouchPanel()V
    .locals 3

    .prologue
    .line 232
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetTouchPanel,result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mPM:Landroid/os/PowerManager;

    invoke-virtual {p0, v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouch(Landroid/os/PowerManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private updateWindowVisiblity(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 155
    sget-object v2, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWindowVisiblity(),show:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mWindowManager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mCoverView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 158
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 160
    const/16 v3, 0x7da

    .line 161
    const v4, 0x820320

    .line 167
    const/4 v5, -0x3

    move v2, v1

    .line 158
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 168
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 169
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 170
    const-string/jumbo v1, "AntiInadvertently"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 172
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 173
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const v2, 0x70000004

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 177
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    if-eqz p1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 181
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 182
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iput-boolean v7, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    .line 187
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 188
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 191
    const-wide/16 v2, 0x1f4

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 192
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 189
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 193
    new-instance v2, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;

    invoke-direct {v2, p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;-><init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    .line 189
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v8, :cond_1

    .line 202
    sget-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public AntiInadevertentlyRelease()V
    .locals 2

    .prologue
    .line 210
    const-string/jumbo v0, "AntiInadevertentlyRelease"

    const v1, 0x8d04

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    .line 212
    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouchPanel()V

    .line 209
    return-void
.end method

.method public SenosrTimeout()V
    .locals 2

    .prologue
    .line 217
    const-string/jumbo v0, "SenosrTimeout"

    const v1, 0x8d04

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V

    .line 219
    invoke-direct {p0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resetTouchPanel()V

    .line 216
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AntiInadvertentlyHelper.dump()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mTouchAble:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mTouchAble:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  local:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mCoverView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " alpha:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " visible:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mCoverView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  ENABLE_ANTI_INADVERTENTLY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/letv/leui/systemui/ProximitySensorHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void

    .line 280
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->local:Ljava/util/Locale;

    .line 226
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->loadViews(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onScreenTurnOff()V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    .line 148
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    :cond_0
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 137
    iget-boolean v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    if-nez v0, :cond_0

    .line 138
    iput-boolean v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isScreenOn:Z

    .line 139
    sget-object v0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    :cond_0
    return-void
.end method

.method public resetTouch(Landroid/os/PowerManager;)Z
    .locals 8
    .param p1, "pm"    # Landroid/os/PowerManager;

    .prologue
    .line 252
    const/4 v5, 0x0

    .line 253
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/os/PowerManager;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 255
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    iget-object v6, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_0

    .line 256
    const-string/jumbo v6, "resetTouch"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 258
    iget-object v6, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->resultMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const/4 v5, 0x1

    .line 270
    :cond_1
    return v5

    .line 267
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 270
    return v5

    .line 265
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 270
    return v5

    .line 263
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 270
    return v5

    .line 261
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 262
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    return v5

    .line 269
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catchall_0
    move-exception v6

    .line 270
    return v5
.end method
