.class public Lcom/letv/domain/utils/DeviceInfoFactory;
.super Ljava/lang/Object;
.source "DeviceInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDeviceInfo(Landroid/content/Context;Lcom/letv/domain/DomainRequest;)Lcom/letv/domain/bean/DeviceInfo;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/letv/domain/DomainRequest;

    .prologue
    .line 22
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 25
    .local v8, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "getLEUIDeviceId"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 26
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .local v0, "IMEI":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/letv/domain/bean/DeviceInfo;

    sget-object v10, Lcom/letv/domain/bean/DeviceInfo$Type;->MOBILE:Lcom/letv/domain/bean/DeviceInfo$Type;

    invoke-direct {v1, v10, v0}, Lcom/letv/domain/bean/DeviceInfo;-><init>(Lcom/letv/domain/bean/DeviceInfo$Type;Ljava/lang/String;)V

    .line 35
    .local v1, "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/letv/domain/DomainRequest;->getServices()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/letv/domain/bean/DeviceInfo;->setServices(Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 41
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v10, "domain.oversea_obtain_domain_dynamically"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/letv/domain/bean/DeviceInfo;->setIsOversea(Z)V

    .line 44
    const/4 v6, 0x0

    .line 46
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 50
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v6, :cond_1

    .line 51
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "label":Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 53
    .local v9, "versionName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/letv/domain/bean/DeviceInfo;->setApp_name(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v9}, Lcom/letv/domain/bean/DeviceInfo;->setApp_version(Ljava/lang/String;)V

    .line 56
    .end local v4    # "label":Ljava/lang/String;
    .end local v9    # "versionName":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 27
    .end local v0    # "IMEI":Ljava/lang/String;
    .end local v1    # "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 28
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 29
    const-string/jumbo v10, "DomainHelper"

    const-string/jumbo v11, "not found \"getLEUIDeviceId()\", use \"getDeviceId()\" instead."

    invoke-static {v10, v11}, Lcom/letv/domain/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "IMEI":Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    .restart local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    .line 48
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
