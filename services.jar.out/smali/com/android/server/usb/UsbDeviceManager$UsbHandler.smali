.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;
    }
.end annotation


# instance fields
.field private mAdbNotificationShown:Z

.field private mBypass:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

.field private mConfigured:Z

.field private mConnected:Z

.field private mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mCurrentFunctions:Ljava/lang/String;

.field private mCurrentFunctionsApplied:Z

.field private mCurrentUser:I

.field private mDefaultFunctions:Ljava/lang/String;

.field private mMbim:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

.field private mUsbDataUnlocked:Z

.field private mUsbNotificationId:I

.field private mUsbSetBypassWithTether:Z

.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSetBypassWithTether:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Landroid/os/Looper;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v7, 0x0

    .line 717
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 718
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 413
    const/16 v6, -0x2710

    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 417
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSetBypassWithTether:Z

    .line 721
    :try_start_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 722
    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBypass:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .line 725
    :cond_0
    new-instance v6, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMbim:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Mbim;

    .line 727
    const-string/jumbo v6, "sys.usb.config"

    .line 728
    const-string/jumbo v7, "none"

    .line 727
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 729
    const-string/jumbo v6, "none"

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 730
    const-string/jumbo v6, "mtp"

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 732
    :cond_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 733
    const-string/jumbo v7, "sys.usb.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 732
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 734
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v6

    .line 735
    const-string/jumbo v7, "adb"

    .line 734
    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-static {p1, v6}, Lcom/android/server/usb/UsbDeviceManager;->-set4(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 736
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v6

    .line 737
    const-string/jumbo v7, "acm"

    .line 736
    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    invoke-static {p1, v6}, Lcom/android/server/usb/UsbDeviceManager;->-set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 738
    const-string/jumbo v6, ""

    invoke-static {p1, v6}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get3(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 742
    const-string/jumbo v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "keep persist usb fucntion "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_2
    :goto_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/android_usb/android0/state"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "state":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 762
    const-string/jumbo v6, "persist.sys.port_index"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 763
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persist.sys.port_index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 785
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 786
    const-string/jumbo v7, "adb_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 787
    new-instance v8, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;

    invoke-direct {v8, p1}, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    const/4 v9, 0x0

    .line 785
    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 789
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 790
    const-string/jumbo v7, "acm_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 791
    new-instance v8, Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;

    invoke-direct {v8, p1}, Lcom/android/server/usb/UsbDeviceManager$AcmSettingsObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    const/4 v9, 0x0

    .line 789
    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 794
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get18(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v6

    const-string/jumbo v7, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 795
    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get18(Lcom/android/server/usb/UsbDeviceManager;)Landroid/os/UEventObserver;

    move-result-object v6

    const-string/jumbo v7, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {v6, v7}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 717
    .end local v2    # "state":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 744
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 746
    const-string/jumbo v6, "persist.service.acm.enable"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 747
    .restart local v5    # "value":Ljava/lang/String;
    const-string/jumbo v6, "UsbDeviceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persist.service.acm.enable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 749
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->validPortNum(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    .line 750
    invoke-static {p1, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAcmEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 796
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "UsbDeviceManager"

    const-string/jumbo v7, "Error initializing UsbHandler"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_2

    .line 753
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAcmEnabled(Z)V

    goto/16 :goto_0

    .line 764
    .restart local v2    # "state":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->validPortNum(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 765
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->validPortNum(Ljava/lang/String;)I

    move-result v1

    .line 766
    .local v1, "port_num":I
    invoke-static {p1, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 767
    const-string/jumbo v6, "/sys/class/android_usb/android0/f_acm/port_index"

    invoke-static {p1}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string/jumbo v7, "acm"

    invoke-static {v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->-wrap3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 771
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    const-string/jumbo v7, "dual_acm"

    invoke-static {v6, v7}, Lcom/android/server/usb/UsbDeviceManager;->-wrap3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 773
    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    const-string/jumbo v3, "dual_acm"

    .line 774
    .local v3, "tmp":Ljava/lang/String;
    :goto_3
    const-string/jumbo v6, "4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v4, "gs3"

    .line 775
    .local v4, "tmp_acm":Ljava/lang/String;
    :goto_4
    const-string/jumbo v6, "4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 776
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/android/server/usb/UsbDeviceManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    .line 781
    :goto_5
    const-string/jumbo v6, "sys.usb.config"

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 773
    .end local v3    # "tmp":Ljava/lang/String;
    .end local v4    # "tmp_acm":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "acm"

    .restart local v3    # "tmp":Ljava/lang/String;
    goto :goto_3

    .line 774
    :cond_8
    const-string/jumbo v4, "acm"

    .restart local v4    # "tmp_acm":Ljava/lang/String;
    goto :goto_4

    .line 779
    :cond_9
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private applyAcmFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 1075
    const-string/jumbo v4, "sys.usb.acm_idx"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "acmIdx":Ljava/lang/String;
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAcmFunction - sys.usb.acm_idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1077
    const-string/jumbo v6, ",mAcmPortIdx="

    .line 1076
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1077
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v6

    .line 1076
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get3(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1079
    :cond_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1109
    :cond_1
    const-string/jumbo v4, "acm"

    invoke-static {p1, v4}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1110
    const-string/jumbo v4, "dual_acm"

    invoke-static {p1, v4}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1112
    :goto_0
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAcmFunction - functions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-object p1

    .line 1080
    :cond_2
    const/4 v1, 0x0

    .line 1081
    .local v1, "portNum":I
    const-string/jumbo v2, ""

    .line 1082
    .local v2, "portStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1083
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->validPortNum(Ljava/lang/String;)I

    move-result v1

    .line 1084
    if-lez v1, :cond_3

    .line 1085
    move-object v2, v0

    .line 1086
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4, v0}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    :cond_3
    :goto_1
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAcmFunction - port_num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    if-lez v1, :cond_4

    .line 1097
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyAcmFunction - Write port_str="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string/jumbo v4, "/sys/class/android_usb/android0/f_acm/port_index"

    invoke-direct {p0, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_4
    const-string/jumbo v4, "acm"

    invoke-static {p1, v4}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1103
    const-string/jumbo v4, "dual_acm"

    invoke-static {p1, v4}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1105
    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 1106
    const-string/jumbo v3, "dual_acm"

    .line 1107
    .local v3, "tmp":Ljava/lang/String;
    :goto_2
    invoke-static {p1, v3}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1088
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1089
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->validPortNum(Ljava/lang/String;)I

    move-result v1

    .line 1090
    if-lez v1, :cond_3

    .line 1091
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1106
    :cond_6
    const-string/jumbo v3, "acm"

    .restart local v3    # "tmp":Ljava/lang/String;
    goto :goto_2
.end method

.method private applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    const-string/jumbo v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1060
    :goto_0
    return-object p1

    .line 1058
    :cond_0
    const-string/jumbo v0, "adb"

    invoke-static {p1, v0}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDefaultFunctions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1523
    const-string/jumbo v1, "persist.sys.usb.config"

    .line 1524
    const-string/jumbo v2, "none"

    .line 1523
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "func":Ljava/lang/String;
    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    const-string/jumbo v0, "mtp"

    .line 1528
    :cond_0
    return-object v0
.end method

.method private isUsbTransferAllowed()Z
    .locals 3

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1118
    .local v0, "userManager":Landroid/os/UserManager;
    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setAcmEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 907
    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAcmEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-get3(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->-set2(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 910
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 906
    :cond_0
    return-void
.end method

.method private setAdbEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 884
    const-string/jumbo v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAdbEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eq p1, v2, :cond_1

    .line 886
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2, p1}, Lcom/android/server/usb/UsbDeviceManager;->-set4(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 890
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "oldFunctions":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "newFunctions":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 893
    const-string/jumbo v2, "persist.sys.usb.config"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 898
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 901
    .end local v0    # "newFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctions":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 902
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    .line 883
    :cond_2
    return-void
.end method

.method private setEnabledFunctions(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 936
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnabledFunctions functions="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 937
    const-string/jumbo v5, "forceRestart="

    .line 936
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 941
    const-string/jumbo v3, "persist.sys.usb.activation"

    const-string/jumbo v4, "no"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "no"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 943
    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Usb is non-activated!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v3, "none"

    invoke-direct {p0, v3, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    .line 945
    return-void

    .line 949
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v4, "bicr"

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 951
    const/4 p2, 0x0

    .line 959
    .end local p2    # "forceRestart":Z
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 960
    .local v0, "oldFunctions":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 961
    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 962
    return-void

    .line 953
    .end local v0    # "oldFunctions":Ljava/lang/String;
    .end local v1    # "oldFunctionsApplied":Z
    .restart local p2    # "forceRestart":Z
    :cond_2
    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "setEnabledFunctions - [CLEAN USB BICR SETTING]"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string/jumbo v3, "sys.usb.bicr"

    const-string/jumbo v4, "no"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    .end local p2    # "forceRestart":Z
    .restart local v0    # "oldFunctions":Ljava/lang/String;
    .restart local v1    # "oldFunctionsApplied":Z
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 977
    :cond_4
    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Failsafe 2: Restoring default USB functions."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-direct {p0, v7, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 979
    return-void

    .line 970
    :cond_5
    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-direct {p0, v0, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 972
    return-void

    .line 984
    :cond_6
    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string/jumbo v3, "none"

    invoke-direct {p0, v3, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->trySetEnabledFunctions(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 986
    return-void

    .line 990
    :cond_7
    const-string/jumbo v3, "UsbDeviceManager"

    const-string/jumbo v4, "Unable to set any USB functions!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-void
.end method

.method private setUsbConfig(Ljava/lang/String;)Z
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 861
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbConfig("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string/jumbo v1, "sys.usb.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, "oldConfig":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 865
    const-string/jumbo v1, "sys.usb.config"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->waitForState(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private setUsbDataUnlocked(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 871
    const-string/jumbo v0, "UsbDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbDataUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    .line 880
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 870
    return-void
.end method

.method private trySetEnabledFunctions(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 994
    if-nez p1, :cond_0

    .line 996
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSetBypassWithTether:Z

    .line 998
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getDefaultFunctions()Ljava/lang/String;

    move-result-object p1

    .line 1001
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1002
    const-string/jumbo v1, "rndis"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1004
    const-string/jumbo v1, "eem"

    .line 1003
    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1002
    if-eqz v1, :cond_2

    .line 1005
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSetBypassWithTether:Z

    .line 1002
    if-eqz v1, :cond_2

    .line 1006
    const-string/jumbo v1, "via_bypass"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1007
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add the bypass functions to tethering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSetBypassWithTether:Z

    .line 1012
    :cond_3
    const-string/jumbo v1, "persist.sys.debug.open_diag"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1013
    const-string/jumbo v1, "rndis"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1012
    if-eqz v1, :cond_4

    .line 1014
    const-string/jumbo v1, "diag"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1018
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1019
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->applyAcmFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1020
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, p1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap2(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1023
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1024
    const-string/jumbo v1, "persist.sys.usb.activation"

    const-string/jumbo v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1026
    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v2, "Usb is non-activated!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string/jumbo v1, "adb"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1028
    const-string/jumbo v1, "acm"

    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1030
    const-string/jumbo v1, "dual_acm"

    .line 1029
    invoke-static {p1, v1}, Landroid/hardware/usb/UsbManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1034
    .end local v0    # "value":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-eqz v1, :cond_6

    if-eqz p2, :cond_8

    .line 1036
    :cond_6
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting USB config to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1038
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 1041
    const-string/jumbo v1, "none"

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    .line 1044
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1045
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to switch USB config to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return v4

    .line 1049
    :cond_7
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 1051
    :cond_8
    return v5
.end method

.method private updateAdbNotification()V
    .locals 0

    .prologue
    .line 1472
    return-void
.end method

.method private updateAudioSourceFunction()V
    .locals 8

    .prologue
    .line 1198
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1199
    const-string/jumbo v7, "audio_source"

    .line 1198
    invoke-static {v6, v7}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1200
    .local v3, "enabled":Z
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v6

    if-eq v3, v6, :cond_1

    .line 1201
    const/4 v0, -0x1

    .line 1202
    .local v0, "card":I
    const/4 v1, -0x1

    .line 1204
    .local v1, "device":I
    if-eqz v3, :cond_0

    .line 1205
    const/4 v4, 0x0

    .line 1207
    .local v4, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/sys/class/android_usb/android0/f_audio_source/pcm"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v5, "scanner":Ljava/util/Scanner;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v0

    .line 1209
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1213
    if-eqz v5, :cond_0

    .line 1214
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    .line 1218
    .end local v5    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get19(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->setAccessoryAudioState(ZII)V

    .line 1219
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set5(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1197
    .end local v0    # "card":I
    .end local v1    # "device":I
    :cond_1
    return-void

    .line 1210
    .restart local v0    # "card":I
    .restart local v1    # "device":I
    .restart local v4    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v2

    .line 1211
    .end local v4    # "scanner":Ljava/util/Scanner;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "UsbDeviceManager"

    const-string/jumbo v7, "could not open audio source PCM file"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1213
    if-eqz v4, :cond_0

    .line 1214
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 1212
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    .line 1213
    :goto_2
    if-eqz v4, :cond_2

    .line 1214
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 1212
    :cond_2
    throw v6

    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .local v4, "scanner":Ljava/util/Scanner;
    goto :goto_2

    .line 1210
    .end local v4    # "scanner":Ljava/util/Scanner;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "scanner":Ljava/util/Scanner;
    .restart local v4    # "scanner":Ljava/util/Scanner;
    goto :goto_1
.end method

.method private updateCurrentAccessory()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1125
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-lez v1, :cond_2

    .line 1126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1127
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    .line 1126
    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 1128
    .local v0, "enteringAccessoryMode":Z
    :goto_0
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentAccessory: enteringAccessoryMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1129
    const-string/jumbo v3, ", mAccessoryModeRequestTime = "

    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1129
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get1(Lcom/android/server/usb/UsbDeviceManager;)J

    move-result-wide v4

    .line 1128
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    const-string/jumbo v3, ", mConfigured = "

    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1130
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1135
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1136
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get2(Lcom/android/server/usb/UsbDeviceManager;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/usb/UsbAccessory;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1137
    const-string/jumbo v1, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "entering USB accessory mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1143
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, v10, v11}, Lcom/android/server/usb/UsbDeviceManager;->-set0(Lcom/android/server/usb/UsbDeviceManager;J)J

    .line 1121
    :cond_0
    :goto_1
    return-void

    .line 1126
    .end local v0    # "enteringAccessoryMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enteringAccessoryMode":Z
    goto/16 :goto_0

    .line 1125
    .end local v0    # "enteringAccessoryMode":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enteringAccessoryMode":Z
    goto/16 :goto_0

    .line 1147
    :cond_3
    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v2, "nativeGetAccessoryStrings failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1149
    :cond_4
    if-nez v0, :cond_6

    .line 1152
    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v2, "exited USB accessory mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 1155
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v1, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1157
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->accessoryDetached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1159
    :cond_5
    iput-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1160
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1, v8}, Lcom/android/server/usb/UsbDeviceManager;->-set1(Lcom/android/server/usb/UsbDeviceManager;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1

    .line 1165
    :cond_6
    const-string/jumbo v1, "UsbDeviceManager"

    const-string/jumbo v2, "USB Accessory Wrong state!!, need to FIXME"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateMidiFunction()V
    .locals 8

    .prologue
    .line 1224
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1225
    const-string/jumbo v5, "midi"

    .line 1224
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1226
    .local v1, "enabled":Z
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get16(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eq v1, v4, :cond_1

    .line 1227
    if-eqz v1, :cond_0

    .line 1228
    const/4 v2, 0x0

    .line 1230
    .local v2, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v3, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set8(Lcom/android/server/usb/UsbDeviceManager;I)I

    .line 1232
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set9(Lcom/android/server/usb/UsbDeviceManager;I)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1237
    if-eqz v3, :cond_0

    .line 1238
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 1242
    .end local v1    # "enabled":Z
    .end local v3    # "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4, v1}, Lcom/android/server/usb/UsbDeviceManager;->-set10(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1244
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get19(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbAlsaManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get16(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    :goto_1
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Lcom/android/server/usb/UsbDeviceManager;->-get14(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get15(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    .line 1223
    return-void

    .line 1233
    .restart local v1    # "enabled":Z
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 1234
    .end local v2    # "scanner":Ljava/util/Scanner;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string/jumbo v4, "UsbDeviceManager"

    const-string/jumbo v5, "could not open MIDI PCM file"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1235
    const/4 v1, 0x0

    .line 1237
    .local v1, "enabled":Z
    if-eqz v2, :cond_0

    .line 1238
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 1236
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "enabled":Z
    :catchall_0
    move-exception v4

    .line 1237
    :goto_3
    if-eqz v2, :cond_2

    .line 1238
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 1236
    :cond_2
    throw v4

    .line 1244
    .end local v1    # "enabled":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1236
    .restart local v1    # "enabled":Z
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .local v2, "scanner":Ljava/util/Scanner;
    goto :goto_3

    .line 1233
    .end local v2    # "scanner":Ljava/util/Scanner;
    .restart local v3    # "scanner":Ljava/util/Scanner;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "scanner":Ljava/util/Scanner;
    .restart local v2    # "scanner":Ljava/util/Scanner;
    goto :goto_2
.end method

.method private updateUsbFunctions()V
    .locals 0

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAudioSourceFunction()V

    .line 1194
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    .line 1192
    return-void
.end method

.method private updateUsbNotification()V
    .locals 19

    .prologue
    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get20(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get13(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1367
    const-string/jumbo v2, "persist.sys.usb.activation"

    const-string/jumbo v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1368
    .local v18, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    return-void

    .line 1364
    .end local v18    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1373
    :cond_1
    const/4 v8, 0x0

    .line 1374
    .local v8, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 1375
    .local v14, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v2, :cond_2

    .line 1376
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    if-nez v2, :cond_6

    .line 1377
    const v8, 0x10403dc

    .line 1400
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eq v8, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1402
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v2, :cond_3

    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1404
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1403
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1407
    :cond_3
    if-eqz v8, :cond_5

    .line 1409
    const v2, 0x10403e1

    .line 1408
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1410
    .local v11, "message":Ljava/lang/CharSequence;
    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 1413
    .local v17, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    .line 1414
    const-string/jumbo v5, "com.android.settings.UsbSettings"

    .line 1413
    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1416
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v2, 0x5c800000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    .line 1424
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1423
    const/4 v3, 0x0

    .line 1424
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1423
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1426
    .local v13, "pi":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1427
    const v3, 0x1080545

    .line 1426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1429
    const-wide/16 v6, 0x0

    .line 1426
    invoke-virtual {v2, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1430
    const/4 v3, 0x1

    .line 1426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1432
    const/4 v3, 0x0

    .line 1426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1433
    const/4 v3, -0x2

    .line 1426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    .line 1435
    const v5, 0x1060059

    .line 1434
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1439
    const/4 v3, 0x1

    .line 1426
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 1442
    .local v12, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "leui_usbsettings_never_show_forever"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_d

    const/4 v15, 0x1

    .line 1443
    .local v15, "show":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v10, 0x1

    .line 1444
    .local v10, "isSetupWizedOk":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    .line 1445
    .local v16, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v9, 0x1

    .line 1447
    .local v9, "isInCall":Z
    :goto_3
    const-string/jumbo v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UsbDeviceManager updateUsbNotification mConnected is:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1448
    const-string/jumbo v5, ",mBootCompleted is:"

    .line 1447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v5

    .line 1447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1449
    const-string/jumbo v5, ",show is:"

    .line 1447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1450
    const-string/jumbo v5, ",setupWized is:"

    .line 1447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1451
    const-string/jumbo v5, ",isInCall is:"

    .line 1447
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    if-eqz v15, :cond_4

    if-eqz v10, :cond_4

    if-eqz v9, :cond_10

    .line 1456
    :cond_4
    :goto_4
    iget-object v2, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "ONGOING_EVENT_AUTO_DISMISS"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1457
    iget-object v2, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "headsup"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1460
    const v2, 0x1080545

    .line 1459
    iput v2, v12, Landroid/app/Notification;->icon:I

    .line 1461
    const v2, 0x1080593

    iput v2, v12, Landroid/app/Notification;->notificationIcon:I

    .line 1462
    const/4 v2, 0x0

    iput v2, v12, Landroid/app/Notification;->priority:I

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Landroid/app/NotificationManager;

    move-result-object v2

    .line 1465
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1464
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v8, v12, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1466
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1363
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "isInCall":Z
    .end local v10    # "isSetupWizedOk":Z
    .end local v11    # "message":Ljava/lang/CharSequence;
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v13    # "pi":Landroid/app/PendingIntent;
    .end local v15    # "show":Z
    .end local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v17    # "title":Ljava/lang/CharSequence;
    :cond_5
    return-void

    .line 1378
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1379
    const-string/jumbo v3, "mtp"

    .line 1378
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1380
    const v8, 0x10403dd

    goto/16 :goto_0

    .line 1381
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1382
    const-string/jumbo v3, "ptp"

    .line 1381
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1383
    const v8, 0x10403de

    goto/16 :goto_0

    .line 1384
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1385
    const-string/jumbo v3, "midi"

    .line 1384
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1386
    const v8, 0x10403df

    goto/16 :goto_0

    .line 1387
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1388
    const-string/jumbo v3, "accessory"

    .line 1387
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1389
    const v8, 0x10403e0

    goto/16 :goto_0

    .line 1390
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1391
    const-string/jumbo v3, "mass_storage"

    .line 1390
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1392
    const v8, 0x80500af

    goto/16 :goto_0

    .line 1393
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1394
    const-string/jumbo v3, "bicr"

    .line 1393
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1395
    const v8, 0x80500e1

    goto/16 :goto_0

    .line 1397
    :cond_c
    const v8, 0x10403dc

    goto/16 :goto_0

    .line 1442
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v11    # "message":Ljava/lang/CharSequence;
    .restart local v12    # "notification":Landroid/app/Notification;
    .restart local v13    # "pi":Landroid/app/PendingIntent;
    .restart local v17    # "title":Ljava/lang/CharSequence;
    :cond_d
    const/4 v15, 0x0

    .restart local v15    # "show":Z
    goto/16 :goto_1

    .line 1443
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "isSetupWizedOk":Z
    goto/16 :goto_2

    .line 1445
    .restart local v16    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "isInCall":Z
    goto/16 :goto_3

    .line 1454
    :cond_10
    iput-object v13, v12, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto/16 :goto_4
.end method

.method private updateUsbStateBroadcast()V
    .locals 6

    .prologue
    .line 1172
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1175
    const-string/jumbo v3, "connected"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1176
    const-string/jumbo v3, "configured"

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1177
    const-string/jumbo v4, "unlocked"

    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1178
    const-string/jumbo v3, "USB_HW_DISCONNECTED"

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1180
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1181
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, "functions":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1183
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1177
    .end local v0    # "functions":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1187
    :cond_1
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "broadcasting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1188
    const-string/jumbo v5, " configured: "

    .line 1187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1188
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get9(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1170
    return-void
.end method

.method private validPortNum(Ljava/lang/String;)I
    .locals 6
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1064
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, "tmp":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1066
    .local v1, "portNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 1067
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 1068
    add-int/lit8 v1, v1, 0x1

    .line 1066
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1071
    :cond_1
    array-length v4, v2

    if-ne v1, v4, :cond_2

    .end local v1    # "portNum":I
    :goto_1
    return v1

    .restart local v1    # "portNum":I
    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private waitForState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 849
    const/4 v1, 0x0

    .line 850
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "value":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 852
    const-string/jumbo v2, "sys.usb.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    .line 854
    :cond_0
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "UsbDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v2, 0x0

    return v2
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 915
    const/4 v1, 0x0

    .line 917
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 922
    if-eqz v2, :cond_0

    .line 924
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 914
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 925
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to close fos at path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 919
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 920
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 922
    if-eqz v1, :cond_1

    .line 924
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 925
    :catch_2
    move-exception v0

    .line 926
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to close fos at path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 921
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 922
    :goto_3
    if-eqz v1, :cond_2

    .line 924
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 921
    :cond_2
    :goto_4
    throw v3

    .line 925
    :catch_3
    move-exception v0

    .line 926
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to close fos at path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 921
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 919
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 1532
    const-string/jumbo v1, "USB Device State:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurrentFunctions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurrentFunctionsApplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConfigured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mUsbDataUnlocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurrentAccessory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Kernel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1541
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/android_usb/android0/state"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Kernel function list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1543
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/sys/class/android_usb/android0/functions"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :goto_0
    return-void

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1249
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1251
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1252
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1253
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v3, :cond_1

    .line 1255
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDataUnlocked:Z

    .line 1257
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    .line 1258
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 1259
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1260
    const-string/jumbo v4, "accessory"

    .line 1259
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1261
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 1266
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get7(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1267
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    .line 1268
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 1272
    :cond_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1273
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v3, :cond_0

    .line 1275
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBypass:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-virtual {v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    goto :goto_0

    :cond_4
    move v3, v5

    .line 1251
    goto :goto_1

    :cond_5
    move v4, v5

    .line 1252
    goto :goto_2

    .line 1262
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez v3, :cond_2

    .line 1264
    invoke-direct {p0, v6, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1281
    :pswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_7

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(Z)V

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_4

    .line 1284
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1285
    .local v2, "portNum":I
    if-lt v2, v4, :cond_8

    const/4 v3, 0x4

    if-gt v2, v3, :cond_8

    .line 1286
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 1292
    :goto_5
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAcmPortIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get4(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_6
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAcmEnabled(Z)V

    goto/16 :goto_0

    .line 1287
    :cond_8
    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    .line 1288
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v6, "1,3"

    invoke-static {v3, v6}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 1290
    :cond_9
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string/jumbo v6, ""

    invoke-static {v3, v6}, Lcom/android/server/usb/UsbDeviceManager;->-set3(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_a
    move v5, v4

    .line 1293
    goto :goto_6

    .line 1296
    .end local v2    # "portNum":I
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1297
    .local v1, "functions":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1300
    .end local v1    # "functions":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1303
    :pswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_b

    :goto_7
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setUsbDataUnlocked(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_7

    .line 1306
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    .line 1307
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 1308
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcast()V

    .line 1309
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto/16 :goto_0

    .line 1312
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->-set6(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 1315
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification()V

    .line 1316
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification()V

    .line 1319
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_c

    .line 1320
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-wrap0(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1322
    :cond_c
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1323
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->-get10(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDebuggingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->-get5(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager;->setAdbEnabled(Z)V

    goto/16 :goto_0

    .line 1327
    :pswitch_8
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v3, v5, :cond_0

    .line 1329
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1330
    const-string/jumbo v5, "mtp"

    .line 1329
    invoke-static {v3, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1331
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    .line 1332
    const-string/jumbo v5, "ptp"

    .line 1331
    invoke-static {v3, v5}, Landroid/hardware/usb/UsbManager;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1333
    :goto_8
    if-eqz v0, :cond_d

    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/16 v5, -0x2710

    if-eq v3, v5, :cond_d

    .line 1334
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current user switched to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1335
    const-string/jumbo v6, "; resetting USB host stack for MTP or PTP"

    .line 1334
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V

    .line 1338
    :cond_d
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    goto/16 :goto_0

    .line 1329
    :cond_e
    const/4 v0, 0x1

    .local v0, "active":Z
    goto :goto_8

    .line 1346
    .end local v0    # "active":Z
    :pswitch_9
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1347
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBypass:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    goto/16 :goto_0

    .line 1351
    :pswitch_a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBypass:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->-wrap3(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V

    goto/16 :goto_0

    .line 1249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 810
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 811
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 812
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 808
    return-void
.end method

.method public sendMessage(IZ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 803
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 804
    .local v0, "m":Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    return-void

    .line 804
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 818
    const-string/jumbo v4, "HWDISCONNECTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 819
    const/4 v1, 0x0

    .line 820
    .local v1, "connected":I
    const/4 v0, 0x0

    .line 821
    .local v0, "configured":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->-set7(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    .line 838
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 839
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 840
    .local v2, "msg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 841
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 843
    if-nez v1, :cond_0

    const/16 v3, 0x3e8

    :cond_0
    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 815
    return-void

    .line 822
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v4, "DISCONNECTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 823
    const/4 v1, 0x0

    .line 824
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .line 825
    .restart local v0    # "configured":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set7(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    goto :goto_0

    .line 826
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_2
    const-string/jumbo v4, "CONNECTED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 827
    const/4 v1, 0x1

    .line 828
    .restart local v1    # "connected":I
    const/4 v0, 0x0

    .line 829
    .restart local v0    # "configured":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set7(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    goto :goto_0

    .line 830
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_3
    const-string/jumbo v4, "CONFIGURED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 831
    const/4 v1, 0x1

    .line 832
    .restart local v1    # "connected":I
    const/4 v0, 0x1

    .line 833
    .restart local v0    # "configured":I
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v4, v3}, Lcom/android/server/usb/UsbDeviceManager;->-set7(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    goto :goto_0

    .line 835
    .end local v0    # "configured":I
    .end local v1    # "connected":I
    :cond_4
    const-string/jumbo v3, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void
.end method
