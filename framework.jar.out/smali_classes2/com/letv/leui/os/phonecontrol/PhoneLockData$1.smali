.class final Lcom/letv/leui/os/phonecontrol/PhoneLockData$1;
.super Ljava/lang/Object;
.source "PhoneLockData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/phonecontrol/PhoneLockData;
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
        "Lcom/letv/leui/os/phonecontrol/PhoneLockData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    new-instance v0, Lcom/letv/leui/os/phonecontrol/PhoneLockData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/os/phonecontrol/PhoneLockData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/letv/leui/os/phonecontrol/PhoneLockData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/os/phonecontrol/PhoneLockData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 55
    new-array v0, p1, [Lcom/letv/leui/os/phonecontrol/PhoneLockData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/letv/leui/os/phonecontrol/PhoneLockData$1;->newArray(I)[Lcom/letv/leui/os/phonecontrol/PhoneLockData;

    move-result-object v0

    return-object v0
.end method
