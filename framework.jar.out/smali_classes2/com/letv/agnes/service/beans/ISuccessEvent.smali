.class public Lcom/letv/agnes/service/beans/ISuccessEvent;
.super Ljava/lang/Object;
.source "ISuccessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/ISuccessEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileSize:I

.field private id:Lcom/letv/agnes/service/beans/InnerID;

.field private offset:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/letv/agnes/service/beans/ISuccessEvent$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/ISuccessEvent$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/ISuccessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/letv/agnes/service/beans/InnerID;II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->type:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->id:Lcom/letv/agnes/service/beans/InnerID;

    .line 21
    iput p3, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->offset:I

    .line 22
    iput p4, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->fileSize:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    return v0
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->fileSize:I

    return v0
.end method

.method public getId()Lcom/letv/agnes/service/beans/InnerID;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->id:Lcom/letv/agnes/service/beans/InnerID;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->offset:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setFileSize(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->fileSize:I

    .line 51
    return-void
.end method

.method public setId(Lcom/letv/agnes/service/beans/InnerID;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->id:Lcom/letv/agnes/service/beans/InnerID;

    .line 35
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->offset:I

    .line 43
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->type:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->id:Lcom/letv/agnes/service/beans/InnerID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/letv/agnes/service/beans/ISuccessEvent;->fileSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
