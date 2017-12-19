.class public Lcom/mediatek/internal/telephony/MmsIcpInfo;
.super Ljava/lang/Object;
.source "MmsIcpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/MmsIcpInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/internal/telephony/MmsIcpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mAddressType:Ljava/lang/String;

.field public mAuthId:Ljava/lang/String;

.field public mAuthMechanism:Ljava/lang/String;

.field public mAuthPw:Ljava/lang/String;

.field public mAuthType:Ljava/lang/String;

.field public mDomainName:Ljava/lang/String;

.field public mImplementation:Ljava/lang/String;

.field public mPort:I

.field public mRelayOrServerAddress:Ljava/lang/String;

.field public mService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/mediatek/internal/telephony/MmsIcpInfo$1;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/MmsIcpInfo$1;-><init>()V

    .line 104
    sput-object v0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mRelayOrServerAddress:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mDomainName:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAddress:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAddressType:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mPort:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mService:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthType:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthPw:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthMechanism:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeTo(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mImplementation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mRelayOrServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mDomainName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAddressType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mService:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthPw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MmsIcpInfo;->mAuthMechanism:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/MmsIcpInfo;->writeTo(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method
