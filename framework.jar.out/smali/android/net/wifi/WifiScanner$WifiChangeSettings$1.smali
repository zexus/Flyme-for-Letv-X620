.class final Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$WifiChangeSettings;
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
        "Landroid/net/wifi/WifiScanner$WifiChangeSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 546
    new-instance v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    invoke-direct {v3}, Landroid/net/wifi/WifiScanner$WifiChangeSettings;-><init>()V

    .line 547
    .local v3, "settings":Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->rssiSampleSize:I

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->lostApSampleSize:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->unchangedSampleSize:I

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->minApsBreachingThreshold:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->periodInMs:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .local v2, "len":I
    new-array v4, v2, [Landroid/net/wifi/WifiScanner$BssidInfo;

    iput-object v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    .line 554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 555
    new-instance v1, Landroid/net/wifi/WifiScanner$BssidInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$BssidInfo;-><init>()V

    .line 556
    .local v1, "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->low:I

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->high:I

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->frequencyHint:I

    .line 560
    iget-object v4, v3, Landroid/net/wifi/WifiScanner$WifiChangeSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    aput-object v1, v4, v0

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "info":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 566
    new-array v0, p1, [Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$WifiChangeSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$WifiChangeSettings;

    move-result-object v0

    return-object v0
.end method
