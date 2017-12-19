.class public Lcom/letv/agnes/service/beans/IResend;
.super Ljava/lang/Object;
.source "IResend.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IResend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/letv/agnes/service/beans/IResend$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IResend$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IResend;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/letv/agnes/service/beans/IResend;->type:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/letv/agnes/service/beans/IResend;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/letv/agnes/service/beans/IResend;->type:I

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/letv/agnes/service/beans/IResend;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
