.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$OpEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mMode:I

.field private final mOp:I

.field private final mProxyPackageName:Ljava/lang/String;

.field private final mProxyUid:I

.field private final mRejectTime:J

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1664
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1586
    return-void
.end method

.method public constructor <init>(IIJJIILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .param p3, "time"    # J
    .param p5, "rejectTime"    # J
    .param p7, "duration"    # I
    .param p8, "proxyUid"    # I
    .param p9, "proxyPackage"    # Ljava/lang/String;

    .prologue
    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1598
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 1599
    iput-wide p3, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    .line 1600
    iput-wide p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    .line 1601
    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 1602
    iput p8, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    .line 1603
    iput-object p9, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    .line 1596
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 1656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 1657
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    .line 1658
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    .line 1659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 1660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    .line 1661
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    .line 1654
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1640
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 1627
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public getProxyPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyUid()I
    .locals 1

    .prologue
    .line 1631
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    return v0
.end method

.method public getRejectTime()J
    .locals 2

    .prologue
    .line 1619
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 1615
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 1623
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1645
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1648
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1649
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mProxyPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1644
    return-void
.end method
