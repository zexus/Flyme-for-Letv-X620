.class public Lcom/letv/leui/util/LeBrowsedResourceShareUtils;
.super Ljava/lang/Object;
.source "LeBrowsedResourceShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;,
        Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;
    }
.end annotation


# static fields
.field private static final FEATURE_MAX:Ljava/lang/String; = "share.max.share_show_max_logo"

.field private static final FEATURE_MAX_PLUS:Ljava/lang/String; = "share.max.share_show_max_plus_logo"

.field private static final FEATURE_PRO:Ljava/lang/String; = "share.pro.share_show_pro_logo"

.field private static final FEATURE_X3:Ljava/lang/String; = "share.x3.share_show_x3_logo"

.field private static final FEATURE_X6:Ljava/lang/String; = "share.show_x6_logo"

.field private static final MAX1_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.max"

.field private static final MAXPLUS_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.maxplus"

.field private static final MAX_PINK_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.letv.android.share.pink.max"

.field private static final PRO_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.pro"

.field private static final QQ_ACTIVITY:Ljava/lang/String; = ".LaunchQQShareActivity"

.field private static final QZONE_ACTIVITY:Ljava/lang/String; = ".LaunchQZoneShareActivity"

.field private static final S1_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.preleading"

.field private static final TAG:Ljava/lang/String;

.field private static final WECHAT_ACTIVITY:Ljava/lang/String; = ".LaunchWeChatShareActivity"

.field private static final WEIBO_ACTIVITY:Ljava/lang/String; = ".LaunchWeiboShareActivity"

.field private static final X3_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.letv.android.share.le1s"

.field private static final X6PLUS_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6pro"

.field private static final X6_SHARE_PACKAGE_NAME:Ljava/lang/String; = "com.le.share.x6"

.field private static final notSupportAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.qqlite"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->notSupportAppList:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 489
    if-nez p1, :cond_0

    return-object v3

    .line 490
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 491
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 492
    .local v7, "data":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 493
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 508
    .end local v7    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v7

    .line 494
    .restart local v7    # "data":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .local v7, "data":Ljava/lang/String;
    goto :goto_0

    .line 496
    .local v7, "data":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v4, 0x0

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 498
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 499
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 501
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_4

    .line 502
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 505
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "index":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getSharePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 455
    const-string/jumbo v0, ""

    .line 456
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "share.pro.share_show_pro_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string/jumbo v0, "com.le.share.pro"

    .line 478
    :goto_0
    return-object v0

    .line 458
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "share.max.share_show_max_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    invoke-static {}, Lcom/letv/leui/util/LeThemeUtils;->getThemeColor()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 461
    const-string/jumbo v0, "com.letv.android.share.pink.max"

    goto :goto_0

    .line 463
    :cond_1
    const-string/jumbo v0, "com.le.share.max"

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "share.max.share_show_max_plus_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    const-string/jumbo v0, "com.le.share.maxplus"

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "share.x3.share_show_x3_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 468
    const-string/jumbo v0, "com.letv.android.share.le1s"

    goto :goto_0

    .line 469
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "share.show_x6_logo"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 470
    invoke-static {}, Lcom/letv/leui/util/LeProductConfig;->getProductConfigType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 471
    const-string/jumbo v0, "com.le.share.x6pro"

    goto :goto_0

    .line 473
    :cond_5
    const-string/jumbo v0, "com.le.share.x6"

    goto :goto_0

    .line 476
    :cond_6
    const-string/jumbo v0, "com.le.share.preleading"

    goto :goto_0
.end method

