.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p1, "json"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 82
    .local v2, "lenient":Z
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 90
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    return-object v3

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    new-instance v3, Lcom/google/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to Json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    .line 90
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 89
    throw v3

    .line 85
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/StackOverflowError;
    :try_start_2
    new-instance v3, Lcom/google/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed parsing JSON source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to Json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .locals 7
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    new-instance v4, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v4, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v4, "jsonReader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 60
    .local v3, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v5, v6, :cond_0

    .line 61
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    const-string/jumbo v6, "Did not consume the entire document."

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "jsonReader":Lcom/google/gson/stream/JsonReader;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 63
    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    .restart local v3    # "element":Lcom/google/gson/JsonElement;
    .restart local v4    # "jsonReader":Lcom/google/gson/stream/JsonReader;
    :cond_0
    return-object v3

    .line 68
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    .end local v4    # "jsonReader":Lcom/google/gson/stream/JsonReader;
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v5, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 66
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Lcom/google/gson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
