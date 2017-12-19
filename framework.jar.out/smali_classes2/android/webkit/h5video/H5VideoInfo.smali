.class public Landroid/webkit/h5video/H5VideoInfo;
.super Ljava/lang/Object;
.source "H5VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/h5video/H5VideoInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/webkit/h5video/H5VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_FROM_H5:I = 0x1

.field public static final VIDEO_FROM_MTT:I = 0x2

.field public static final VIDEO_FROM_NONE:I


# instance fields
.field public mDuration:I

.field public mFromWhere:I

.field public mHasClicked:Z

.field public mIsForceSniff:Z

.field public mIsFromH5Video:Z

.field public mMimeType:Ljava/lang/String;

.field public mNodePointer:I

.field public mPostion:I

.field public mPrivateBrowsingEnabled:Z

.field public mScreenMode:I

.field public mSnifferReffer:Ljava/lang/String;

.field public mUA:Ljava/lang/String;

.field public mVideoId:I

.field public mVideoUrl:Ljava/lang/String;

.field public mWebTitle:Ljava/lang/String;

.field public mWebUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Landroid/webkit/h5video/H5VideoInfo$1;

    invoke-direct {v0}, Landroid/webkit/h5video/H5VideoInfo$1;-><init>()V

    sput-object v0, Landroid/webkit/h5video/H5VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    .line 21
    iput v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    .line 24
    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    .line 25
    const/16 v0, 0x66

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    .line 28
    iput v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    .line 29
    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    .line 30
    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    .line 32
    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    .line 21
    iput v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    .line 24
    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    .line 25
    const/16 v0, 0x66

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    .line 28
    iput v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    .line 29
    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    .line 30
    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    .line 32
    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    .line 105
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v0, v2

    .line 120
    goto :goto_1

    :cond_2
    move v0, v2

    .line 121
    goto :goto_2

    :cond_3
    move v1, v2

    .line 122
    goto :goto_3
.end method

.method public static copy(Landroid/webkit/h5video/H5VideoInfo;)Landroid/webkit/h5video/H5VideoInfo;
    .locals 2
    .param p0, "info"    # Landroid/webkit/h5video/H5VideoInfo;

    .prologue
    .line 41
    new-instance v0, Landroid/webkit/h5video/H5VideoInfo;

    invoke-direct {v0}, Landroid/webkit/h5video/H5VideoInfo;-><init>()V

    .line 42
    .local v0, "newInfo":Landroid/webkit/h5video/H5VideoInfo;
    if-nez p0, :cond_0

    .line 44
    return-object v0

    .line 46
    :cond_0
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    .line 47
    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    .line 50
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    .line 51
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    .line 52
    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    .line 53
    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    .line 54
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    .line 55
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    .line 56
    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    .line 58
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    .line 59
    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    .line 60
    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    .line 61
    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    .line 63
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "falg"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v0, v2

    .line 97
    goto :goto_2

    :cond_3
    move v1, v2

    .line 98
    goto :goto_3
.end method
