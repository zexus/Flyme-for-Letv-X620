.class public Lcom/android/server/pm/http/exception/MethodRequestException;
.super Ljava/lang/Exception;
.source "MethodRequestException.java"


# static fields
.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 36
    iput p1, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 23
    iput p2, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "statusCode"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 32
    iput p3, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    .line 30
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/pm/http/exception/MethodRequestException;->statusCode:I

    return v0
.end method
