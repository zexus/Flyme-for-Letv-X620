.class final Lcom/letv/leui/os/phonecontrol/PhoneControlData$1;
.super Ljava/lang/Object;
.source "PhoneControlData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/phonecontrol/PhoneControlData;
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
        "Lcom/letv/leui/os/phonecontrol/PhoneControlData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 81
    new-instance v0, Lcom/letv/leui/os/phonecontrol/PhoneControlData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/os/phonecontrol/PhoneControlData;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/letv/leui/os/phonecontrol/PhoneControlData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/os/phonecontrol/PhoneControlData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 86
    new-array v0, p1, [Lcom/letv/leui/os/phonecontrol/PhoneControlData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/letv/leui/os/phonecontrol/PhoneControlData$1;->newArray(I)[Lcom/letv/leui/os/phonecontrol/PhoneControlData;

    move-result-object v0

    return-object v0
.end method
