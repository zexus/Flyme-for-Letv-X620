.class public Lcom/letv/leui/util/LeResourceUtils;
.super Ljava/lang/Object;
.source "LeResourceUtils.java"


# static fields
.field private static INTERNAL_PACKAGE_NAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static TYPE_ARRAY:Ljava/lang/String;

.field private static TYPE_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/letv/leui/util/LeResourceUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "string"

    sput-object v0, Lcom/letv/leui/util/LeResourceUtils;->TYPE_STRING:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "array"

    sput-object v0, Lcom/letv/leui/util/LeResourceUtils;->TYPE_ARRAY:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "android"

    sput-object v0, Lcom/letv/leui/util/LeResourceUtils;->INTERNAL_PACKAGE_NAME:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceArrayByName(Ljava/lang/String;Landroid/content/Context;Z)[Ljava/lang/String;
    .locals 6
    .param p0, "indexName"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "localResource"    # Z

    .prologue
    .line 73
    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/String;

    .line 75
    .local v2, "targetStrArr":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 77
    .local v1, "id":I
    const-string/jumbo v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 78
    :cond_0
    sget-object v3, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Parameter indexName should not be null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v2

    .line 82
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_3

    .line 84
    :cond_2
    sget-object v3, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Parameter mContext is invalid."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v2

    .line 83
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 89
    if-nez p2, :cond_4

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/util/LeResourceUtils;->TYPE_ARRAY:Ljava/lang/String;

    .line 91
    sget-object v5, Lcom/letv/leui/util/LeResourceUtils;->INTERNAL_PACKAGE_NAME:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 96
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    :goto_1
    return-object v2

    .line 93
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/util/LeResourceUtils;->TYPE_ARRAY:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No resource is found or exception happened."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getResourceByName(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .param p0, "indexName"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "localResource"    # Z

    .prologue
    .line 28
    const-string/jumbo v2, ""

    .line 30
    .local v2, "targetStr":Ljava/lang/String;
    const/4 v1, -0x1

    .line 32
    .local v1, "id":I
    const-string/jumbo v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 33
    :cond_0
    sget-object v3, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Parameter indexName should not be null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-object v2

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_3

    .line 39
    :cond_2
    sget-object v3, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Parameter mContext is invalid."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-object v2

    .line 38
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 45
    if-nez p2, :cond_4

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/util/LeResourceUtils;->TYPE_STRING:Ljava/lang/String;

    .line 47
    sget-object v5, Lcom/letv/leui/util/LeResourceUtils;->INTERNAL_PACKAGE_NAME:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 52
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    :goto_1
    return-object v2

    .line 49
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/letv/leui/util/LeResourceUtils;->TYPE_STRING:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/letv/leui/util/LeResourceUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "No resource is found or exception happened."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
