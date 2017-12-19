.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3748
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method private final isAllowSystemProperties(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 3771
    if-nez p1, :cond_0

    .line 3772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3774
    :cond_0
    if-nez p4, :cond_1

    .line 3775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3777
    :cond_1
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 3779
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3780
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_2

    .line 3781
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3782
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    .line 3781
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3784
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3785
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3786
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    .line 3785
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3791
    .end local p5    # "ws":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 3792
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3793
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3795
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->-wrap13(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3797
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3770
    return-void

    .line 3788
    .end local v7    # "uid":I
    .end local v8    # "pid":I
    .end local v10    # "ident":J
    .restart local p5    # "ws":Landroid/os/WorkSource;
    :cond_3
    const/16 p5, 0x0

    .local p5, "ws":Landroid/os/WorkSource;
    goto :goto_0

    .line 3796
    .end local p5    # "ws":Landroid/os/WorkSource;
    .restart local v7    # "uid":I
    .restart local v8    # "pid":I
    .restart local v10    # "ident":J
    :catchall_0
    move-exception v0

    .line 3797
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3796
    throw v0
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 3752
    if-gez p5, :cond_0

    .line 3753
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 3755
    :cond_0
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 3751
    return-void
.end method

.method public boostScreenBrightness(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 4185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 4186
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4189
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 4190
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 4189
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4193
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4195
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap14(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4184
    return-void

    .line 4196
    :catchall_0
    move-exception v3

    .line 4197
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4196
    throw v3
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4061
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4065
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap15(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4060
    return-void

    .line 4066
    :catchall_0
    move-exception v2

    .line 4067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4066
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4282
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 4284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4285
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4286
    const-string/jumbo v3, ", uid="

    .line 4284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4284
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4287
    return-void

    .line 4290
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4292
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerService;->-wrap16(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4281
    return-void

    .line 4293
    :catchall_0
    move-exception v2

    .line 4294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4293
    throw v2
.end method

.method public getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 4220
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 4221
    const-string/jumbo v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    .line 4220
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4223
    .local v2, "uid":I
    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_0

    .line 4224
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " no permission call this method: getSystemProperties"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4227
    :cond_0
    const-string/jumbo v3, ""

    .line 4228
    .local v3, "value":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4230
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/power/PowerManagerService;->getSystemPropertiesInternal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 4232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4234
    return-object v3

    .line 4231
    :catchall_0
    move-exception v4

    .line 4232
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4231
    throw v4
.end method

.method public goToSleep(JII)V
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3922
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3923
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3926
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3927
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    .line 3926
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3930
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3932
    .local v8, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap17(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3934
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3921
    return-void

    .line 3933
    :catchall_0
    move-exception v0

    .line 3934
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3933
    throw v0
.end method

.method public isDeviceIdleMode()Z
    .locals 3

    .prologue
    .line 4003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4005
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap3(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4005
    return v2

    .line 4006
    :catchall_0
    move-exception v2

    .line 4007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4006
    throw v2
.end method

.method public isInteractive()Z
    .locals 3

    .prologue
    .line 3958
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3960
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap4(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3962
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3960
    return v2

    .line 3961
    :catchall_0
    move-exception v2

    .line 3962
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3961
    throw v2
.end method

.method public isPowerSaveMode()Z
    .locals 3

    .prologue
    .line 3968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3970
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3970
    return v2

    .line 3971
    :catchall_0
    move-exception v2

    .line 3972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3971
    throw v2
.end method

.method public isProximitySensorPositive()Z
    .locals 3

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 4179
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    .line 4178
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4180
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap5(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 3

    .prologue
    .line 4203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4205
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap6(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4205
    return v2

    .line 4206
    :catchall_0
    move-exception v2

    .line 4207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4206
    throw v2
.end method

.method public isScreenInDimState()Z
    .locals 3

    .prologue
    .line 3979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3981
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap7(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3981
    return v2

    .line 3982
    :catchall_0
    move-exception v2

    .line 3983
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3982
    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 3857
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3859
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap9(Lcom/android/server/power/PowerManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3861
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3859
    return v2

    .line 3860
    :catchall_0
    move-exception v2

    .line 3861
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3860
    throw v2
.end method

.method public nap(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 3940
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 3941
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3944
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3945
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 3944
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3948
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3950
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap24(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3939
    return-void

    .line 3951
    :catchall_0
    move-exception v3

    .line 3952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3951
    throw v3
.end method

.method public powerHint(II)V
    .locals 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get18(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3762
    return-void

    .line 3764
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap28(Lcom/android/server/power/PowerManagerService;II)V

    .line 3759
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4020
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    const-string/jumbo v2, "recovery"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4022
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.RECOVERY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4027
    .local v0, "ident":J
    :try_start_0
    const-string/jumbo v2, "WRITE_MISC_ONLY"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4028
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-wrap27()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4033
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4019
    return-void

    .line 4030
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-wrap40(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4032
    :catchall_0
    move-exception v2

    .line 4033
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4032
    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3803
    if-nez p1, :cond_0

    .line 3804
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3807
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3811
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap29(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3802
    return-void

    .line 3812
    :catchall_0
    move-exception v2

    .line 3813
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3812
    throw v2
.end method

.method public resetTouch()V
    .locals 9

    .prologue
    .line 4379
    const/4 v3, 0x0

    .line 4381
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string/jumbo v5, "/sys/bus/i2c/devices/2-004b/reset"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4382
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v4, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 4383
    const-string/jumbo v5, "PowerManagerService"

    const-string/jumbo v6, "reset  file is /sys/bus/i2c/devices/2-004b/reset"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4392
    if-eqz v4, :cond_0

    .line 4394
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 4378
    .end local v4    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    .line 4397
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 4398
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finally Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4395
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 4396
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xxxxxxx /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4389
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    .line 4390
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4392
    if-eqz v3, :cond_1

    .line 4394
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 4395
    :catch_3
    move-exception v0

    .line 4396
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xxxxxxx /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4397
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 4398
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finally Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4387
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    .line 4388
    .end local v3    # "writer":Ljava/io/FileWriter;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t writer reset wakeup number state from /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4392
    if-eqz v3, :cond_1

    .line 4394
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_1

    .line 4395
    :catch_6
    move-exception v0

    .line 4396
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xxxxxxx /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4397
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 4398
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finally Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4385
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    .line 4386
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t writer reset wakeup state from /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4392
    if-eqz v3, :cond_1

    .line 4394
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    goto/16 :goto_1

    .line 4395
    :catch_9
    move-exception v0

    .line 4396
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xxxxxxx /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4397
    :catch_a
    move-exception v1

    .line 4398
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string/jumbo v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finally Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4391
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 4392
    :goto_5
    if-eqz v3, :cond_2

    .line 4394
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 4391
    :cond_2
    :goto_6
    throw v5

    .line 4397
    :catch_b
    move-exception v1

    .line 4398
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Finally Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4395
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 4396
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string/jumbo v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xxxxxxx /sys/bus/i2c/devices/2-004b/reset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4391
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .local v3, "writer":Ljava/io/FileWriter;
    goto :goto_5

    .line 4385
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_d
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_4

    .line 4387
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_e
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_3

    .line 4389
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v3    # "writer":Ljava/io/FileWriter;
    .restart local v4    # "writer":Ljava/io/FileWriter;
    :catch_f
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/FileWriter;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 4159
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 4160
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 4159
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4164
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4158
    return-void

    .line 4165
    :catchall_0
    move-exception v2

    .line 4166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4165
    throw v2
.end method

.method public setBacklightOffForWfd(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 4363
    if-eqz p1, :cond_0

    .line 4364
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "setBacklightOffForWfd true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 4362
    :goto_0
    return-void

    .line 4367
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get22(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4368
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "setBacklightOffForWfd false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4369
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0

    .line 4371
    :cond_1
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "setBacklightOffForWfd false ignored due to screen is off by power key"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    .line 3991
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3992
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3991
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3995
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap10(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3995
    return v2

    .line 3996
    :catchall_0
    move-exception v2

    .line 3997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3996
    throw v2
.end method

.method public setStayOnSetting(I)V
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 4087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4089
    .local v2, "uid":I
    if-eqz v2, :cond_0

    .line 4090
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 4091
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 4090
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4092
    return-void

    .line 4096
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4098
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4086
    return-void

    .line 4099
    :catchall_0
    move-exception v3

    .line 4100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4099
    throw v3
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4246
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v6

    .line 4247
    const-string/jumbo v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    .line 4246
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4251
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4252
    .local v3, "packagemanager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 4253
    .local v2, "name":Ljava/lang/String;
    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_0

    const-string/jumbo v6, "com.letv.android.freeflow"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4257
    :cond_0
    const/4 v4, 0x0

    .line 4258
    .local v4, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4261
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;->isAllowSystemProperties(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4262
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/power/PowerManagerService;->setSystemPropertiesInternal(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 4268
    .end local v4    # "result":Z
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4270
    return v4

    .line 4254
    .end local v0    # "ident":J
    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "User uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " no permission call this method: setSystemProperties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4264
    .restart local v0    # "ident":J
    .restart local v4    # "result":Z
    :cond_2
    :try_start_1
    const-string/jumbo v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Warning not allow system properties key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4267
    :catchall_0
    move-exception v6

    .line 4268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4267
    throw v6
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .param p1, "adj"    # F

    .prologue
    .line 4143
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 4144
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 4143
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4148
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap36(Lcom/android/server/power/PowerManagerService;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4142
    return-void

    .line 4149
    :catchall_0
    move-exception v2

    .line 4150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4149
    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 4118
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 4119
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 4118
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4123
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap37(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4117
    return-void

    .line 4124
    :catchall_0
    move-exception v2

    .line 4125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4124
    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4045
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4049
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->-wrap40(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4044
    return-void

    .line 4050
    :catchall_0
    move-exception v2

    .line 4051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4050
    throw v2
.end method

.method public startBacklight(I)V
    .locals 11
    .param p1, "delay_msec"    # I

    .prologue
    .line 4316
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 4317
    :try_start_0
    const-string/jumbo v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4318
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "startBacklight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4319
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 4323
    .local v8, "ident":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->setIPOScreenOnDelay(I)V

    .line 4324
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4325
    const-string/jumbo v4, "android.server.power:POWER"

    .line 4327
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4326
    const/16 v5, 0x3e8

    .line 4328
    const/16 v7, 0x3e8

    .line 4324
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    .line 4329
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4331
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v8    # "ident":J
    :goto_0
    monitor-exit v10

    .line 4315
    return-void

    .line 4330
    .restart local v8    # "ident":J
    :catchall_0
    move-exception v0

    .line 4331
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4330
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4316
    .end local v8    # "ident":J
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    .line 4334
    :cond_0
    :try_start_4
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "skip startBacklight because MTK_IPO_SUPPORT not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public stopBacklight()V
    .locals 10

    .prologue
    .line 4341
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4342
    :try_start_0
    const-string/jumbo v0, "ro.mtk_ipo_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4343
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "stopBacklight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 4348
    .local v8, "ident":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setIPOScreenOnDelay(I)V

    .line 4349
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 4350
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    .line 4349
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap1(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 4351
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4353
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v8    # "ident":J
    :goto_0
    monitor-exit v7

    .line 4340
    return-void

    .line 4352
    .restart local v8    # "ident":J
    :catchall_0
    move-exception v0

    .line 4353
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4352
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4341
    .end local v8    # "ident":J
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0

    .line 4356
    :cond_0
    :try_start_4
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "skip stopBacklight because MTK_IPO_SUPPORT not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .locals 4
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3819
    const/4 v1, 0x0

    .line 3821
    .local v1, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_0

    .line 3822
    new-instance v1, Landroid/os/WorkSource;

    .end local v1    # "ws":Landroid/os/WorkSource;
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 3825
    .local v1, "ws":Landroid/os/WorkSource;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 3826
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 3825
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3829
    .end local v0    # "i":I
    .end local v1    # "ws":Landroid/os/WorkSource;
    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 3818
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3834
    if-nez p1, :cond_0

    .line 3835
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "lock must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3838
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3840
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3841
    const-string/jumbo v4, "android.permission.UPDATE_DEVICE_STATS"

    .line 3840
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    .end local p2    # "ws":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3847
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3849
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-wrap42(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3833
    return-void

    .line 3843
    .end local v0    # "callingUid":I
    .end local v2    # "ident":J
    .restart local p2    # "ws":Landroid/os/WorkSource;
    :cond_1
    const/4 p2, 0x0

    .local p2, "ws":Landroid/os/WorkSource;
    goto :goto_0

    .line 3850
    .end local p2    # "ws":Landroid/os/WorkSource;
    .restart local v0    # "callingUid":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v1

    .line 3851
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    throw v1
.end method

.method public userActivity(JII)V
    .locals 13
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3867
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3868
    .local v10, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3870
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3871
    const-string/jumbo v1, "android.permission.USER_ACTIVITY"

    .line 3870
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3876
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3877
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v10, v2

    if-ltz v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->-set4(Lcom/android/server/power/PowerManagerService;J)J

    .line 3879
    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3882
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3883
    const-string/jumbo v3, " uid="

    .line 3879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3883
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3879
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3886
    return-void

    .line 3876
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3889
    :cond_1
    cmp-long v0, p1, v10

    if-lez v0, :cond_2

    .line 3890
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3893
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3894
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3896
    .local v8, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap43(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3898
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3866
    return-void

    .line 3897
    :catchall_1
    move-exception v0

    .line 3898
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3897
    throw v0
.end method

.method public wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3905
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3908
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3909
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    .line 3908
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3912
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3914
    .local v8, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap45(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3916
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3903
    return-void

    .line 3915
    :catchall_0
    move-exception v0

    .line 3916
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3915
    throw v0
.end method

.method public wakeUpByReason(JI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I

    .prologue
    .line 4300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 4301
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4304
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4308
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-wrap44(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4299
    return-void

    .line 4309
    :catchall_0
    move-exception v2

    .line 4310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4309
    throw v2
.end method
