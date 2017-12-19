.class final Lcom/mediatek/internal/telephony/MmsIcpInfo$1;
.super Ljava/lang/Object;
.source "MmsIcpInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MmsIcpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/internal/telephony/MmsIcpInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 108
    new-instance v0, Lcom/mediatek/internal/telephony/MmsIcpInfo;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MmsIcpInfo;-><init>()V

    .line 109
    .local v0, "mmsIcpInfo":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/MmsIcpInfo;->readFrom(Landroid/os/Parcel;)V

    .line 110
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MmsIcpInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/internal/telephony/MmsIcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/internal/telephony/MmsIcpInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 115
    new-array v0, p1, [Lcom/mediatek/internal/telephony/MmsIcpInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MmsIcpInfo$1;->newArray(I)[Lcom/mediatek/internal/telephony/MmsIcpInfo;

    move-result-object v0

    return-object v0
.end method
