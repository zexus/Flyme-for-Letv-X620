.class public Lcom/android/server/pm/http/exception/NetworkRequestException;
.super Ljava/lang/Exception;
.source "NetworkRequestException.java"


# static fields
.field public static final EXCEPTION_CODE_VALIDATE_TIME:I = -0x64

.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private mExceptionTypeCode:I

.field private statusCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "exceptionTypeCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 40
    iput p1, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 41
    iput p2, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, -0x1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;II)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;
    .param p2, "statusCode"    # I
    .param p3, "exceptionTypeCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 35
    iput p2, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 36
    iput p3, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 21
    iput p2, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "statusCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 9
    iput v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 30
    iput p3, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    .line 28
    return-void
.end method


# virtual methods
.method public getExceptionTypeCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->mExceptionTypeCode:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/pm/http/exception/NetworkRequestException;->statusCode:I

    return v0
.end method
