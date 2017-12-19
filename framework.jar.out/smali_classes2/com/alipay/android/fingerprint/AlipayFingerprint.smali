.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/fingerprint/AlipayFingerprint$1;,
        Lcom/alipay/android/fingerprint/AlipayFingerprint$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayFingerprint"

.field private static inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

.field private static mgr:Landroid/hardware/fingerprint/IFingerprintService;


# instance fields
.field final FINGERPRINT_ACQUIRED_TOUCH:I

.field final FINGERPRINT_ACQUIRED_UNTOUCH:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field mUserData:I

.field myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field myids:[I

.field mytimeout:I

.field private opPackageName:Ljava/lang/String;

.field userId:I


# direct methods
.method static synthetic -get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/alipay/android/fingerprint/AlipayFingerprint;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    .line 29
    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 329
    const-string/jumbo v0, "alipayteeclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    .line 30
    const-string/jumbo v2, " "

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    .line 32
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mToken:Landroid/os/IBinder;

    .line 36
    const/16 v2, 0x3ea

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->FINGERPRINT_ACQUIRED_TOUCH:I

    .line 37
    const/16 v2, 0x3eb

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->FINGERPRINT_ACQUIRED_UNTOUCH:I

    .line 38
    new-instance v2, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    .line 150
    iput-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    .line 152
    iput-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    .line 191
    new-instance v2, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 50
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v3, "AlipayFingerprint: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :try_start_0
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 53
    .local v1, "mPm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "mPm":Landroid/content/pm/IPackageManager;
    :goto_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "AlipayFingerprint"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    .line 60
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    .line 48
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v3, "get op package name fail !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 6
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "mContext":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 175
    const/16 v3, 0x3e8

    if-lt p1, v3, :cond_1

    .line 176
    add-int/lit16 v2, p1, -0x3e8

    .line 177
    .local v2, "msgNumber":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 178
    const v4, 0x107004b

    .line 177
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "msgArray":[Ljava/lang/String;
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 180
    const-string/jumbo v3, ""

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    return-object v5

    .line 158
    .end local v1    # "msgArray":[Ljava/lang/String;
    .end local v2    # "msgNumber":I
    :pswitch_0
    return-object v5

    .line 161
    :pswitch_1
    const v3, 0x10401b9

    .line 160
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 164
    :pswitch_2
    const v3, 0x10401ba

    .line 163
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 167
    :pswitch_3
    const v3, 0x10401bb

    .line 166
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 170
    :pswitch_4
    const v3, 0x10401bd

    .line 169
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 173
    :pswitch_5
    const v3, 0x10401bc

    .line 172
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    .restart local v1    # "msgArray":[Ljava/lang/String;
    .restart local v2    # "msgNumber":I
    :cond_0
    aget-object v3, v1, v2

    return-object v3

    .line 187
    .end local v1    # "msgArray":[Ljava/lang/String;
    .end local v2    # "msgNumber":I
    :cond_1
    return-object v5

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private native invokeCmd(Landroid/content/Context;[B)[B
.end method

.method public static declared-synchronized open()Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    const-class v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    monitor-enter v3

    .line 65
    :try_start_0
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v4, " open"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .line 69
    :cond_0
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v2, :cond_1

    .line 70
    const-string/jumbo v2, "fingerprint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    .line 73
    :cond_1
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v2, :cond_2

    .line 74
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v4, " unsurpport fingerprint"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v4, " open "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private recycle()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 4

    .prologue
    .line 99
    const-string/jumbo v1, "AlipayFingerprint"

    const-string/jumbo v2, " cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public getFpIDs()[I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v4, :cond_1

    .line 114
    :try_start_0
    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    iget-object v6, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 120
    .local v1, "fpIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 121
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    aput v4, v1, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "fpIds":[I
    .end local v2    # "i":I
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AlipayFingerprint"

    const-string/jumbo v5, "get finger print list fail !"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v1    # "fpIds":[I
    .restart local v2    # "i":I
    :cond_0
    return-object v1

    .line 126
    .end local v1    # "fpIds":[I
    .end local v2    # "i":I
    :cond_1
    return-object v7
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_1

    .line 135
    :try_start_0
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    iget-object v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 141
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 142
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 136
    .end local v1    # "i":I
    .restart local v2    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "AlipayFingerprint"

    const-string/jumbo v4, "get finger print list fail !"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "i":I
    :cond_1
    return-object v6
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 336
    const-string/jumbo v0, "AlipayFingerprint"

    const-string/jumbo v1, "invokeTACmd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->invokeCmd(Landroid/content/Context;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()I
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "AlipayFingerprint"

    const-string/jumbo v1, " release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 10
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    const/4 v9, 0x0

    .line 294
    iput p2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    .line 295
    iput-object p3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    .line 296
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    .line 297
    iput p4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    .line 298
    const-string/jumbo v0, "AlipayFingerprint"

    const-string/jumbo v1, "startFpIdentify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 300
    :try_start_0
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    iget-object v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 301
    iget-object v7, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    .line 300
    const/4 v6, 0x2

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->STATUS_WAITING_FOR_INPUT:I

    iget v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_1
    :goto_0
    return v9

    .line 307
    :catch_0
    move-exception v8

    .line 308
    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v2, 0x74

    invoke-interface {v0, v2, v9, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.settings.FINGER_PRINT_NEW_LEUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 324
    sget v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    return v1
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 5
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "result":Z
    const-string/jumbo v2, "AlipayFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTA  taPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 349
    :try_start_0
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintService;->updateTA(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 355
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return v1

    .line 350
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v3, "updateTA fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    const/4 v1, 0x0

    goto :goto_0
.end method