.method private static outputLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 445
    sget-object v0, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method private static setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 339
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 340
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 341
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 342
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 341
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_0
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 349
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 350
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 351
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 350
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_1
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 358
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 361
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 360
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 369
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 371
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    .line 370
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    .local v1, "imagePath":Ljava/lang/String;
    const-string/jumbo v2, "content:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_3
    if-nez v1, :cond_7

    .line 376
    const-string/jumbo v2, " Convert string to uri failed! "

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 377
    return v4

    .line 344
    .end local v1    # "imagePath":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, " the value of LeResourceType.leText must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 345
    return v4

    .line 353
    :cond_5
    const-string/jumbo v2, " the value of LeResourceType.leWebUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 354
    return v4

    .line 364
    :cond_6
    const-string/jumbo v2, " the value of LeResourceType.leBitmap must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 365
    return v4

    .line 379
    .restart local v1    # "imagePath":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 380
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 382
    :cond_8
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    .end local v1    # "imagePath":Ljava/lang/String;
    :cond_9
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 389
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 390
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 391
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_a
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 398
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 399
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 400
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 399
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    :cond_b
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 407
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 408
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 409
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 408
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    :cond_c
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 416
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 417
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 418
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leFilePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 417
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    :cond_d
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 425
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 426
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 427
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 426
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    :cond_e
    :goto_0
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 433
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 434
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v3

    .line 435
    sget-object v2, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 434
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    :cond_f
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 384
    :cond_10
    const-string/jumbo v2, " the value of LeResourceType.leImagePath must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 385
    return v4

    .line 393
    :cond_11
    const-string/jumbo v2, " the value of LeResourceType.leTitle must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 394
    return v4

    .line 402
    :cond_12
    const-string/jumbo v2, " the value of LeResourceType.leMusicUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 403
    return v4

    .line 411
    :cond_13
    const-string/jumbo v2, " the value of LeResourceType.leVideoUrl must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 412
    return v4

    .line 420
    :cond_14
    const-string/jumbo v2, " the value of LeResourceType.leFilePath must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 421
    return v4

    .line 429
    :cond_15
    const-string/jumbo v2, " the value of LeResourceType.packageName must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_16
    const-string/jumbo v2, " the value of LeResourceType.pageName must be in type of String"

    invoke-static {v2}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static shareBrowsedResourcesByIntent(ILjava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z
    .locals 18
    .param p0, "platformId"    # I
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p3, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string/jumbo v15, "leshare.enable_share_by_sharesdk"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 65
    const/4 v14, 0x0

    return v14

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 69
    :cond_1
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Type should not be empty"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v14, 0x0

    return v14

    .line 73
    :cond_2
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 74
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 75
    .local v8, "obj":Ljava/lang/Object;
    if-eqz v8, :cond_3

    const-string/jumbo v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 87
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_3
    const/4 v10, -0x1

    .line 89
    .local v10, "resourceId":I
    const-string/jumbo v7, ""

    .line 90
    .local v7, "linkedUrl":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 91
    .local v4, "imageUrl":Ljava/lang/String;
    const/4 v11, 0x0

    .line 100
    .local v11, "supportLinkcard":Z
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 101
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 102
    .restart local v8    # "obj":Ljava/lang/Object;
    if-eqz v8, :cond_4

    instance-of v14, v8, Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 105
    :cond_4
    if-eqz v8, :cond_5

    move-object v7, v8

    .line 106
    check-cast v7, Ljava/lang/String;

    .line 109
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_5
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 110
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 111
    .restart local v8    # "obj":Ljava/lang/Object;
    if-eqz v8, :cond_6

    instance-of v14, v8, Ljava/lang/String;

    if-eqz v14, :cond_b

    .line 114
    :cond_6
    if-eqz v8, :cond_7

    move-object v4, v8

    .line 115
    check-cast v4, Ljava/lang/String;

    .line 118
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_7
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->text:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 119
    const-string/jumbo v14, ""

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 120
    const-string/jumbo v14, "http"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 121
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "web page url should start wtih \'http\' or \'https\'."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v14, 0x0

    return v14

    .line 75
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v7    # "linkedUrl":Ljava/lang/String;
    .end local v10    # "resourceId":I
    .end local v11    # "supportLinkcard":Z
    .restart local v8    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v14, v8, Ljava/lang/String;

    if-eqz v14, :cond_3

    move-object v12, v8

    .line 76
    check-cast v12, Ljava/lang/String;

    .line 77
    .local v12, "targetPackageName":Ljava/lang/String;
    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->notSupportAppList:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v9, v15, v14

    .line 78
    .local v9, "pn":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 79
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sdk share does not support app: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v14, 0x0

    return v14

    .line 77
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 103
    .end local v9    # "pn":Ljava/lang/String;
    .end local v12    # "targetPackageName":Ljava/lang/String;
    .restart local v4    # "imageUrl":Ljava/lang/String;
    .restart local v7    # "linkedUrl":Ljava/lang/String;
    .restart local v10    # "resourceId":I
    .restart local v11    # "supportLinkcard":Z
    :cond_a
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "The type of leLinkUrl should be string."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v14, 0x0

    return v14

    .line 112
    :cond_b
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "The type of leImagePath should be string."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v14, 0x0

    return v14

    .line 124
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_c
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/4 v10, 0x3

    .line 169
    :cond_d
    :goto_1
    const/4 v14, -0x1

    if-ne v14, v10, :cond_19

    .line 170
    const-string/jumbo v14, "No match share type found!"

    invoke-static {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 171
    const/4 v14, 0x0

    return v14

    .line 126
    :cond_e
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_f

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 127
    :cond_f
    const-string/jumbo v14, "text resource is null !"

    invoke-static {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 128
    const/4 v14, 0x0

    return v14

    .line 130
    :cond_10
    const/4 v10, 0x1

    goto :goto_1

    .line 133
    :cond_11
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->image:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 134
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_12

    const-string/jumbo v14, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 135
    const-string/jumbo v14, "image resource is null !"

    invoke-static {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 136
    const/4 v14, 0x0

    return v14

    .line 138
    :cond_12
    const/4 v10, 0x2

    goto :goto_1

    .line 140
    :cond_13
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->audio:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 141
    const-string/jumbo v14, ""

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 142
    const-string/jumbo v14, "audio url is null !"

    invoke-static {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 143
    const/4 v14, 0x0

    return v14

    .line 146
    :cond_14
    const/4 v14, 0x3

    move/from16 v0, p0

    if-eq v14, v0, :cond_15

    .line 147
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_15
    const/4 v10, 0x4

    goto/16 :goto_1

    .line 151
    :cond_16
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->video:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeMimeType;->name()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 152
    if-eqz v7, :cond_17

    const-string/jumbo v14, ""

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    const-string/jumbo v14, "content:"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 153
    :cond_17
    const-string/jumbo v14, "video url is null or can not be local resource"

    invoke-static {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->outputLog(Ljava/lang/String;)V

    .line 154
    const/4 v14, 0x0

    return v14

    .line 156
    :cond_18
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v10, 0x5

    goto/16 :goto_1

    .line 174
    :cond_19
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v14, "android.intent.action.SEND"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v5, "intent":Landroid/content/Intent;
    invoke-static/range {p3 .. p3}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->getSharePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "leSharePackageName":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 333
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Only support WeiXin, Weibo or QQ at present."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v14, 0x0

    return v14

    .line 179
    :pswitch_0
    new-instance v2, Landroid/content/ComponentName;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".LaunchWeiboShareActivity"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 182
    const/4 v14, 0x0

    return v14

    .line 184
    :cond_1a
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 185
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 184
    if-eqz v14, :cond_20

    .line 187
    :cond_1b
    const-string/jumbo v13, ""

    .line 188
    .local v13, "textStr":Ljava/lang/String;
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1d

    .line 189
    :cond_1c
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    :cond_1d
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_21

    .line 195
    :cond_1e
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v15

    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :goto_2
    if-nez v11, :cond_1f

    .line 206
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 207
    const/4 v10, 0x0

    .line 209
    :cond_1f
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    .end local v13    # "textStr":Ljava/lang/String;
    :cond_20
    const-string/jumbo v14, "dataType"

    invoke-virtual {v5, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_3
    const/4 v14, 0x1

    return v14

    .line 197
    .restart local v13    # "textStr":Ljava/lang/String;
    :cond_21
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 214
    .end local v13    # "textStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 220
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_22

    .line 221
    const-string/jumbo v14, "isFriendGroup"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    :goto_4
    new-instance v2, Landroid/content/ComponentName;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".LaunchWeChatShareActivity"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .restart local v2    # "component":Landroid/content/ComponentName;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 227
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 228
    const/4 v14, 0x0

    return v14

    .line 223
    .end local v2    # "component":Landroid/content/ComponentName;
    :cond_22
    const-string/jumbo v14, "isFriendGroup"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 230
    .restart local v2    # "component":Landroid/content/ComponentName;
    :cond_23
    const-string/jumbo v14, "dataType"

    invoke-virtual {v5, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    const/4 v14, 0x1

    return v14

    .line 234
    .end local v2    # "component":Landroid/content/ComponentName;
    :pswitch_2
    new-instance v2, Landroid/content/ComponentName;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".LaunchQQShareActivity"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .restart local v2    # "component":Landroid/content/ComponentName;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    const/4 v14, 0x5

    if-ne v10, v14, :cond_27

    .line 237
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_24

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 238
    :cond_24
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "video url is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v14, 0x0

    return v14

    .line 241
    :cond_25
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_26

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 244
    :cond_26
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "title is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_27
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_28

    .line 249
    const/4 v14, 0x0

    return v14

    .line 252
    :cond_28
    const/4 v14, 0x1

    if-eq v10, v14, :cond_29

    const/4 v14, 0x3

    if-ne v10, v14, :cond_2b

    .line 253
    :cond_29
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2a

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2d

    .line 254
    :cond_2a
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "webPage url is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v14, 0x0

    return v14

    .line 252
    :cond_2b
    const/4 v14, 0x5

    if-eq v10, v14, :cond_29

    .line 262
    const/4 v14, 0x2

    if-ne v10, v14, :cond_30

    .line 263
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2c

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 264
    :cond_2c
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "image url is empty for qq image share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v14, 0x0

    return v14

    .line 258
    :cond_2d
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2e

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 259
    :cond_2e
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "title is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v15, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_2f
    :goto_5
    const-string/jumbo v14, "dataType"

    invoke-virtual {v5, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 291
    const/4 v14, 0x1

    return v14

    .line 267
    :cond_30
    const/4 v14, 0x4

    if-ne v10, v14, :cond_37

    .line 268
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_31

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32

    .line 269
    :cond_31
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "title is empty for qq music share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v15, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_32
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_33

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 273
    :cond_33
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "target url is empty for qq music share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v14, 0x0

    return v14

    .line 276
    :cond_34
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v15

    .line 277
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 276
    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_35

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 280
    :cond_35
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "music url is empty for qq music share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_36
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v15

    .line 284
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 283
    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 286
    :cond_37
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "No support for other types for qq"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v14, 0x0

    return v14

    .line 293
    .end local v2    # "component":Landroid/content/ComponentName;
    :pswitch_3
    new-instance v2, Landroid/content/ComponentName;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".LaunchQZoneShareActivity"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .restart local v2    # "component":Landroid/content/ComponentName;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 295
    const/4 v14, 0x5

    if-ne v10, v14, :cond_3c

    .line 296
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_38

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_39

    .line 297
    :cond_38
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "video url is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v14, 0x0

    return v14

    .line 300
    :cond_39
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leVideoUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3a

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 303
    :cond_3a
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "title is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :cond_3b
    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v5, v0, v1}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->setIntentValue(Landroid/content/Intent;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_40

    .line 319
    const/4 v14, 0x0

    return v14

    .line 306
    :cond_3c
    const/4 v14, 0x4

    if-ne v10, v14, :cond_3b

    .line 307
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3d

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 308
    :cond_3d
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "music url is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v14, 0x0

    return v14

    .line 311
    :cond_3e
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leMusicUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3f

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3b

    .line 314
    :cond_3f
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "title is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-virtual {v14}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->name()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "\u6765\u81ea\u4e50\u89c6\u8d85\u7ea7\u624b\u673a"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 321
    :cond_40
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_41

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leWebUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42

    .line 322
    :cond_41
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "webPage url is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v14, 0x0

    return v14

    .line 325
    :cond_42
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_43

    const-string/jumbo v14, ""

    sget-object v15, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_44

    .line 326
    :cond_43
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "title is empty for qq imageAndText share"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v14, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    const-string/jumbo v15, "\u4e50\u89c6\u5206\u4eab"

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_44
    const-string/jumbo v14, "dataType"

    invoke-virtual {v5, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    const/4 v14, 0x1

    return v14

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
