.class public Lcom/letv/domain/bean/ResponseInfo;
.super Ljava/lang/Object;
.source "ResponseInfo.java"


# instance fields
.field private data:Lorg/json/JSONObject;

.field private errmsg:Ljava/lang/String;

.field private errno:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/letv/domain/bean/ResponseInfo;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/letv/domain/bean/ResponseInfo;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrno()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/letv/domain/bean/ResponseInfo;->errno:I

    return v0
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/letv/domain/bean/ResponseInfo;->data:Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method public setErrmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errmsg"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/letv/domain/bean/ResponseInfo;->errmsg:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setErrno(I)V
    .locals 0
    .param p1, "errno"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/letv/domain/bean/ResponseInfo;->errno:I

    .line 18
    return-void
.end method
