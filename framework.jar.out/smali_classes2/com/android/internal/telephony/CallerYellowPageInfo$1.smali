.class final Lcom/android/internal/telephony/CallerYellowPageInfo$1;
.super Ljava/lang/Object;
.source "CallerYellowPageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerYellowPageInfo;
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
        "Lcom/android/internal/telephony/CallerYellowPageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CallerYellowPageInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 253
    new-instance v0, Lcom/android/internal/telephony/CallerYellowPageInfo;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallerYellowPageInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallerYellowPageInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CallerYellowPageInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/CallerYellowPageInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 258
    new-array v0, p1, [Lcom/android/internal/telephony/CallerYellowPageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallerYellowPageInfo$1;->newArray(I)[Lcom/android/internal/telephony/CallerYellowPageInfo;

    move-result-object v0

    return-object v0
.end method
