.class public abstract Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.super Ljava/lang/Object;
.source "AbstractFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;,
        Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
    }
.end annotation


# static fields
.field public static CMD_RESULT_FAIL:I = 0x0

.field public static CMD_RESULT_OK:I = 0x0

.field public static final RESULT_CANCELED:I = 0x66

.field public static final RESULT_FAILURE:I = 0x65

.field public static final RESULT_NOT_ENABLED:I = 0x73

.field public static final RESULT_NOT_REGISTERED_FINGERPRINT:I = 0x70

.field public static final RESULT_NOT_SUPPORT:I = 0x6f

.field public static final RESULT_NO_MATCH:I = 0x67

.field public static final RESULT_SENSOR_ERROR:I = 0x74

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final RESULT_TIMEOUT:I = 0x71

.field public static STATUS_INPUTTING:I

.field public static STATUS_INPUT_COMPLETED:I

.field public static STATUS_WAITING_FOR_INPUT:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->CMD_RESULT_OK:I

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->CMD_RESULT_FAIL:I

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_WAITING_FOR_INPUT:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUTTING:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    .line 47
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static getInterfaceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "1.0"

    return-object v0
.end method

.method public static loadFingerprint()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 106
    :try_start_0
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "interface version is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->getInterfaceVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v8, "com.alipay.android.fingerprint.AlipayFingerprint"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "FingerPrintClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "open"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 110
    .local v7, "open":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;

    .line 111
    .local v6, "fp":Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    if-nez v6, :cond_0

    .line 112
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "load fingerprint fail through open"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    return-object v6

    .line 131
    .end local v6    # "fp":Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .end local v7    # "open":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 133
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LoadFingerprint fail, invocation target"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v11

    .line 128
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LoadFingerprint fail, illegal access"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LoadFingerprint fail, illegal argument "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v11

    .line 120
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 122
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LoadFingerprint fail, not found method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v11

    .line 116
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v8, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LoadFingerprint fail, not found class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-object v11
.end method

.method public static open()Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract cancel()I
.end method

.method public abstract getFpIDs()[I
.end method

.method public abstract getFpName(I)Ljava/lang/String;
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 217
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "invokeTACmd not implement"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract release()I
.end method

.method public abstract startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
.end method

.method public abstract startFpManager(Landroid/content/Context;)I
.end method

.method public updateTA(Ljava/lang/String;)Z
    .locals 2
    .param p1, "taPath"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateTA not implement"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return v0
.end method
