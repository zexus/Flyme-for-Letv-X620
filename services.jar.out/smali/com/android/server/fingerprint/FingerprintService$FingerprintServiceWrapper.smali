.class final Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# static fields
.field private static final ALIPAY_LOAD_TAPATH:Ljava/lang/String; = "/data/app/mcRegistry/"

.field private static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TA_FILE_NAME:Ljava/lang/String; = "tzapp_common.zip"


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 801
    .local v0, "restricted":Z
    :goto_0
    return v0

    .line 800
    .end local v0    # "restricted":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "restricted":Z
    goto :goto_0
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 820
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "authenticate opPackageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " flags "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 822
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Can\'t authenticate non-current user"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void

    .line 825
    :cond_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object/from16 v0, p7

    invoke-static {v3, v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 826
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Calling not granted permission to use fingerprint"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void

    .line 832
    :cond_1
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v8

    .line 835
    .local v8, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v2

    .line 836
    .local v2, "restrictedFromPermission":Z
    if-eqz v2, :cond_2

    and-int/lit8 v3, p6, 0x2

    if-nez v3, :cond_2

    const/4 v11, 0x1

    .line 837
    .local v11, "restricted":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    move-object v4, p0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    invoke-virtual {v12, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    return-void

    .line 836
    .end local v11    # "restricted":Z
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "restricted":Z
    goto :goto_0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    return-void

    .line 850
    :cond_0
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelAuthentication opPackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 807
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "cancelEnrollment "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method

.method public cancelTakePicture(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "cancelTakePicture"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1049
    return-void
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I

    .prologue
    .line 773
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 775
    const v2, 0x10e0097

    .line 774
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 776
    .local v11, "limit":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 777
    .local v9, "callingUid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 778
    .local v12, "userId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v12}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 779
    .local v10, "enrolled":I
    if-lt v10, v11, :cond_0

    .line 780
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Too many fingerprints registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return-void

    .line 783
    :cond_0
    move-object/from16 v0, p2

    array-length v1, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 787
    .local v4, "cryptoClone":[B
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v5

    .line 789
    .local v5, "effectiveGroupId":I
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v8

    .line 790
    .local v8, "restricted":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v13, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    invoke-virtual {v13, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 772
    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 3
    .param p1, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 939
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAuthenticatorId opPackageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getAuthenticatorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 907
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 909
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    const/4 v1, 0x0

    return v1

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 919
    .local v0, "effectiveUserId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    return v1
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 880
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->-wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    return v0

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 863
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v6

    .line 865
    .local v6, "restricted":Z
    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove fingerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v4

    .line 869
    .local v4, "effectiveGroupId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v2, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v0

    .line 893
    .local v0, "effectiveGroupId":I
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    return-void
.end method

.method public takePicture(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string/jumbo v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1034
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "takePicture "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v5

    .line 1038
    .local v5, "restricted":Z
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v3

    .line 1039
    .local v3, "effectiveGroupId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    return-void
.end method

.method public unZipFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 19
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "decompressDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 989
    const/4 v14, 0x0

    .line 991
    .local v14, "zf":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v15, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 992
    .local v15, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .end local v14    # "zf":Ljava/util/zip/ZipFile;
    move-result-object v4

    .line 993
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 994
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 995
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 996
    .local v6, "entryName":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 997
    .local v12, "path":Ljava/lang/String;
    const-string/jumbo v16, "FingerprintService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "unZipFile entryName : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " path : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 999
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v3, "decompressDirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1001
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1024
    .end local v3    # "decompressDirFile":Ljava/io/File;
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v16

    move-object v14, v15

    .line 1025
    .end local v15    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    invoke-virtual {v14}, Ljava/util/zip/ZipFile;->close()V

    .line 1024
    throw v16

    .line 1004
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v15    # "zf":Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v10, 0x0

    .line 1006
    .local v10, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    const-string/jumbo v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, "fileDir":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v8, "fileDirFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1009
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1011
    :cond_2
    const-string/jumbo v16, "FingerprintService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "unZipFile fileDirFile : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " decompressDir : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v16, Ljava/io/FileOutputStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1013
    .local v11, "out":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/BufferedInputStream;

    .end local v10    # "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v15, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1014
    .local v9, "input":Ljava/io/BufferedInputStream;
    const/16 v16, 0x400

    move/from16 v0, v16

    new-array v13, v0, [B

    .line 1016
    .local v13, "readContent":[B
    :goto_2
    invoke-virtual {v9, v13}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    if-ltz v2, :cond_3

    .line 1017
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v0, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 1019
    .end local v2    # "bytesRead":I
    .end local v9    # "input":Ljava/io/BufferedInputStream;
    .end local v13    # "readContent":[B
    :catchall_1
    move-exception v16

    move-object v10, v11

    .line 1020
    .end local v7    # "fileDir":Ljava/lang/String;
    .end local v8    # "fileDirFile":Ljava/io/File;
    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 1019
    throw v16

    .line 1020
    .restart local v2    # "bytesRead":I
    .restart local v7    # "fileDir":Ljava/lang/String;
    .restart local v8    # "fileDirFile":Ljava/io/File;
    .restart local v9    # "input":Ljava/io/BufferedInputStream;
    .restart local v11    # "out":Ljava/io/BufferedOutputStream;
    .restart local v13    # "readContent":[B
    :cond_3
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1025
    .end local v2    # "bytesRead":I
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v7    # "fileDir":Ljava/lang/String;
    .end local v8    # "fileDirFile":Ljava/io/File;
    .end local v9    # "input":Ljava/io/BufferedInputStream;
    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "readContent":[B
    :cond_4
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    .line 986
    return-void

    .line 1024
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v15    # "zf":Ljava/util/zip/ZipFile;
    .restart local v14    # "zf":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v16

    goto/16 :goto_1

    .line 1019
    .end local v14    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "entryName":Ljava/lang/String;
    .restart local v10    # "out":Ljava/io/BufferedOutputStream;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v15    # "zf":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v16

    goto :goto_3
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 14
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 947
    const-string/jumbo v10, "FingerprintService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateTA taPath : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "tzapp_common.zip"

    invoke-direct {v8, p1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .local v8, "sourceFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "/data/app/mcRegistry/"

    const-string/jumbo v11, "tzapp_common.zip"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .local v9, "targetFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 951
    .local v3, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 952
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 955
    .local v7, "result":Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 956
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 957
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 959
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 960
    .local v6, "out":Ljava/io/FileOutputStream;
    const/16 v10, 0x1000

    :try_start_2
    new-array v0, v10, [B

    .line 962
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_1

    .line 963
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 965
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v10

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 966
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 968
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 971
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 972
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 965
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 975
    :catch_0
    move-exception v2

    .line 976
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const/4 v7, 0x0

    .line 977
    return v13

    .line 966
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 968
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 971
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 972
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 974
    const/4 v7, 0x1

    .line 980
    :try_start_9
    const-string/jumbo v10, "/data/app/mcRegistry/"

    invoke-virtual {p0, v9, v10}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->unZipFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 984
    :goto_5
    return v7

    .line 981
    :catch_1
    move-exception v2

    .line 982
    .restart local v2    # "e":Ljava/io/IOException;
    const/4 v7, 0x0

    goto :goto_5

    .line 975
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 969
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 965
    .end local v2    # "e":Ljava/io/IOException;
    .local v3, "in":Ljava/io/FileInputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    goto :goto_1

    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v3, "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 969
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_4
.end method
