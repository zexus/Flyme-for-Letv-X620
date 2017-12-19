.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$1;
    }
.end annotation


# static fields
.field public static final LEUI_SHOULD_COUNT_FAILED_TIMES:Z = true

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PHONE_CONTROL_TAG:Ljava/lang/String; = "PhoneControl"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private mActivateValue:I

.field private mBindValue:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDescriptor:I

.field private mFileLock:Ljava/lang/Object;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockValue:I

.field private mPasswordTryTimes:I

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private mWipeValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 748
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 749
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    .line 750
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    .line 751
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    .line 752
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    .line 753
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 754
    const-string/jumbo v1, "lockscreen.password_salt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 755
    const-string/jumbo v1, "lockscreen.disabled"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 756
    const-string/jumbo v1, "lockscreen.options"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 757
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 758
    const-string/jumbo v1, "lockscreen.weak_fallback"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 759
    const-string/jumbo v1, "lockscreen.weak_fallback_for"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 760
    const-string/jumbo v1, "lockscreen.voice_weak_fallback_set"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 761
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 762
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 763
    const-string/jumbo v1, "lockscreen.passwordhistory"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 764
    const-string/jumbo v1, "lock_pattern_autolock"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 765
    const-string/jumbo v1, "lock_biometric_weak_flags"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 766
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 767
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 748
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 771
    new-array v0, v5, [Ljava/lang/String;

    .line 772
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 773
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 771
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 777
    new-array v0, v6, [Ljava/lang/String;

    .line 778
    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    .line 779
    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    .line 780
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    .line 777
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 783
    new-array v0, v5, [Ljava/lang/String;

    .line 784
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 785
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 783
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 124
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 831
    iput v1, p0, Lcom/android/server/LockSettingsService;->mBindValue:I

    .line 832
    iput v1, p0, Lcom/android/server/LockSettingsService;->mLockValue:I

    .line 833
    iput v1, p0, Lcom/android/server/LockSettingsService;->mWipeValue:I

    .line 834
    iput v1, p0, Lcom/android/server/LockSettingsService;->mActivateValue:I

    .line 836
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    .line 1002
    iput v1, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    .line 96
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 102
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 120
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->initControlStatus()V

    .line 95
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 278
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 280
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 281
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 282
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 285
    const-string/jumbo v5, " needs permission "

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 285
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 285
    const-string/jumbo v5, " to read "

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 286
    const-string/jumbo v5, " for user "

    .line 284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 291
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 292
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    const-string/jumbo v5, " needs permission "

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 295
    const-string/jumbo v5, " to read "

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 296
    const-string/jumbo v5, " for user "

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private checkVeryfyResponse(ILcom/android/internal/widget/VerifyCredentialResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 1005
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    .line 1006
    .local v1, "responseCode":I
    invoke-virtual {p2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v2

    .line 1007
    .local v2, "timeout":I
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getPasswordTryTimes(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    .line 1008
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1029
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 1030
    iget v3, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/LockSettingsService;->setPasswordTryTimes(II)V

    .line 1031
    return-object p2

    .line 1010
    :cond_1
    if-nez v1, :cond_3

    .line 1012
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1013
    .local v0, "deadLine":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 1015
    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse;

    .end local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p2, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 1017
    :cond_2
    iput v6, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    goto :goto_0

    .line 1019
    .end local v0    # "deadLine":Ljava/lang/Long;
    :cond_3
    iget v3, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    .line 1021
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1022
    .restart local v0    # "deadLine":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    .line 1023
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 1026
    :goto_1
    if-lez v2, :cond_0

    new-instance p2, Lcom/android/internal/widget/VerifyCredentialResponse;

    .end local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct {p2, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local p2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 1025
    :cond_4
    iget v3, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    invoke-static {v3, v2}, Lcom/android/server/LockSettingsService;->computeRetryTimeout(II)I

    move-result v2

    goto :goto_1
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static computeRetryTimeout(II)I
    .locals 3
    .param p0, "failureCount"    # I
    .param p1, "currentTimeout"    # I

    .prologue
    const/16 v2, 0x7530

    const/4 v1, 0x0

    .line 1052
    if-lez p1, :cond_0

    .line 1053
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 1055
    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_2

    .line 1056
    :cond_1
    return v2

    .line 1058
    :cond_2
    return v1
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 582
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 584
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 583
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 526
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 527
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_1

    iget-boolean v11, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 530
    :goto_0
    if-eqz v11, :cond_2

    .line 531
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 538
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move v7, p2

    move-wide/from16 v8, p3

    .line 536
    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 558
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v11, :cond_0

    .line 560
    move/from16 v0, p5

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 563
    :cond_0
    return-object v2

    .line 527
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .local v11, "shouldReEnrollBaseZero":Z
    goto :goto_0

    .line 533
    .end local v11    # "shouldReEnrollBaseZero":Z
    :cond_2
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 488
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 489
    if-nez p2, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 492
    :goto_0
    if-nez p3, :cond_1

    .line 493
    const/4 v3, 0x0

    .line 495
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 498
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 499
    return-object v5

    .line 491
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    .line 494
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "toEnrollBytes":[B
    goto :goto_1

    .line 502
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 503
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    .line 504
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 509
    :goto_2
    return-object v1

    .line 507
    :cond_3
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 401
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 402
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    .line 417
    const/4 v1, 0x0

    .line 422
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 423
    const-string/jumbo v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    return-object v1

    .line 404
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 405
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    .line 406
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 407
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 410
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 411
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    .line 412
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 413
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 811
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 812
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 813
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 814
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 815
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 818
    :cond_1
    :try_start_2
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 819
    return-object v3

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 789
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 790
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 791
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 793
    :cond_0
    return-object v2
.end method

.method private getPasswordTryTimes(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1036
    :try_start_0
    const-string/jumbo v1, "lockscreen.password_try_count"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v1, v2

    return v1

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t get lockscreen.password_try_count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v1, 0x0

    return v1
.end method

.method private initControlStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 847
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->nativeInit()I

    move-result v1

    iput v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    .line 848
    const-string/jumbo v1, "PhoneControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LockSettingsService] initControlStatus, mDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    if-gez v1, :cond_0

    return-void

    .line 851
    :cond_0
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    invoke-direct {p0, v1, v4}, Lcom/android/server/LockSettingsService;->nativeReadControlStatus(II)I

    move-result v0

    .line 852
    .local v0, "value":I
    if-ltz v0, :cond_1

    .line 853
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    :try_start_0
    iput v0, p0, Lcom/android/server/LockSettingsService;->mBindValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 858
    :cond_1
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->nativeReadControlStatus(II)I

    move-result v0

    .line 859
    if-ltz v0, :cond_2

    .line 860
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 861
    :try_start_1
    iput v0, p0, Lcom/android/server/LockSettingsService;->mLockValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 865
    :cond_2
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->nativeReadControlStatus(II)I

    move-result v0

    .line 866
    if-ltz v0, :cond_3

    .line 867
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 868
    :try_start_2
    iput v0, p0, Lcom/android/server/LockSettingsService;->mWipeValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    .line 872
    :cond_3
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->nativeReadControlStatus(II)I

    move-result v0

    .line 873
    if-ltz v0, :cond_4

    .line 874
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_3
    iput v0, p0, Lcom/android/server/LockSettingsService;->mActivateValue:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v1

    .line 846
    :cond_4
    return-void

    .line 853
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 860
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2

    .line 867
    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2

    .line 874
    :catchall_3
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private migrateOldData()V
    .locals 32

    .prologue
    .line 161
    :try_start_0
    const-string/jumbo v28, "migrated"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_2

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 163
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v29, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    :goto_0
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v26, v29, v28

    .line 164
    .local v26, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-static {v10, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 165
    .local v27, "value":Ljava/lang/String;
    if-eqz v27, :cond_0

    .line 166
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 170
    .end local v26    # "validSetting":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v28, "migrated"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated lock settings to new location"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v10    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v28, "migrated_user_specific"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_9

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "user"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 177
    .local v19, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 178
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 179
    .local v25, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v22, 0x0

    .local v22, "user":I
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 181
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 182
    .local v24, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 183
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v28, "lock_screen_owner_info"

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 184
    .local v16, "ownerInfo":Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 185
    const-string/jumbo v28, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    const-string/jumbo v28, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 192
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 196
    .local v15, "ivalue":I
    if-eqz v15, :cond_5

    const/4 v12, 0x1

    .line 197
    .local v12, "enabled":Z
    :goto_2
    const-string/jumbo v29, "lock_screen_owner_info_enabled"

    if-eqz v12, :cond_6

    const/16 v28, 0x1

    :goto_3
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v10, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 179
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 196
    .restart local v15    # "ivalue":I
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "enabled":Z
    goto :goto_2

    .line 197
    :cond_6
    const/16 v28, 0x0

    goto :goto_3

    .line 198
    .end local v12    # "enabled":Z
    .end local v15    # "ivalue":I
    :catch_0
    move-exception v11

    .line 200
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 201
    const-string/jumbo v28, "lock_screen_owner_info_enabled"

    const-wide/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 264
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v16    # "ownerInfo":Ljava/lang/String;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v22    # "user":I
    .end local v24    # "userId":I
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v17

    .line 265
    .local v17, "re":Landroid/os/RemoteException;
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Unable to migrate old data"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v17    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 207
    .restart local v10    # "cr":Landroid/content/ContentResolver;
    .restart local v19    # "um":Landroid/os/UserManager;
    .restart local v22    # "user":I
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v28, "migrated_user_specific"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated per-user lock settings to new location"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v10    # "cr":Landroid/content/ContentResolver;
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v22    # "user":I
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v28, "migrated_biometric_weak"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "user"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 214
    .restart local v19    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 215
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_b

    .line 216
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    .line 217
    .restart local v24    # "userId":I
    const-string/jumbo v28, "lockscreen.password_type"

    .line 218
    const-wide/16 v30, 0x0

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    .line 220
    .local v20, "type":J
    const-string/jumbo v28, "lockscreen.password_type_alternate"

    .line 221
    const-wide/16 v30, 0x0

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 223
    .local v8, "alternateType":J
    const-wide/32 v28, 0x8000

    cmp-long v28, v20, v28

    if-nez v28, :cond_a

    .line 224
    const-string/jumbo v28, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 228
    :cond_a
    const-string/jumbo v28, "lockscreen.password_type_alternate"

    .line 229
    const-wide/16 v30, 0x0

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 215
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 232
    .end local v8    # "alternateType":J
    .end local v20    # "type":J
    .end local v24    # "userId":I
    :cond_b
    const-string/jumbo v28, "migrated_biometric_weak"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v13    # "i":I
    .end local v19    # "um":Landroid/os/UserManager;
    .end local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v28, "migrated_lockscreen_disabled"

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_7

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "user"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 242
    .restart local v19    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v19 .. v19}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v25

    .line 243
    .restart local v25    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v23

    .line 244
    .local v23, "userCount":I
    const/16 v18, 0x0

    .line 245
    .local v18, "switchableUsers":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    move/from16 v0, v23

    if-ge v13, v0, :cond_e

    .line 246
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 247
    add-int/lit8 v18, v18, 0x1

    .line 245
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 251
    :cond_e
    const/16 v28, 0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_10

    .line 252
    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v23

    if-ge v13, v0, :cond_10

    .line 253
    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 255
    .local v14, "id":I
    const-string/jumbo v28, "lockscreen.disabled"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 256
    const-string/jumbo v28, "lockscreen.disabled"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 252
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 261
    .end local v14    # "id":I
    :cond_10
    const-string/jumbo v28, "migrated_lockscreen_disabled"

    const-string/jumbo v29, "true"

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    const-string/jumbo v28, "LockSettingsService"

    const-string/jumbo v29, "Migrated lockscreen disabled flag"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeInit()I
.end method

.method private native nativeReadControlStatus(II)I
.end method

.method private native nativeWriteControlStatus(III)I
.end method

.method private removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 733
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 735
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 736
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 740
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    .line 741
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 377
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 378
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 380
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 381
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 382
    .local v1, "pi":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    goto :goto_0

    .line 376
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private setPasswordTryTimes(II)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "tryTimes"    # I

    .prologue
    .line 1045
    :try_start_0
    const-string/jumbo v1, "lockscreen.password_try_count"

    int-to-long v2, p2

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t set lockscreen.password_try_count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 387
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 388
    .local v4, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 390
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 391
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 392
    .local v1, "pi":Landroid/content/pm/UserInfo;
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v5, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    goto :goto_0

    .line 386
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 612
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 616
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_4

    .line 617
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .line 618
    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 619
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 621
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 622
    if-nez p4, :cond_4

    .line 623
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 629
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 634
    .end local v11    # "hash":[B
    :cond_4
    const/4 v14, 0x0

    .line 635
    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_9

    .line 636
    const/4 v15, 0x0

    .line 637
    .local v15, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 638
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    .line 637
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 639
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 640
    .local v13, "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_6

    .line 641
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 669
    .end local v14    # "shouldReEnroll":Z
    .end local v15    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_5

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 672
    if-eqz v14, :cond_5

    .line 673
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 679
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/LockSettingsService;->checkVeryfyResponse(ILcom/android/internal/widget/VerifyCredentialResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v12

    .line 682
    return-object v12

    .line 642
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v14    # "shouldReEnroll":Z
    .restart local v15    # "token":[B
    :cond_6
    if-nez v13, :cond_8

    .line 643
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v15

    .line 644
    .local v15, "token":[B
    if-nez v15, :cond_7

    .line 646
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 649
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_7
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 650
    .local v14, "shouldReEnroll":Z
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 653
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    .local v15, "token":[B
    :cond_8
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 656
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v15    # "token":[B
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 657
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 656
    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 658
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 659
    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_a

    .line 660
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v12, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 661
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_a
    if-nez v13, :cond_b

    .line 662
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 663
    .local v14, "shouldReEnroll":Z
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0

    .line 665
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "shouldReEnroll":Z
    :cond_b
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkVoldPassword(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 687
    iget-boolean v3, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v3, :cond_0

    .line 688
    return v4

    .line 690
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 692
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 702
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 703
    .local v2, "service":Landroid/os/storage/IMountService;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v2}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 705
    if-nez v1, :cond_1

    .line 706
    return v4

    .line 710
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 713
    return v5

    .line 716
    :catch_0
    move-exception v0

    .line 720
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 721
    invoke-virtual {p0, v1, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_3

    .line 723
    return v5

    .line 726
    :catch_1
    move-exception v0

    .line 729
    :cond_3
    return v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump LockSettingsService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    const-string/jumbo v1, ", uid="

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    return-void

    .line 986
    :cond_0
    const-string/jumbo v0, "LOCK MANAGER (dumpsys lock_settings)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    const-string/jumbo v0, "Phone control status: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    const-string/jumbo v0, "    [mDescriptor]: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 990
    const-string/jumbo v0, "    [mBindValue]: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/LockSettingsService;->mBindValue:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 991
    const-string/jumbo v0, "    [mLockValue]: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/LockSettingsService;->mLockValue:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 992
    const-string/jumbo v0, "    [mWipeValue]: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/LockSettingsService;->mWipeValue:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 993
    const-string/jumbo v0, "    [mActivateValue]: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/LockSettingsService;->mActivateValue:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mPasswordTryTimes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/LockSettingsService;->mPasswordTryTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " get user 0 deadLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 978
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 972
    :try_start_0
    iget v0, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->nativeClose(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-super {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->finalize()V

    .line 970
    return-void

    .line 973
    :catchall_0
    move-exception v0

    .line 974
    invoke-super {p0}, Lcom/android/internal/widget/ILockSettings$Stub;->finalize()V

    .line 973
    throw v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 329
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 331
    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 338
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 346
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 350
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    return-object v2

    :cond_0
    :try_start_1
    const-string/jumbo v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v2

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    throw v2

    .line 359
    .end local v0    # "ident":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0
.end method

.method public isPhoneControlLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 886
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 887
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_0
    iget v2, p0, Lcom/android/server/LockSettingsService;->mLockValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readControlStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 949
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    packed-switch p1, :pswitch_data_0

    monitor-exit v1

    .line 964
    const/4 v0, -0x1

    return v0

    .line 952
    :pswitch_0
    :try_start_0
    iget v0, p0, Lcom/android/server/LockSettingsService;->mBindValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 955
    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/android/server/LockSettingsService;->mLockValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 958
    :pswitch_2
    :try_start_2
    iget v0, p0, Lcom/android/server/LockSettingsService;->mWipeValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return v0

    .line 961
    :pswitch_3
    :try_start_3
    iget v0, p0, Lcom/android/server/LockSettingsService;->mActivateValue:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return v0

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 304
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    return-void

    .line 304
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 461
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 463
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 465
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 466
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 467
    return-void

    .line 470
    :cond_0
    if-nez v0, :cond_2

    .line 471
    if-eqz p2, :cond_1

    .line 472
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1
    const/4 p2, 0x0

    .line 477
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 478
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    .line 479
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 460
    :goto_0
    return-void

    .line 481
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to enroll password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 433
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 435
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 437
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 438
    invoke-direct {p0, v3, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 439
    return-void

    .line 442
    :cond_0
    if-nez v0, :cond_2

    .line 443
    if-eqz p2, :cond_1

    .line 444
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    const/4 p2, 0x0

    .line 449
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 450
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_3

    .line 451
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 432
    :goto_0
    return-void

    .line 453
    :cond_3
    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to enroll pattern"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 310
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 316
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 314
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 147
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeControlStatus(II)I
    .locals 4
    .param p1, "handle"    # I
    .param p2, "value"    # I

    .prologue
    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 903
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    if-gez v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 904
    :cond_0
    iget v1, p0, Lcom/android/server/LockSettingsService;->mDescriptor:I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/LockSettingsService;->nativeWriteControlStatus(III)I

    move-result v0

    .line 905
    .local v0, "result":I
    if-gez v0, :cond_1

    return v0

    .line 906
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 934
    :goto_0
    return v0

    .line 908
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    :try_start_0
    iput p2, p0, Lcom/android/server/LockSettingsService;->mBindValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 911
    const-string/jumbo v1, "PhoneControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LockSettingsService] writeControlStatus...mBindValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LockSettingsService;->mBindValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 915
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 916
    :try_start_1
    iput p2, p0, Lcom/android/server/LockSettingsService;->mLockValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 918
    const-string/jumbo v1, "PhoneControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LockSettingsService] writeControlStatus...mLockValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LockSettingsService;->mLockValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 915
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2

    .line 922
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 923
    :try_start_2
    iput p2, p0, Lcom/android/server/LockSettingsService;->mWipeValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    .line 925
    const-string/jumbo v1, "PhoneControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LockSettingsService] writeControlStatus...mWipeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LockSettingsService;->mWipeValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 922
    :catchall_2
    move-exception v2

    monitor-exit v1

    throw v2

    .line 928
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 929
    :try_start_3
    iput p2, p0, Lcom/android/server/LockSettingsService;->mActivateValue:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v1

    .line 931
    const-string/jumbo v1, "PhoneControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LockSettingsService] writeControlStatus...mActivateValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/LockSettingsService;->mActivateValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    :catchall_3
    move-exception v2

    monitor-exit v1

    throw v2

    .line 906
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
