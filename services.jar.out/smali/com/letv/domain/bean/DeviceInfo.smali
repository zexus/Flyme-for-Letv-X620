.class public Lcom/letv/domain/bean/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/domain/bean/DeviceInfo$Type;
    }
.end annotation


# instance fields
.field private app_name:Ljava/lang/String;

.field private app_version:Ljava/lang/String;

.field private hardware_version:Ljava/lang/String;

.field private final imei:Ljava/lang/String;

.field private isOversea:Z

.field private services:Ljava/lang/String;

.field private software_version:Ljava/lang/String;

.field private final type:Lcom/letv/domain/bean/DeviceInfo$Type;

.field private ui_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/letv/domain/bean/DeviceInfo$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/letv/domain/bean/DeviceInfo$Type;
    .param p2, "imei"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/letv/domain/bean/DeviceInfo;->imei:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->type:Lcom/letv/domain/bean/DeviceInfo$Type;

    .line 18
    return-void
.end method


# virtual methods
.method public getApp_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->app_version:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->hardware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getServices()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->services:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftware_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->software_version:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->type:Lcom/letv/domain/bean/DeviceInfo$Type;

    invoke-virtual {v0}, Lcom/letv/domain/bean/DeviceInfo$Type;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUi_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/domain/bean/DeviceInfo;->ui_version:Ljava/lang/String;

    return-object v0
.end method

.method public isOversea()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/letv/domain/bean/DeviceInfo;->isOversea:Z

    return v0
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_name"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->app_name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setApp_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_version"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->app_version:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setHardware_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardware_version"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->hardware_version:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setIsOversea(Z)V
    .locals 0
    .param p1, "isOversea"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/letv/domain/bean/DeviceInfo;->isOversea:Z

    .line 83
    return-void
.end method

.method public setServices(Ljava/lang/String;)V
    .locals 0
    .param p1, "services"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->services:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSoftware_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "software_version"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->software_version:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUi_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "ui_version"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/letv/domain/bean/DeviceInfo;->ui_version:Ljava/lang/String;

    .line 35
    return-void
.end method
