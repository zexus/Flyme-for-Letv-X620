.class public Lcom/android/server/pm/http/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field public static final RESPONSE_CODE_METHOD_ERROR:I = 0x195

.field public static final RESPONSE_CODE_OK:I = 0xc8

.field public static final RESPONSE_CODE_SIGNATURE_ERROR:I = 0x193

.field private static escaped:Ljava/util/regex/Pattern;


# instance fields
.field private DEBUG:Z

.field private is:Ljava/io/InputStream;

.field private mStatusCode:I

.field private responseAsString:Ljava/lang/String;

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, "&#([0-9]{3,5});"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/http/Response;->escaped:Ljava/util/regex/Pattern;

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "contentStream"    # Ljava/io/InputStream;
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/android/server/pm/http/Response;->DEBUG:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/server/pm/http/Response;->streamConsumed:Z

    .line 36
    iput p1, p0, Lcom/android/server/pm/http/Response;->mStatusCode:I

    .line 37
    iput-object p2, p0, Lcom/android/server/pm/http/Response;->is:Ljava/io/InputStream;

    .line 39
    invoke-direct {p0}, Lcom/android/server/pm/http/Response;->fetchResponse()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "responseCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/android/server/pm/http/Response;->DEBUG:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/server/pm/http/Response;->streamConsumed:Z

    .line 43
    iput-object p1, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/android/server/pm/http/Response;->mStatusCode:I

    .line 42
    return-void
.end method

.method private asStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/pm/http/Response;->streamConsumed:Z

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/http/Response;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method private fetchResponse()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/http/Response;->asStream()Ljava/io/InputStream;

    move-result-object v4

    .line 51
    .local v4, "stream":Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v1, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 65
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 60
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "stream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    .line 61
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 62
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/pm/http/Response;->streamConsumed:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/pm/http/Response;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 131
    const-string/jumbo v0, "Area"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Response] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    return-void
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "original"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v2, Lcom/android/server/pm/http/Response;->escaped:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    .local v0, "mm":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v1, "unescaped":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .line 111
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/server/pm/http/Response;->mStatusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Response{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    iget v1, p0, Lcom/android/server/pm/http/Response;->mStatusCode:I

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string/jumbo v1, ", responseString=\'"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/android/server/pm/http/Response;->responseAsString:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const/16 v1, 0x27

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string/jumbo v1, ", is="

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/server/pm/http/Response;->is:Ljava/io/InputStream;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const/16 v1, 0x7d

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
