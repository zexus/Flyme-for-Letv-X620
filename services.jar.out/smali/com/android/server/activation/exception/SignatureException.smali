.class public Lcom/android/server/activation/exception/SignatureException;
.super Ljava/lang/Exception;
.source "SignatureException.java"


# static fields
.field private static final serialVersionUID:J = -0x2467dddfdfdc8aadL


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/activation/exception/SignatureException;->statusCode:I

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/activation/exception/SignatureException;->statusCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/activation/exception/SignatureException;->statusCode:I

    .line 26
    iput p2, p0, Lcom/android/server/activation/exception/SignatureException;->statusCode:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/activation/exception/SignatureException;->statusCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/activation/exception/SignatureException;->statusCode:I

    return v0
.end method
