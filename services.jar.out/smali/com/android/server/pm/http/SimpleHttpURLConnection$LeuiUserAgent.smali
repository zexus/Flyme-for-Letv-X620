.class Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;
.super Ljava/lang/Object;
.source "SimpleHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/http/SimpleHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeuiUserAgent"
.end annotation


# static fields
.field public static final BACK_SLASH:Ljava/lang/String; = "/"

.field public static final LEFT_PARENTTHESIS:Ljava/lang/String; = "("

.field public static final ONE_SPACE:Ljava/lang/String; = " "

.field public static final RIGHT_PARENTTHESIS:Ljava/lang/String; = ")"

.field public static final SEMICOLON:Ljava/lang/String; = ";"

.field public static final TERMINAL_CUSTOM_INFO:Ljava/lang/String; = "active.v1"

.field public static final TERMINAL_NAME:Ljava/lang/String; = "Phone"

.field public static USER_AGENT_VALUE:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->USER_AGENT_VALUE:Ljava/lang/String;

    .line 359
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    sget-object v4, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->USER_AGENT_VALUE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    const-string/jumbo v0, "android"

    .line 382
    .local v0, "defaultPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 384
    const-string/jumbo v5, "/"

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 386
    const-string/jumbo v5, " "

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    const-string/jumbo v5, "("

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 388
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 389
    const-string/jumbo v5, ";"

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 390
    const-string/jumbo v5, " "

    .line 383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    if-nez p0, :cond_1

    .line 393
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :goto_0
    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 407
    const-string/jumbo v5, " "

    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    const-string/jumbo v5, "active.v1"

    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 409
    const-string/jumbo v5, ")"

    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->USER_AGENT_VALUE:Ljava/lang/String;

    .line 412
    const-string/jumbo v4, "Area"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[HttpHelper] ensureUserAgen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->USER_AGENT_VALUE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v0    # "defaultPackageName":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    sget-object v4, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->USER_AGENT_VALUE:Ljava/lang/String;

    return-object v4

    .line 395
    .restart local v0    # "defaultPackageName":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v2, 0x0

    .line 397
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 398
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 399
    const-string/jumbo v5, " "

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 400
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v4, "Area"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[HttpHelper] ensureUserAgen, error:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
