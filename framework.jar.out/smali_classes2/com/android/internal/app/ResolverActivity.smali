.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$ActionTitle;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;,
        Lcom/android/internal/app/ResolverActivity$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private fromPackageName:Ljava/lang/String;

.field private gvHeight:I

.field private isColse:Z

.field public isNightMode:Z

.field private layout:Landroid/widget/RelativeLayout;

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

.field private mAlwaysLinearLayout:Landroid/widget/LinearLayout;

.field private mAlwaysUseOption:Z

.field private mAppStringArrays:[Ljava/lang/String;

.field private mAppStringArraysNew:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppTag:Ljava/lang/String;

.field private mAwalysLayout:Landroid/widget/LinearLayout;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFileUrl:Ljava/lang/String;

.field private mFiveSpeicalViewItem:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mGvAnimLayout:Landroid/widget/LinearLayout;

.field private mGvLayout:Landroid/widget/LinearLayout;

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mLayoutLessFive:Landroid/widget/LinearLayout;

.field private mLayoutResId:I

.field private mLayoutSpecial:Landroid/widget/LinearLayout;

.field private mLePaiDesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLePaiTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkUrl:Ljava/lang/String;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

.field private mRealLayout:Landroid/widget/LinearLayout;

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private mResolvingHome:Z

.field private mSafeForwardingMode:Z

.field private mScroller:Landroid/widget/ScrollView;

.field private mShareCancelBtn:Landroid/widget/Button;

.field private mShareDesc:Ljava/lang/String;

.field private mShareTitle:Ljava/lang/String;

.field private mSpecialDivider:Landroid/view/View;

.field private mSpecialLogoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialTitleArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleTv:Landroid/widget/TextView;

.field private resolver:Landroid/content/ContentResolver;

.field private reverse:Z

.field private showMoreIV:Landroid/widget/ImageView;

.field private title:Ljava/lang/CharSequence;

.field private uvReportIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/app/ResolverActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/internal/app/ResolverActivity;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/ResolverActivity;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/ResolverActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/internal/app/ResolverActivity;Lcom/mediatek/common/media/IRCSePriorityExt;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/app/ResolverActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "currentResolveList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->reSortList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p1, "resolveItemSize"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->reflashGV(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->reflashLayoutLessFive()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 131
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 140
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 2163
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutResId:I

    .line 2171
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2174
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->isColse:Z

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    .line 2181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    .line 2182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    .line 2192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    .line 2193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    .line 2199
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    .line 115
    return-void
.end method

.method private deleteDB(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "app_name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2644
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2642
    return-void
.end method

.method private finishAnima()V
    .locals 2

    .prologue
    .line 2551
    const v0, 0x10a003a

    .line 2552
    const v1, 0x10a003b

    .line 2550
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 2549
    return-void
.end method

.method private getClickCounts(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mineType"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2612
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    const-string/jumbo v0, "app_counts"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 2613
    .local v2, "projectiong":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mime_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "app_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2614
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v5, "app_counts DESC"

    .line 2615
    .local v5, "order":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2617
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2618
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2619
    const-string/jumbo v0, "app_counts"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2620
    .local v6, "counts":I
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2621
    .local v8, "id":I
    add-int/lit8 v6, v6, 0x1

    .line 2622
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2623
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "app_counts"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-direct {p0, p1, v10, v8}, Lcom/android/internal/app/ResolverActivity;->updateDB(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2630
    .end local v6    # "counts":I
    .end local v8    # "id":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_0
    if-eqz v7, :cond_0

    .line 2631
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2611
    :cond_0
    return-void

    .line 2626
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;

    const-string/jumbo v0, "1"

    invoke-direct {v9, p0, p2, p3, v0}, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    .local v9, "shareActivityInfo":Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->insertDB(Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2629
    .end local v9    # "shareActivityInfo":Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;
    :catchall_0
    move-exception v0

    .line 2630
    if-eqz v7, :cond_2

    .line 2631
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2629
    :cond_2
    throw v0
.end method

.method private getLetvIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2211
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2212
    const-string/jumbo v2, "leShareAppTag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2213
    const-string/jumbo v2, "leShareAppTag"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppTag:Ljava/lang/String;

    .line 2215
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "appStrings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2216
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "appStrings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    .line 2217
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAppStringArraysNew:Ljava/util/List;

    invoke-static {v2, v3, v4, v5}, Lcom/letv/leui/util/LeResolveUtils;->matchApp([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2219
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2220
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    .line 2222
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2223
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    .line 2225
    :cond_3
    const-string/jumbo v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2226
    const-string/jumbo v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 2227
    .local v0, "bis":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 2229
    .end local v0    # "bis":[B
    :cond_4
    const-string/jumbo v2, "leBundleKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2230
    const-string/jumbo v2, "leBundleKey"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "leBitmapKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 2232
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2233
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    .line 2235
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "leshareWebLinkUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2236
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "leshareWebLinkUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    .line 2238
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2239
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_9

    .line 2240
    const-string/jumbo v2, "lepaiShareText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2241
    const-string/jumbo v2, "lepaiShareText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    .line 2243
    :cond_8
    const-string/jumbo v2, "lepaiShareDes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2244
    const-string/jumbo v2, "lepaiShareDes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    .line 2247
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "leShareIsNightMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2248
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "leShareIsNightMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    .line 2250
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    .line 2251
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "pageName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    .line 2252
    const-string/jumbo v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLetvIntent packageName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  pageName is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_b
    return-void
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .line 441
    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 444
    :cond_0
    return-object v3
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 632
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 633
    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_0

    .line 634
    return v6

    .line 638
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 639
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 640
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 641
    const/4 v5, 0x1

    return v5

    .line 644
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/SecurityException;
    return v6

    .line 647
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "userInfo$iterator":Ljava/util/Iterator;
    :cond_2
    return v6
.end method

.method private initFiveLayoutContent(Landroid/widget/LinearLayout;I)V
    .locals 24
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "itemCounts"    # I

    .prologue
    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getList()Ljava/util/List;

    move-result-object v14

    .line 2387
    .local v14, "resolveItem":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 2388
    .local v15, "resolveItemSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fa

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v7, v0

    .line 2389
    .local v7, "gvMaxHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2390
    .local v4, "fontScale":F
    float-to-double v0, v4

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v19, v20, v22

    if-lez v19, :cond_0

    .line 2391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    mul-int/lit8 v7, v19, 0x2

    .line 2393
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501fc

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2394
    .local v17, "titleHeight":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->getGridViewMagin(Landroid/content/Context;)I

    move-result v6

    .line 2395
    .local v6, "gridViewMagin":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->getGridViewItemGap(Landroid/content/Context;)I

    move-result v5

    .line 2397
    .local v5, "gridViewItemDividerPadding":I
    const/16 v19, 0x9

    move/from16 v0, v19

    if-le v15, v0, :cond_7

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 2399
    .local v12, "params1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 2400
    .local v16, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 2401
    mul-int/lit8 v19, v17, 0x2

    sub-int v19, v16, v19

    sub-int v19, v19, v7

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2405
    :goto_0
    iget v0, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v7, :cond_1

    .line 2406
    iput v7, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2409
    :cond_1
    iput v6, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2410
    sub-int v19, v6, v5

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 2413
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int v19, v7, v17

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2414
    neg-int v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2416
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2432
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "screenHeight":I
    :cond_2
    :goto_1
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v15, v0, :cond_4

    .line 2433
    const/16 p2, 0x4

    .line 2434
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1020489

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x1080607

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x1080609

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget-object v20, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2438
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1020486

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2439
    .local v18, "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2440
    const-string/jumbo v19, "#dfdfdf"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2441
    .local v2, "blackTvColor":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->showMoreIV:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x1080608

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2444
    .end local v2    # "blackTvColor":I
    :cond_3
    const v19, 0x1040614

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 2445
    invoke-virtual/range {p1 .. p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/internal/app/ResolverActivity$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2462
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_9

    .line 2463
    move v10, v8

    .line 2464
    .local v10, "j":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1020489

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 2465
    .local v9, "iv":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1020486

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2466
    .restart local v18    # "tv":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 2467
    const-string/jumbo v19, "#dfdfdf"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2468
    .restart local v2    # "blackTvColor":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2469
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1080600

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2473
    .end local v2    # "blackTvColor":I
    :goto_3
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static/range {v19 .. v19}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2475
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 2476
    .local v3, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v19

    if-nez v19, :cond_5

    .line 2477
    new-instance v19, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v9}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2479
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2481
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/internal/app/ResolverActivity$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v14}, Lcom/android/internal/app/ResolverActivity$8;-><init>(Lcom/android/internal/app/ResolverActivity;ILjava/util/List;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2462
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 2403
    .end local v3    # "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v8    # "i":I
    .end local v9    # "iv":Landroid/widget/ImageView;
    .end local v10    # "j":I
    .end local v18    # "tv":Landroid/widget/TextView;
    .restart local v12    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16    # "screenHeight":I
    :cond_6
    mul-int/lit8 v19, v17, 0x2

    sub-int v19, v16, v19

    div-int/lit8 v20, v7, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 2419
    .end local v12    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "screenHeight":I
    :cond_7
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v15, v0, :cond_2

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 2421
    .local v13, "params2":Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2422
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2423
    sub-int v19, v6, v5

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 2426
    .restart local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    div-int/lit8 v19, v7, 0x2

    add-int v19, v19, v17

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2427
    neg-int v0, v7

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2429
    div-int/lit8 v19, v7, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_1

    .line 2471
    .end local v11    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "params2":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8    # "i":I
    .restart local v9    # "iv":Landroid/widget/ImageView;
    .restart local v10    # "j":I
    .restart local v18    # "tv":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x1080601

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 2385
    .end local v9    # "iv":Landroid/widget/ImageView;
    .end local v10    # "j":I
    .end local v18    # "tv":Landroid/widget/TextView;
    :cond_9
    return-void
.end method

.method private initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V
    .locals 22
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p3, "defaultTitleRes"    # I
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 2258
    .local p2, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const v19, 0x1020486

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    .line 2259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2260
    const-string/jumbo v19, "#dfdfdf"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 2261
    .local v4, "blackTvColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2263
    .end local v4    # "blackTvColor":I
    :cond_0
    const/4 v6, 0x0

    .line 2264
    .local v6, "intent":Landroid/content/Intent;
    if-nez p1, :cond_2

    .line 2265
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 2266
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "intent":Landroid/content/Intent;
    check-cast v6, Landroid/content/Intent;

    .line 2267
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 2268
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2269
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2273
    .end local v3    # "action":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1040351

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "shareTitle":Ljava/lang/String;
    move-object/from16 v19, p1

    .line 2274
    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2275
    if-eqz p4, :cond_2

    .line 2276
    const/16 p4, 0x0

    .line 2280
    .end local v17    # "shareTitle":Ljava/lang/String;
    .end local p4    # "alwaysUseOption":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2281
    const v19, 0x1020444

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mRealLayout:Landroid/widget/LinearLayout;

    .line 2282
    const v19, 0x1020484

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    .line 2283
    const v19, 0x102047f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/app/ResolverActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getList()Ljava/util/List;

    move-result-object v12

    .line 2292
    .local v12, "resolveItem":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 2293
    .local v13, "resolveItemSize":I
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2294
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 2295
    .local v16, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2296
    .local v15, "screenHeight":I
    sub-int v19, v16, v15

    div-int/lit8 v7, v19, 0x2

    .line 2297
    .local v7, "layoutWidth":I
    const v19, 0x102048a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 2298
    .local v8, "leftLayout":Landroid/widget/LinearLayout;
    const v19, 0x102048c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 2299
    .local v14, "rightLayout":Landroid/widget/LinearLayout;
    const v19, 0x102047f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 2300
    .local v5, "centerLayout":Landroid/widget/RelativeLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v9, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2301
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2302
    invoke-virtual {v14, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2303
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v10, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2304
    .local v10, "params1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2305
    const v19, 0x102048b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    .line 2306
    const/16 v19, 0x5

    move/from16 v0, v19

    if-gt v13, v0, :cond_3

    if-lez v13, :cond_3

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 2308
    .local v11, "params3":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, -0x2

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mScroller:Landroid/widget/ScrollView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2311
    .end local v11    # "params3":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    new-instance v19, Lcom/android/internal/app/ResolverActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2317
    new-instance v19, Lcom/android/internal/app/ResolverActivity$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2324
    .end local v5    # "centerLayout":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutWidth":I
    .end local v8    # "leftLayout":Landroid/widget/LinearLayout;
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "rightLayout":Landroid/widget/LinearLayout;
    .end local v15    # "screenHeight":I
    .end local v16    # "screenWidth":I
    :cond_4
    const v19, 0x1020488

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/GridView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    .line 2325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const v20, 0x1020485

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    .line 2326
    const v19, 0x1020446

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    .line 2327
    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v13, v0, :cond_5

    .line 2328
    const/4 v13, 0x5

    .line 2330
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v13, v1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2331
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x10900d6

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/app/ResolverActivity$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2355
    const v19, 0x1020481

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    .line 2356
    const v19, 0x1020480

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    .line 2357
    const v19, 0x1020380

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    .line 2358
    invoke-virtual {v6}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    .line 2359
    .local v18, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/app/ResolverActivity;->uvReportIntent:Landroid/content/Intent;

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/app/ResolverActivity$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2367
    const v19, 0x1020482

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    .line 2368
    const v19, 0x1020483

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/letv/leui/widget/LeCheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysCheckBox:Lcom/letv/leui/widget/LeCheckBox;

    .line 2370
    if-eqz p4, :cond_7

    .line 2371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2375
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 2376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAppStringArrays:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->initSpecialLayoutContent(Landroid/widget/LinearLayout;)V

    .line 2257
    :cond_6
    return-void

    .line 2373
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initSpecialLayoutContent(Landroid/widget/LinearLayout;)V
    .locals 9
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v7, 0x0

    .line 2504
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2505
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 2506
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p0, v6, p1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2507
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutSpecial:Landroid/widget/LinearLayout;

    invoke-static {p0, v6, v7}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2508
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 2509
    move v3, v1

    .line 2510
    .local v3, "j":I
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020489

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2511
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020486

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2512
    .local v5, "tv":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v6, :cond_0

    .line 2513
    const-string/jumbo v6, "#dfdfdf"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2514
    .local v0, "blackTvColor":I
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2516
    .end local v0    # "blackTvColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialLogoArray:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2517
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2518
    const v6, 0x1080617

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2519
    iget-boolean v6, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v6, :cond_1

    .line 2520
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, -0x1

    invoke-virtual {v6, v8, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2521
    const v6, 0x1080618

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2523
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2531
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialTitleArray:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2532
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/internal/app/ResolverActivity$9;

    invoke-direct {v7, p0, v3}, Lcom/android/internal/app/ResolverActivity$9;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2508
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2503
    .end local v1    # "i":I
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "j":I
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2659
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2660
    .local v1, "mineType":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2661
    const-string/jumbo v1, "android.intent.category.HOME"

    .line 2663
    :cond_0
    if-nez v1, :cond_1

    .line 2664
    const-string/jumbo v1, "unknow"

    .line 2666
    :cond_1
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2667
    .local v0, "activityName":Ljava/lang/String;
    const-string/jumbo v2, "content://com.android.leShare/leShareTable"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/app/ResolverActivity;->getClickCounts(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    return-void
.end method

.method private insertDB(Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;)V
    .locals 4
    .param p1, "shareActivityInfo"    # Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;

    .prologue
    .line 2603
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2604
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "mime_type"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    const-string/jumbo v2, "app_name"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string/jumbo v2, "app_counts"

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$ShareActivityInfo;->mAppClickCounts:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    const-string/jumbo v2, "content://com.android.leShare/leShareTable"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2608
    .local v0, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2602
    return-void
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .prologue
    const/4 v0, 0x0

    .line 2119
    const/high16 v1, 0xfff0000

    and-int/2addr p0, v1

    .line 2120
    const/high16 v1, 0x300000

    if-lt p0, v1, :cond_0

    .line 2121
    const/high16 v1, 0x500000

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 2120
    :cond_0
    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    return-object v0
.end method

.method private reSortList(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2556
    move-object v11, p1

    .line 2557
    .local v11, "newResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2558
    .local v12, "pickResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2559
    .local v13, "rePickResolveList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 2560
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 2561
    sget-object v0, Lcom/letv/leui/util/LeResolveUtils;->mPriorShareApp:[Ljava/lang/String;

    aget-object v1, v0, v8

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2562
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2563
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2559
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2560
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2568
    .end local v9    # "j":I
    :cond_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2569
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2570
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v11, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2569
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2573
    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "app_name"

    aput-object v0, v2, v5

    .line 2575
    .local v2, "projectiong":[Ljava/lang/String;
    const-string/jumbo v3, "app_counts>\'2\'"

    .line 2576
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "content://com.android.leShare/leShareTable"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v5, "app_counts DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2578
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2579
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 2580
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2581
    const-string/jumbo v0, "app_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2582
    .local v6, "activityName":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    .line 2583
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->-get1(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2584
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    invoke-interface {v11, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2582
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2579
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2589
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v9    # "j":I
    :cond_6
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2590
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 2591
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-interface {v11, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2590
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2596
    .end local v10    # "k":I
    :cond_7
    if-eqz v7, :cond_8

    .line 2597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2555
    :cond_8
    return-void

    .line 2595
    :catchall_0
    move-exception v0

    .line 2596
    if-eqz v7, :cond_9

    .line 2597
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2595
    :cond_9
    throw v0
.end method

.method private reflashGV(I)V
    .locals 7
    .param p1, "resolveItemSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 2699
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 2700
    .local v0, "gvMaxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2701
    .local v3, "titleHeight":I
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 2702
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2703
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 2704
    .local v2, "params1":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x9

    if-le p1, v4, :cond_1

    .line 2705
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2706
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2707
    add-int v4, v0, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2708
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2709
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2710
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2698
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 2712
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "params1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x5

    if-le p1, v4, :cond_2

    .line 2713
    div-int/lit8 v4, v0, 0x2

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2714
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2715
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v3

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2716
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2717
    div-int/lit8 v4, v0, 0x2

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->gvHeight:I

    .line 2718
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 2720
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridView:Landroid/widget/GridView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 2721
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 2722
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGvAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private reflashLayoutLessFive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2683
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 2684
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2685
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 2686
    .local v0, "chindItemCounts":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 2687
    const/4 v0, 0x5

    .line 2689
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-static {p0, v0, v1}, Lcom/letv/leui/util/LeResolveUtils;->addShareLayoutFive(Landroid/app/Activity;ILandroid/widget/LinearLayout;)V

    .line 2690
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    if-nez v1, :cond_1

    .line 2691
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900d6

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    .line 2693
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mFiveSpeicalViewItem:Landroid/view/View;

    invoke-static {p0, v1, v2}, Lcom/letv/leui/util/LeResolveUtils;->setShareLayout(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 2694
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mLayoutLessFive:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->initFiveLayoutContent(Landroid/widget/LinearLayout;I)V

    .line 2682
    .end local v0    # "chindItemCounts":I
    :cond_2
    return-void
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1072
    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1073
    :cond_3
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1074
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1073
    goto :goto_0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 0
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    .line 661
    return-void
.end method

.method private setBlackTheme()V
    .locals 8

    .prologue
    .line 2802
    const v6, 0x1020445

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2803
    .local v3, "view1":Landroid/view/View;
    const v6, 0x102044d

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2804
    .local v4, "view3":Landroid/view/View;
    const v6, 0x1020487

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2805
    .local v5, "view4":Landroid/view/View;
    const-string/jumbo v6, "#2d2d2d"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 2806
    .local v2, "blackViewColor":I
    const-string/jumbo v6, "#202020"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2807
    .local v0, "blackBgColor":I
    const-string/jumbo v6, "#dfdfdf"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 2808
    .local v1, "blackTvColor":I
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mRealLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2809
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 2810
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mGvLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2812
    :cond_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2813
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2814
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mShareCancelBtn:Landroid/widget/Button;

    const v7, 0x1080600

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2815
    if-eqz v3, :cond_1

    .line 2816
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2818
    :cond_1
    if-eqz v4, :cond_2

    .line 2819
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2821
    :cond_2
    if-eqz v5, :cond_3

    .line 2822
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2824
    :cond_3
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 2825
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mSpecialDivider:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2801
    :cond_4
    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 5
    .param p1, "contentUserHint"    # I

    .prologue
    .line 468
    const/4 v4, -0x2

    if-eq p1, v4, :cond_1

    .line 469
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p1, v4, :cond_1

    .line 470
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 471
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 472
    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    .line 474
    :goto_0
    invoke-virtual {v3}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    .line 475
    .local v2, "targetIsManaged":Z
    if-eqz v0, :cond_0

    if-eqz v2, :cond_3

    .line 477
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 478
    const v4, 0x104042c

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .line 467
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "userManager":Landroid/os/UserManager;
    :cond_1
    :goto_1
    return-void

    .line 473
    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Landroid/os/UserManager;
    :cond_2
    const/4 v0, 0x0

    .local v0, "originIsManaged":Z
    goto :goto_0

    .line 476
    .end local v0    # "originIsManaged":Z
    .restart local v2    # "targetIsManaged":Z
    :cond_3
    const v4, 0x104042b

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_1
.end method

.method private showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platId"    # I
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "targetInfo"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 2731
    new-instance v4, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    .line 2732
    .local v4, "mBottomSheetTextShare":Lcom/letv/leui/widget/LeBottomSheet;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040629

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2733
    .local v17, "textLongWeiboShare":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104062b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2734
    .local v15, "pictureShare":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104062a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2735
    .local v18, "textShare":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2736
    .local v16, "shareTitle":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 2737
    move-object/from16 v16, v17

    .line 2744
    .local v16, "shareTitle":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/android/internal/app/ResolverActivity$10;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v6, v0, v1}, Lcom/android/internal/app/ResolverActivity$10;-><init>(Lcom/android/internal/app/ResolverActivity;I)V

    .line 2754
    new-instance v7, Lcom/android/internal/app/ResolverActivity$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$11;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 2786
    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v16, v9, v5

    const/4 v5, 0x1

    aput-object v18, v9, v5

    .line 2790
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x106000e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 2743
    const/4 v5, 0x5

    .line 2785
    const/4 v8, 0x0

    .line 2787
    const/4 v10, 0x0

    .line 2788
    const/4 v11, 0x0

    .line 2789
    const/4 v12, 0x0

    .line 2791
    const/4 v14, 0x0

    .line 2742
    invoke-virtual/range {v4 .. v14}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;IZ)V

    .line 2792
    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 2793
    new-instance v5, Lcom/android/internal/app/ResolverActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ResolverActivity$12;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeBottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2730
    return-void

    .line 2739
    .local v16, "shareTitle":Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v15

    .local v16, "shareTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 653
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 652
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 654
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 655
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2
.end method

.method private updateDB(Landroid/net/Uri;Landroid/content/ContentValues;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "id"    # I

    .prologue
    .line 2638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2639
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2637
    .local v0, "update":I
    return-void
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 452
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .line 453
    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    .line 454
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 456
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 457
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 460
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 10
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 975
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 1011
    invoke-static {p0}, Lcom/letv/leui/util/LeResolveUtils;->isScreenChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    const v9, 0x10900db

    .line 1016
    .local v9, "layoutId":I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 1017
    .local v7, "count":I
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1020
    return-void

    .line 976
    .end local v7    # "count":I
    .end local v9    # "layoutId":I
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 1014
    :cond_3
    const v9, 0x10900d5

    .restart local v9    # "layoutId":I
    goto :goto_1

    .line 1021
    .restart local v7    # "count":I
    :cond_4
    const/4 v0, 0x1

    if-le v7, v0, :cond_6

    .line 1022
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/android/internal/app/ResolverActivity;->initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V

    .line 1040
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->isNightMode:Z

    if-eqz v0, :cond_5

    .line 1041
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->setBlackTheme()V

    .line 969
    :cond_5
    return-void

    .line 1024
    :cond_6
    const/4 v0, 0x1

    if-ne v7, v0, :cond_8

    .line 1025
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1026
    invoke-virtual {p0, v9}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p4}, Lcom/android/internal/app/ResolverActivity;->initShareLayout(Ljava/lang/CharSequence;Ljava/util/List;IZ)V

    goto :goto_2

    .line 1029
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 1033
    return-void

    .line 1036
    :cond_8
    const v0, 0x1090139

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    .line 1037
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1038
    .local v8, "empty":Landroid/widget/TextView;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .line 964
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    return-object v0
.end method

.method dismiss()V
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 511
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 2205
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2206
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->finishAnima()V

    .line 2204
    return-void
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 520
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 527
    :goto_0
    return-object v1

    .line 521
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "ResolverActivity"

    const-string/jumbo v3, "Couldn\'t find resources for package in getIcon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    const/4 v1, 0x0

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method getLayoutResource()I
    .locals 1

    .prologue
    .line 448
    const v0, 0x1090139

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    .line 760
    return-object p2
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 500
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 501
    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    .line 502
    .local v0, "named":Z
    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 503
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 500
    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    goto :goto_0

    .line 505
    .restart local v0    # "named":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 506
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 505
    :goto_1
    return-object v2

    .line 507
    :cond_2
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 533
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_0

    .line 534
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 535
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 536
    return-object v0

    .line 539
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 540
    .local v2, "iconRes":I
    if-eqz v2, :cond_1

    .line 541
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 544
    const-string/jumbo v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadIconForResolveInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    return-object v0

    .line 548
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "ResolverActivity"

    const-string/jumbo v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 946
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 676
    .local v0, "id":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 216
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 217
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    .line 218
    .local v9, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    if-eqz v9, :cond_0

    .line 220
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 221
    const-string/jumbo v0, "android.intent.category.HOME"

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    if-eqz v0, :cond_0

    .line 223
    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    .line 226
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 230
    .local v8, "attributes":Landroid/view/WindowManager$LayoutParams;
    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 234
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getLetvIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/util/LeResolveUtils$UV;->getFromPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    .line 259
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v4, p2

    invoke-static/range {v3 .. v8}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const v3, 0x103052a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->resolver:Landroid/content/ContentResolver;

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    .line 274
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 274
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_1
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 283
    return-void

    .line 254
    :catch_0
    move-exception v11

    .line 255
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 277
    .local v10, "e":Landroid/os/RemoteException;
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_1

    .line 286
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 288
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 289
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 291
    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 292
    .local v9, "am":Landroid/app/ActivityManager;
    invoke-virtual {v9}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 295
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 297
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 299
    .local v12, "referrerPackage":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, p0, v4, v12}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    .line 300
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x10100

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 320
    if-nez p3, :cond_2

    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 249
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 243
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 600
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    .line 605
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 599
    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2673
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2674
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 2675
    const/4 v0, 0x1

    return v0

    .line 2677
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    .line 1048
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    .line 1049
    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 1051
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1053
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 1054
    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1055
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1057
    if-eqz p3, :cond_0

    .line 1058
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1061
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1062
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1063
    const v4, 0x1090138

    const/4 v5, 0x0

    .line 1062
    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1047
    :cond_1
    return-void

    .line 1049
    .end local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_2
    const/4 v0, 0x0

    .local v0, "listView":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 557
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 555
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 614
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 615
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v0, :cond_0

    .line 613
    :cond_0
    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    .line 401
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 39
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    .line 764
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v35

    .line 765
    .local v35, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 768
    :goto_0
    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_10

    .line 772
    :cond_1
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 773
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 775
    .local v13, "action":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 776
    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    :cond_2
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v17

    .line 779
    .local v17, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_4

    .line 780
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "cat$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 781
    .local v15, "cat":Ljava/lang/String;
    invoke-virtual {v7, v15}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 765
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "action":Ljava/lang/String;
    .end local v15    # "cat":Ljava/lang/String;
    .end local v16    # "cat$iterator":Ljava/util/Iterator;
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v4, 0x0

    .local v4, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 784
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 786
    move-object/from16 v0, v35

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v5, 0xfff0000

    and-int v14, v3, v5

    .line 787
    .local v14, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 788
    .local v19, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_5

    .line 789
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    .line 790
    .local v26, "mimeType":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 792
    :try_start_0
    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v26    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 803
    const/high16 v3, 0x600000

    if-ne v14, v3, :cond_8

    .line 804
    const-string/jumbo v3, "file"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 805
    const-string/jumbo v3, "content"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 847
    :cond_6
    :goto_3
    if-eqz v7, :cond_10

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 849
    .local v10, "N":I
    new-array v0, v10, [Landroid/content/ComponentName;

    move-object/from16 v36, v0

    .line 850
    .local v36, "set":[Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 851
    .local v8, "bestMatch":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v0, v10, :cond_f

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v33

    .line 853
    .local v33, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 854
    move-object/from16 v0, v33

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 853
    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v36, v23

    .line 855
    move-object/from16 v0, v33

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v8, :cond_7

    move-object/from16 v0, v33

    iget v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 851
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 793
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v23    # "i":I
    .end local v33    # "r":Landroid/content/pm/ResolveInfo;
    .end local v36    # "set":[Landroid/content/ComponentName;
    .restart local v7    # "filter":Landroid/content/IntentFilter;
    .restart local v26    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 794
    .local v21, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string/jumbo v3, "ResolverActivity"

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    const/4 v7, 0x0

    .local v7, "filter":Landroid/content/IntentFilter;
    goto :goto_2

    .line 806
    .end local v7    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v26    # "mimeType":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v28

    .line 811
    .local v28, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v28, :cond_a

    .line 812
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v37

    .line 813
    .local v37, "ssp":Ljava/lang/String;
    :cond_9
    if-eqz v37, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 814
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/PatternMatcher;

    .line 815
    .local v27, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 816
    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 821
    .end local v27    # "p":Landroid/os/PatternMatcher;
    .end local v37    # "ssp":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v12

    .line 822
    .local v12, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v12, :cond_c

    .line 823
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 824
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .line 825
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_b

    .line 826
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v32

    .line 827
    .local v32, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 828
    if-ltz v32, :cond_e

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 827
    :goto_5
    invoke-virtual {v7, v5, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v32    # "port":I
    :cond_c
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v28

    .line 834
    if-eqz v28, :cond_6

    .line 835
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v30

    .line 836
    .local v30, "path":Ljava/lang/String;
    :cond_d
    if-eqz v30, :cond_6

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 837
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/PatternMatcher;

    .line 838
    .restart local v27    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 839
    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    invoke-virtual {v7, v3, v5}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 828
    .end local v27    # "p":Landroid/os/PatternMatcher;
    .end local v30    # "path":Ljava/lang/String;
    .restart local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v32    # "port":I
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 857
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v28    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v32    # "port":I
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v23    # "i":I
    .restart local v36    # "set":[Landroid/content/ComponentName;
    :cond_f
    if-eqz p2, :cond_19

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v38

    .line 859
    .local v38, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    .line 862
    .local v31, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v8, v1, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 864
    move-object/from16 v0, v35

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_13

    .line 866
    move-object/from16 v0, v31

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v29

    .line 867
    .local v29, "packageName":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 868
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v31

    move/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .line 903
    .end local v8    # "bestMatch":I
    .end local v10    # "N":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "cat":I
    .end local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "data":Landroid/net/Uri;
    .end local v23    # "i":I
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    .end local v36    # "set":[Landroid/content/ComponentName;
    .end local v38    # "userId":I
    :cond_10
    :goto_6
    if-eqz p1, :cond_12

    .line 905
    const-string/jumbo v3, "com.google.android.gm"

    move-object/from16 v0, v35

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 906
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000000

    or-int/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 909
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 911
    :cond_12
    const/4 v3, 0x1

    return v3

    .line 872
    .restart local v8    # "bestMatch":I
    .restart local v10    # "N":I
    .restart local v13    # "action":Ljava/lang/String;
    .restart local v14    # "cat":I
    .restart local v17    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "data":Landroid/net/Uri;
    .restart local v23    # "i":I
    .restart local v31    # "pm":Landroid/content/pm/PackageManager;
    .restart local v36    # "set":[Landroid/content/ComponentName;
    .restart local v38    # "userId":I
    :cond_13
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 873
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    .line 874
    .restart local v29    # "packageName":Ljava/lang/String;
    if-eqz v19, :cond_14

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    .line 876
    :goto_7
    if-eqz v20, :cond_16

    .line 877
    const-string/jumbo v3, "http"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 878
    const-string/jumbo v3, "https"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 880
    :goto_8
    if-eqz v13, :cond_17

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 881
    :goto_9
    if-eqz v17, :cond_18

    .line 882
    const-string/jumbo v3, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    .line 884
    :goto_a
    if-eqz v24, :cond_10

    if-eqz v25, :cond_10

    if-eqz v22, :cond_10

    .line 886
    const/4 v3, 0x2

    .line 885
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move/from16 v2, v38

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto :goto_6

    .line 874
    :cond_14
    const/16 v20, 0x0

    .local v20, "dataScheme":Ljava/lang/String;
    goto :goto_7

    .line 877
    .end local v20    # "dataScheme":Ljava/lang/String;
    :cond_15
    const/16 v24, 0x1

    .local v24, "isHttpOrHttps":Z
    goto :goto_8

    .line 876
    .end local v24    # "isHttpOrHttps":Z
    :cond_16
    const/16 v24, 0x0

    .restart local v24    # "isHttpOrHttps":Z
    goto :goto_8

    .line 880
    .end local v24    # "isHttpOrHttps":Z
    :cond_17
    const/16 v25, 0x0

    .local v25, "isViewAction":Z
    goto :goto_9

    .line 881
    .end local v25    # "isViewAction":Z
    :cond_18
    const/16 v22, 0x0

    .local v22, "hasCategoryBrowsable":Z
    goto :goto_a

    .line 892
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v22    # "hasCategoryBrowsable":Z
    .end local v29    # "packageName":Ljava/lang/String;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    .end local v38    # "userId":I
    :cond_19
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 895
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 894
    const/high16 v6, 0x10000

    .line 892
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    .line 896
    :catch_1
    move-exception v34

    .line 897
    .local v34, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error calling setLastChosenActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    .line 424
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v5, 0x0

    .line 917
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 918
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 920
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_2

    .line 921
    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 924
    :cond_1
    return-void

    .line 927
    :cond_2
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 928
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_3
    :goto_0
    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 933
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 939
    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 940
    const-string/jumbo v5, " package "

    .line 939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 940
    const-string/jumbo v5, ", while running in "

    .line 939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 941
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    .line 939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 935
    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 936
    .local v1, "e2":Landroid/os/RemoteException;
    const-string/jumbo v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    return-void

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 414
    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 415
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 419
    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    .line 418
    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    .line 406
    return-void
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 4
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    .line 495
    return-void
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 955
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 956
    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 955
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 957
    const/high16 v2, 0x80000

    .line 955
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 958
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 954
    return-void
.end method

.method startSelected(IZZ)V
    .locals 29
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 693
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .line 703
    .local v13, "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-interface {v13}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v4

    .line 704
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v4}, Lcom/letv/leui/util/LeResolveUtils;->isSingleImageFile(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4}, Lcom/letv/leui/util/LeResolveUtils;->getFilePath(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/letv/leui/util/LeResolveUtils;->shareFileNoExit(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040714

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 706
    return-void

    .line 694
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v13    # "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 695
    const v5, 0x10404af

    .line 694
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 696
    iget-object v6, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 694
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 697
    const/4 v5, 0x1

    .line 694
    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 698
    return-void

    .line 708
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v13    # "info":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_3
    invoke-static {v11, v4}, Lcom/letv/leui/util/LeResolveUtils;->isWeiboOrWeChatTextShare(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)I

    move-result v10

    .line 709
    .local v10, "platId":I
    const/4 v7, 0x0

    .line 710
    .local v7, "intentClassName":Ljava/lang/String;
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_4

    .line 711
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 712
    .local v7, "intentClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v3 .. v8}, Lcom/letv/leui/util/LeResolveUtils$UV;->reportBigBata(ZLandroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    .end local v7    # "intentClassName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "com.letv.android.note"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v10, :cond_5

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->fromPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v3, v10, v4, v0, v5}, Lcom/letv/leui/util/LeResolveUtils;->startNoteActivity(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;)V

    .line 716
    return-void

    .line 718
    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-static {v3}, Lcom/letv/leui/util/LeResolveUtils;->shareTextBeyondMax(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    .line 721
    .local v27, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    add-int v5, v5, v27

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object v12, v4

    .line 722
    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/ResolverActivity;->showTextShareDialog(Landroid/content/Context;ILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    .line 723
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 724
    return-void

    .line 726
    .end local v27    # "screenHeight":I
    :cond_6
    const/16 v25, 0x0

    .line 727
    .local v25, "targetPackageName":Ljava/lang/String;
    if-eqz v11, :cond_7

    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_7

    .line 728
    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 730
    .end local v25    # "targetPackageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLePaiTitleMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLePaiDesMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareTitle:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mBitmapFileUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v14, p0

    move-object v15, v11

    move-object/from16 v16, v4

    invoke-static/range {v14 .. v25}, Lcom/letv/leui/util/LeResolveUtils;->startPriorShareApp(Landroid/app/Activity;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 731
    .local v26, "isShare":Z
    const-string/jumbo v3, "leshare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isShare = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mPageName:Ljava/lang/String;

    move/from16 v0, v26

    move-object/from16 v1, p0

    invoke-static {v0, v1, v7, v3, v5}, Lcom/letv/leui/util/LeResolveUtils;->sendShareBroadCast(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    if-eqz v26, :cond_8

    .line 734
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 736
    return-void

    .line 738
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 740
    const-string/jumbo v3, "android.intent.extra.TEXT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mShareDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    :goto_0
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 745
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/android/internal/app/ResolverActivity;->insertCounts(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v28

    .line 751
    .local v28, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 688
    :cond_a
    return-void

    .line 742
    .end local v28    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :cond_b
    const-string/jumbo v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
