.class public Lcom/android/server/activation/bean/ActiveResposeBean;
.super Ljava/lang/Object;
.source "ActiveResposeBean.java"


# instance fields
.field private errmsg:Ljava/lang/String;

.field private errno:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/String;)Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Lcom/android/server/activation/bean/ActiveResposeBean;

    invoke-direct {v1}, Lcom/android/server/activation/bean/ActiveResposeBean;-><init>()V

    .line 74
    .local v1, "data":Lcom/android/server/activation/bean/ActiveResposeBean;
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 75
    .local v0, "builder":Lcom/google/gson/GsonBuilder;
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 76
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/android/server/activation/bean/ActiveResposeBean;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":Lcom/android/server/activation/bean/ActiveResposeBean;
    check-cast v1, Lcom/android/server/activation/bean/ActiveResposeBean;

    .line 77
    .restart local v1    # "data":Lcom/android/server/activation/bean/ActiveResposeBean;
    return-object v1
.end method


# virtual methods
.method public getErrmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getErrno()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    return v0
.end method

.method public isImeiNotExsite()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyError()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRetry()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 60
    iget v1, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    const/16 v2, 0x2904

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string/jumbo v1, "errno: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    const-string/jumbo v1, ", errmsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/activation/bean/ActiveResposeBean;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
