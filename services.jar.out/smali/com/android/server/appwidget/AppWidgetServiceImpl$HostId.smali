.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostId"
.end annotation


# instance fields
.field final hostId:I

.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "hostId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3504
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 3505
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 3506
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 3503
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3511
    if-ne p0, p1, :cond_0

    .line 3512
    return v4

    .line 3514
    :cond_0
    if-nez p1, :cond_1

    .line 3515
    return v3

    .line 3517
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3518
    return v3

    :cond_2
    move-object v0, p1

    .line 3520
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3521
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-eq v1, v2, :cond_3

    .line 3522
    return v3

    .line 3524
    :cond_3
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    if-eq v1, v2, :cond_4

    .line 3525
    return v3

    .line 3527
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 3528
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3529
    return v3

    .line 3531
    :cond_5
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3532
    return v3

    .line 3534
    :cond_6
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 3539
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 3540
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    add-int v0, v1, v2

    .line 3541
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3542
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 3541
    :goto_0
    add-int v0, v2, v1

    .line 3543
    return v0

    .line 3542
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HostId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3549
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3549
    const-string/jumbo v1, ", hostId:"

    .line 3548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3549
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 3548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3550
    const-string/jumbo v1, ", pkg:"

    .line 3548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3550
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 3548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3550
    const/16 v1, 0x7d

    .line 3548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
