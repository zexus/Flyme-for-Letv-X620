.class final Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .locals 4
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1602
    instance-of v1, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz v1, :cond_0

    .line 1603
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .end local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1604
    return-void

    .line 1606
    .restart local p1    # "reader":Lcom/google/gson/stream/JsonReader;
    :cond_0
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->-get0(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1607
    .local v0, "p":I
    if-nez v0, :cond_1

    .line 1608
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->-wrap0(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 1610
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1611
    const/16 v1, 0x9

    invoke-static {p1, v1}, Lcom/google/gson/stream/JsonReader;->-set0(Lcom/google/gson/stream/JsonReader;I)I

    .line 1601
    :goto_0
    return-void

    .line 1612
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1613
    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/google/gson/stream/JsonReader;->-set0(Lcom/google/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1614
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1615
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/google/gson/stream/JsonReader;->-set0(Lcom/google/gson/stream/JsonReader;I)I

    goto :goto_0

    .line 1617
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1618
    const-string/jumbo v3, " at line "

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1618
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->-wrap2(Lcom/google/gson/stream/JsonReader;)I

    move-result v3

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1618
    const-string/jumbo v3, " column "

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1618
    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->-wrap1(Lcom/google/gson/stream/JsonReader;)I

    move-result v3

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1619
    const-string/jumbo v3, " path "

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1619
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1617
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
