.class public Lcom/mediatek/internal/telephony/MmsConfigInfo;
.super Ljava/lang/Object;
.source "MmsConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MmsConfigInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/MmsConfigInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCenterTimeout:I

.field public mMessageMaxSize:I

.field public mRetryInterval:J

.field public mRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/mediatek/internal/telephony/MmsConfigInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MmsConfigInfo$1;-><init>()V

    .line 82
    sput-object v0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mMessageMaxSize:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryTimes:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryInterval:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mCenterTimeout:I

    .line 54
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mMessageMaxSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryTimes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-wide v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mRetryInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget v0, p0, Lcom/mediatek/internal/telephony/MmsConfigInfo;->mCenterTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MmsConfigInfo;->writeTo(Landroid/os/Parcel;)V

    .line 78
    return-void
.end method
