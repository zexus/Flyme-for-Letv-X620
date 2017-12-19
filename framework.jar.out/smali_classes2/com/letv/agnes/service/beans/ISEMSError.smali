.class public Lcom/letv/agnes/service/beans/ISEMSError;
.super Ljava/lang/Object;
.source "ISEMSError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/ISEMSError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private des:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private proc:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private time:J

.field private type:I

.field private uContact:Ljava/lang/String;

.field private uDes:Ljava/lang/String;

.field private uFreq:I

.field private uMail:Ljava/lang/String;

.field private uSource:I

.field private uType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/letv/agnes/service/beans/ISEMSError$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/ISEMSError$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/ISEMSError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->time:J

    .line 33
    iput-object p3, p0, Lcom/letv/agnes/service/beans/ISEMSError;->id:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/letv/agnes/service/beans/ISEMSError;->type:I

    .line 35
    iput-object p5, p0, Lcom/letv/agnes/service/beans/ISEMSError;->proc:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/letv/agnes/service/beans/ISEMSError;->des:Ljava/lang/String;

    .line 37
    iput p7, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uType:I

    .line 38
    iput p8, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uSource:I

    .line 39
    iput p9, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uFreq:I

    .line 40
    iput-object p10, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uDes:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uContact:Ljava/lang/String;

    .line 42
    iput-object p12, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uMail:Ljava/lang/String;

    .line 43
    iput-object p13, p0, Lcom/letv/agnes/service/beans/ISEMSError;->props:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    return v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->proc:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->type:I

    return v0
.end method

.method public getUContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uContact:Ljava/lang/String;

    return-object v0
.end method

.method public getUDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uDes:Ljava/lang/String;

    return-object v0
.end method

.method public getUFreq()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uFreq:I

    return v0
.end method

.method public getUMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uMail:Ljava/lang/String;

    return-object v0
.end method

.method public getUSource()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uSource:I

    return v0
.end method

.method public getUType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uType:I

    return v0
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->des:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setProc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->proc:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->props:Ljava/util/Map;

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->time:J

    .line 48
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->type:I

    .line 64
    return-void
.end method

.method public setUContact(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uContact:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUDes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uDes:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUFreq(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uFreq:I

    .line 112
    return-void
.end method

.method public setUMail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uMail:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setUSource(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uSource:I

    .line 104
    return-void
.end method

.method public setUType(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uType:I

    .line 96
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->proc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->des:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uFreq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uDes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uContact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->uMail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSError;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 153
    return-void
.end method
