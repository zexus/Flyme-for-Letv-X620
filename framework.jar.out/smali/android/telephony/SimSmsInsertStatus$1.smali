.class final Landroid/telephony/SimSmsInsertStatus$1;
.super Ljava/lang/Object;
.source "SimSmsInsertStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SimSmsInsertStatus;
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
        "Landroid/telephony/SimSmsInsertStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SimSmsInsertStatus;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "index":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "status":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "index":Ljava/lang/String;
    new-instance v2, Landroid/telephony/SimSmsInsertStatus;

    invoke-direct {v2, v1, v0}, Landroid/telephony/SimSmsInsertStatus;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/telephony/SimSmsInsertStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SimSmsInsertStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 89
    new-array v0, p1, [Landroid/telephony/SimSmsInsertStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/telephony/SimSmsInsertStatus$1;->newArray(I)[Landroid/telephony/SimSmsInsertStatus;

    move-result-object v0

    return-object v0
.end method
