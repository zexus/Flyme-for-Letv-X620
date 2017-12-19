.class public Lcom/letv/leui/util/LeResolveUtils;
.super Ljava/lang/Object;
.source "LeResolveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeResolveUtils$UV;
    }
.end annotation


# static fields
.field public static final APP_COUNTS:Ljava/lang/String; = "app_counts"

.field public static final APP_NAME:Ljava/lang/String; = "app_name"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.leShare"

.field public static final BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

.field public static final DB_TABLE:Ljava/lang/String; = "leShareTable"

.field private static final DEBUG:Z = false

.field public static final EMAIL:Ljava/lang/String; = "com.android.email.activity.setup.AccountSetupBasics"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LEPAI:Ljava/lang/String; = "LePai"

.field public static final LE_PAI_SHARE_DES:Ljava/lang/String; = "lepaiShareDes"

.field public static final LE_PAI_SHARE_TEXT:Ljava/lang/String; = "lepaiShareText"

.field public static final LE_SHARE_APP_TAG:Ljava/lang/String; = "leShareAppTag"

.field public static final LE_SHARE_BITMAP_KEY:Ljava/lang/String; = "leBitmapKey"

.field public static final LE_SHARE_BUNDLE_KEY:Ljava/lang/String; = "leBundleKey"

.field public static final LE_SHARE_NIGHT_MODE:Ljava/lang/String; = "leShareIsNightMode"

.field public static final LE_SHARE_WEB_LINK_URL:Ljava/lang/String; = "leshareWebLinkUrl"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MMS:Ljava/lang/String; = "com.android.mms.ui.ComposeMessageActivity"

.field public static final PLAT_ID_QQ:I = 0x3

.field public static final PLAT_ID_QQ_ZONE:I = 0x4

.field public static final PLAT_ID_SINA:I = 0x0

.field public static final PLAT_ID_TENTCENT_FRIEND:I = 0x2

.field public static final PLAT_ID_TENTCENT_SEND_FRIEND:I = 0x1

.field public static final QQ:Ljava/lang/String; = "com.tencent.mobileqq.activity.JumpActivity"

.field public static final QQ_PLATFORM:I = 0x3

.field public static final QQ_ZONE:Ljava/lang/String; = "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

.field public static final QQ_ZONE_PLATFORM:I = 0x4

.field private static final SEND_SHARE_ACTION:Ljava/lang/String; = "com.letv.leshare.callback"

.field private static final SEND_SHARE_ACTION_NOTE:Ljava/lang/String; = "com.letv.android.note.ACTION_SHARE_PICTURE_TO_WEIBO"

.field public static final SHARE_TEXT_BEYOND_140_ACTION:Ljava/lang/String; = "com.letv.android.note.ACTION_SHARE_PICTURE"

.field public static final SHARE_TEXT_BEYOND_140_PLAT_ID:Ljava/lang/String; = "com.letv.android.extra.WHICH_APP_TO_SHARE"

.field private static final SHARE_TEXT_LENGTH_MAX:I = 0x8c

.field public static final SINA_PLATFORM:I = 0x2

.field public static final SINA_WEIBO:Ljava/lang/String; = "com.sina.weibo.ComposerDispatchActivity"

.field public static final SINA_WEIBO_EDIT:Ljava/lang/String; = "com.sina.weibo.EditActivity"

.field public static final SINA_WEIBO_PACKAGE_NAME:Ljava/lang/String; = "com.sina.weibo"

.field private static final TAG:Ljava/lang/String; = "LeResolveUtils"

.field public static final TENCENT_MM_FRIEND_PLATFORM:I = 0x1

.field public static final TENCENT_MM_SEND_FRIEND_PLATFORM:I = 0x0

.field public static final TENCENT_SHARE_IMGUI:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareImgUI"

.field public static final TENCENT_SHARE_TO_TIME:Ljava/lang/String; = "com.tencent.mm.ui.tools.ShareToTimeLineUI"

.field public static final mFourItemRatio:I = 0x13aa6

.field public static mLePaikeyQqZone:Ljava/lang/String; = null

.field public static mLePaikeyWeixin:Ljava/lang/String; = null

.field public static mLePaikeyWeixinMoment:Ljava/lang/String; = null

.field public static mLePaikeyqq:Ljava/lang/String; = null

.field public static mLePaikeyweibo:Ljava/lang/String; = null

