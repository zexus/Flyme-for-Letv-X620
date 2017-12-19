.class public final Landroid/provider/ContactsContract$Accounts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final LETV_ACCOUNT_TYPE:Ljava/lang/String; = "com.letv"

.field public static final LOCAL_DEVICES_ACCOUNT:Landroid/accounts/Account;

.field private static final LOCAL_DEVICES_ACCOUNT_NAME:Ljava/lang/String; = "LocalDevice"

.field private static final LOCAL_DEVICES_ACCOUNT_TYPE:Ljava/lang/String; = "LocalDevice"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10030
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "LocalDevice"

    const-string/jumbo v2, "LocalDevice"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10029
    sput-object v0, Landroid/provider/ContactsContract$Accounts;->LOCAL_DEVICES_ACCOUNT:Landroid/accounts/Account;

    .line 10016
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDeviceOnlyAccount([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 6
    .param p0, "accounts"    # [Landroid/accounts/Account;

    .prologue
    const/4 v4, 0x0

    .line 10033
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [Landroid/accounts/Account;

    .line 10034
    .local v3, "newAccount":[Landroid/accounts/Account;
    sget-object v5, Landroid/provider/ContactsContract$Accounts;->LOCAL_DEVICES_ACCOUNT:Landroid/accounts/Account;

    aput-object v5, v3, v4

    .line 10035
    const/4 v1, 0x1

    .line 10036
    .local v1, "i":I
    array-length v5, p0

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p0, v4

    .line 10037
    .local v0, "account":Landroid/accounts/Account;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v0, v3, v2

    .line 10036
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 10039
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v3
.end method

.method public static isLeTVAccount(Landroid/accounts/Account;)Z
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 10043
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v1, "com.letv"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10044
    const/4 v0, 0x1

    return v0

    .line 10046
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
