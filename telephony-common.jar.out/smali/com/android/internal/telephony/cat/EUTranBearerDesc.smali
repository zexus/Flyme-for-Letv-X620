.class public Lcom/android/internal/telephony/cat/EUTranBearerDesc;
.super Lcom/android/internal/telephony/cat/BearerDesc;
.source "EUTranBearerDesc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/EUTranBearerDesc$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/EUTranBearerDesc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public QCI:I

.field public guarBitRateD:I

.field public guarBitRateDEx:I

.field public guarBitRateU:I

.field public guarBitRateUEx:I

.field public maxBitRateD:I

.field public maxBitRateDEx:I

.field public maxBitRateU:I

.field public maxBitRateUEx:I

.field public pdnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/EUTranBearerDesc$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/EUTranBearerDesc$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 70
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BearerDesc;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 61
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 65
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 67
    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/EUTranBearerDesc;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/EUTranBearerDesc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    return-void
.end method