.field public static final mOrderBy:Ljava/lang/String; = "app_counts DESC"

.field public static final mPriorShareApp:[Ljava/lang/String;

.field public static mShareLepaiKey:[Ljava/lang/String; = null

.field public static final mThreeItemRatio:I = 0x1000e

.field public static final mTwoItemRatio:I = 0xd8fe

.field public static final mUrl:Ljava/lang/String; = "content://com.android.leShare/leShareTable"

.field public static final mainShareAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareImgUI"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sina.weibo.ComposerDispatchActivity"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.tencent.mobileqq.activity.JumpActivity"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    aput-object v1, v0, v7

    .line 60
    const-string/jumbo v1, "com.android.mms.ui.ComposeMessageActivity"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.email.activity.setup.AccountSetupBasics"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "qq"

    aput-object v1, v0, v3

    const-string/jumbo v1, "qq_zone"

    aput-object v1, v0, v4

    const-string/jumbo v1, "weixin_moment"

    aput-object v1, v0, v5

    const-string/jumbo v1, "weixin_friends"

    aput-object v1, v0, v6

    const-string/jumbo v1, "weibo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mShareLepaiKey:[Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "weixin_friends"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "weixin_moment"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "weibo"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "qq"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "qq_zone"

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mobileqq.activity.JumpActivity"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareImgUI"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    aput-object v1, v0, v6

    const-string/jumbo v1, "com.sina.weibo.EditActivity"

    aput-object v1, v0, v7

    sput-object v0, Lcom/letv/leui/util/LeResolveUtils;->mainShareAppList:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "layoutItemCounts"    # I
    .param p2, "fiveLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 102
    const/4 v2, -0x1

    .line 103
    .local v2, "mLayoutResId":I
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 121
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const-string/jumbo v3, "leshare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addShareLayoutFive_mLayoutResId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">>fiveLayout is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "itemView":Landroid/view/View;
    return-void

    .line 105
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "itemView":Landroid/view/View;
    :pswitch_0
    const v2, 0x10900d6

    .line 106
    goto :goto_0

    .line 108
    :pswitch_1
    const v2, 0x10900da

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    const v2, 0x10900d9

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    const v2, 0x10900d8

    .line 115
    goto :goto_0

    .line 117
    :pswitch_4
    const v2, 0x10900d7

    .line 118
    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getFilePath(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 693
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 696
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 697
    .local v1, "uriFilePath":Landroid/net/Uri;
    return-object v1

    .line 700
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "uriFilePath":Landroid/net/Uri;
    :cond_0
    return-object v4
.end method

.method public static getGridViewItemGap(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "gap":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 490
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 492
    .local v1, "screenHeight":I
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 493
    move v2, v1

    .line 495
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 496
    .local v3, "tabWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501f9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 497
    .local v4, "tabWidthGap":I
    mul-int/lit8 v6, v4, 0x2

    sub-int v5, v3, v6

    .line 498
    .local v5, "tabwidthTrue":I
    mul-int/lit8 v6, v5, 0x5

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x6

    .line 499
    mul-int/lit8 v6, v4, 0x2

    sub-int/2addr v0, v6

    .line 500
    return v0
.end method

.method public static getGridViewMagin(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "magin":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 474
    .local v2, "screenWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 475
    .local v1, "screenHeight":I
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 476
    move v2, v1

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 479
    .local v3, "tabWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501f9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 480
    .local v4, "tabWidthGap":I
    mul-int/lit8 v6, v4, 0x2

    sub-int v5, v3, v6

    .line 481
    .local v5, "tabwidthTrue":I
    mul-int/lit8 v6, v5, 0x5

    sub-int v6, v2, v6

    div-int/lit8 v0, v6, 0x6

    .line 482
    sub-int/2addr v0, v4

    .line 483
    return v0
.end method

.method public static getPriorShareApp(Landroid/app/Activity;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "PriorShareAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "image/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 410
    const/high16 v7, 0x10000

    .line 409
    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 411
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 413
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 414
    .local v5, "tempActivityName":Ljava/lang/String;
    const-string/jumbo v6, "leshare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tempActivityName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget-object v6, Lcom/letv/leui/util/LeResolveUtils;->mainShareAppList:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 416
    sget-object v6, Lcom/letv/leui/util/LeResolveUtils;->mainShareAppList:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    const-string/jumbo v6, "com.sina.weibo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 420
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 425
    .end local v3    # "j":I
    .end local v5    # "tempActivityName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "leshare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PriorShareAppList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v0

    .line 428
    .end local v1    # "i":I
    :cond_4
    const/4 v6, 0x0

    return-object v6
.end method

.method public static getTextStringLenth(Landroid/widget/TextView;Ljava/lang/String;)I
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 210
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method public static gvShowAnim(ILandroid/widget/LinearLayout;)Landroid/animation/ValueAnimator;
    .locals 5
    .param p0, "gvHeight"    # I
    .param p1, "mGvAnimLayout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, 0x0

    .line 215
    const/4 v2, 0x2

    new-array v2, v2, [I

    neg-int v3, p0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 216
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 217
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 218
    .local v1, "interpolater":Landroid/view/animation/DecelerateInterpolator;
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    new-instance v2, Lcom/letv/leui/util/LeResolveUtils$1;

    invoke-direct {v2, p1}, Lcom/letv/leui/util/LeResolveUtils$1;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    return-object v0
.end method

.method public static isScreenChange(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 201
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 202
    const/4 v1, 0x1

    return v1

    .line 204
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isSingleImageFile(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 704
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 705
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 706
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 707
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 708
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 709
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 710
    .local v1, "size":I
    if-le v1, v5, :cond_0

    .line 711
    return v6

    .line 713
    :cond_0
    return v5

    .line 716
    .end local v1    # "size":I
    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1
    return v5

    .line 721
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    return v6
.end method

.method public static isWeiboOrWeChatTextShare(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)I
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 432
    const/4 v2, -0x1

    .line 433
    .local v2, "platId":I
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 434
    .local v0, "activityName":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 436
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    const-string/jumbo v3, "com.sina.weibo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    :cond_1
    const/4 v2, 0x0

    .line 439
    :cond_2
    if-eqz v0, :cond_3

    sget-object v3, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    const/4 v2, 0x1

    .line 442
    :cond_3
    if-eqz v0, :cond_4

    sget-object v3, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    const/4 v2, 0x2

    .line 445
    :cond_4
    return v2
.end method

.method public static matchApp([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "appNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "mSpecialTitleArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "mSpecialLogoArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "mAppStringArraysNew":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 258
    aget-object v1, p0, v0

    const-string/jumbo v2, "contact"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    const v1, 0x104061a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const v1, 0x10804f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const-string/jumbo v1, "contact"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    aget-object v1, p0, v0

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const v1, 0x104061b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const v1, 0x1080614

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const-string/jumbo v1, "wallpaper"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_2
    aget-object v1, p0, v0

    const-string/jumbo v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    const v1, 0x1040623

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const v1, 0x10805f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string/jumbo v1, "download"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_3
    aget-object v1, p0, v0

    const-string/jumbo v2, "detail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    const v1, 0x1040622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const v1, 0x10805f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const-string/jumbo v1, "detail"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_4
    aget-object v1, p0, v0

    const-string/jumbo v2, "ppt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    const v1, 0x104061c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const v1, 0x108060e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    const-string/jumbo v1, "ppt"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 278
    :cond_5
    aget-object v1, p0, v0

    const-string/jumbo v2, "collection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    const v1, 0x1040615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const v1, 0x10804f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    const-string/jumbo v1, "collection"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 282
    :cond_6
    aget-object v1, p0, v0

    const-string/jumbo v2, "addDesk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 283
    const v1, 0x1040616

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    const v1, 0x1080610

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const-string/jumbo v1, "addDesk"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 286
    :cond_7
    aget-object v1, p0, v0

    const-string/jumbo v2, "copy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 287
    const v1, 0x1040617

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const v1, 0x10805f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const-string/jumbo v1, "copy"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 290
    :cond_8
    aget-object v1, p0, v0

    const-string/jumbo v2, "save"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    const v1, 0x1040619

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const v1, 0x108060f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const-string/jumbo v1, "save"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 294
    :cond_9
    aget-object v1, p0, v0

    const-string/jumbo v2, "voice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 295
    const v1, 0x10406cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const v1, 0x108061b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    const-string/jumbo v1, "voice"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 298
    :cond_a
    aget-object v1, p0, v0

    const-string/jumbo v2, "dlna"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 299
    const v1, 0x1040627

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const v1, 0x1080611

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const-string/jumbo v1, "dlna"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 302
    :cond_b
    aget-object v1, p0, v0

    const-string/jumbo v2, "addHome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const v1, 0x1040628

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    const v1, 0x10805ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    const-string/jumbo v1, "addHome"

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 256
    :cond_c
    return-void
.end method

.method public static replaceChar(Ljava/lang/CharSequence;Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    move-object v1, p0

    .line 232
    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "textLabel":Ljava/lang/String;
    const/4 v3, 0x0

    .line 234
    .local v3, "text_one":Ljava/lang/String;
    const/4 v5, 0x0

    .line 235
    .local v5, "text_two":Ljava/lang/String;
    const/4 v4, 0x0

    .line 236
    .local v4, "text_three":Ljava/lang/String;
    const/4 v2, 0x0

    .line 237
    .local v2, "text_four":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104061e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "text_one":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104061f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "text_two":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040620

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "text_three":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040621

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "text_four":Ljava/lang/String;
    const/4 v0, 0x0

    .line 242
    .local v0, "replaceChar":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    const-string/jumbo v6, ""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "replaceChar":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 244
    .local v0, "replaceChar":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "replaceChar":Ljava/lang/String;
    goto :goto_0

    .line 246
    .local v0, "replaceChar":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    const-string/jumbo v6, ""

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "replaceChar":Ljava/lang/String;
    goto :goto_0

    .line 248
    .local v0, "replaceChar":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 249
    const-string/jumbo v6, ""

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "replaceChar":Ljava/lang/String;
    goto :goto_0

    .line 251
    .local v0, "replaceChar":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .local v0, "replaceChar":Ljava/lang/String;
    goto :goto_0
.end method

.method public static sendShareBroadCast(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "isShareSdk"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 506
    if-eqz p0, :cond_0

    const-string/jumbo v1, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p0, :cond_4

    const-string/jumbo v1, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 507
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.letv.leshare.callback"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string/jumbo v1, "realCallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    if-eqz p3, :cond_2

    .line 512
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    :cond_2
    if-eqz p4, :cond_3

    .line 516
    const-string/jumbo v1, "pageName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    :cond_3
    const-string/jumbo v1, "sendShareBroadCast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShareSdk is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">>appName is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " packageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method public static setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 24
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "shareLayout"    # Landroid/widget/LinearLayout;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 126
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 127
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v19

    if-eqz v19, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 129
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 130
    .local v14, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v13, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    .local v13, "screenHeight":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 132
    move v14, v13

    .line 134
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501f8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 135
    .local v15, "tabWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501f9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 136
    .local v16, "tabWidthGap":I
    mul-int/lit8 v19, v16, 0x2

    sub-int v17, v15, v19

    .line 137
    .local v17, "tabwidthTrue":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 138
    .local v4, "count":I
    const/4 v5, 0x0

    .line 139
    .local v5, "end":I
    const/4 v7, 0x0

    .line 140
    .local v7, "gap":I
    const-wide/16 v10, 0x0

    .line 141
    .local v10, "ratio":D
    packed-switch v4, :pswitch_data_0

    .line 168
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_7

    .line 169
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 170
    .local v18, "view":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .local v9, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v9, :cond_3

    .line 172
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, -0x2

    move/from16 v0, v19

    invoke-direct {v9, v15, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 173
    .restart local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 175
    :cond_3
    if-nez v8, :cond_5

    .line 176
    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 177
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 187
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 188
    .local v6, "fontScale":F
    float-to-double v0, v6

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v19, v20, v22

    if-lez v19, :cond_4

    .line 189
    const-string/jumbo v19, "LeResolveUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "fontScale is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 192
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 143
    .end local v6    # "fontScale":F
    .end local v8    # "i":I
    .end local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18    # "view":Landroid/view/View;
    :pswitch_0
    mul-int v19, v15, v4

    sub-int v19, v14, v19

    div-int/lit8 v5, v19, 0x2

    goto/16 :goto_0

    .line 146
    :pswitch_1
    mul-int v19, v17, v4

    sub-int v19, v14, v19

    div-int/lit8 v7, v19, 0x6

    .line 147
    sub-int v5, v7, v16

    .line 148
    mul-int/lit8 v19, v16, 0x2

    sub-int v7, v7, v19

    .line 149
    goto/16 :goto_0

    .line 152
    :pswitch_2
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide v22, 0x3fdc72b020c49ba6L    # 0.4445

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 153
    mul-int/lit8 v19, v5, 0x2

    sub-int v19, v14, v19

    mul-int v20, v15, v4

    sub-int v19, v19, v20

    add-int/lit8 v20, v4, -0x1

    div-int v7, v19, v20

    .line 154
    goto/16 :goto_0

    .line 157
    :pswitch_3
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd60c49ba5e3540L    # 0.34450000000000003

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 158
    mul-int/lit8 v19, v5, 0x2

    sub-int v19, v14, v19

    mul-int v20, v15, v4

    sub-int v19, v19, v20

    add-int/lit8 v20, v4, -0x1

    div-int v7, v19, v20

    .line 159
    goto/16 :goto_0

    .line 162
    :pswitch_4
    int-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide v22, 0x3fc8e5604189374cL    # 0.1945

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v5, v0

    .line 163
    mul-int/lit8 v19, v5, 0x2

    sub-int v19, v14, v19

    mul-int v20, v15, v4

    sub-int v19, v19, v20

    add-int/lit8 v20, v4, -0x1

    div-int v7, v19, v20

    .line 164
    goto/16 :goto_0

    .line 178
    .restart local v8    # "i":I
    .restart local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v18    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_6

    .line 179
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 181
    iput v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 183
    :cond_6
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 184
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_2

    .line 125
    .end local v9    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v18    # "view":Landroid/view/View;
    :cond_7
    return-void

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static shareFileNoExit(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 657
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 658
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 660
    .local v9, "filePath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 661
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 662
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 663
    return v12

    .line 666
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 669
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 671
    .local v10, "realfilePath":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 672
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    .local v11, "shareFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    if-eqz v6, :cond_1

    .line 684
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_1
    return v12

    .line 683
    .end local v10    # "realfilePath":Ljava/lang/String;
    .end local v11    # "shareFile":Ljava/io/File;
    :cond_2
    if-eqz v6, :cond_3

    .line 684
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 678
    :cond_3
    return v13

    .line 683
    .restart local v10    # "realfilePath":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 684
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 689
    .end local v6    # "cur":Landroid/database/Cursor;
    .end local v10    # "realfilePath":Ljava/lang/String;
    :cond_5
    :goto_0
    return v13

    .line 680
    .restart local v6    # "cur":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 681
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    if-eqz v6, :cond_5

    .line 684
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 682
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 683
    if-eqz v6, :cond_6

    .line 684
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 682
    :cond_6
    throw v0
.end method

.method public static shareTextBeyondMax(Ljava/lang/String;)Z
    .locals 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 449
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 450
    :cond_0
    return v6

    .line 452
    :cond_1
    const-wide/16 v2, 0x0

    .line 453
    .local v2, "len":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 454
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 455
    .local v1, "temp":I
    if-lez v1, :cond_2

    const/16 v4, 0x7f

    if-ge v1, v4, :cond_2

    .line 456
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    .line 453
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    goto :goto_1

    .line 464
    .end local v1    # "temp":I
    :cond_3
    const-wide v4, 0x4061800000000000L    # 140.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_4

    .line 465
    return v7

    .line 467
    :cond_4
    return v6
.end method

.method public static startNoteActivity(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "fromPackageName"    # Ljava/lang/String;
    .param p1, "platId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "mShareDesc"    # Ljava/lang/String;

    .prologue
    .line 524
    const-string/jumbo v2, "com.letv.android.note"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 525
    const-string/jumbo v2, "leshare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fromPackageName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">>platId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 527
    .local v0, "noteIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.letv.android.note.ACTION_SHARE_PICTURE_TO_WEIBO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v2, v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 529
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 530
    .local v1, "stream":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 531
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 534
    .end local v1    # "stream":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 536
    invoke-virtual {p3}, Landroid/app/Activity;->finish()V

    .line 537
    return-void

    .line 523
    .end local v0    # "noteIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static startPriorShareApp(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p5, "mShareTitle"    # Ljava/lang/String;
    .param p6, "mShareDesc"    # Ljava/lang/String;
    .param p7, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p8, "mBitmapFileUrl"    # Ljava/lang/String;
    .param p9, "mPackageName"    # Ljava/lang/String;
    .param p10, "mPageName"    # Ljava/lang/String;
    .param p11, "mTargetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 312
    .local p3, "mLePaiTitleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "mLePaiDesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 313
    .local v1, "activityName":Ljava/lang/String;
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 314
    .local v4, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 315
    .local v2, "isLinkCard":Z
    const/4 v5, -0x1

    .line 316
    .local v5, "platId":I
    if-eqz v1, :cond_7

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 317
    const/4 v5, 0x1

    .line 318
    if-eqz p3, :cond_0

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 319
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 321
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_0
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 322
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixin:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .line 358
    .restart local p6    # "mShareDesc":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v9, -0x1

    if-eq v5, v9, :cond_12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.SEND_MULTIPLE"

    if-eq v9, v10, :cond_12

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "mineType":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, "url":Ljava/lang/String;
    if-nez v8, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 364
    const-string/jumbo v9, "android.intent.extra.STREAM"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 365
    .local v7, "stream":Landroid/net/Uri;
    if-eqz v7, :cond_11

    .line 368
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p8

    .line 374
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v6, "shareMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leBitmap:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p7

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leImagePath:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p8

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    if-eqz v8, :cond_3

    .line 378
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v9, "leshare"

    const-string/jumbo v10, "have linkUrl"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_3
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p5

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p6

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 384
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->packageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p9

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_4
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 387
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->pageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p10

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_5
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 391
    sget-object v9, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->destPackageName:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    move-object/from16 v0, p11

    invoke-interface {v6, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_6
    const-string/jumbo v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "targetPackageName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p11

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string/jumbo v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "intentType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string/jumbo v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mBitmap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string/jumbo v9, "leshare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LeResourceType.leLinkUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leLinkUrl:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ">>LeResourceType.leTitle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leTitle:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "LeResourceType.leText="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;->leText:Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 397
    const-string/jumbo v11, "mBitmapFileUrl="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v5, v3, v6, p0}, Lcom/letv/leui/util/LeBrowsedResourceShareUtils;->shareBrowsedResourcesByIntent(ILjava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z

    move-result v9

    return v9

    .line 324
    .end local v3    # "mineType":Ljava/lang/String;
    .end local v6    # "shareMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/letv/leui/util/LeBrowsedResourceShareUtils$LeResourceType;Ljava/lang/Object;>;"
    .end local v8    # "url":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_9

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 325
    const/4 v5, 0x2

    .line 326
    if-eqz p3, :cond_8

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 327
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 329
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_8
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 330
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyWeixinMoment:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .restart local p5    # "mShareTitle":Ljava/lang/String;
    goto/16 :goto_0

    .line 332
    :cond_9
    if-eqz v1, :cond_a

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    if-eqz v4, :cond_d

    const-string/jumbo v9, "com.sina.weibo"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 333
    :cond_b
    const/4 v5, 0x0

    .line 334
    const/4 v2, 0x1

    .line 335
    if-eqz p3, :cond_c

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 336
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 338
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_c
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 339
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyweibo:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .restart local p6    # "mShareDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 341
    :cond_d
    if-eqz v1, :cond_f

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 342
    const/4 v5, 0x3

    .line 343
    if-eqz p3, :cond_e

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 344
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 346
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_e
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 347
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyqq:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .restart local p6    # "mShareDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 349
    :cond_f
    if-eqz v1, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 350
    const/4 v5, 0x4

    .line 351
    if-eqz p3, :cond_10

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 352
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    invoke-virtual {p3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .end local p5    # "mShareTitle":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .line 354
    .restart local p5    # "mShareTitle":Ljava/lang/String;
    :cond_10
    if-eqz p4, :cond_1

    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 355
    sget-object v9, Lcom/letv/leui/util/LeResolveUtils;->mLePaikeyQqZone:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    .end local p6    # "mShareDesc":Ljava/lang/String;
    check-cast p6, Ljava/lang/String;

    .restart local p6    # "mShareDesc":Ljava/lang/String;
    goto/16 :goto_0

    .line 370
    .restart local v3    # "mineType":Ljava/lang/String;
    .restart local v7    # "stream":Landroid/net/Uri;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_11
    const-string/jumbo v9, "leshareWebLinkUrl"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 371
    const-string/jumbo v9, "leshareWebLinkUrl"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 400
    .end local v3    # "mineType":Ljava/lang/String;
    .end local v7    # "stream":Landroid/net/Uri;
    .end local v8    # "url":Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    return v9
.end method
