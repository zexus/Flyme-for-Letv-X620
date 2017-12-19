.class public Lcom/android/server/activation/exception/NetworkRequestException;
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 46
    iput p1, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 47
    iput p2, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;II)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;
    .param p2, "statusCode"    # I
    .param p3, "exceptionTypeCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 42
    iput p2, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 43
    iput p3, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 27
    iput p2, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "statusCode"    # I

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    .line 15
    iput v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 37
    iput p3, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    .line 35
    return-void
.end method


# virtual methods
.method public getExceptionTypeCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->mExceptionTypeCode:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/activation/exception/NetworkRequestException;->statusCode:I

    return v0
.end method
