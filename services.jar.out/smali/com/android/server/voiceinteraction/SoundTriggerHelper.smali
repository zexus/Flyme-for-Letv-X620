.class public Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.super Ljava/lang/Object;
.source "SoundTriggerHelper.java"

# interfaces
.implements Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;,
        Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final INVALID_VALUE:I = -0x80000000

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "SoundTriggerHelper"


# instance fields
.field private mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

.field private mCallActive:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

.field private mCurrentSoundModelHandle:I

.field private mIsPowerSaveMode:Z

.field private mKeyphraseId:I

.field private final mLock:Ljava/lang/Object;

.field private mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

.field private mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private mRequested:Z

.field private mServiceDisabled:Z

.field private mStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;


# direct methods
.method static synthetic -get0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "callActive"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onCallStateChangedLocked(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    .locals 0
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onPowerSaveModeChangedLocked(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    .line 79
    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    .line 80
    iput v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 81
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 83
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 84
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    move-result v1

    .line 96
    .local v1, "status":I
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    .line 97
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    new-instance v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$MyCallStateListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 100
    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "listModules status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", # of modules="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 103
    iput-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 93
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_0
.end method

.method private internalClearSoundModelLocked()V
    .locals 1

    .prologue
    .line 539
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 538
    return-void
.end method

.method private internalClearStateLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 521
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 522
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 524
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    .line 525
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 526
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 529
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 532
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    iput-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 520
    :cond_0
    return-void
.end method

.method private onCallStateChangedLocked(Z)V
    .locals 1
    .param p1, "callActive"    # Z

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    if-ne v0, p1, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    .line 358
    return-void
.end method

.method private onPowerSaveModeChangedLocked(Z)V
    .locals 1
    .param p1, "isPowerSaveMode"    # Z

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-ne v0, p1, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    .line 368
    return-void
.end method

.method private onRecognitionAbortLocked()V
    .locals 2

    .prologue
    .line 389
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Recognition aborted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method

.method private onRecognitionFailureLocked()V
    .locals 3

    .prologue
    .line 395
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "Recognition failure"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v2, -0x80000000

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 394
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    goto :goto_0

    .line 402
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 403
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 402
    throw v1
.end method

.method private onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .prologue
    const/4 v4, 0x0

    .line 408
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v3, "Recognition success"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 411
    .local v1, "keyphraseExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 412
    :cond_0
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v3, "Invalid keyphrase recognition event!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void

    .line 416
    :cond_1
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    aget-object v3, v1, v4

    iget v3, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    if-eq v2, v3, :cond_2

    .line 417
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v3, "received onRecognition event for a different keyphrase"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 422
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v2, :cond_3

    .line 423
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v2, p1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 430
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v2, v2, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 432
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    if-eqz v2, :cond_4

    .line 433
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    .line 407
    :cond_4
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SoundTriggerHelper"

    const-string/jumbo v3, "RemoteException in onDetected"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onServiceDiedLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/16 v2, -0x20

    invoke-interface {v1, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 447
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 449
    :goto_0
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 437
    :cond_1
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v2, "RemoteException in onError"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 447
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    goto :goto_0

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 445
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V

    .line 447
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v2, :cond_2

    .line 448
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTriggerModule;->detach()V

    .line 449
    iput-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 444
    :cond_2
    throw v1
.end method

.method private onServiceStateChangedLocked(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    if-ne p1, v0, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    .line 385
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    .line 380
    return-void
.end method

.method private onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 376
    return-void
.end method

.method private updateRecognitionLocked(Z)I
    .locals 6
    .param p1, "notify"    # Z

    .prologue
    const/4 v5, 0x0

    .line 455
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v3, :cond_1

    .line 458
    :cond_0
    return v5

    .line 456
    :cond_1
    iget v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v3, :cond_0

    .line 461
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 462
    .local v1, "start":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-ne v1, v3, :cond_4

    .line 464
    return v5

    .line 461
    .end local v1    # "start":Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "start":Z
    goto :goto_0

    .line 468
    :cond_4
    if-eqz v1, :cond_7

    .line 470
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/soundtrigger/SoundTriggerModule;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v2

    .line 471
    .local v2, "status":I
    if-eqz v2, :cond_6

    .line 472
    const-string/jumbo v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz p1, :cond_5

    .line 476
    :try_start_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_5
    :goto_1
    return v2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    const-string/jumbo v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 482
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 484
    if-eqz p1, :cond_5

    .line 486
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionResumed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 487
    :catch_1
    move-exception v0

    .line 488
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    const-string/jumbo v4, "RemoteException in onRecognitionResumed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "status":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v3, v4}, Landroid/hardware/soundtrigger/SoundTriggerModule;->stopRecognition(I)I

    move-result v2

    .line 496
    .restart local v2    # "status":I
    if-eqz v2, :cond_9

    .line 497
    const-string/jumbo v3, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRecognition call failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-eqz p1, :cond_8

    .line 500
    :try_start_2
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3, v2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 516
    :cond_8
    :goto_2
    return v2

    .line 501
    :catch_2
    move-exception v0

    .line 502
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    const-string/jumbo v4, "RemoteException in onError"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_9
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    .line 508
    if-eqz p1, :cond_8

    .line 510
    :try_start_3
    iget-object v3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onRecognitionPaused()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 511
    :catch_3
    move-exception v0

    .line 512
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SoundTriggerHelper"

    const-string/jumbo v4, "RemoteException in onRecognitionPaused"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    const-string/jumbo v0, "  module properties="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 571
    const-string/jumbo v0, "  keyphrase ID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 572
    const-string/jumbo v0, "  sound model handle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 573
    const-string/jumbo v0, "  sound model UUID="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 575
    const-string/jumbo v0, "  current listener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    const-string/jumbo v0, "  requested="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 579
    const-string/jumbo v0, "  started="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 580
    const-string/jumbo v0, "  call active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 581
    const-string/jumbo v0, "  power save mode active="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 582
    const-string/jumbo v0, "  service disabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mServiceDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 567
    return-void

    .line 570
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    goto :goto_0

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    goto :goto_1

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    if-eqz v0, :cond_0

    .line 309
    const-string/jumbo v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRecognition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v0, :cond_1

    .line 312
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v2, "received onRecognition event without any listener for it"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 313
    return-void

    .line 305
    :cond_0
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Invalid recognition event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 315
    :cond_1
    :try_start_1
    iget v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :goto_0
    monitor-exit v1

    .line 303
    return-void

    .line 318
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionAbortLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 310
    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 321
    .restart local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionFailureLocked()V

    goto :goto_0

    .line 324
    :pswitch_2
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    .end local p1    # "event":Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onRecognitionSuccessLocked(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceDied()V
    .locals 2

    .prologue
    .line 352
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "onServiceDied!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceDiedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 351
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceStateChange(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 344
    const-string/jumbo v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChange, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    if-ne v0, p1, :cond_0

    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onServiceStateChangedLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 343
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    const-string/jumbo v0, "SoundTriggerHelper"

    const-string/jumbo v1, "Invalid sound model event!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 336
    :cond_0
    const-string/jumbo v0, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSoundModelUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->onSoundModelUpdatedLocked(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 331
    return-void

    .line 337
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 9
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    .line 123
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 124
    :cond_0
    const/high16 v4, -0x80000000

    return v4

    .line 123
    :cond_1
    if-eqz p4, :cond_0

    .line 127
    iget-object v5, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 129
    :try_start_0
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startRecognition for keyphraseId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    const-string/jumbo v7, " soundModel="

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    const-string/jumbo v7, ", listener="

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 131
    const-string/jumbo v7, ", recognitionConfig="

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moduleProperties="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string/jumbo v6, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current listener="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 134
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v4, :cond_4

    const-string/jumbo v4, "null"

    .line 133
    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current SoundModel handle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string/jumbo v6, "SoundTriggerHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current SoundModel UUID="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 137
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    .line 136
    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z

    if-nez v4, :cond_3

    .line 142
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCallActive:Z

    .line 144
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 148
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    if-nez v4, :cond_2

    .line 149
    new-instance v4, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    invoke-direct {v4, p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;-><init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V

    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 150
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerSaveModeListener:Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;

    .line 151
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mIsPowerSaveMode:Z

    .line 156
    :cond_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v4, :cond_7

    .line 157
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "Attempting startRecognition without the capability"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const/high16 v4, -0x80000000

    monitor-exit v5

    return v4

    .line 134
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto/16 :goto_0

    .line 137
    :cond_5
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    iget-object v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    goto :goto_1

    .line 142
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 160
    :cond_7
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v4, :cond_8

    .line 161
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget v4, v4, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    const/4 v6, 0x0

    invoke-static {v4, p0, v6}, Landroid/hardware/soundtrigger/SoundTrigger;->attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 162
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v4, :cond_8

    .line 163
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "startRecognition cannot attach to sound trigger module"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const/high16 v4, -0x80000000

    monitor-exit v5

    return v4

    .line 171
    :cond_8
    :try_start_2
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_9

    .line 172
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {p2, v4}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 184
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-eq v4, v6, :cond_a

    .line 185
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "Canceling previous recognition"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :try_start_3
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    const/high16 v6, -0x80000000

    invoke-interface {v4, v6}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :goto_4
    const/4 v4, 0x0

    :try_start_4
    iput-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 195
    :cond_a
    iget v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 196
    .local v2, "soundModelHandle":I
    iget v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_b

    .line 197
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    if-nez v4, :cond_10

    .line 198
    :cond_b
    const/4 v4, 0x1

    new-array v1, v4, [I

    const/high16 v4, -0x80000000

    const/4 v6, 0x0

    aput v4, v1, v6

    .line 199
    .local v1, "handle":[I
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-virtual {v4, p2, v1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I

    move-result v3

    .line 200
    .local v3, "status":I
    if-eqz v3, :cond_e

    .line 201
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadSoundModel call failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 202
    return v3

    .line 173
    .end local v1    # "handle":[I
    .end local v2    # "soundModelHandle":I
    .end local v3    # "status":I
    :cond_c
    :try_start_5
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "Unloading previous sound model"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iget v6, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    invoke-virtual {v4, v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;->unloadSoundModel(I)I

    move-result v3

    .line 175
    .restart local v3    # "status":I
    if-eqz v3, :cond_d

    .line 176
    const-string/jumbo v4, "SoundTriggerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unloadSoundModel call failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_d
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearSoundModelLocked()V

    .line 179
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 127
    .end local v3    # "status":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "RemoteException in onDetectionStopped"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 204
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "handle":[I
    .restart local v2    # "soundModelHandle":I
    .restart local v3    # "status":I
    :cond_e
    const/4 v4, 0x0

    aget v4, v1, v4

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_f

    .line 205
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "loadSoundModel call returned invalid sound model handle"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    const/high16 v4, -0x80000000

    monitor-exit v5

    return v4

    .line 208
    :cond_f
    const/4 v4, 0x0

    :try_start_7
    aget v2, v1, v4

    .line 214
    .end local v1    # "handle":[I
    .end local v3    # "status":I
    :goto_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 215
    iput p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mKeyphraseId:I

    .line 216
    iput v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I

    .line 217
    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModel:Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 218
    iput-object p4, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 221
    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .line 223
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    monitor-exit v5

    return v4

    .line 210
    :cond_10
    :try_start_8
    const-string/jumbo v4, "SoundTriggerHelper"

    const-string/jumbo v6, "Reusing previously loaded sound model"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5
.end method

.method stopAllRecognitions()V
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 288
    return-void

    .line 291
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mCurrentSoundModelHandle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_2

    monitor-exit v2

    .line 292
    return-void

    .line 295
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 296
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I

    move-result v0

    .line 297
    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 285
    return-void

    .line 286
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    const/high16 v5, -0x80000000

    .line 238
    if-nez p2, :cond_0

    .line 239
    return v5

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_0
    const-string/jumbo v1, "SoundTriggerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRecognition for keyphraseId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    const-string/jumbo v4, ", listener="

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string/jumbo v3, "SoundTriggerHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current listener="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 247
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    .line 246
    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mModule:Landroid/hardware/soundtrigger/SoundTriggerModule;

    if-nez v1, :cond_3

    .line 251
    :cond_1
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v3, "Attempting stopRecognition without the capability"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 252
    return v5

    .line 247
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    .line 255
    :cond_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    if-nez v1, :cond_4

    .line 257
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v3, "Attempting stopRecognition without a successful startRecognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 258
    return v5

    .line 260
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mActiveListener:Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    invoke-interface {v1}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p2}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_5

    .line 263
    const-string/jumbo v1, "SoundTriggerHelper"

    const-string/jumbo v3, "Attempting stopRecognition for another recognition"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 264
    return v5

    .line 268
    :cond_5
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->mRequested:Z

    .line 269
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->updateRecognitionLocked(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 270
    .local v0, "status":I
    if-eqz v0, :cond_6

    monitor-exit v2

    .line 271
    return v0

    .line 277
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->internalClearStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    .line 278
    return v0

    .line 242
    .end local v0    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
